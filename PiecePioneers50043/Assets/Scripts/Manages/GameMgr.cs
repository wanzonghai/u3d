using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

public  class GameMgr : BaseManager<GameMgr>
{
    private IUserData userData;
    public void InitGameData()
    {
        // 初始化用户数据对象（实际项目中可能需要依赖注入或其他方式获取用户数据对象）
        userData = new User();
        // 加载用户数据
        userData.LoadUserData();
        // 输出用户数据
      //  Debug.Log("Initial User Data: Username - " + userData.Username + ", Score - " + userData.Score);

        // 模拟更新用户分数
        UpdateUserScore(100);
    }
    private void UpdateUserScore(int newScore)
    {
        // 更新用户分数
        userData.Score = newScore;
        userData.SaveUserData();
      //  Debug.Log("Updated User Data: Username - " + userData.Username + ", Score - " + userData.Score);
    }
    private bool isMusicMuted()
    {
        // 在游戏启动或用户第一次登录时，检查是否存在音乐状态的存储
        if (!PlayerPrefs.HasKey("MusicMuted"))
        {
            // 如果不存在，创建默认值
            PlayerPrefs.SetInt("MusicMuted", 0); // 默认值是音乐未静音
        }

        // 从本地存储中检索音乐关闭状态
        return  PlayerPrefs.GetInt("MusicMuted") == 1;
    }


    // 存储接口类型的对象
    public static void SetPlayerPrefsValue<T>(string key, T value)
    {
        string json = JsonUtility.ToJson(value);

        PlayerPrefs.SetString(key, json);
        PlayerPrefs.Save();
    }

    // 读取接口类型的对象
    public static T GetPlayerPrefsValue<T>(string key)
    {
        if (PlayerPrefs.HasKey(key))
        {
            string json = PlayerPrefs.GetString(key);
            return JsonUtility.FromJson<T>(json);
        }
        return default(T);
    }

    // 检查键是否存在
    public static bool KeyExists(string key)
    {
        return PlayerPrefs.HasKey(key);
    }
    /*  // 存储数据
      public static void SetPlayerPrefsValue(string key, object value)
      {
          PlayerPrefs.SetString(key, Convert.ToString(value));
          PlayerPrefs.Save();
      }
      // 读取数据
      public static T GetPlayerPrefsValue<T>(string key)
      {
          if (KeyExists(key))
          {
              string stringValue = PlayerPrefs.GetString(key);
              return (T)Convert.ChangeType(stringValue, typeof(T));
          }
          return default(T);
      }

      // 检查键是否存在
      public static bool KeyExists(string key)
      {
          return PlayerPrefs.HasKey(key);
      }*/
}

