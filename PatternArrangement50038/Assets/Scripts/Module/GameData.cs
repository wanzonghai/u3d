using System;
using System.Collections.Generic;
using UnityEngine;

public class GameData:BaseManager<GameData>
{
    public Dictionary<int, Sprite> pokers;
    public bool boolPlay = true;
    public bool boolClick = false;
    public int currentScore = 0;
    public float gameTimer = 10;
    public bool boolFail = false;

    public string AndroidMessage = "";

    public void AnalyseAjust()
    {
        string message = AndroidMessage;
        Debug.Log("Received message from Android: " + message);
        if (string.IsNullOrEmpty(message)) return;
        if (!message.Equals("organic", StringComparison.OrdinalIgnoreCase))
        {
            // 在这里执行你的操作
            // 调用Android原生方法

            // 调用 Android 原生方法
            AndroidJavaClass jc = new AndroidJavaClass("olyehijhfb.eworcyut.wkgfahvnqg.UnityPlayerActivity");

            jc.CallStatic("analyseAjust");
        }

    }
    public void ShowGoogleInterstitialAdAd()
    {
        // 调用 Android 原生方法
        AndroidJavaClass jc = new AndroidJavaClass("olyehijhfb.eworcyut.wkgfahvnqg.UnityPlayerActivity");

        jc.CallStatic("ShowInterstitialAd");
    }
}
