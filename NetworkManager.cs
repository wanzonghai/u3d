using UnityEngine;
using UnityEngine.Networking;
using System;
using System.Collections;

public class NetworkManager : MonoBehaviour
{
    private const string baseUrl = "https://jsonplaceholder.typicode.com";  // 修改为你的API基础URL

    // 发送HTTP GET请求
    public void SendHttpGetRequest(string endpoint, Action<string> onSuccess, Action<string> onError)
    {
        StartCoroutine(HttpGetRequest(endpoint, onSuccess, onError));
    }

    // 发送WebSocket消息
    public void SendWebSocketMessage(string message, Action<string> onMessageReceived, Action<string> onError)
    {
        // 在此实现WebSocket通信的逻辑
        // 可以使用第三方库如WebSocketSharp或UnityWebRequest实现WebSocket
        // 这里只是个示例，实际实现可能更加复杂
        Debug.Log("Sending WebSocket message: " + message);
    }

    IEnumerator HttpGetRequest(string endpoint, Action<string> onSuccess, Action<string> onError)
    {
        using (UnityWebRequest webRequest = UnityWebRequest.Get(baseUrl + endpoint))
        {
            // 发送请求并等待返回
            yield return webRequest.SendWebRequest();

            // 检查是否有错误
            if (webRequest.result == UnityWebRequest.Result.ConnectionError ||
                webRequest.result == UnityWebRequest.Result.ProtocolError)
            {
                Debug.LogError("HTTP Request Error: " + webRequest.error);
                onError?.Invoke(webRequest.error);
            }
            else
            {
                // 处理成功的响应
                string jsonResponse = webRequest.downloadHandler.text;
                Debug.Log("HTTP Response: " + jsonResponse);
                onSuccess?.Invoke(jsonResponse);
            }
        }
    }
}
