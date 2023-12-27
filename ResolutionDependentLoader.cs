using UnityEngine;

public class ResolutionDependentLoader : MonoBehaviour
{
    public string resourcePath = "Textures/"; // 资源路径，相对于Resources文件夹
    public string resourceName = "exampleTexture"; // 资源名称

    void Start()
    {
        LoadResolutionDependentResource();
    }

    void LoadResolutionDependentResource()
    {
        string fullPath = resourcePath + GetResolutionFolder() + resourceName;
        Texture2D loadedTexture = Resources.Load<Texture2D>(fullPath);

        if (loadedTexture != null)
        {
            // 成功加载资源，可以在这里使用 loadedTexture
            Debug.Log("Loaded texture: " + fullPath);
        }
        else
        {
            Debug.LogError("Failed to load texture: " + fullPath);
        }
    }

    string GetResolutionFolder()
    {
        // 获取当前屏幕分辨率的文件夹名称
        float aspectRatio = (float)Screen.width / Screen.height;

        if (aspectRatio > 1.6f)
        {
            return "16x9/";
        }
        else
        {
            return "4x3/";
        }
    }
}
