/// <summary>
/// 这个示例通过向 "https://jsonplaceholder.typicode.com/todos/1" 发送一个 GET 
/// /// 请求来获取 JSON 数据。你可以根据自己的需求修改 apiUrl 变量，
/// 并在 GetDataFromServer 方法中执行适当的处理。
///
/// 请注意，上述代码中的请求是在 Start 方法中发送的，这只是为了演示目的。
/// 在实际项目中，你可能会在需要的时候触发网络请求，例如在某个事件、按键按下或特定的游戏状态下。
/// </summary>

using UnityEngine;
using UnityEngine.Networking;
using System.Collections;

public class NetworkTools : MonoBehaviour
{
    private const string apiUrl = "https://jsonplaceholder.typicode.com/todos/1";

    void Start()
    {
        StartCoroutine(GetDataFromServer());
    }

    IEnumerator GetDataFromServer()
    {
        using (UnityWebRequest webRequest = UnityWebRequest.Get(apiUrl))
        {
            // 发送请求并等待返回
            yield return webRequest.SendWebRequest();

            // 检查是否有错误
            if (webRequest.result == UnityWebRequest.Result.ConnectionError ||
                webRequest.result == UnityWebRequest.Result.ProtocolError)
            {
                Debug.LogError("Error: " + webRequest.error);
            }
            else
            {
                // 处理成功的响应
                string jsonResponse = webRequest.downloadHandler.text;
                Debug.Log("Response: " + jsonResponse);
            }
        }
    }
}
