
using System;
using System.Collections;
using System.IO;
using System.IO.Compression;
using System.Reflection;
using UnityEngine;
using UnityEngine.Networking;

/// <summary>热更管理器</summary>
public class HotFixManager : MonoBehaviour
{
    private static HotFixManager _instance;

    public HotFixManager()
    {
        _instance = this;
    }
    public static HotFixManager GetInstance()
    {
        if (_instance == null)
        {
            GameObject go = new GameObject("HotFixManager");
            DontDestroyOnLoad(go);
            _instance = go.AddComponent<HotFixManager>();
        }
        return _instance;
    }

    void Awake()
    {
        // 确保实例被正确初始化
        if (_instance == null)
        {
            _instance = this;
        }
        else if (_instance != this)
        {
            Destroy(gameObject); // 防止重复实例
        }
    }
    void Start()
    {
        StartCoroutine(OnLaunch());
    }

    /// <summary>启动游戏</summary>
    IEnumerator OnLaunch()
    {
        yield return new WaitForSeconds(0.1f);
        TotalManager.GetInstance();
        yield return null;
    }

    /// <summary>
    /// Start and handle downloading and applying hotfixes or updates.
    /// </summary>
    public void StartPlayAndDown(string url)
    {
        StartCoroutine(DownloadAndApplyHotfix(url));
    }

    private IEnumerator DownloadAndApplyHotfix(string url)
    {
        // 1. 下载热更新包
        using (UnityWebRequest request = UnityWebRequest.Get(url))
        {
            yield return request.SendWebRequest();
            if (request.result != UnityWebRequest.Result.Success)
            {
                Debug.LogError($"下载热更新包失败: {request.error}");
                yield break;
            }

            // 2. 保存热更新包到本地
            string filePath = Path.Combine(Application.persistentDataPath, "hotfix.zip");
            File.WriteAllBytes(filePath, request.downloadHandler.data);

            // 3. 解压热更新包
            try
            {
                ExtractHotfix(filePath);
            }
            catch (Exception ex)
            {
                Debug.LogError($"解压热更新包失败: {ex.Message}");
                yield break;
            }

            // 4. 应用热更新（动态加载新代码或资源）
            ApplyHotfix();

            Debug.Log("热更新完成");
        }
    }

    private void ExtractHotfix(string filePath)
    {
        string extractionPath = Path.Combine(Application.persistentDataPath, "hotfix");

        // 确保目标目录存在
        if (!Directory.Exists(extractionPath))
        {
            Directory.CreateDirectory(extractionPath);
        }

        // 解压文件
        using (FileStream zipToOpen = new FileStream(filePath, FileMode.Open))
        {
            using (ZipArchive archive = new ZipArchive(zipToOpen))
            {
                foreach (ZipArchiveEntry entry in archive.Entries)
                {
                    // 构建解压目标路径
                    string destinationPath = Path.Combine(extractionPath, entry.FullName);

                    // 创建目录
                    if (entry.FullName.EndsWith("/"))
                    {
                        Directory.CreateDirectory(destinationPath);
                    }
                    else
                    {
                        // 解压文件
                        using (Stream reader = entry.Open())
                        using (Stream writer = new FileStream(destinationPath, FileMode.Create))
                        {
                            reader.CopyTo(writer);
                        }
                    }
                }
            }
        }
    }
    private void ApplyHotfix()
    {
        string dllPath = Path.Combine(Application.persistentDataPath, "hotfix", "YourHotfixAssembly.dll");

        if (File.Exists(dllPath))
        {
            Assembly hotfixAssembly = Assembly.LoadFrom(dllPath);

            // 动态加载资源
            string resourcePath = Path.Combine(Application.persistentDataPath, "hotfix", "Resources");
            if (Directory.Exists(resourcePath))
            {
                // 加载资源，例如纹理、预制体等
                // 示例：加载纹理
                string texturePath = Path.Combine(resourcePath, "example.png");
                if (File.Exists(texturePath))
                {
                    byte[] textureData = File.ReadAllBytes(texturePath);
                    Texture2D texture = new Texture2D(2, 2);
                    texture.LoadImage(textureData);
                    // 使用加载的纹理
                }
            }

            // 示例：假设你有一个接口 IHotfixInterface 和实现类 HotfixImplementation
            Type hotfixType = hotfixAssembly.GetType("YourNamespace.HotfixImplementation");
            //if (hotfixType != null && typeof(IHotfixInterface).IsAssignableFrom(hotfixType))
            //{
            //    IHotfixInterface hotfixInstance = (IHotfixInterface)Activator.CreateInstance(hotfixType);
            //    // 调用热更新的方法
            //    hotfixInstance.ApplyHotfix();
            //}
        }
        else
        {
            Debug.LogError($"热更新 DLL 不存在: {dllPath}");
        }
    }

    //public void CheckForUpdates()
    //{
    //    StartCoroutine(CheckForUpdatesCoroutine());
    //}

    //private IEnumerator CheckForUpdatesCoroutine()
    //{
    //    // 假设我们有一个API可以检查更新
    //    // 发送请求到服务器，检查是否有新的更新
    //    yield return new WaitForSeconds(1.0f); // 模拟网络请求延迟

    //    bool updateAvailable = true; // 假设检测到更新
    //    if (updateAvailable)
    //    {
    //        StartCoroutine(DownloadAndApplyUpdates());
    //    }
    //}

    //private IEnumerator DownloadAndApplyUpdates()
    //{
    //    // 下载更新资源
    //    yield return new WaitForSeconds(2.0f); // 模拟下载延迟

    //    // 假设下载成功
    //    Debug.Log("Update downloaded successfully.");

    //    // 应用更新
    //    ApplyUpdates();
    //}

    //private void ApplyUpdates()
    //{
    //    // 替换旧文件或更新应用状态
    //    // 例如，更新资源、脚本等
    //    Debug.Log("Applying updates...");

    //    // 重启应用
    //    RestartApplication();
    //}

    //private void RestartApplication()
    //{
    //    // 在Unity中，重新加载场景来实现应用重启
    //    // 在实际项目中，你可能需要根据具体情况来重启应用
    //    UnityEngine.SceneManagement.SceneManager.LoadScene(UnityEngine.SceneManagement.SceneManager.GetActiveScene().name);
    //}

}