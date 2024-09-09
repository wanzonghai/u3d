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
    private static HTTPManager _instance;

    // 私有构造函数，防止外部实例化
    private HTTPManager() { }

    public static HTTPManager GetInstance()
    {
        if (_instance == null)
        {
            // 尝试找到已经存在的 NetworkManager
            _instance = FindObjectOfType<HTTPManager>();

            if (_instance == null)
            {
                // 如果没有找到，创建一个新的 GameObject 并附加 NetworkManager 组件
                GameObject go = new GameObject("HTTPManager");
                _instance = go.AddComponent<HTTPManager>();
                DontDestroyOnLoad(go);
            }
        }

        return _instance;
    }
    //https://example.com/api/data
    private string url = "http://localhost:8080";

    public delegate void ResponseCallback(string response);

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
    public void StartGetRequest(string url, ResponseCallback callback)
    {
        StartCoroutine(GetRequest(url, callback));
    }

    public void StartPostRequest(string url, string jsonData, ResponseCallback callback)
    {
        StartCoroutine(PostRequest(url, jsonData, callback));
    }
    // GET 请求
    public IEnumerator GetRequest(string url, ResponseCallback callback)
    {
        Debug.Log(" GET 请求" + url);
        using (UnityWebRequest webRequest = UnityWebRequest.Get(url))
        {
            yield return webRequest.SendWebRequest();

            if (webRequest.result == UnityWebRequest.Result.Success)
            {
                Debug.Log("Received: " + webRequest.downloadHandler.text);
                callback?.Invoke(webRequest.downloadHandler.text);
            }
            else
            {
                Debug.LogError("Error: " + webRequest.error);
                // 返回错误信息
                callback?.Invoke(null);
            }
        }
    }


    // POST 请求
    public IEnumerator PostRequest(string url, string jsonData, ResponseCallback callback)
    {
        Debug.Log(" POST 请求"+ url);
        using (UnityWebRequest webRequest = UnityWebRequest.Post(url, jsonData))
        {
            byte[] bodyRaw = System.Text.Encoding.UTF8.GetBytes(jsonData);
            webRequest.uploadHandler = new UploadHandlerRaw(bodyRaw);
            webRequest.SetRequestHeader("Content-Type", "application/json");

            yield return webRequest.SendWebRequest();

            if (webRequest.result == UnityWebRequest.Result.Success)
            {
                Debug.Log("Received: " + webRequest.downloadHandler.text);
                callback?.Invoke(webRequest.downloadHandler.text);
            }
            else
            {
                Debug.LogError("Error: " + webRequest.error);
                callback?.Invoke(null);
            }
        }
    }
}
