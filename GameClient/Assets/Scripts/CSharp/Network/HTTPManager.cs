using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
/// <summary>
/// 优点：
///适用于请求 - 响应模式。
///处理简单的数据交互或非实时操作。
///广泛支持 RESTful API、JSON 等格式。
///缺点：
///不适合高频或实时的通信。
///依赖服务器的响应速度。
/// </summary>
public class HTTPManager : MonoBehaviour
{
    private string url = "https://example.com/api/data";

    // GET 请求
    public IEnumerator GetRequest()
    {
        using (UnityWebRequest webRequest = UnityWebRequest.Get(url))
        {
            yield return webRequest.SendWebRequest();

            if (webRequest.result == UnityWebRequest.Result.Success)
            {
                Debug.Log("Received: " + webRequest.downloadHandler.text);
            }
            else
            {
                Debug.LogError("Error: " + webRequest.error);
            }
        }
    }


    // POST 请求
    public IEnumerator PostRequest(string jsonData)
    {
        using (UnityWebRequest webRequest = UnityWebRequest.Post(url, jsonData))
        {
            byte[] bodyRaw = System.Text.Encoding.UTF8.GetBytes(jsonData);
            webRequest.uploadHandler = new UploadHandlerRaw(bodyRaw);
            webRequest.SetRequestHeader("Content-Type", "application/json");

            yield return webRequest.SendWebRequest();

            if (webRequest.result == UnityWebRequest.Result.Success)
            {
                Debug.Log("Received: " + webRequest.downloadHandler.text);
            }
            else
            {
                Debug.LogError("Error: " + webRequest.error);
            }
        }
    }
}
