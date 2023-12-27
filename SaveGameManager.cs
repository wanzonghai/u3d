// PlayerData 类用于存储玩家的游戏数据。SaveGameManager 类是一个单例，负责保存和加载游戏进度。
// 你可以根据游戏的需要添加更多的字段和方法。
// 在GameLogic类中，LoadPlayerData 方法在游戏开始时加载玩家的数据，SavePlayerData 方法在游戏退出时保存玩家的数据。
// 你还可以使用 DeleteSave 方法删除存档

using System;
using System.IO;
using UnityEngine;

[Serializable]
public class PlayerData
{
    public int playerScore;
    // 添加其他需要保存的玩家数据字段
}

public class SaveGameManager : MonoBehaviour
{
    public static SaveGameManager Instance;

    private string savePath;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
            savePath = Application.persistentDataPath + "/savegame.json";
        }
        else
        {
            Destroy(gameObject);
        }
    }

    public void SaveGame(PlayerData playerData)
    {
        string jsonData = JsonUtility.ToJson(playerData);
        File.WriteAllText(savePath, jsonData);
    }

    public PlayerData LoadGame()
    {
        if (File.Exists(savePath))
        {
            string jsonData = File.ReadAllText(savePath);
            return JsonUtility.FromJson<PlayerData>(jsonData);
        }
        else
        {
            Debug.LogWarning("Save file not found.");
            return null;
        }
    }

    public void DeleteSave()
    {
        if (File.Exists(savePath))
        {
            File.Delete(savePath);
        }
        else
        {
            Debug.LogWarning("No save file to delete.");
        }
    }
}
>>>>>>>>>>>>>>>>>>>>>使用示例：
public class GameLogic : MonoBehaviour
{
    private PlayerData currentPlayerData;

    private void Start()
    {
        LoadPlayerData();
        // 在这里添加其他游戏逻辑
    }

    private void LoadPlayerData()
    {
        currentPlayerData = SaveGameManager.Instance.LoadGame();
        if (currentPlayerData == null)
        {
            // 如果没有存档，创建一个新的PlayerData对象
            currentPlayerData = new PlayerData();
        }
    }

    private void SavePlayerData()
    {
        SaveGameManager.Instance.SaveGame(currentPlayerData);
    }

    private void DeleteSave()
    {
        SaveGameManager.Instance.DeleteSave();
    }

    private void OnDestroy()
    {
        SavePlayerData();
    }
}
