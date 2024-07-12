﻿using XLua;

[LuaCallCSharp]
[ReflectionUse]
public static class UnityEngineObjectExtention
{
    public static bool IsNull(this UnityEngine.Object o)
    {
        return o == null;
    }

    public static bool IsNull(this UnityEngine.TrackedReference o)
    {
        return o == null;
    }
}
