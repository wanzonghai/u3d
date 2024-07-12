#if USE_UNI_LUA
using LuaAPI = UniLua.Lua;
using RealStatePtr = UniLua.ILuaState;
using LuaCSFunction = UniLua.CSharpFunctionDelegate;
#else
using LuaAPI = XLua.LuaDLL.Lua;
using RealStatePtr = System.IntPtr;
using LuaCSFunction = XLua.LuaDLL.lua_CSFunction;
#endif

using XLua;
using System.Collections.Generic;


namespace XLua.CSObjectWrap
{
    using Utils = XLua.Utils;
    public class AssetDataPathWrap 
    {
        public static void __Register(RealStatePtr L)
        {
			ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			System.Type type = typeof(AssetDataPath);
			Utils.BeginObjectRegister(type, L, translator, 0, 0, 0, 0);
			
			
			
			
			
			
			Utils.EndObjectRegister(type, L, translator, null, null,
			    null, null, null);

		    Utils.BeginClassRegister(type, L, __CreateInstance, 2, 9, 9);
			Utils.RegisterFunc(L, Utils.CLS_IDX, "GetInstance", _m_GetInstance_xlua_st_);
            
			
            
			Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "ChannelStatus", _g_get_ChannelStatus);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "IsAssetBundle", _g_get_IsAssetBundle);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "IsScriptBundle", _g_get_IsScriptBundle);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "IsLog", _g_get_IsLog);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "IsFps", _g_get_IsFps);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "PersistentDataPath", _g_get_PersistentDataPath);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "StreamingAssetsPath", _g_get_StreamingAssetsPath);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "SandPath", _g_get_SandPath);
            Utils.RegisterFunc(L, Utils.CLS_GETTER_IDX, "OS", _g_get_OS);
            
			Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "ChannelStatus", _s_set_ChannelStatus);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "IsAssetBundle", _s_set_IsAssetBundle);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "IsScriptBundle", _s_set_IsScriptBundle);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "IsLog", _s_set_IsLog);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "IsFps", _s_set_IsFps);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "PersistentDataPath", _s_set_PersistentDataPath);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "StreamingAssetsPath", _s_set_StreamingAssetsPath);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "SandPath", _s_set_SandPath);
            Utils.RegisterFunc(L, Utils.CLS_SETTER_IDX, "OS", _s_set_OS);
            
			
			Utils.EndClassRegister(type, L, translator);
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int __CreateInstance(RealStatePtr L)
        {
            
			try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
				if(LuaAPI.lua_gettop(L) == 1)
				{
					
					var gen_ret = new AssetDataPath();
					translator.Push(L, gen_ret);
                    
					return 1;
				}
				
			}
			catch(System.Exception gen_e) {
				return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
			}
            return LuaAPI.luaL_error(L, "invalid arguments to AssetDataPath constructor!");
            
        }
        
		
        
		
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _m_GetInstance_xlua_st_(RealStatePtr L)
        {
		    try {
            
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
            
            
            
                
                {
                    
                        var gen_ret = AssetDataPath.GetInstance(  );
                        translator.Push(L, gen_ret);
                    
                    
                    
                    return 1;
                }
                
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            
        }
        
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_ChannelStatus(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.xlua_pushinteger(L, AssetDataPath.ChannelStatus);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_IsAssetBundle(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.lua_pushboolean(L, AssetDataPath.IsAssetBundle);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_IsScriptBundle(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.lua_pushboolean(L, AssetDataPath.IsScriptBundle);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_IsLog(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.lua_pushboolean(L, AssetDataPath.IsLog);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_IsFps(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.lua_pushboolean(L, AssetDataPath.IsFps);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_PersistentDataPath(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.lua_pushstring(L, AssetDataPath.PersistentDataPath);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_StreamingAssetsPath(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.lua_pushstring(L, AssetDataPath.StreamingAssetsPath);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_SandPath(RealStatePtr L)
        {
		    try {
            
			    LuaAPI.lua_pushstring(L, AssetDataPath.SandPath);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _g_get_OS(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			    translator.PushOperatingSystem(L, AssetDataPath.OS);
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 1;
        }
        
        
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_ChannelStatus(RealStatePtr L)
        {
		    try {
                
			    AssetDataPath.ChannelStatus = LuaAPI.xlua_tointeger(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_IsAssetBundle(RealStatePtr L)
        {
		    try {
                
			    AssetDataPath.IsAssetBundle = LuaAPI.lua_toboolean(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_IsScriptBundle(RealStatePtr L)
        {
		    try {
                
			    AssetDataPath.IsScriptBundle = LuaAPI.lua_toboolean(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_IsLog(RealStatePtr L)
        {
		    try {
                
			    AssetDataPath.IsLog = LuaAPI.lua_toboolean(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_IsFps(RealStatePtr L)
        {
		    try {
                
			    AssetDataPath.IsFps = LuaAPI.lua_toboolean(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_PersistentDataPath(RealStatePtr L)
        {
		    try {
                
			    AssetDataPath.PersistentDataPath = LuaAPI.lua_tostring(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_StreamingAssetsPath(RealStatePtr L)
        {
		    try {
                
			    AssetDataPath.StreamingAssetsPath = LuaAPI.lua_tostring(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_SandPath(RealStatePtr L)
        {
		    try {
                
			    AssetDataPath.SandPath = LuaAPI.lua_tostring(L, 1);
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
        [MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
        static int _s_set_OS(RealStatePtr L)
        {
		    try {
                ObjectTranslator translator = ObjectTranslatorPool.Instance.Find(L);
			OperatingSystem gen_value;translator.Get(L, 1, out gen_value);
				AssetDataPath.OS = gen_value;
            
            } catch(System.Exception gen_e) {
                return LuaAPI.luaL_error(L, "c# exception:" + gen_e);
            }
            return 0;
        }
        
		
		
		
		
    }
}
