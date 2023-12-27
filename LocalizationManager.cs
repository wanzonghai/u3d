// 单例模式： 确保只有一个 LocalizationManager 实例存在。
// 初始化本地化系统： 在 Awake 方法中初始化本地化系统，可以通过加载文本文件或其他方式获取不同语言的文本信息。
// 获取本地化文本： 通过 GetLocalizedText 方法根据键值获取当前语言下的文本信息。
// 切换语言： 通过 ChangeLanguage 方法切换当前语言，这可以触发 UI 文本的更新等操作。

using System.Collections.Generic;
using UnityEngine;

public class LocalizationManager : MonoBehaviour
{
    // 单例模式
    private static LocalizationManager instance;
    public static LocalizationManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = FindObjectOfType<LocalizationManager>();
                if (instance == null)
                {
                    GameObject obj = new GameObject("LocalizationManager");
                    instance = obj.AddComponent<LocalizationManager>();
                }
            }
            return instance;
        }
    }

    // 当前语言
    private string currentLanguage = "en"; // 默认英语
    public string CurrentLanguage
    {
        get { return currentLanguage; }
    }

    // 语言字典，存储不同语言的文本信息
    private Dictionary<string, Dictionary<string, string>> languageDictionary;

    // 初始化
    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
            InitializeLocalization();
        }
        else
        {
            Destroy(gameObject);
        }
    }

    // 初始化本地化系统
    private void InitializeLocalization()
    {
        // 这里可以加载不同语言的文本文件，将其存储在 languageDictionary 中
        // 为了简单起见，这里使用硬编码的方式示例
        languageDictionary = new Dictionary<string, Dictionary<string, string>>
        {
            {
                "en", new Dictionary<string, string>
                {
                    { "greeting", "Hello, World!" },
                    { "farewell", "Goodbye!" }
                }
            },
            {
                "zh", new Dictionary<string, string>
                {
                    { "greeting", "你好，世界！" },
                    { "farewell", "再见！" }
                }
            }
            // 可以添加更多语言的文本信息
        };
    }

    // 获取本地化文本
    public string GetLocalizedText(string key)
    {
        if (languageDictionary.ContainsKey(currentLanguage) && languageDictionary[currentLanguage].ContainsKey(key))
        {
            return languageDictionary[currentLanguage][key];
        }
        else
        {
            return "Key not found";
        }
    }

    // 切换语言
    public void ChangeLanguage(string newLanguage)
    {
        if (languageDictionary.ContainsKey(newLanguage))
        {
            currentLanguage = newLanguage;
            // 这里可以添加更新 UI 文本的逻辑，通知游戏中的其他对象语言变更
        }
        else
        {
            Debug.LogWarning("Language not supported: " + newLanguage);
        }
    }
}
