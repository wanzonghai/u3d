using System;
using System.Net.Sockets;
using System.Text;
using UnityEngine;
/// <summary>
/// 优点：
///TCP：保证数据传输的可靠性和顺序，适合需要严格数据传输顺序的场景。
///UDP：更适合实时、低延迟、无需确认的快速数据传输场景。
///缺点：
///TCP 可能产生延迟，影响实时性。
///UDP 需要自行处理丢包、重传等逻辑。
/// </summary>
public class TCPClientManager : MonoBehaviour
{
    private TcpClient client;
    private NetworkStream stream;

    void Start()
    {
        ConnectToServer();
    }

    public void ConnectToServer()
    {
        try
        {
            client = new TcpClient("127.0.0.1", 8080);
            stream = client.GetStream();
            Debug.Log("Connected to server.");
        }
        catch (Exception ex)
        {
            Debug.LogError("Error: " + ex.Message);
        }
    }

    public void SendData(string message)
    {
        if (stream != null && client.Connected)
        {
            byte[] data = Encoding.UTF8.GetBytes(message);
            stream.Write(data, 0, data.Length);
            Debug.Log("Sent: " + message);
        }
    }

    private void OnDestroy()
    {
        stream?.Close();
        client?.Close();
    }
}
