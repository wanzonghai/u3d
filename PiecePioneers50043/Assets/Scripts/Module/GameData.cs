using System;
using System.Collections.Generic;
using UnityEngine;

public class GameData:BaseManager<GameData>
{
    public Dictionary<string, Sprite> pictures1 = new Dictionary<string, Sprite>();
    public Dictionary<string, Sprite> pictures2 = new Dictionary<string, Sprite>();
    public Dictionary<Transform, Vector3> initialPositions;
    public bool boolPlay = true;
    public bool boolClick = false;
    public bool isGameStart = false;
    public int currentScore = 0;
    public float gameTimer = 10;
    public bool boolFail = false;
    public int gameType = 1;

    public string AndroidMessage = "";
    public bool getMessge = false;

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
            AndroidJavaClass jc = new AndroidJavaClass("pzfoqzxt.pmehbfuz.sxkiwtapgzp.UnityPlayerActivity");

            jc.CallStatic("analyseAjust");
        }
        else
        {

            Debug.Log("开屏广告"+ getMessge);
            ShowGoogleOpenAd();
        }

    }

    public void ShowGoogleOpenAd()
    {
        // 调用 Android 原生方法
        AndroidJavaClass jc = new AndroidJavaClass("pzfoqzxt.pmehbfuz.sxkiwtapgzp.UnityPlayerActivity");

        jc.CallStatic("showAppOpenAd");
    }
    public void ShowGoogleInterstitialAdAd()
    {
        // 调用 Android 原生方法
        AndroidJavaClass jc = new AndroidJavaClass("pzfoqzxt.pmehbfuz.sxkiwtapgzp.UnityPlayerActivity");

        jc.CallStatic("ShowInterstitialAd");
    }
}
