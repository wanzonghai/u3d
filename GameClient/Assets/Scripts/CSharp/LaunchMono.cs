using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.Networking;
using System;

public class LaunchMono : MonoBehaviour
{
    //属性
    /// <summary>是否启动游戏</summary>
    private static bool LaunchGame = true;
    // Start is called before the first frame update
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

    // Update is called once per frame
    void Update()
    {
        
    }
}
