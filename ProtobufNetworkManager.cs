using UnityEngine;
using YourNamespace;  // 替换成你的命名空间
using Google.Protobuf;

public class ProtobufNetworkManager : MonoBehaviour
{
    private const string baseUrl = "https://your-api-endpoint.com";

    void Start()
    {
        // 发送POST请求
        SendProtobufRequest(new MyMessage { Id = 1, Name = "John" });
    }

    private void SendProtobufRequest(MyMessage message)
    {
        StartCoroutine(PostRequest(message));
    }

    IEnumerator PostRequest(MyMessage message)
    {
        // 将MyMessage序列化为字节数组
        byte[] data = message.ToByteArray();

        // 发送POST请求
        using (WWW www = new WWW(baseUrl, data))
        {
            yield return www;

            if (string.IsNullOrEmpty(www.error))
            {
                // 成功接收到响应
                byte[] responseData = www.bytes;

                // 将字节数组反序列化为MyMessage
                MyMessage responseMessage = MyMessage.Parser.ParseFrom(responseData);

                Debug.Log("Received response: " + responseMessage);
            }
            else
            {
                // 请求失败
                Debug.LogError("Request Error: " + www.error);
            }
        }
    }
}
// ，SendProtobufRequest 方法创建了一个MyMessage对象，然后通过ToByteArray方法将其序列化为字节数组。接着，使用Unity的WWW类发送了一个POST请求，将序列化后的数据作为请求体发送到服务器。

// 在服务器端，你需要解析接收到的字节数组，并将其反序列化为你的protobuf消息。服务器端的代码可能会使用protobuf库的相应方法来实现这一点，具体实现取决于你使用的服务器端编程语言。