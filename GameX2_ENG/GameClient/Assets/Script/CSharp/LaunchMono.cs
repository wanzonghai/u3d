using System.Collections;
using UnityEngine;
using Firebase;
using Firebase.Crashlytics;

public class LaunchMono : MonoBehaviour
{
    //属性
    /// <summary>是否启动游戏</summary>
    private static bool LaunchGame = true;

    int updatesBeforeException;
    bool isFirebaseInited = false;

    //活动
    /// <summary>启动</summary>
    IEnumerator Start()
    {
        if (!LaunchGame)
			yield break;
        LaunchGame = false;
        updatesBeforeException = 0; 

        //初始化运行环境
        AssetDataPath.GetInstance();

        Debug.Log("开始检测热更");
        HotFixManager.GetInstance();

         FirebaseApp.CheckAndFixDependenciesAsync().ContinueWith(task => {
            var dependencyStatus = task.Result;
            if (dependencyStatus == DependencyStatus.Available)
            {
                Debug.LogError("Start");
                FirebaseApp app = FirebaseApp.DefaultInstance;
                Crashlytics.ReportUncaughtExceptionsAsFatal = true;
                //FirebaseApp.LogLevel = LogLevel.Debug;
                isFirebaseInited = true;
            }
            else
            {
                Debug.LogError(System.String.Format("Could not resolve all Firebase dependencies: {0}",dependencyStatus));
            }
        });
    }

    void Update()
    {
        if(AssetDataPath.showEception && isFirebaseInited) 
            throwExceptionEvery60Updates();
    }

    void throwExceptionEvery60Updates()
    {
        if (updatesBeforeException > 0)
        {
            updatesBeforeException--;
        }
        else
        {
            updatesBeforeException = 60;
            throw new System.Exception("test exception please ignore");
        }
    }
}