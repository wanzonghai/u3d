using UnityEngine;

public class AspectRatioEnforcer : MonoBehaviour
{
    // 设定期望的宽高比
    public float targetAspectRatio = 16f / 9f;

    private Camera mainCamera;

    void Start()
    {
        mainCamera = Camera.main;

        if (mainCamera == null)
        {
            Debug.LogError("Main camera not found!");
            return;
        }

        EnforceAspectRatio();
    }

    void Update()
    {
        // 检测屏幕大小是否改变
        if (Screen.width != Screen.currentResolution.width || Screen.height != Screen.currentResolution.height)
        {
            EnforceAspectRatio();
        }
    }

    void EnforceAspectRatio()
    {
        // 计算当前屏幕的宽高比
        float currentAspectRatio = (float)Screen.width / Screen.height;

        // 计算摄像机需要调整的大小
        float newOrthographicSize = mainCamera.orthographicSize * (targetAspectRatio / currentAspectRatio);

        // 调整摄像机的orthographicSize
        mainCamera.orthographicSize = newOrthographicSize;
    }
}


// 创建了一个 ScreenManager 类，使用单例模式确保只有一个实例存在。
// 它包含了两个方法：ChangeScene 用于切换场景，SetResolution 用于设置分辨率。

// 你可以在其他脚本中通过 ScreenManager.Instance.ChangeScene("YourSceneName") 来切换场景，
// 通过 ScreenManager.Instance.SetResolution(width, height, fullscreen) 来设置分辨率。
using UnityEngine;
using UnityEngine.SceneManagement;

public class ScreenManager : MonoBehaviour
{
    // 单例模式
    private static ScreenManager instance;
    public static ScreenManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = FindObjectOfType<ScreenManager>();
                if (instance == null)
                {
                    GameObject obj = new GameObject("ScreenManager");
                    instance = obj.AddComponent<ScreenManager>();
                }
            }
            return instance;
        }
    }

    // 切换场景
    public void ChangeScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }

    // 设置分辨率
    public void SetResolution(int width, int height, bool fullscreen)
    {
        Screen.SetResolution(width, height, fullscreen);
    }
}
