using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XLua;
using System.IO;

/// <summary>游戏的总管理器</summary>
public class TotalManager : MonoBehaviour
{
    private static TotalManager _instance;

    public TotalManager()
    {
        _instance = this;
    }
    public static TotalManager GetInstance()
    {
        if (_instance != null)
        {
            return _instance;
        }
        GameObject go = new GameObject("TotalManager");
        DontDestroyOnLoad(go);

        return go.AddComponent<TotalManager>();
    }

    private LuaEnv _luaEnv = new LuaEnv();
    private LuaTable _scriptEnv;
    private Action _luaUpdate;
    private Action _luaLateUpdate;
    private LuaFunction _luaCommand;
    private Action _luaLowMemory;
    private bool _initialization = false;

    IEnumerator Start()
    {
        //设置目标帧率
        Application.targetFrameRate = 60;
        //设置品质
        QualitySettings.SetQualityLevel(3);
        yield return ABDLManager.GetInstance().WriteDependencies();

        //加载lua和配置表文件
        yield return GameUtils.LoadABBytes();
        //设置lua的loader
        _luaEnv.AddLoader((ref string path) =>
        {
            return GameUtils.ReadAllBytesByBundle(ref path);
        });
        _luaEnv.AddBuildin("rapidjson", XLua.LuaDLL.Lua.LoadRapidJson);
        _luaEnv.AddBuildin("lpeg", XLua.LuaDLL.Lua.LoadLpeg);
        //_luaEnv.AddBuildin("protobuf.c", XLua.LuaDLL.Lua.LoadProtobufC);

        _scriptEnv = _luaEnv.NewTable();
        LuaTable meta = _luaEnv.NewTable();
        meta.Set("__index", _luaEnv.Global);
        _scriptEnv.SetMetaTable(meta);
        meta.Dispose();

        _scriptEnv.Set("self", this);

        _luaEnv.DoString("require 'Launch'", "Launch", _scriptEnv);
        GooglePlay a = GooglePlay.GetInstance();
        OnLuaInitialization();
    }
    
    public void OnLuaInitialization()
    {
        Debug.Log("Lua初始化");
        Action luaStart = _scriptEnv.Get<Action>("LaunchStart");
        _scriptEnv.Get("LaunchUpdate", out _luaUpdate);
        _scriptEnv.Get("LaunchLateUpdate", out _luaLateUpdate);
        _scriptEnv.Get("LaunchCommand", out _luaCommand);
        _scriptEnv.Get("OnLowMemory", out _luaLowMemory);
        if (luaStart != null) luaStart();

        GameUtils.UnLoadABBytes();
        Application.lowMemory += OnLowMemory;
        _initialization = true;
    }

    void Update()
    {
        if (!_initialization) return;
        try
        {
            _luaUpdate();
        }
        catch (Exception e)
        {
            Debug.LogException(e);
        }
    }

    void LateUpdate()
    {
        if (!_initialization) return;
        try
        {
            if (!_initialization) return;
            _luaLateUpdate();
            _luaEnv.Tick();
        }
        catch (Exception e)
        {
            Debug.LogException(e);
        }
    }

    void OnDestroy()
    {
    }

    void OnApplicationPause(bool paused)
    {
        if(_luaCommand!=null)
            _luaCommand.Call("ApplicationPause", paused);
    }

    void OnApplicationQuit()
    {
        //程序退出时                                    
    }

    void OnLowMemory()
    {
        _luaLowMemory();
    }

    public LuaTable ScriptEnv
    {
        get { return _scriptEnv; }
    }
    public LuaFunction LuaCommand
    {
        get { return _luaCommand; }
    }
    public bool Initialization
    {
        get { return _initialization; }
    }
}