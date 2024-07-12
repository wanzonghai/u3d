using System;
using System.Collections;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.Networking;

public class LaunchMono : MonoBehaviour
{
    //属性
    /// <summary>是否启动游戏</summary>
    private static bool LaunchGame = true;

    //活动
    /// <summary>启动</summary>
    IEnumerator Start()
    {
        if (!LaunchGame)
			yield break;
        LaunchGame = false;

        //初始化运行环境
        AssetDataPath.GetInstance();

        Debug.Log("开始检测热更");
        HotFixManager.GetInstance();
    }
}