
using System.Collections;
using UnityEngine;

/// <summary>热更管理器</summary>
public class HotFixManager : MonoBehaviour
{
    private static HotFixManager _instance;

    public HotFixManager()
    {
        _instance = this;
    }
    public static HotFixManager GetInstance()
    {
        if (_instance != null)
        {
            return _instance;
        }
        GameObject go = new GameObject("HitFixManager");
        DontDestroyOnLoad(go);
        return go.AddComponent<HotFixManager>();
    }


    void Start()
    {
        StartCoroutine("OnLaunch");
    }

    /// <summary>启动游戏</summary>
    IEnumerator  OnLaunch()
    {
        yield return new WaitForSeconds(0.1f);
        TotalManager.GetInstance();
        yield return null;
    }
}