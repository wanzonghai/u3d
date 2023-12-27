using UnityEngine;

public class SaveLoadManager : MonoBehaviour
{
    // 保存游戏数据
    public static void SaveGame(int score, string playerName)
    {
        PlayerPrefs.SetInt("Score", score);
        PlayerPrefs.SetString("PlayerName", playerName);
        PlayerPrefs.Save();
    }

    // 加载游戏数据
    public static void LoadGame(out int score, out string playerName)
    {
        score = PlayerPrefs.GetInt("Score", 0);
        playerName = PlayerPrefs.GetString("PlayerName", "DefaultPlayer");
    }

    // 重置游戏数据
    public static void ResetGame()
    {
        PlayerPrefs.DeleteAll();
    }
}
