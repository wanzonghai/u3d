#if USE_UNI_LUA
using LuaAPI = UniLua.Lua;
using RealStatePtr = UniLua.ILuaState;
using LuaCSFunction = UniLua.CSharpFunctionDelegate;
#else
using LuaAPI = XLua.LuaDLL.Lua;
using RealStatePtr = System.IntPtr;
using LuaCSFunction = XLua.LuaDLL.lua_CSFunction;
#endif

using System;


namespace XLua
{
    public partial class ObjectTranslator
    {
        
        class IniterAdderUnityEngineKeyframe
        {
            static IniterAdderUnityEngineKeyframe()
            {
                LuaEnv.AddIniter(Init);
            }
			
			static void Init(LuaEnv luaenv, ObjectTranslator translator)
			{
			
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Keyframe>(translator.PushUnityEngineKeyframe, translator.Get, translator.UpdateUnityEngineKeyframe);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.WrapMode>(translator.PushUnityEngineWrapMode, translator.Get, translator.UpdateUnityEngineWrapMode);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.SceneManagement.LoadSceneMode>(translator.PushUnityEngineSceneManagementLoadSceneMode, translator.Get, translator.UpdateUnityEngineSceneManagementLoadSceneMode);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.AI.ObstacleAvoidanceType>(translator.PushUnityEngineAIObstacleAvoidanceType, translator.Get, translator.UpdateUnityEngineAIObstacleAvoidanceType);
				translator.RegisterPushAndGetAndUpdate<DG.Tweening.Ease>(translator.PushDGTweeningEase, translator.Get, translator.UpdateDGTweeningEase);
				translator.RegisterPushAndGetAndUpdate<OperatingSystem>(translator.PushOperatingSystem, translator.Get, translator.UpdateOperatingSystem);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.RenderMode>(translator.PushUnityEngineRenderMode, translator.Get, translator.UpdateUnityEngineRenderMode);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.CameraClearFlags>(translator.PushUnityEngineCameraClearFlags, translator.Get, translator.UpdateUnityEngineCameraClearFlags);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.AI.NavMeshPathStatus>(translator.PushUnityEngineAINavMeshPathStatus, translator.Get, translator.UpdateUnityEngineAINavMeshPathStatus);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.ParticleSystemCurveMode>(translator.PushUnityEngineParticleSystemCurveMode, translator.Get, translator.UpdateUnityEngineParticleSystemCurveMode);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Mathf>(translator.PushUnityEngineMathf, translator.Get, translator.UpdateUnityEngineMathf);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.KeyCode>(translator.PushUnityEngineKeyCode, translator.Get, translator.UpdateUnityEngineKeyCode);
				translator.RegisterPushAndGetAndUpdate<DownLoaderState>(translator.PushDownLoaderState, translator.Get, translator.UpdateDownLoaderState);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Networking.UnityWebRequest.Result>(translator.PushUnityEngineNetworkingUnityWebRequestResult, translator.Get, translator.UpdateUnityEngineNetworkingUnityWebRequestResult);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Rendering.Universal.CameraRenderType>(translator.PushUnityEngineRenderingUniversalCameraRenderType, translator.Get, translator.UpdateUnityEngineRenderingUniversalCameraRenderType);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.SpriteMaskInteraction>(translator.PushUnityEngineSpriteMaskInteraction, translator.Get, translator.UpdateUnityEngineSpriteMaskInteraction);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.AnimatorStateInfo>(translator.PushUnityEngineAnimatorStateInfo, translator.Get, translator.UpdateUnityEngineAnimatorStateInfo);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Vector2>(translator.PushUnityEngineVector2, translator.Get, translator.UpdateUnityEngineVector2);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Vector3>(translator.PushUnityEngineVector3, translator.Get, translator.UpdateUnityEngineVector3);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Vector4>(translator.PushUnityEngineVector4, translator.Get, translator.UpdateUnityEngineVector4);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Color>(translator.PushUnityEngineColor, translator.Get, translator.UpdateUnityEngineColor);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Quaternion>(translator.PushUnityEngineQuaternion, translator.Get, translator.UpdateUnityEngineQuaternion);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Ray>(translator.PushUnityEngineRay, translator.Get, translator.UpdateUnityEngineRay);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Bounds>(translator.PushUnityEngineBounds, translator.Get, translator.UpdateUnityEngineBounds);
				translator.RegisterPushAndGetAndUpdate<UnityEngine.Ray2D>(translator.PushUnityEngineRay2D, translator.Get, translator.UpdateUnityEngineRay2D);
			
			}
        }
        
        static IniterAdderUnityEngineKeyframe s_IniterAdderUnityEngineKeyframe_dumb_obj = new IniterAdderUnityEngineKeyframe();
        static IniterAdderUnityEngineKeyframe IniterAdderUnityEngineKeyframe_dumb_obj {get{return s_IniterAdderUnityEngineKeyframe_dumb_obj;}}
        
        
        int UnityEngineKeyframe_TypeID = -1;
        public void PushUnityEngineKeyframe(RealStatePtr L, UnityEngine.Keyframe val)
        {
            if (UnityEngineKeyframe_TypeID == -1)
            {
			    bool is_first;
                UnityEngineKeyframe_TypeID = getTypeId(L, typeof(UnityEngine.Keyframe), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 0, UnityEngineKeyframe_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Keyframe ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Keyframe val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineKeyframe_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Keyframe");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Keyframe");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Keyframe)objectCasters.GetCaster(typeof(UnityEngine.Keyframe))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineKeyframe(RealStatePtr L, int index, UnityEngine.Keyframe val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineKeyframe_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Keyframe");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Keyframe ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineWrapMode_TypeID = -1;
		int UnityEngineWrapMode_EnumRef = -1;
        
        public void PushUnityEngineWrapMode(RealStatePtr L, UnityEngine.WrapMode val)
        {
            if (UnityEngineWrapMode_TypeID == -1)
            {
			    bool is_first;
                UnityEngineWrapMode_TypeID = getTypeId(L, typeof(UnityEngine.WrapMode), out is_first);
				
				if (UnityEngineWrapMode_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.WrapMode));
				    UnityEngineWrapMode_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineWrapMode_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineWrapMode_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.WrapMode ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineWrapMode_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.WrapMode val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineWrapMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.WrapMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.WrapMode");
                }
				val = (UnityEngine.WrapMode)e;
                
            }
            else
            {
                val = (UnityEngine.WrapMode)objectCasters.GetCaster(typeof(UnityEngine.WrapMode))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineWrapMode(RealStatePtr L, int index, UnityEngine.WrapMode val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineWrapMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.WrapMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.WrapMode ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineSceneManagementLoadSceneMode_TypeID = -1;
		int UnityEngineSceneManagementLoadSceneMode_EnumRef = -1;
        
        public void PushUnityEngineSceneManagementLoadSceneMode(RealStatePtr L, UnityEngine.SceneManagement.LoadSceneMode val)
        {
            if (UnityEngineSceneManagementLoadSceneMode_TypeID == -1)
            {
			    bool is_first;
                UnityEngineSceneManagementLoadSceneMode_TypeID = getTypeId(L, typeof(UnityEngine.SceneManagement.LoadSceneMode), out is_first);
				
				if (UnityEngineSceneManagementLoadSceneMode_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.SceneManagement.LoadSceneMode));
				    UnityEngineSceneManagementLoadSceneMode_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineSceneManagementLoadSceneMode_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineSceneManagementLoadSceneMode_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.SceneManagement.LoadSceneMode ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineSceneManagementLoadSceneMode_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.SceneManagement.LoadSceneMode val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineSceneManagementLoadSceneMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.SceneManagement.LoadSceneMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.SceneManagement.LoadSceneMode");
                }
				val = (UnityEngine.SceneManagement.LoadSceneMode)e;
                
            }
            else
            {
                val = (UnityEngine.SceneManagement.LoadSceneMode)objectCasters.GetCaster(typeof(UnityEngine.SceneManagement.LoadSceneMode))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineSceneManagementLoadSceneMode(RealStatePtr L, int index, UnityEngine.SceneManagement.LoadSceneMode val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineSceneManagementLoadSceneMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.SceneManagement.LoadSceneMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.SceneManagement.LoadSceneMode ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineAIObstacleAvoidanceType_TypeID = -1;
		int UnityEngineAIObstacleAvoidanceType_EnumRef = -1;
        
        public void PushUnityEngineAIObstacleAvoidanceType(RealStatePtr L, UnityEngine.AI.ObstacleAvoidanceType val)
        {
            if (UnityEngineAIObstacleAvoidanceType_TypeID == -1)
            {
			    bool is_first;
                UnityEngineAIObstacleAvoidanceType_TypeID = getTypeId(L, typeof(UnityEngine.AI.ObstacleAvoidanceType), out is_first);
				
				if (UnityEngineAIObstacleAvoidanceType_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.AI.ObstacleAvoidanceType));
				    UnityEngineAIObstacleAvoidanceType_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineAIObstacleAvoidanceType_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineAIObstacleAvoidanceType_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.AI.ObstacleAvoidanceType ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineAIObstacleAvoidanceType_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.AI.ObstacleAvoidanceType val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAIObstacleAvoidanceType_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AI.ObstacleAvoidanceType");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.AI.ObstacleAvoidanceType");
                }
				val = (UnityEngine.AI.ObstacleAvoidanceType)e;
                
            }
            else
            {
                val = (UnityEngine.AI.ObstacleAvoidanceType)objectCasters.GetCaster(typeof(UnityEngine.AI.ObstacleAvoidanceType))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineAIObstacleAvoidanceType(RealStatePtr L, int index, UnityEngine.AI.ObstacleAvoidanceType val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAIObstacleAvoidanceType_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AI.ObstacleAvoidanceType");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.AI.ObstacleAvoidanceType ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int DGTweeningEase_TypeID = -1;
		int DGTweeningEase_EnumRef = -1;
        
        public void PushDGTweeningEase(RealStatePtr L, DG.Tweening.Ease val)
        {
            if (DGTweeningEase_TypeID == -1)
            {
			    bool is_first;
                DGTweeningEase_TypeID = getTypeId(L, typeof(DG.Tweening.Ease), out is_first);
				
				if (DGTweeningEase_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(DG.Tweening.Ease));
				    DGTweeningEase_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, DGTweeningEase_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, DGTweeningEase_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for DG.Tweening.Ease ,value="+val);
            }
			
			LuaAPI.lua_getref(L, DGTweeningEase_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out DG.Tweening.Ease val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != DGTweeningEase_TypeID)
				{
				    throw new Exception("invalid userdata for DG.Tweening.Ease");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for DG.Tweening.Ease");
                }
				val = (DG.Tweening.Ease)e;
                
            }
            else
            {
                val = (DG.Tweening.Ease)objectCasters.GetCaster(typeof(DG.Tweening.Ease))(L, index, null);
            }
        }
		
        public void UpdateDGTweeningEase(RealStatePtr L, int index, DG.Tweening.Ease val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != DGTweeningEase_TypeID)
				{
				    throw new Exception("invalid userdata for DG.Tweening.Ease");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for DG.Tweening.Ease ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int OperatingSystem_TypeID = -1;
		int OperatingSystem_EnumRef = -1;
        
        public void PushOperatingSystem(RealStatePtr L, OperatingSystem val)
        {
            if (OperatingSystem_TypeID == -1)
            {
			    bool is_first;
                OperatingSystem_TypeID = getTypeId(L, typeof(OperatingSystem), out is_first);
				
				if (OperatingSystem_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(OperatingSystem));
				    OperatingSystem_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, OperatingSystem_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, OperatingSystem_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for OperatingSystem ,value="+val);
            }
			
			LuaAPI.lua_getref(L, OperatingSystem_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out OperatingSystem val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != OperatingSystem_TypeID)
				{
				    throw new Exception("invalid userdata for OperatingSystem");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for OperatingSystem");
                }
				val = (OperatingSystem)e;
                
            }
            else
            {
                val = (OperatingSystem)objectCasters.GetCaster(typeof(OperatingSystem))(L, index, null);
            }
        }
		
        public void UpdateOperatingSystem(RealStatePtr L, int index, OperatingSystem val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != OperatingSystem_TypeID)
				{
				    throw new Exception("invalid userdata for OperatingSystem");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for OperatingSystem ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineRenderMode_TypeID = -1;
		int UnityEngineRenderMode_EnumRef = -1;
        
        public void PushUnityEngineRenderMode(RealStatePtr L, UnityEngine.RenderMode val)
        {
            if (UnityEngineRenderMode_TypeID == -1)
            {
			    bool is_first;
                UnityEngineRenderMode_TypeID = getTypeId(L, typeof(UnityEngine.RenderMode), out is_first);
				
				if (UnityEngineRenderMode_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.RenderMode));
				    UnityEngineRenderMode_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineRenderMode_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineRenderMode_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.RenderMode ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineRenderMode_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.RenderMode val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRenderMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.RenderMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.RenderMode");
                }
				val = (UnityEngine.RenderMode)e;
                
            }
            else
            {
                val = (UnityEngine.RenderMode)objectCasters.GetCaster(typeof(UnityEngine.RenderMode))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineRenderMode(RealStatePtr L, int index, UnityEngine.RenderMode val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRenderMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.RenderMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.RenderMode ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineCameraClearFlags_TypeID = -1;
		int UnityEngineCameraClearFlags_EnumRef = -1;
        
        public void PushUnityEngineCameraClearFlags(RealStatePtr L, UnityEngine.CameraClearFlags val)
        {
            if (UnityEngineCameraClearFlags_TypeID == -1)
            {
			    bool is_first;
                UnityEngineCameraClearFlags_TypeID = getTypeId(L, typeof(UnityEngine.CameraClearFlags), out is_first);
				
				if (UnityEngineCameraClearFlags_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.CameraClearFlags));
				    UnityEngineCameraClearFlags_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineCameraClearFlags_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineCameraClearFlags_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.CameraClearFlags ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineCameraClearFlags_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.CameraClearFlags val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineCameraClearFlags_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.CameraClearFlags");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.CameraClearFlags");
                }
				val = (UnityEngine.CameraClearFlags)e;
                
            }
            else
            {
                val = (UnityEngine.CameraClearFlags)objectCasters.GetCaster(typeof(UnityEngine.CameraClearFlags))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineCameraClearFlags(RealStatePtr L, int index, UnityEngine.CameraClearFlags val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineCameraClearFlags_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.CameraClearFlags");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.CameraClearFlags ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineAINavMeshPathStatus_TypeID = -1;
		int UnityEngineAINavMeshPathStatus_EnumRef = -1;
        
        public void PushUnityEngineAINavMeshPathStatus(RealStatePtr L, UnityEngine.AI.NavMeshPathStatus val)
        {
            if (UnityEngineAINavMeshPathStatus_TypeID == -1)
            {
			    bool is_first;
                UnityEngineAINavMeshPathStatus_TypeID = getTypeId(L, typeof(UnityEngine.AI.NavMeshPathStatus), out is_first);
				
				if (UnityEngineAINavMeshPathStatus_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.AI.NavMeshPathStatus));
				    UnityEngineAINavMeshPathStatus_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineAINavMeshPathStatus_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineAINavMeshPathStatus_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.AI.NavMeshPathStatus ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineAINavMeshPathStatus_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.AI.NavMeshPathStatus val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAINavMeshPathStatus_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AI.NavMeshPathStatus");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.AI.NavMeshPathStatus");
                }
				val = (UnityEngine.AI.NavMeshPathStatus)e;
                
            }
            else
            {
                val = (UnityEngine.AI.NavMeshPathStatus)objectCasters.GetCaster(typeof(UnityEngine.AI.NavMeshPathStatus))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineAINavMeshPathStatus(RealStatePtr L, int index, UnityEngine.AI.NavMeshPathStatus val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAINavMeshPathStatus_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AI.NavMeshPathStatus");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.AI.NavMeshPathStatus ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineParticleSystemCurveMode_TypeID = -1;
		int UnityEngineParticleSystemCurveMode_EnumRef = -1;
        
        public void PushUnityEngineParticleSystemCurveMode(RealStatePtr L, UnityEngine.ParticleSystemCurveMode val)
        {
            if (UnityEngineParticleSystemCurveMode_TypeID == -1)
            {
			    bool is_first;
                UnityEngineParticleSystemCurveMode_TypeID = getTypeId(L, typeof(UnityEngine.ParticleSystemCurveMode), out is_first);
				
				if (UnityEngineParticleSystemCurveMode_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.ParticleSystemCurveMode));
				    UnityEngineParticleSystemCurveMode_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineParticleSystemCurveMode_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineParticleSystemCurveMode_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.ParticleSystemCurveMode ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineParticleSystemCurveMode_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.ParticleSystemCurveMode val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineParticleSystemCurveMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.ParticleSystemCurveMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.ParticleSystemCurveMode");
                }
				val = (UnityEngine.ParticleSystemCurveMode)e;
                
            }
            else
            {
                val = (UnityEngine.ParticleSystemCurveMode)objectCasters.GetCaster(typeof(UnityEngine.ParticleSystemCurveMode))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineParticleSystemCurveMode(RealStatePtr L, int index, UnityEngine.ParticleSystemCurveMode val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineParticleSystemCurveMode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.ParticleSystemCurveMode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.ParticleSystemCurveMode ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineMathf_TypeID = -1;
        public void PushUnityEngineMathf(RealStatePtr L, UnityEngine.Mathf val)
        {
            if (UnityEngineMathf_TypeID == -1)
            {
			    bool is_first;
                UnityEngineMathf_TypeID = getTypeId(L, typeof(UnityEngine.Mathf), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 0, UnityEngineMathf_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Mathf ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Mathf val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineMathf_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Mathf");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Mathf");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Mathf)objectCasters.GetCaster(typeof(UnityEngine.Mathf))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineMathf(RealStatePtr L, int index, UnityEngine.Mathf val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineMathf_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Mathf");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Mathf ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineKeyCode_TypeID = -1;
		int UnityEngineKeyCode_EnumRef = -1;
        
        public void PushUnityEngineKeyCode(RealStatePtr L, UnityEngine.KeyCode val)
        {
            if (UnityEngineKeyCode_TypeID == -1)
            {
			    bool is_first;
                UnityEngineKeyCode_TypeID = getTypeId(L, typeof(UnityEngine.KeyCode), out is_first);
				
				if (UnityEngineKeyCode_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.KeyCode));
				    UnityEngineKeyCode_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineKeyCode_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineKeyCode_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.KeyCode ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineKeyCode_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.KeyCode val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineKeyCode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.KeyCode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.KeyCode");
                }
				val = (UnityEngine.KeyCode)e;
                
            }
            else
            {
                val = (UnityEngine.KeyCode)objectCasters.GetCaster(typeof(UnityEngine.KeyCode))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineKeyCode(RealStatePtr L, int index, UnityEngine.KeyCode val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineKeyCode_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.KeyCode");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.KeyCode ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int DownLoaderState_TypeID = -1;
		int DownLoaderState_EnumRef = -1;
        
        public void PushDownLoaderState(RealStatePtr L, DownLoaderState val)
        {
            if (DownLoaderState_TypeID == -1)
            {
			    bool is_first;
                DownLoaderState_TypeID = getTypeId(L, typeof(DownLoaderState), out is_first);
				
				if (DownLoaderState_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(DownLoaderState));
				    DownLoaderState_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, DownLoaderState_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, DownLoaderState_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for DownLoaderState ,value="+val);
            }
			
			LuaAPI.lua_getref(L, DownLoaderState_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out DownLoaderState val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != DownLoaderState_TypeID)
				{
				    throw new Exception("invalid userdata for DownLoaderState");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for DownLoaderState");
                }
				val = (DownLoaderState)e;
                
            }
            else
            {
                val = (DownLoaderState)objectCasters.GetCaster(typeof(DownLoaderState))(L, index, null);
            }
        }
		
        public void UpdateDownLoaderState(RealStatePtr L, int index, DownLoaderState val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != DownLoaderState_TypeID)
				{
				    throw new Exception("invalid userdata for DownLoaderState");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for DownLoaderState ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineNetworkingUnityWebRequestResult_TypeID = -1;
		int UnityEngineNetworkingUnityWebRequestResult_EnumRef = -1;
        
        public void PushUnityEngineNetworkingUnityWebRequestResult(RealStatePtr L, UnityEngine.Networking.UnityWebRequest.Result val)
        {
            if (UnityEngineNetworkingUnityWebRequestResult_TypeID == -1)
            {
			    bool is_first;
                UnityEngineNetworkingUnityWebRequestResult_TypeID = getTypeId(L, typeof(UnityEngine.Networking.UnityWebRequest.Result), out is_first);
				
				if (UnityEngineNetworkingUnityWebRequestResult_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.Networking.UnityWebRequest.Result));
				    UnityEngineNetworkingUnityWebRequestResult_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineNetworkingUnityWebRequestResult_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineNetworkingUnityWebRequestResult_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.Networking.UnityWebRequest.Result ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineNetworkingUnityWebRequestResult_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Networking.UnityWebRequest.Result val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineNetworkingUnityWebRequestResult_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Networking.UnityWebRequest.Result");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.Networking.UnityWebRequest.Result");
                }
				val = (UnityEngine.Networking.UnityWebRequest.Result)e;
                
            }
            else
            {
                val = (UnityEngine.Networking.UnityWebRequest.Result)objectCasters.GetCaster(typeof(UnityEngine.Networking.UnityWebRequest.Result))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineNetworkingUnityWebRequestResult(RealStatePtr L, int index, UnityEngine.Networking.UnityWebRequest.Result val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineNetworkingUnityWebRequestResult_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Networking.UnityWebRequest.Result");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.Networking.UnityWebRequest.Result ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineRenderingUniversalCameraRenderType_TypeID = -1;
		int UnityEngineRenderingUniversalCameraRenderType_EnumRef = -1;
        
        public void PushUnityEngineRenderingUniversalCameraRenderType(RealStatePtr L, UnityEngine.Rendering.Universal.CameraRenderType val)
        {
            if (UnityEngineRenderingUniversalCameraRenderType_TypeID == -1)
            {
			    bool is_first;
                UnityEngineRenderingUniversalCameraRenderType_TypeID = getTypeId(L, typeof(UnityEngine.Rendering.Universal.CameraRenderType), out is_first);
				
				if (UnityEngineRenderingUniversalCameraRenderType_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.Rendering.Universal.CameraRenderType));
				    UnityEngineRenderingUniversalCameraRenderType_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineRenderingUniversalCameraRenderType_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineRenderingUniversalCameraRenderType_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.Rendering.Universal.CameraRenderType ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineRenderingUniversalCameraRenderType_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Rendering.Universal.CameraRenderType val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRenderingUniversalCameraRenderType_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Rendering.Universal.CameraRenderType");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.Rendering.Universal.CameraRenderType");
                }
				val = (UnityEngine.Rendering.Universal.CameraRenderType)e;
                
            }
            else
            {
                val = (UnityEngine.Rendering.Universal.CameraRenderType)objectCasters.GetCaster(typeof(UnityEngine.Rendering.Universal.CameraRenderType))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineRenderingUniversalCameraRenderType(RealStatePtr L, int index, UnityEngine.Rendering.Universal.CameraRenderType val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRenderingUniversalCameraRenderType_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Rendering.Universal.CameraRenderType");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.Rendering.Universal.CameraRenderType ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineSpriteMaskInteraction_TypeID = -1;
		int UnityEngineSpriteMaskInteraction_EnumRef = -1;
        
        public void PushUnityEngineSpriteMaskInteraction(RealStatePtr L, UnityEngine.SpriteMaskInteraction val)
        {
            if (UnityEngineSpriteMaskInteraction_TypeID == -1)
            {
			    bool is_first;
                UnityEngineSpriteMaskInteraction_TypeID = getTypeId(L, typeof(UnityEngine.SpriteMaskInteraction), out is_first);
				
				if (UnityEngineSpriteMaskInteraction_EnumRef == -1)
				{
				    Utils.LoadCSTable(L, typeof(UnityEngine.SpriteMaskInteraction));
				    UnityEngineSpriteMaskInteraction_EnumRef = LuaAPI.luaL_ref(L, LuaIndexes.LUA_REGISTRYINDEX);
				}
				
            }
			
			if (LuaAPI.xlua_tryget_cachedud(L, (int)val, UnityEngineSpriteMaskInteraction_EnumRef) == 1)
            {
			    return;
			}
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 4, UnityEngineSpriteMaskInteraction_TypeID);
            if (!CopyByValue.Pack(buff, 0, (int)val))
            {
                throw new Exception("pack fail fail for UnityEngine.SpriteMaskInteraction ,value="+val);
            }
			
			LuaAPI.lua_getref(L, UnityEngineSpriteMaskInteraction_EnumRef);
			LuaAPI.lua_pushvalue(L, -2);
			LuaAPI.xlua_rawseti(L, -2, (int)val);
			LuaAPI.lua_pop(L, 1);
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.SpriteMaskInteraction val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineSpriteMaskInteraction_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.SpriteMaskInteraction");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
				int e;
                if (!CopyByValue.UnPack(buff, 0, out e))
                {
                    throw new Exception("unpack fail for UnityEngine.SpriteMaskInteraction");
                }
				val = (UnityEngine.SpriteMaskInteraction)e;
                
            }
            else
            {
                val = (UnityEngine.SpriteMaskInteraction)objectCasters.GetCaster(typeof(UnityEngine.SpriteMaskInteraction))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineSpriteMaskInteraction(RealStatePtr L, int index, UnityEngine.SpriteMaskInteraction val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineSpriteMaskInteraction_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.SpriteMaskInteraction");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  (int)val))
                {
                    throw new Exception("pack fail for UnityEngine.SpriteMaskInteraction ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineAnimatorStateInfo_TypeID = -1;
        public void PushUnityEngineAnimatorStateInfo(RealStatePtr L, UnityEngine.AnimatorStateInfo val)
        {
            if (UnityEngineAnimatorStateInfo_TypeID == -1)
            {
			    bool is_first;
                UnityEngineAnimatorStateInfo_TypeID = getTypeId(L, typeof(UnityEngine.AnimatorStateInfo), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 0, UnityEngineAnimatorStateInfo_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.AnimatorStateInfo ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.AnimatorStateInfo val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAnimatorStateInfo_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AnimatorStateInfo");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.AnimatorStateInfo");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.AnimatorStateInfo)objectCasters.GetCaster(typeof(UnityEngine.AnimatorStateInfo))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineAnimatorStateInfo(RealStatePtr L, int index, UnityEngine.AnimatorStateInfo val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineAnimatorStateInfo_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.AnimatorStateInfo");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.AnimatorStateInfo ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineVector2_TypeID = -1;
        public void PushUnityEngineVector2(RealStatePtr L, UnityEngine.Vector2 val)
        {
            if (UnityEngineVector2_TypeID == -1)
            {
			    bool is_first;
                UnityEngineVector2_TypeID = getTypeId(L, typeof(UnityEngine.Vector2), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 8, UnityEngineVector2_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Vector2 ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Vector2 val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector2_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector2");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Vector2");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Vector2)objectCasters.GetCaster(typeof(UnityEngine.Vector2))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineVector2(RealStatePtr L, int index, UnityEngine.Vector2 val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector2_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector2");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Vector2 ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineVector3_TypeID = -1;
        public void PushUnityEngineVector3(RealStatePtr L, UnityEngine.Vector3 val)
        {
            if (UnityEngineVector3_TypeID == -1)
            {
			    bool is_first;
                UnityEngineVector3_TypeID = getTypeId(L, typeof(UnityEngine.Vector3), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 12, UnityEngineVector3_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Vector3 ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Vector3 val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector3_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector3");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Vector3");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Vector3)objectCasters.GetCaster(typeof(UnityEngine.Vector3))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineVector3(RealStatePtr L, int index, UnityEngine.Vector3 val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector3_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector3");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Vector3 ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineVector4_TypeID = -1;
        public void PushUnityEngineVector4(RealStatePtr L, UnityEngine.Vector4 val)
        {
            if (UnityEngineVector4_TypeID == -1)
            {
			    bool is_first;
                UnityEngineVector4_TypeID = getTypeId(L, typeof(UnityEngine.Vector4), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 16, UnityEngineVector4_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Vector4 ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Vector4 val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector4_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector4");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Vector4");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Vector4)objectCasters.GetCaster(typeof(UnityEngine.Vector4))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineVector4(RealStatePtr L, int index, UnityEngine.Vector4 val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineVector4_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Vector4");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Vector4 ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineColor_TypeID = -1;
        public void PushUnityEngineColor(RealStatePtr L, UnityEngine.Color val)
        {
            if (UnityEngineColor_TypeID == -1)
            {
			    bool is_first;
                UnityEngineColor_TypeID = getTypeId(L, typeof(UnityEngine.Color), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 16, UnityEngineColor_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Color ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Color val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineColor_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Color");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Color");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Color)objectCasters.GetCaster(typeof(UnityEngine.Color))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineColor(RealStatePtr L, int index, UnityEngine.Color val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineColor_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Color");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Color ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineQuaternion_TypeID = -1;
        public void PushUnityEngineQuaternion(RealStatePtr L, UnityEngine.Quaternion val)
        {
            if (UnityEngineQuaternion_TypeID == -1)
            {
			    bool is_first;
                UnityEngineQuaternion_TypeID = getTypeId(L, typeof(UnityEngine.Quaternion), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 16, UnityEngineQuaternion_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Quaternion ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Quaternion val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineQuaternion_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Quaternion");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Quaternion");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Quaternion)objectCasters.GetCaster(typeof(UnityEngine.Quaternion))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineQuaternion(RealStatePtr L, int index, UnityEngine.Quaternion val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineQuaternion_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Quaternion");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Quaternion ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineRay_TypeID = -1;
        public void PushUnityEngineRay(RealStatePtr L, UnityEngine.Ray val)
        {
            if (UnityEngineRay_TypeID == -1)
            {
			    bool is_first;
                UnityEngineRay_TypeID = getTypeId(L, typeof(UnityEngine.Ray), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 24, UnityEngineRay_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Ray ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Ray val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRay_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Ray");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Ray");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Ray)objectCasters.GetCaster(typeof(UnityEngine.Ray))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineRay(RealStatePtr L, int index, UnityEngine.Ray val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRay_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Ray");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Ray ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineBounds_TypeID = -1;
        public void PushUnityEngineBounds(RealStatePtr L, UnityEngine.Bounds val)
        {
            if (UnityEngineBounds_TypeID == -1)
            {
			    bool is_first;
                UnityEngineBounds_TypeID = getTypeId(L, typeof(UnityEngine.Bounds), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 24, UnityEngineBounds_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Bounds ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Bounds val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineBounds_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Bounds");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Bounds");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Bounds)objectCasters.GetCaster(typeof(UnityEngine.Bounds))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineBounds(RealStatePtr L, int index, UnityEngine.Bounds val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineBounds_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Bounds");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Bounds ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        int UnityEngineRay2D_TypeID = -1;
        public void PushUnityEngineRay2D(RealStatePtr L, UnityEngine.Ray2D val)
        {
            if (UnityEngineRay2D_TypeID == -1)
            {
			    bool is_first;
                UnityEngineRay2D_TypeID = getTypeId(L, typeof(UnityEngine.Ray2D), out is_first);
				
            }
			
            IntPtr buff = LuaAPI.xlua_pushstruct(L, 16, UnityEngineRay2D_TypeID);
            if (!CopyByValue.Pack(buff, 0, val))
            {
                throw new Exception("pack fail fail for UnityEngine.Ray2D ,value="+val);
            }
			
        }
		
        public void Get(RealStatePtr L, int index, out UnityEngine.Ray2D val)
        {
		    LuaTypes type = LuaAPI.lua_type(L, index);
            if (type == LuaTypes.LUA_TUSERDATA )
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRay2D_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Ray2D");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);if (!CopyByValue.UnPack(buff, 0, out val))
                {
                    throw new Exception("unpack fail for UnityEngine.Ray2D");
                }
            }
			else if (type ==LuaTypes.LUA_TTABLE)
			{
			    CopyByValue.UnPack(this, L, index, out val);
			}
            else
            {
                val = (UnityEngine.Ray2D)objectCasters.GetCaster(typeof(UnityEngine.Ray2D))(L, index, null);
            }
        }
		
        public void UpdateUnityEngineRay2D(RealStatePtr L, int index, UnityEngine.Ray2D val)
        {
		    
            if (LuaAPI.lua_type(L, index) == LuaTypes.LUA_TUSERDATA)
            {
			    if (LuaAPI.xlua_gettypeid(L, index) != UnityEngineRay2D_TypeID)
				{
				    throw new Exception("invalid userdata for UnityEngine.Ray2D");
				}
				
                IntPtr buff = LuaAPI.lua_touserdata(L, index);
                if (!CopyByValue.Pack(buff, 0,  val))
                {
                    throw new Exception("pack fail for UnityEngine.Ray2D ,value="+val);
                }
            }
			
            else
            {
                throw new Exception("try to update a data with lua type:" + LuaAPI.lua_type(L, index));
            }
        }
        
        
		// table cast optimze
		
        
    }
	
	public partial class StaticLuaCallbacks
    {
	    internal static bool __tryArrayGet(Type type, RealStatePtr L, ObjectTranslator translator, object obj, int index)
		{
		
			if (type == typeof(UnityEngine.Keyframe[]))
			{
			    UnityEngine.Keyframe[] array = obj as UnityEngine.Keyframe[];
				translator.PushUnityEngineKeyframe(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.WrapMode[]))
			{
			    UnityEngine.WrapMode[] array = obj as UnityEngine.WrapMode[];
				translator.PushUnityEngineWrapMode(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.SceneManagement.LoadSceneMode[]))
			{
			    UnityEngine.SceneManagement.LoadSceneMode[] array = obj as UnityEngine.SceneManagement.LoadSceneMode[];
				translator.PushUnityEngineSceneManagementLoadSceneMode(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.AI.ObstacleAvoidanceType[]))
			{
			    UnityEngine.AI.ObstacleAvoidanceType[] array = obj as UnityEngine.AI.ObstacleAvoidanceType[];
				translator.PushUnityEngineAIObstacleAvoidanceType(L, array[index]);
				return true;
			}
			else if (type == typeof(DG.Tweening.Ease[]))
			{
			    DG.Tweening.Ease[] array = obj as DG.Tweening.Ease[];
				translator.PushDGTweeningEase(L, array[index]);
				return true;
			}
			else if (type == typeof(OperatingSystem[]))
			{
			    OperatingSystem[] array = obj as OperatingSystem[];
				translator.PushOperatingSystem(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.RenderMode[]))
			{
			    UnityEngine.RenderMode[] array = obj as UnityEngine.RenderMode[];
				translator.PushUnityEngineRenderMode(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.CameraClearFlags[]))
			{
			    UnityEngine.CameraClearFlags[] array = obj as UnityEngine.CameraClearFlags[];
				translator.PushUnityEngineCameraClearFlags(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.AI.NavMeshPathStatus[]))
			{
			    UnityEngine.AI.NavMeshPathStatus[] array = obj as UnityEngine.AI.NavMeshPathStatus[];
				translator.PushUnityEngineAINavMeshPathStatus(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.ParticleSystemCurveMode[]))
			{
			    UnityEngine.ParticleSystemCurveMode[] array = obj as UnityEngine.ParticleSystemCurveMode[];
				translator.PushUnityEngineParticleSystemCurveMode(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Mathf[]))
			{
			    UnityEngine.Mathf[] array = obj as UnityEngine.Mathf[];
				translator.PushUnityEngineMathf(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.KeyCode[]))
			{
			    UnityEngine.KeyCode[] array = obj as UnityEngine.KeyCode[];
				translator.PushUnityEngineKeyCode(L, array[index]);
				return true;
			}
			else if (type == typeof(DownLoaderState[]))
			{
			    DownLoaderState[] array = obj as DownLoaderState[];
				translator.PushDownLoaderState(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Networking.UnityWebRequest.Result[]))
			{
			    UnityEngine.Networking.UnityWebRequest.Result[] array = obj as UnityEngine.Networking.UnityWebRequest.Result[];
				translator.PushUnityEngineNetworkingUnityWebRequestResult(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Rendering.Universal.CameraRenderType[]))
			{
			    UnityEngine.Rendering.Universal.CameraRenderType[] array = obj as UnityEngine.Rendering.Universal.CameraRenderType[];
				translator.PushUnityEngineRenderingUniversalCameraRenderType(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.SpriteMaskInteraction[]))
			{
			    UnityEngine.SpriteMaskInteraction[] array = obj as UnityEngine.SpriteMaskInteraction[];
				translator.PushUnityEngineSpriteMaskInteraction(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.AnimatorStateInfo[]))
			{
			    UnityEngine.AnimatorStateInfo[] array = obj as UnityEngine.AnimatorStateInfo[];
				translator.PushUnityEngineAnimatorStateInfo(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector2[]))
			{
			    UnityEngine.Vector2[] array = obj as UnityEngine.Vector2[];
				translator.PushUnityEngineVector2(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector3[]))
			{
			    UnityEngine.Vector3[] array = obj as UnityEngine.Vector3[];
				translator.PushUnityEngineVector3(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector4[]))
			{
			    UnityEngine.Vector4[] array = obj as UnityEngine.Vector4[];
				translator.PushUnityEngineVector4(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Color[]))
			{
			    UnityEngine.Color[] array = obj as UnityEngine.Color[];
				translator.PushUnityEngineColor(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Quaternion[]))
			{
			    UnityEngine.Quaternion[] array = obj as UnityEngine.Quaternion[];
				translator.PushUnityEngineQuaternion(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Ray[]))
			{
			    UnityEngine.Ray[] array = obj as UnityEngine.Ray[];
				translator.PushUnityEngineRay(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Bounds[]))
			{
			    UnityEngine.Bounds[] array = obj as UnityEngine.Bounds[];
				translator.PushUnityEngineBounds(L, array[index]);
				return true;
			}
			else if (type == typeof(UnityEngine.Ray2D[]))
			{
			    UnityEngine.Ray2D[] array = obj as UnityEngine.Ray2D[];
				translator.PushUnityEngineRay2D(L, array[index]);
				return true;
			}
            return false;
		}
		
		internal static bool __tryArraySet(Type type, RealStatePtr L, ObjectTranslator translator, object obj, int array_idx, int obj_idx)
		{
		
			if (type == typeof(UnityEngine.Keyframe[]))
			{
			    UnityEngine.Keyframe[] array = obj as UnityEngine.Keyframe[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.WrapMode[]))
			{
			    UnityEngine.WrapMode[] array = obj as UnityEngine.WrapMode[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.SceneManagement.LoadSceneMode[]))
			{
			    UnityEngine.SceneManagement.LoadSceneMode[] array = obj as UnityEngine.SceneManagement.LoadSceneMode[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.AI.ObstacleAvoidanceType[]))
			{
			    UnityEngine.AI.ObstacleAvoidanceType[] array = obj as UnityEngine.AI.ObstacleAvoidanceType[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(DG.Tweening.Ease[]))
			{
			    DG.Tweening.Ease[] array = obj as DG.Tweening.Ease[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(OperatingSystem[]))
			{
			    OperatingSystem[] array = obj as OperatingSystem[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.RenderMode[]))
			{
			    UnityEngine.RenderMode[] array = obj as UnityEngine.RenderMode[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.CameraClearFlags[]))
			{
			    UnityEngine.CameraClearFlags[] array = obj as UnityEngine.CameraClearFlags[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.AI.NavMeshPathStatus[]))
			{
			    UnityEngine.AI.NavMeshPathStatus[] array = obj as UnityEngine.AI.NavMeshPathStatus[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.ParticleSystemCurveMode[]))
			{
			    UnityEngine.ParticleSystemCurveMode[] array = obj as UnityEngine.ParticleSystemCurveMode[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Mathf[]))
			{
			    UnityEngine.Mathf[] array = obj as UnityEngine.Mathf[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.KeyCode[]))
			{
			    UnityEngine.KeyCode[] array = obj as UnityEngine.KeyCode[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(DownLoaderState[]))
			{
			    DownLoaderState[] array = obj as DownLoaderState[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Networking.UnityWebRequest.Result[]))
			{
			    UnityEngine.Networking.UnityWebRequest.Result[] array = obj as UnityEngine.Networking.UnityWebRequest.Result[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Rendering.Universal.CameraRenderType[]))
			{
			    UnityEngine.Rendering.Universal.CameraRenderType[] array = obj as UnityEngine.Rendering.Universal.CameraRenderType[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.SpriteMaskInteraction[]))
			{
			    UnityEngine.SpriteMaskInteraction[] array = obj as UnityEngine.SpriteMaskInteraction[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.AnimatorStateInfo[]))
			{
			    UnityEngine.AnimatorStateInfo[] array = obj as UnityEngine.AnimatorStateInfo[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector2[]))
			{
			    UnityEngine.Vector2[] array = obj as UnityEngine.Vector2[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector3[]))
			{
			    UnityEngine.Vector3[] array = obj as UnityEngine.Vector3[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Vector4[]))
			{
			    UnityEngine.Vector4[] array = obj as UnityEngine.Vector4[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Color[]))
			{
			    UnityEngine.Color[] array = obj as UnityEngine.Color[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Quaternion[]))
			{
			    UnityEngine.Quaternion[] array = obj as UnityEngine.Quaternion[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Ray[]))
			{
			    UnityEngine.Ray[] array = obj as UnityEngine.Ray[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Bounds[]))
			{
			    UnityEngine.Bounds[] array = obj as UnityEngine.Bounds[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
			else if (type == typeof(UnityEngine.Ray2D[]))
			{
			    UnityEngine.Ray2D[] array = obj as UnityEngine.Ray2D[];
				translator.Get(L, obj_idx, out array[array_idx]);
				return true;
			}
            return false;
		}
	}
}