using UnityEngine;
using System;
using System.Net.WebSockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Collections;
using System.IO;

public class NetworkManager : MonoBehaviour
{
    private static NetworkManager _instance;

    // 私有构造函数，防止外部实例化
    private NetworkManager() { }

    public static NetworkManager GetInstance()
    {
        if (_instance == null)
        {
            // 尝试找到已经存在的 NetworkManager
            _instance = FindObjectOfType<NetworkManager>();

            if (_instance == null)
            {
                // 如果没有找到，创建一个新的 GameObject 并附加 NetworkManager 组件
                GameObject go = new GameObject("NetworkManager");
                _instance = go.AddComponent<NetworkManager>();
                DontDestroyOnLoad(go);
            }
        }

        return _instance;
    }

    private ClientWebSocket _clientWebSocket;
    private CancellationTokenSource _cancellationTokenSource;
    private bool isConnected = false;
    private bool isStrongNetworkMode = false;
    public string webUriString = "wss://echo.websocket.org";

    //锁
    private static readonly object _lock = new object();

    //短线重连次数
    private int maxReconnectAttempts = 5;
    private int currentReconnectAttempts = 0;

    //确保 WebSocket 操作是线程安全的。如果你在不同的线程或协程中操作 WebSocket，需要确保它的状态是安全的：
    private readonly object _webSocketLock = new object();

    private void Awake()
    {
        // 确保在加载新的场景时不会创建新的实例
        if (_instance == null)
        {
            _instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else if (_instance != this)
        {
            Destroy(gameObject);
        }
    }

    private void Start()
    {
        // 根据需求选择启动弱联网或强联网模式
        //SwitchToWeakNetworkMode();
    }

    /// <summary>
    /// 切换到弱联网模式
    /// </summary>
    public void SwitchToWeakNetworkMode()
    {
        if (isStrongNetworkMode)
        {
            isStrongNetworkMode = false;
            DisconnectFromServer();
            Debug.Log("Switched to Weak Network Mode.");
        }
    }

    /// <summary>
    /// 切换到强联网模式
    /// </summary>
    public void SwitchToStrongNetworkMode()
    {
        lock (_lock)
        {
            if (!isStrongNetworkMode)
            {
                isStrongNetworkMode = true;
                ConnectToServerAsync();
                Debug.Log("Switched to Strong Network Mode.");
            }
        }
        //isStrongNetworkMode = true;
        //ConnectToServerAsync();
        //Debug.Log("Switched to Strong Network Mode.");
    }

    /// <summary>
    /// 连接到服务器（强联网模式）
    /// </summary>
    private async void ConnectToServerAsync()
    {
        if (string.IsNullOrEmpty(webUriString))
        {
            Debug.Log("web uri is null");
            return;
        }
        try
        {
            _clientWebSocket = new ClientWebSocket();
            _cancellationTokenSource = new CancellationTokenSource();
            Uri serverUri = new Uri(webUriString);

            await _clientWebSocket.ConnectAsync(serverUri, CancellationToken.None);
            OnOpen();
            StartReceive(); // 开始接收数据
        }
        catch (Exception ex)
        {
            OnError(ex);
        }
    }

    private void OnOpen()
    {
        isConnected = true;
        Debug.Log("Connected to the server.");
        StartHeartbeat(); // 启动心跳包机制
    }

    private async void StartReceive()
    {
        byte[] buffer = new byte[1024];

        _cancellationTokenSource = new CancellationTokenSource();
        CancellationToken token = _cancellationTokenSource.Token;

        while (!token.IsCancellationRequested)
        {
            ClientWebSocket webSocket;
            lock (_webSocketLock)
            {
                if (_clientWebSocket == null || _clientWebSocket.State != WebSocketState.Open)
                {
                    break; // Exit loop if WebSocket is not in a valid state
                }
                webSocket = _clientWebSocket;
            }
            try
            {
                WebSocketReceiveResult result = await webSocket.ReceiveAsync(new ArraySegment<byte>(buffer), token);
                if (result.MessageType == WebSocketMessageType.Close)
                {
                    await CloseWebSocketAsync(webSocket, WebSocketCloseStatus.NormalClosure, string.Empty, token);
                    OnClose(result.CloseStatus.GetValueOrDefault());
                    break;
                }
                else
                {
                    OnMessage(buffer);
                }
            }
            catch (OperationCanceledException ex)
            {
                // 捕获并处理取消操作异常
                OnError(new Exception("Operation was canceled.", ex));
                break;
            }
            catch (WebSocketException ex)
            {
                // 捕获并处理 WebSocket 特定异常
                OnError(new Exception("WebSocket error occurred.", ex));
                break;
            }
            catch (Exception ex)
            {
                // 捕获并处理其他异常
                OnError(new Exception("An unexpected error occurred.", ex));
                break;
            }
        }
    }
    private bool IsWebSocketOpen()
    {
        lock (_webSocketLock)
        {
            return _clientWebSocket != null && _clientWebSocket.State == WebSocketState.Open;
        }
    }


    private async Task CloseWebSocketAsync(ClientWebSocket webSocket, WebSocketCloseStatus closeStatus, string statusDescription, CancellationToken token)
    {
        // 确保 WebSocket 状态的一致性
        lock (_webSocketLock)
        {
            if (webSocket.State != WebSocketState.Open)
            {
                return; // 如果 WebSocket 状态不是开放的，则不进行关闭操作
            }
        }

        try
        {
            // 异步关闭 WebSocket
            await webSocket.CloseAsync(closeStatus, statusDescription, token);
        }
        catch (Exception ex)
        {
            // 捕获并处理关闭过程中的异常
            OnError(new Exception("Error occurred while closing WebSocket.", ex));
        }
    }


    private async void DisconnectFromServer()
    {
        // 创建临时变量以在锁外部引用
        ClientWebSocket clientWebSocket;
        CancellationTokenSource cancellationTokenSource;
        lock (_webSocketLock)
        {
            clientWebSocket = _clientWebSocket;
            _clientWebSocket = null; // 断开引用，确保不再访问
            cancellationTokenSource = _cancellationTokenSource;
            _cancellationTokenSource = null;
        }

        if (clientWebSocket != null)
        {
            try
            {
                // 确保 WebSocket 在异步关闭操作之前处于有效状态
                if (clientWebSocket.State == WebSocketState.Open)
                {
                    await CloseWebSocketAsync(clientWebSocket, WebSocketCloseStatus.NormalClosure, "Switching network mode", CancellationToken.None);
                }
            }
            catch (Exception ex)
            {
                OnError(new Exception("Disconnect error occurred.", ex));
            }
            finally
            {
                if (clientWebSocket != null)
                {
                    Debug.Log("Disposing WebSocket.");
                    clientWebSocket.Dispose();
                }

                if (cancellationTokenSource != null)
                {
                    Debug.Log("Cancelling and disposing CancellationTokenSource.");
                    cancellationTokenSource.Cancel();
                    cancellationTokenSource.Dispose();
                }
            }
        }

        cancellationTokenSource?.Cancel();
        cancellationTokenSource?.Dispose();

    }

    /// <summary>protobuf
    /// 发送 PlayerData 对象
    /// </summary>
    //public async Task SendPlayerData(PlayerData playerData)
    //{
    //    if (_clientWebSocket != null && _clientWebSocket.State == WebSocketState.Open)
    //    {
    //        // 序列化 PlayerData 对象
    //        byte[] buffer;
    //        using (MemoryStream ms = new MemoryStream())
    //        {
    //            playerData.WriteTo(ms);
    //            buffer = ms.ToArray();
    //        }

    //        // 发送序列化后的数据
    //        await _clientWebSocket.SendAsync(new ArraySegment<byte>(buffer), WebSocketMessageType.Binary, true, CancellationToken.None);
    //    }
    //}
    /// <summary>
    /// 接收并处理消息
    /// </summary>
    private void OnMessage(byte[] data)
    {
        //// 反序列化 PlayerData   protobuf
        //PlayerData playerData;
        //using (MemoryStream ms = new MemoryStream(data))
        //{
        //    playerData = PlayerData.Parser.ParseFrom(ms);
        //}
        //// 打印反序列化后的数据
        //Debug.Log($"Received PlayerData: ID = {playerData.PlayerId}, Name = {playerData.Name}, Score = {playerData.Score}");

    // 处理实时数据
    string message = Encoding.UTF8.GetString(data);
        string timestamp = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff"); // 获取当前时间并格式化
        Debug.Log($"[{timestamp}] Received message: {message}");
    }

    private void OnError(Exception ex)
    {
        // 记录异常消息
        Debug.LogError("Error: " + ex.Message);
        // 记录堆栈信息
        Debug.LogError("Stack Trace: " + ex.StackTrace);
    }

    private void OnClose(WebSocketCloseStatus closeStatus)
    {
        isConnected = false;
        Debug.Log("Connection closed: " + closeStatus);

        // 自动重连机制
        if (isStrongNetworkMode)
        {
            Invoke("ReconnectToServer", 5f);
        }
    }
    private void ReconnectToServer()
    {
        if (currentReconnectAttempts < maxReconnectAttempts)
        {
            currentReconnectAttempts++;
            ConnectToServerAsync();
        }
        else
        {
            Debug.LogError("Max reconnect attempts reached. Unable to reconnect.");
        }
    }
    /// <summary>
    /// 发送心跳包（强联网模式）
    /// </summary>
    private void StartHeartbeat()
    {
        StartCoroutine(SendHeartbeatCoroutine());
    }

    private IEnumerator SendHeartbeatCoroutine()
    {
        while (isConnected && isStrongNetworkMode)
        {
            //SendHeartbeat(); 
            // 调用异步心跳包方法
            // 使用 Task.Run 来调用异步方法并等待其完成
            var task = Task.Run(async () => await SendHeartbeat());
            yield return new WaitUntil(() => task.IsCompleted);
            yield return new WaitForSeconds(5f);  // 每隔5秒发送一次心跳包
        }
    }

    private async Task SendHeartbeat()
    {
        try
        {
            byte[] buffer = Encoding.UTF8.GetBytes("ping"); // 示例心跳包内容
            if (_clientWebSocket != null && _clientWebSocket.State == WebSocketState.Open)
            {
                await _clientWebSocket.SendAsync(new ArraySegment<byte>(buffer), WebSocketMessageType.Text, true, CancellationToken.None);
            }
        }
        catch (Exception ex)
        {
            OnError(ex);
        }
    }

    /// <summary>
    /// 获取数据，自动选择弱联网或强联网模式
    /// </summary>
    public void FetchData()
    {
        if (isStrongNetworkMode && isConnected)
        {
            // 从服务器获取实时数据
        }
        else
        {
            // 从本地获取数据（弱联网模式）
            Debug.Log("Fetching data in Weak Network Mode.");
        }
    }

    /// <summary>
    /// 同步数据，自动选择弱联网或强联网模式
    /// </summary>
    public void SyncData()
    {
        if (isStrongNetworkMode && isConnected)
        {
            // 实时同步数据到服务器
        }
        else
        {
            // 缓存数据到本地，等待网络恢复后同步（弱联网模式）
            Debug.Log("Syncing data in Weak Network Mode.");
        }
    }

    private void OnDestroy()
    {
        DisconnectFromServer();
    }

    private void OnApplicationQuit()
    {
        DisconnectFromServer();
    }
}
