using UnityEngine;

public class L
{
    public static void Log(string s)
    {
        if (!AssetDataPath.IsLog) return;
        Debug.Log(s);

        //屏幕log
        //FPS.Log(s);
    }

    public static void LogError(string s)
    {
        Debug.LogError(s);

        //屏幕log
        //FPS.Log(s);
    }
}
