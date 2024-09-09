using UnityEngine;
using System;
using System.Net.WebSockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Collections;
using System.IO;
using System.Collections.Generic;

using UnityEngine.Networking;

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

    //private ClientWebSocket _clientWebSocket;
    private CancellationTokenSource _cancellationTokenSource;
    private bool isConnected = false;
    private bool isStrongNetworkMode = false;
    public string webUriString = "wss://echo.websocket.org";

    //锁
    private static readonly object _lock = new object();

    //短线重连次数
    private int maxReconnectAttempts = 5;
    private int currentReconnectAttempts = 0;

    private Dictionary<string, ClientWebSocket> _webSockets = new Dictionary<string, ClientWebSocket>();
    //确保 WebSocket 操作是线程安全的。如果你在不同的线程或协程中操作 WebSocket，需要确保它的状态是安全的：
    private readonly object _webSocketLock = new object();

    private WebSocketPool _webSocketPool = new WebSocketPool();

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
        //if (isStrongNetworkMode)
        //{
        //    StartCoroutine(SendHeartbeatCoroutine("default"));
        //}
    }

    private async Task<ClientWebSocket> CreateWebSocketConnectionAsync(string identifier, string uri)
    {
        var webSocket = new ClientWebSocket();
        Uri serverUri = new Uri(uri);
        await webSocket.ConnectAsync(serverUri, CancellationToken.None);
        _webSocketPool.Add(identifier, webSocket);
        return webSocket;
    }
    /// <summary>
    /// 切换到弱联网模式
    /// </summary>
    public void SwitchToWeakNetworkMode()
    {
        if (isStrongNetworkMode)
        {
            isStrongNetworkMode = false;
            DisconnectFromServerAsync();
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
                ConnectToServerAsync("default", webUriString);
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
    private async void ConnectToServerAsync(string identifier, string uri)
    {
        if (string.IsNullOrEmpty(uri))
        {
            Debug.Log("web uri is null");
            return;
        }
        try
        {
            var webSocket = await CreateWebSocketConnectionAsync(identifier, uri);
            _cancellationTokenSource = new CancellationTokenSource();
            lock (_webSocketLock)
            {
                _webSockets[identifier] = webSocket;
            }
            OnOpen(identifier);
            StartReceive(identifier, webSocket); // 开始接收数据
        }
        catch (Exception ex)
        {
            OnError(ex);
        }
    }

    private void OnOpen(string identifier)
    {
        isConnected = true;
        Debug.Log("Connected to the server.");
        StartHeartbeat(identifier); // 启动心跳包机制
    }
    /// <summary>
    /// WebSocket 连接的接收数据：
    /// </summary>
    /// <param name="identifier">标识符webSocket</param>
    /// <param name="webSocket">ClientWebSocket</param>
    private async void StartReceive(string identifier, ClientWebSocket webSocket)
    {
        byte[] buffer = new byte[1024];

        //_cancellationTokenSource = new CancellationTokenSource();
        //CancellationToken token = _cancellationTokenSource.Token;
        CancellationToken token = _cancellationTokenSource != null ? _cancellationTokenSource.Token : CancellationToken.None;

        while (!token.IsCancellationRequested)
        {
            //ClientWebSocket webSocket;
            //lock (_webSocketLock)
            //{
            //    if (_clientWebSocket == null || _clientWebSocket.State != WebSocketState.Open)
            //    {
            //        break; // Exit loop if WebSocket is not in a valid state
            //    }
            //    webSocket = _clientWebSocket;
            //}
            try
            {
                WebSocketReceiveResult result = await webSocket.ReceiveAsync(new ArraySegment<byte>(buffer), token);
                if (result.MessageType == WebSocketMessageType.Close)
                {
                    await CloseWebSocketAsync(webSocket, WebSocketCloseStatus.NormalClosure, string.Empty, token);
                    //OnClose(result.CloseStatus.GetValueOrDefault());
                    OnClose(identifier, result.CloseStatus.GetValueOrDefault());
                    break;
                }
                else
                {
                    //OnMessage(buffer);
                    OnMessage(identifier, buffer);
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
    private bool IsWebSocketOpen(string identifier)
    {
        lock (_webSocketLock)
        {
            if (_webSockets.TryGetValue(identifier, out var webSocket))
            {
                return webSocket.State == WebSocketState.Open;
            }
            return false;
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
        catch (OperationCanceledException)
        {
            // 处理取消操作异常
            Debug.LogWarning("WebSocket close operation was canceled.");
        }
        catch (Exception ex)
        {
            // 捕获并处理关闭过程中的异常
            OnError(new Exception("Error occurred while closing WebSocket.", ex));
        }
    }


    private async void DisconnectFromServerAsync(string identifier = null)
    {
        identifier ??= "default"; // 使用默认标识符
        // 创建临时变量以在锁外部引用
        ClientWebSocket clientWebSocket = _webSocketPool.Get(identifier);
        CancellationTokenSource cancellationTokenSource = null;
        lock (_webSocketLock)
        {
            if (_webSockets.TryGetValue(identifier, out clientWebSocket))
            {
                _webSockets.Remove(identifier);
                //clientWebSocket = _clientWebSocket;
                //_clientWebSocket = null; // 断开引用，确保不再访问
                cancellationTokenSource = _cancellationTokenSource;
                _cancellationTokenSource = null;
            }
        }

        if (clientWebSocket != null)
        {
            try
            {
                // 确保 WebSocket 在异步关闭操作之前处于有效状态
                if (clientWebSocket.State == WebSocketState.Open)
                {
                    await CloseWebSocketAsync(clientWebSocket, WebSocketCloseStatus.NormalClosure, "Disconnecting", CancellationToken.None);
                }
            }
            catch (OperationCanceledException)
            {
                Debug.LogWarning("Operation canceled during disconnect.");
            }
            catch (Exception ex)
            {
                OnError(new Exception("Disconnect error occurred.", ex));
            }
            finally
            {
                //if (clientWebSocket != null)
                //{
                //    Debug.Log("Disposing WebSocket.");
                //    clientWebSocket.Dispose();
                //}

                //if (cancellationTokenSource != null)
                //{
                //    Debug.Log("Cancelling and disposing CancellationTokenSource.");
                //    cancellationTokenSource.Cancel();
                //    cancellationTokenSource.Dispose();
                //}
                _webSocketPool.Remove(identifier);
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
    private void OnMessage(string identifier, byte[] data)
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
        // 这里可以根据标识符处理不同的逻辑
    }

    private void OnError(Exception ex)
    {
        // 记录异常消息
        Debug.LogError("Error: " + ex.Message);
        // 记录堆栈信息
        Debug.LogError("Stack Trace: " + ex.StackTrace);
    }

    private void OnClose(string identifier, WebSocketCloseStatus closeStatus)
    {
        isConnected = false;
        Debug.Log("Connection closed: " + closeStatus);

        // 自动重连机制
        if (isStrongNetworkMode)
        {
            Invoke("ReconnectToServer", 5f);
        }
    }
    private async void ReconnectToServer()
    {
        if (currentReconnectAttempts < maxReconnectAttempts)
        {
            currentReconnectAttempts++;
            int delay = (int)(Mathf.Pow(2, currentReconnectAttempts) * 1000); // 2^n 秒的延迟
            Debug.Log($"Reconnecting in {delay} ms...");
            await Task.Delay(delay); // 随机延迟，避免频繁重连
            ConnectToServerAsync("default", webUriString);
        }
        else
        {
            Debug.LogError("Max reconnect attempts reached. Unable to reconnect.");
        }
    }
    /// <summary>
    /// 发送心跳包（强联网模式）
    /// </summary>
    private void StartHeartbeat(string identifier)
    {
        StartCoroutine(SendHeartbeatCoroutine(identifier));
    }

    private IEnumerator SendHeartbeatCoroutine(string identifier)
    {
        while (IsWebSocketOpen(identifier))
        {
            //SendHeartbeat(); 
            // 调用异步心跳包方法
            // 使用 Task.Run 来调用异步方法并等待其完成
            var task = Task.Run(async () => await SendHeartbeat(identifier));
            yield return new WaitUntil(() => task.IsCompleted);
            yield return new WaitForSeconds(5f);  // 每隔5秒发送一次心跳包
        }
    }

    private async Task SendHeartbeat(string identifier)
    {
        try
        {
            byte[] buffer = Encoding.UTF8.GetBytes("ping"); // 示例心跳包内容
            //if (_clientWebSocket != null && _clientWebSocket.State == WebSocketState.Open)
            //{
            //    await _clientWebSocket.SendAsync(new ArraySegment<byte>(buffer), WebSocketMessageType.Text, true, CancellationToken.None);
            //}
            if (_webSockets.TryGetValue(identifier, out var webSocket) && webSocket.State == WebSocketState.Open)
            {
                //await webSocket.SendAsync(new ArraySegment<byte>(buffer), WebSocketMessageType.Text, true, CancellationToken.None);
                var timeoutTask = Task.Delay(5000); // 超时设定为5秒
                var sendTask = webSocket.SendAsync(new ArraySegment<byte>(buffer), WebSocketMessageType.Text, true, CancellationToken.None);

                var completedTask = await Task.WhenAny(sendTask, timeoutTask);

                if (completedTask == timeoutTask)
                {
                    OnError(new Exception("Heartbeat send operation timed out."));
                }
                else
                {
                    await sendTask; // 确保异常被捕获
                }
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
        try
        {
            DisconnectFromServerAsync();
        }
        catch (Exception ex)
        {
            OnError(new Exception("Error during OnDestroy.", ex));
        }
    }

    private void OnApplicationQuit()
    {
        try
        {
            DisconnectFromServerAsync();
        }
        catch (Exception ex)
        {
            OnError(new Exception("Error during OnApplicationQuit.", ex));
        }
    }

}


public class WebSocketPool
{
    private readonly Dictionary<string, ClientWebSocket> _webSockets = new Dictionary<string, ClientWebSocket>();
    private readonly object _lock = new object();

    public void Add(string identifier, ClientWebSocket webSocket)
    {
        lock (_lock)
        {
            _webSockets[identifier] = webSocket;
        }
    }

    public ClientWebSocket Get(string identifier)
    {
        lock (_lock)
        {
            _webSockets.TryGetValue(identifier, out var webSocket);
            return webSocket;
        }
    }

    public void Remove(string identifier)
    {
        lock (_lock)
        {
            if (_webSockets.TryGetValue(identifier, out var webSocket))
            {
                webSocket.Dispose();
                _webSockets.Remove(identifier);
            }
        }
    }

    public void DisposeAll()
    {
        lock (_lock)
        {
            foreach (var webSocket in _webSockets.Values)
            {
                webSocket.Dispose();
            }
            _webSockets.Clear();
        }
    }
}
