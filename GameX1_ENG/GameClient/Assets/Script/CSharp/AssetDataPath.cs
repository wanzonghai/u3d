using System;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class AssetDataPath
{
    public static int ChannelStatus = 2;//多语言版本用  0代表编辑器，1代表微信小程序 2代表GoogleAndroid
    public static bool IsAssetBundle = false;//资源用asset的开关
    public static bool IsScriptBundle = false;//代码用asset的开关
    public static bool IsLog = false;//打印开关,是否打印
    public static bool IsFps = false;//帧率开关,默认关

	public static string PersistentDataPath;//安装包外部扩展路径,热更资源路径
	public static string StreamingAssetsPath;//安装包内部路径,WWW用沙盒路径
    public static string SandPath;//PC端有时候加载图片会有BUG，加一个沙盒处理,AssetBundle.LoadFromFile用沙盒路径
	public static OperatingSystem OS;//运行平台
    public static bool showEception = false;

    private static AssetDataPath _instance;
    public AssetDataPath()
    {
        if (_instance != null) throw new Exception("单件实例错误");
        _instance = this;
		
        SandPath = Application.streamingAssetsPath;
        StreamingAssetsPath = SandPath + Path.AltDirectorySeparatorChar;
        PersistentDataPath = Application.persistentDataPath + Path.AltDirectorySeparatorChar;

        Screen.sleepTimeout = SleepTimeout.NeverSleep;
        if (Application.platform == RuntimePlatform.WindowsEditor || Application.platform == RuntimePlatform.OSXEditor)
        {
            StreamingAssetsPath = "file://" + StreamingAssetsPath;
            PersistentDataPath = "file://" + PersistentDataPath;

            OS = OperatingSystem.Editor;
        }
        else if(Application.platform == RuntimePlatform.WindowsPlayer || Application.platform == RuntimePlatform.OSXPlayer)
        {
            StreamingAssetsPath = "file://" + StreamingAssetsPath;
            PersistentDataPath = "file://" + PersistentDataPath;

            OS = OperatingSystem.WINDOWS;
        }
        else if (Application.platform == RuntimePlatform.Android)
        {
            PersistentDataPath = "file://" + PersistentDataPath;
			
            OS = OperatingSystem.ANDROID;
        }
        else if (Application.platform == RuntimePlatform.IPhonePlayer)
        {
            StreamingAssetsPath = "file://" + SandPath + Path.AltDirectorySeparatorChar;
            PersistentDataPath = "file://" + PersistentDataPath;
			
            OS = OperatingSystem.IOS;
        }
		
        //Application.logMessageReceived += HandleLog;
    }

    //unity报错信息监听，方便后面消息管理
    /*private static HashSet<string> LogHashSave = new HashSet<string>();
    private void HandleLog(string logString, string stackTrace, LogType type)
    {
        if (type == LogType.Log) return;
        if (type == LogType.Warning) return;
        string s = logString + "\n" + stackTrace;
        if (LogHashSave.Contains(s)) return;
        LogHashSave.Add(s);
    }*/

    public static AssetDataPath GetInstance()
    {
        if (_instance != null) return _instance;
        return new AssetDataPath();
    }
}

public enum OperatingSystem
{
    Editor = 0,
    ANDROID = 1,
    IOS = 2,
    WINDOWS = 3,
}