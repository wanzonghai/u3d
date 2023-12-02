using UnityEngine;
using System.IO;
using StuctsCom;
using System;

[Serializable]
public class ComSetData : IComSetData
{
    public bool IsAgree { get; set; }
    public bool IsOpen { get; set; }
    
}
public class User : IUserData
{
    public string Username { get; set; }
    public int Score { get; set; }

    private string dataFilePath;

    public User()
    {
        // 定义用户数据保存文件的路径
        dataFilePath = Application.persistentDataPath + "/userdata.json";
    }

    public void SaveUserData()
    {
        // 创建一个用户数据对象
        UserData userData = new UserData
        {
            Username = Username,
            Score = Score
        };

        // 将用户数据对象序列化为 JSON 格式
        string json = JsonUtility.ToJson(userData);

        // 将 JSON 数据写入文件
        File.WriteAllText(dataFilePath, json);

      //  Debug.Log("User data saved: Username - " + Username + ", Score - " + Score);
    }

    public void LoadUserData()
    {
        if (File.Exists(dataFilePath))
        {
            // 从文件中读取 JSON 数据
            string json = File.ReadAllText(dataFilePath);

            // 将 JSON 数据反序列化为用户数据对象
            UserData userData = JsonUtility.FromJson<UserData>(json);

            // 更新用户数据
            Username = userData.Username;
            Score = userData.Score;

           // Debug.Log("User data loaded: Username - " + Username + ", Score - " + Score);
        }
        else
        {
            Debug.Log("User data file not found. Using default values.");
            // 如果文件不存在，设置默认值
            Username = "Guest";
            Score = 0;
        }
    }
}
