// PlayerData 类是一个用于存储玩家数据的简单数据类，可以根据实际需求扩展。

// DataManager 类是数据管理器，负责加载、保存和管理玩家数据。它使用了单例模式，确保在整个游戏中只有一个数据管理器实例。

// LoadPlayerData 方法用于加载玩家数据，这里使用了 PlayerPrefs 和 JsonUtility。

// SavePlayerData 方法用于保存玩家数据，同样使用了 PlayerPrefs 和 JsonUtility。

// GetPlayerData 方法用于获取当前玩家数据。

// UpdatePlayerData 方法用于更新玩家数据，并保存。
using System;
using UnityEngine;

[Serializable]
public class PlayerData
{
    public int playerLevel;
    public float playerHealth;
    // 添加其他玩家相关数据
}

public class DataManager : MonoBehaviour
{
    private static DataManager instance;
    public static DataManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = FindObjectOfType<DataManager>();
                if (instance == null)
                {
                    GameObject manager = new GameObject("DataManager");
                    instance = manager.AddComponent<DataManager>();
                }
            }
            return instance;
        }
    }

    private PlayerData playerData;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }

        LoadPlayerData();
    }

    // 从文件或其他持久性存储加载玩家数据
    private void LoadPlayerData()
    {
        // 这里可以使用 PlayerPrefs、JsonUtility、文件读写等方式加载数据
        // 以下示例使用JsonUtility从PlayerPrefs加载玩家数据
        string jsonData = PlayerPrefs.GetString("PlayerData", "");
        if (!string.IsNullOrEmpty(jsonData))
        {
            playerData = JsonUtility.FromJson<PlayerData>(jsonData);
        }
        else
        {
            playerData = new PlayerData();
            SavePlayerData(); // 如果没有数据，则保存一个默认的数据
        }
    }

    // 保存玩家数据到文件或其他持久性存储
    private void SavePlayerData()
    {
        // 这里可以使用 PlayerPrefs、JsonUtility、文件读写等方式保存数据
        // 以下示例使用JsonUtility将玩家数据保存到PlayerPrefs
        string jsonData = JsonUtility.ToJson(playerData);
        PlayerPrefs.SetString("PlayerData", jsonData);
        PlayerPrefs.Save();
    }

    // 获取玩家数据
    public PlayerData GetPlayerData()
    {
        return playerData;
    }

    // 更新玩家数据，并保存
    public void UpdatePlayerData(PlayerData newData)
    {
        playerData = newData;
        SavePlayerData();
    }
}
