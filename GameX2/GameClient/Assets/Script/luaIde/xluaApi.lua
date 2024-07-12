--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.Coroutine_Runner = {}
--[[
	@return: [luaIde#CS.Coroutine_Runner]
]]
function CS.Coroutine_Runner() end
--[[
	@to_yield CS.System.Object
	@callback CS.System.Action
--]]
function CS.Coroutine_Runner:YieldAndCallback(to_yield,callback) end

--@SuperType [luaIde#CS.UnityEngine.YieldInstruction]
CS.UnityEngine.WaitForSeconds = {}
--[[
	@seconds CS.System.Single
	@return: [luaIde#CS.UnityEngine.WaitForSeconds]
]]
function CS.UnityEngine.WaitForSeconds(seconds) end

--@SuperType [luaIde#CS.UnityEngine.YieldInstruction]
CS.UnityEngine.WaitForEndOfFrame = {}
--[[
	@return: [luaIde#CS.UnityEngine.WaitForEndOfFrame]
]]
function CS.UnityEngine.WaitForEndOfFrame() end

--@SuperType [luaIde#CS.UnityEngine.YieldInstruction]
CS.UnityEngine.AsyncOperation = {}
--[[
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
]]
function CS.UnityEngine.AsyncOperation() end
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AsyncOperation.isDone = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.AsyncOperation.progress = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.AsyncOperation.priority = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AsyncOperation.allowSceneActivation = nil
--[[
	@value CS.System.Action
--]]
function CS.UnityEngine.AsyncOperation:add_completed(value) end
--[[
	@value CS.System.Action
--]]
function CS.UnityEngine.AsyncOperation:remove_completed(value) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngineObjectExtention = {}

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Screen = {}
--[[
	@return: [luaIde#CS.UnityEngine.Screen]
]]
function CS.UnityEngine.Screen() end
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Screen.width = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Screen.height = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Screen.dpi = nil
--[[
	CS.UnityEngine.Resolution
	 Get 
--]]
CS.UnityEngine.Screen.currentResolution = nil
--[[
	CS.UnityEngine.Resolution<>
	 Get 
--]]
CS.UnityEngine.Screen.resolutions = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Screen.fullScreen = nil
--[[
	CS.UnityEngine.FullScreenMode
	 Get 	 Set 
--]]
CS.UnityEngine.Screen.fullScreenMode = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Rect]
	 Get 
--]]
CS.UnityEngine.Screen.safeArea = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Rect<>]
	 Get 
--]]
CS.UnityEngine.Screen.cutouts = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Screen.autorotateToPortrait = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Screen.autorotateToPortraitUpsideDown = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Screen.autorotateToLandscapeLeft = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Screen.autorotateToLandscapeRight = nil
--[[
	CS.UnityEngine.ScreenOrientation
	 Get 	 Set 
--]]
CS.UnityEngine.Screen.orientation = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Screen.sleepTimeout = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Screen.brightness = nil
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@fullscreenMode CS.UnityEngine.FullScreenMode
	@preferredRefreshRate CS.System.Int32
--]]
function CS.UnityEngine.Screen:SetResolution(width,height,fullscreenMode,preferredRefreshRate) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@fullscreenMode CS.UnityEngine.FullScreenMode
--]]
function CS.UnityEngine.Screen:SetResolution(width,height,fullscreenMode) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@fullscreen CS.System.Boolean
	@preferredRefreshRate CS.System.Int32
--]]
function CS.UnityEngine.Screen:SetResolution(width,height,fullscreen,preferredRefreshRate) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@fullscreen CS.System.Boolean
--]]
function CS.UnityEngine.Screen:SetResolution(width,height,fullscreen) end

CS.System.Object = {}
--[[
	@return: [luaIde#CS.System.Object]
]]
function CS.System.Object() end
--[[
	@obj CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.System.Object:Equals(obj) end
--[[
	@objA CS.System.Object
	@objB CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.System.Object:Equals(objA,objB) end
function CS.System.Object:GetHashCode() end
function CS.System.Object:GetType() end
function CS.System.Object:ToString() end
--[[
	@objA CS.System.Object
	@objB CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.System.Object:ReferenceEquals(objA,objB) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Object = {}
--[[
	@return: [luaIde#CS.UnityEngine.Object]
]]
function CS.UnityEngine.Object() end
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Object.name = nil
--[[
	CS.UnityEngine.HideFlags
	 Get 	 Set 
--]]
CS.UnityEngine.Object.hideFlags = nil
function CS.UnityEngine.Object:GetInstanceID() end
function CS.UnityEngine.Object:GetHashCode() end
--[[
	@other CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Object:Equals(other) end
--[[
	@exists CS.UnityEngine.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Object:op_Implicit(exists) end
--[[
	@original CS.UnityEngine.Object
	@position CS.UnityEngine.Vector3
	@rotation CS.UnityEngine.Quaternion
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Object:Instantiate(original,position,rotation) end
--[[
	@original CS.UnityEngine.Object
	@position CS.UnityEngine.Vector3
	@rotation CS.UnityEngine.Quaternion
	@parent CS.UnityEngine.Transform
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Object:Instantiate(original,position,rotation,parent) end
--[[
	@original CS.UnityEngine.Object
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Object:Instantiate(original) end
--[[
	@original CS.UnityEngine.Object
	@parent CS.UnityEngine.Transform
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Object:Instantiate(original,parent) end
--[[
	@original CS.UnityEngine.Object
	@parent CS.UnityEngine.Transform
	@instantiateInWorldSpace CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Object:Instantiate(original,parent,instantiateInWorldSpace) end
--[[
	@obj CS.UnityEngine.Object
	@t CS.System.Single
--]]
function CS.UnityEngine.Object:Destroy(obj,t) end
--[[
	@obj CS.UnityEngine.Object
--]]
function CS.UnityEngine.Object:Destroy(obj) end
--[[
	@obj CS.UnityEngine.Object
	@allowDestroyingAssets CS.System.Boolean
--]]
function CS.UnityEngine.Object:DestroyImmediate(obj,allowDestroyingAssets) end
--[[
	@obj CS.UnityEngine.Object
--]]
function CS.UnityEngine.Object:DestroyImmediate(obj) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Object<>]
--]]
function CS.UnityEngine.Object:FindObjectsOfType(type) end
--[[
	@type CS.System.Type
	@includeInactive CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Object<>]
--]]
function CS.UnityEngine.Object:FindObjectsOfType(type,includeInactive) end
--[[
	@target CS.UnityEngine.Object
--]]
function CS.UnityEngine.Object:DontDestroyOnLoad(target) end
--[[
	@obj CS.UnityEngine.Object
	@t CS.System.Single
--]]
function CS.UnityEngine.Object:DestroyObject(obj,t) end
--[[
	@obj CS.UnityEngine.Object
--]]
function CS.UnityEngine.Object:DestroyObject(obj) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Object<>]
--]]
function CS.UnityEngine.Object:FindSceneObjectsOfType(type) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Object<>]
--]]
function CS.UnityEngine.Object:FindObjectsOfTypeIncludingAssets(type) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Object<>]
--]]
function CS.UnityEngine.Object:FindObjectsOfTypeAll(type) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Object:FindObjectOfType(type) end
--[[
	@type CS.System.Type
	@includeInactive CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Object:FindObjectOfType(type,includeInactive) end
function CS.UnityEngine.Object:ToString() end
--[[
	@x CS.UnityEngine.Object
	@y CS.UnityEngine.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Object:op_Equality(x,y) end
--[[
	@x CS.UnityEngine.Object
	@y CS.UnityEngine.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Object:op_Inequality(x,y) end
--[[
	@o CS.UnityEngine.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Object:IsNull(o) end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.Vector2 = {}
--[[
	@x CS.System.Single
	@y CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector2]
]]
function CS.UnityEngine.Vector2(x,y) end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Vector2.normalized = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Vector2.magnitude = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Vector2.sqrMagnitude = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Vector2.zero = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Vector2.one = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Vector2.up = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Vector2.down = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Vector2.left = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Vector2.right = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Vector2.positiveInfinity = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Vector2.negativeInfinity = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector2.x = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector2.y = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector2.kEpsilon = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector2.kEpsilonNormalSqrt = nil
--[[
	@newX CS.System.Single
	@newY CS.System.Single
--]]
function CS.UnityEngine.Vector2:Set(newX,newY) end
--[[
	@a CS.UnityEngine.Vector2
	@b CS.UnityEngine.Vector2
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:Lerp(a,b,t) end
--[[
	@a CS.UnityEngine.Vector2
	@b CS.UnityEngine.Vector2
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:LerpUnclamped(a,b,t) end
--[[
	@current CS.UnityEngine.Vector2
	@target CS.UnityEngine.Vector2
	@maxDistanceDelta CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:MoveTowards(current,target,maxDistanceDelta) end
--[[
	@a CS.UnityEngine.Vector2
	@b CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:Scale(a,b) end
--[[
	@scale CS.UnityEngine.Vector2
--]]
function CS.UnityEngine.Vector2:Scale(scale) end
function CS.UnityEngine.Vector2:Normalize() end
function CS.UnityEngine.Vector2:ToString() end
--[[
	@format CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Vector2:ToString(format) end
--[[
	@format CS.System.String
	@formatProvider CS.System.IFormatProvider
	@return: CS.System.String
--]]
function CS.UnityEngine.Vector2:ToString(format,formatProvider) end
function CS.UnityEngine.Vector2:GetHashCode() end
--[[
	@other CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector2:Equals(other) end
--[[
	@other CS.UnityEngine.Vector2
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector2:Equals(other) end
--[[
	@inDirection CS.UnityEngine.Vector2
	@inNormal CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:Reflect(inDirection,inNormal) end
--[[
	@inDirection CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:Perpendicular(inDirection) end
--[[
	@lhs CS.UnityEngine.Vector2
	@rhs CS.UnityEngine.Vector2
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector2:Dot(lhs,rhs) end
--[[
	@from CS.UnityEngine.Vector2
	@to CS.UnityEngine.Vector2
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector2:Angle(from,to) end
--[[
	@from CS.UnityEngine.Vector2
	@to CS.UnityEngine.Vector2
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector2:SignedAngle(from,to) end
--[[
	@a CS.UnityEngine.Vector2
	@b CS.UnityEngine.Vector2
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector2:Distance(a,b) end
--[[
	@vector CS.UnityEngine.Vector2
	@maxLength CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:ClampMagnitude(vector,maxLength) end
--[[
	@a CS.UnityEngine.Vector2
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector2:SqrMagnitude(a) end
function CS.UnityEngine.Vector2:SqrMagnitude() end
--[[
	@lhs CS.UnityEngine.Vector2
	@rhs CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:Min(lhs,rhs) end
--[[
	@lhs CS.UnityEngine.Vector2
	@rhs CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:Max(lhs,rhs) end
--[[
	@current CS.UnityEngine.Vector2
	@target CS.UnityEngine.Vector2
	@currentVelocity CS.UnityEngine.Vector2&
	@smoothTime CS.System.Single
	@maxSpeed CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:SmoothDamp(current,target,currentVelocity,smoothTime,maxSpeed) end
--[[
	@current CS.UnityEngine.Vector2
	@target CS.UnityEngine.Vector2
	@currentVelocity CS.UnityEngine.Vector2&
	@smoothTime CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:SmoothDamp(current,target,currentVelocity,smoothTime) end
--[[
	@current CS.UnityEngine.Vector2
	@target CS.UnityEngine.Vector2
	@currentVelocity CS.UnityEngine.Vector2&
	@smoothTime CS.System.Single
	@maxSpeed CS.System.Single
	@deltaTime CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:SmoothDamp(current,target,currentVelocity,smoothTime,maxSpeed,deltaTime) end
--[[
	@a CS.UnityEngine.Vector2
	@b CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:op_Addition(a,b) end
--[[
	@a CS.UnityEngine.Vector2
	@b CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:op_Subtraction(a,b) end
--[[
	@a CS.UnityEngine.Vector2
	@b CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:op_Multiply(a,b) end
--[[
	@a CS.UnityEngine.Vector2
	@b CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:op_Division(a,b) end
--[[
	@a CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:op_UnaryNegation(a) end
--[[
	@a CS.UnityEngine.Vector2
	@d CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:op_Multiply(a,d) end
--[[
	@d CS.System.Single
	@a CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:op_Multiply(d,a) end
--[[
	@a CS.UnityEngine.Vector2
	@d CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:op_Division(a,d) end
--[[
	@lhs CS.UnityEngine.Vector2
	@rhs CS.UnityEngine.Vector2
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector2:op_Equality(lhs,rhs) end
--[[
	@lhs CS.UnityEngine.Vector2
	@rhs CS.UnityEngine.Vector2
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector2:op_Inequality(lhs,rhs) end
--[[
	@v CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector2:op_Implicit(v) end
--[[
	@v CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector2:op_Implicit(v) end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.Vector3 = {}
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
]]
function CS.UnityEngine.Vector3(x,y,z) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
]]
function CS.UnityEngine.Vector3(x,y) end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Vector3.normalized = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Vector3.magnitude = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Vector3.sqrMagnitude = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Vector3.zero = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Vector3.one = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Vector3.forward = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Vector3.back = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Vector3.up = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Vector3.down = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Vector3.left = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Vector3.right = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Vector3.positiveInfinity = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Vector3.negativeInfinity = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector3.kEpsilon = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector3.kEpsilonNormalSqrt = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector3.x = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector3.y = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector3.z = nil
--[[
	@a CS.UnityEngine.Vector3
	@b CS.UnityEngine.Vector3
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:Slerp(a,b,t) end
--[[
	@a CS.UnityEngine.Vector3
	@b CS.UnityEngine.Vector3
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:SlerpUnclamped(a,b,t) end
--[[
	@normal CS.UnityEngine.Vector3&
	@tangent CS.UnityEngine.Vector3&
--]]
function CS.UnityEngine.Vector3:OrthoNormalize(normal,tangent) end
--[[
	@normal CS.UnityEngine.Vector3&
	@tangent CS.UnityEngine.Vector3&
	@binormal CS.UnityEngine.Vector3&
--]]
function CS.UnityEngine.Vector3:OrthoNormalize(normal,tangent,binormal) end
--[[
	@current CS.UnityEngine.Vector3
	@target CS.UnityEngine.Vector3
	@maxRadiansDelta CS.System.Single
	@maxMagnitudeDelta CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:RotateTowards(current,target,maxRadiansDelta,maxMagnitudeDelta) end
--[[
	@a CS.UnityEngine.Vector3
	@b CS.UnityEngine.Vector3
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:Lerp(a,b,t) end
--[[
	@a CS.UnityEngine.Vector3
	@b CS.UnityEngine.Vector3
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:LerpUnclamped(a,b,t) end
--[[
	@current CS.UnityEngine.Vector3
	@target CS.UnityEngine.Vector3
	@maxDistanceDelta CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:MoveTowards(current,target,maxDistanceDelta) end
--[[
	@current CS.UnityEngine.Vector3
	@target CS.UnityEngine.Vector3
	@currentVelocity CS.UnityEngine.Vector3&
	@smoothTime CS.System.Single
	@maxSpeed CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:SmoothDamp(current,target,currentVelocity,smoothTime,maxSpeed) end
--[[
	@current CS.UnityEngine.Vector3
	@target CS.UnityEngine.Vector3
	@currentVelocity CS.UnityEngine.Vector3&
	@smoothTime CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:SmoothDamp(current,target,currentVelocity,smoothTime) end
--[[
	@current CS.UnityEngine.Vector3
	@target CS.UnityEngine.Vector3
	@currentVelocity CS.UnityEngine.Vector3&
	@smoothTime CS.System.Single
	@maxSpeed CS.System.Single
	@deltaTime CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:SmoothDamp(current,target,currentVelocity,smoothTime,maxSpeed,deltaTime) end
--[[
	@newX CS.System.Single
	@newY CS.System.Single
	@newZ CS.System.Single
--]]
function CS.UnityEngine.Vector3:Set(newX,newY,newZ) end
--[[
	@a CS.UnityEngine.Vector3
	@b CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:Scale(a,b) end
--[[
	@scale CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Vector3:Scale(scale) end
--[[
	@lhs CS.UnityEngine.Vector3
	@rhs CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:Cross(lhs,rhs) end
function CS.UnityEngine.Vector3:GetHashCode() end
--[[
	@other CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector3:Equals(other) end
--[[
	@other CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector3:Equals(other) end
--[[
	@inDirection CS.UnityEngine.Vector3
	@inNormal CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:Reflect(inDirection,inNormal) end
--[[
	@value CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:Normalize(value) end
function CS.UnityEngine.Vector3:Normalize() end
--[[
	@lhs CS.UnityEngine.Vector3
	@rhs CS.UnityEngine.Vector3
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector3:Dot(lhs,rhs) end
--[[
	@vector CS.UnityEngine.Vector3
	@onNormal CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:Project(vector,onNormal) end
--[[
	@vector CS.UnityEngine.Vector3
	@planeNormal CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:ProjectOnPlane(vector,planeNormal) end
--[[
	@from CS.UnityEngine.Vector3
	@to CS.UnityEngine.Vector3
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector3:Angle(from,to) end
--[[
	@from CS.UnityEngine.Vector3
	@to CS.UnityEngine.Vector3
	@axis CS.UnityEngine.Vector3
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector3:SignedAngle(from,to,axis) end
--[[
	@a CS.UnityEngine.Vector3
	@b CS.UnityEngine.Vector3
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector3:Distance(a,b) end
--[[
	@vector CS.UnityEngine.Vector3
	@maxLength CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:ClampMagnitude(vector,maxLength) end
--[[
	@vector CS.UnityEngine.Vector3
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector3:Magnitude(vector) end
--[[
	@vector CS.UnityEngine.Vector3
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector3:SqrMagnitude(vector) end
--[[
	@lhs CS.UnityEngine.Vector3
	@rhs CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:Min(lhs,rhs) end
--[[
	@lhs CS.UnityEngine.Vector3
	@rhs CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:Max(lhs,rhs) end
--[[
	@a CS.UnityEngine.Vector3
	@b CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:op_Addition(a,b) end
--[[
	@a CS.UnityEngine.Vector3
	@b CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:op_Subtraction(a,b) end
--[[
	@a CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:op_UnaryNegation(a) end
--[[
	@a CS.UnityEngine.Vector3
	@d CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:op_Multiply(a,d) end
--[[
	@d CS.System.Single
	@a CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:op_Multiply(d,a) end
--[[
	@a CS.UnityEngine.Vector3
	@d CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:op_Division(a,d) end
--[[
	@lhs CS.UnityEngine.Vector3
	@rhs CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector3:op_Equality(lhs,rhs) end
--[[
	@lhs CS.UnityEngine.Vector3
	@rhs CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector3:op_Inequality(lhs,rhs) end
function CS.UnityEngine.Vector3:ToString() end
--[[
	@format CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Vector3:ToString(format) end
--[[
	@format CS.System.String
	@formatProvider CS.System.IFormatProvider
	@return: CS.System.String
--]]
function CS.UnityEngine.Vector3:ToString(format,formatProvider) end
--[[
	@from CS.UnityEngine.Vector3
	@to CS.UnityEngine.Vector3
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector3:AngleBetween(from,to) end
--[[
	@excludeThis CS.UnityEngine.Vector3
	@fromThat CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector3:Exclude(excludeThis,fromThat) end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.Vector4 = {}
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@w CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector4]
]]
function CS.UnityEngine.Vector4(x,y,z,w) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector4]
]]
function CS.UnityEngine.Vector4(x,y,z) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector4]
]]
function CS.UnityEngine.Vector4(x,y) end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector4]
	 Get 
--]]
CS.UnityEngine.Vector4.normalized = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Vector4.magnitude = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Vector4.sqrMagnitude = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector4]
	 Get 
--]]
CS.UnityEngine.Vector4.zero = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector4]
	 Get 
--]]
CS.UnityEngine.Vector4.one = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector4]
	 Get 
--]]
CS.UnityEngine.Vector4.positiveInfinity = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector4]
	 Get 
--]]
CS.UnityEngine.Vector4.negativeInfinity = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector4.kEpsilon = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector4.x = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector4.y = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector4.z = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Vector4.w = nil
--[[
	@newX CS.System.Single
	@newY CS.System.Single
	@newZ CS.System.Single
	@newW CS.System.Single
--]]
function CS.UnityEngine.Vector4:Set(newX,newY,newZ,newW) end
--[[
	@a CS.UnityEngine.Vector4
	@b CS.UnityEngine.Vector4
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:Lerp(a,b,t) end
--[[
	@a CS.UnityEngine.Vector4
	@b CS.UnityEngine.Vector4
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:LerpUnclamped(a,b,t) end
--[[
	@current CS.UnityEngine.Vector4
	@target CS.UnityEngine.Vector4
	@maxDistanceDelta CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:MoveTowards(current,target,maxDistanceDelta) end
--[[
	@a CS.UnityEngine.Vector4
	@b CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:Scale(a,b) end
--[[
	@scale CS.UnityEngine.Vector4
--]]
function CS.UnityEngine.Vector4:Scale(scale) end
function CS.UnityEngine.Vector4:GetHashCode() end
--[[
	@other CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector4:Equals(other) end
--[[
	@other CS.UnityEngine.Vector4
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector4:Equals(other) end
--[[
	@a CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:Normalize(a) end
function CS.UnityEngine.Vector4:Normalize() end
--[[
	@a CS.UnityEngine.Vector4
	@b CS.UnityEngine.Vector4
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector4:Dot(a,b) end
--[[
	@a CS.UnityEngine.Vector4
	@b CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:Project(a,b) end
--[[
	@a CS.UnityEngine.Vector4
	@b CS.UnityEngine.Vector4
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector4:Distance(a,b) end
--[[
	@a CS.UnityEngine.Vector4
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector4:Magnitude(a) end
--[[
	@lhs CS.UnityEngine.Vector4
	@rhs CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:Min(lhs,rhs) end
--[[
	@lhs CS.UnityEngine.Vector4
	@rhs CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:Max(lhs,rhs) end
--[[
	@a CS.UnityEngine.Vector4
	@b CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:op_Addition(a,b) end
--[[
	@a CS.UnityEngine.Vector4
	@b CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:op_Subtraction(a,b) end
--[[
	@a CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:op_UnaryNegation(a) end
--[[
	@a CS.UnityEngine.Vector4
	@d CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:op_Multiply(a,d) end
--[[
	@d CS.System.Single
	@a CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:op_Multiply(d,a) end
--[[
	@a CS.UnityEngine.Vector4
	@d CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:op_Division(a,d) end
--[[
	@lhs CS.UnityEngine.Vector4
	@rhs CS.UnityEngine.Vector4
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector4:op_Equality(lhs,rhs) end
--[[
	@lhs CS.UnityEngine.Vector4
	@rhs CS.UnityEngine.Vector4
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Vector4:op_Inequality(lhs,rhs) end
--[[
	@v CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:op_Implicit(v) end
--[[
	@v CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Vector4:op_Implicit(v) end
--[[
	@v CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Vector4:op_Implicit(v) end
--[[
	@v CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Vector4:op_Implicit(v) end
function CS.UnityEngine.Vector4:ToString() end
--[[
	@format CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Vector4:ToString(format) end
--[[
	@format CS.System.String
	@formatProvider CS.System.IFormatProvider
	@return: CS.System.String
--]]
function CS.UnityEngine.Vector4:ToString(format,formatProvider) end
--[[
	@a CS.UnityEngine.Vector4
	@return: CS.System.Single
--]]
function CS.UnityEngine.Vector4:SqrMagnitude(a) end
function CS.UnityEngine.Vector4:SqrMagnitude() end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.Quaternion = {}
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@w CS.System.Single
	@return: [luaIde#CS.UnityEngine.Quaternion]
]]
function CS.UnityEngine.Quaternion(x,y,z,w) end
--[[
	@RefType [luaIde#CS.UnityEngine.Quaternion]
	 Get 
--]]
CS.UnityEngine.Quaternion.identity = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Quaternion.eulerAngles = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Quaternion]
	 Get 
--]]
CS.UnityEngine.Quaternion.normalized = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Quaternion.x = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Quaternion.y = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Quaternion.z = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Quaternion.w = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Quaternion.kEpsilon = nil
--[[
	@fromDirection CS.UnityEngine.Vector3
	@toDirection CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:FromToRotation(fromDirection,toDirection) end
--[[
	@rotation CS.UnityEngine.Quaternion
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:Inverse(rotation) end
--[[
	@a CS.UnityEngine.Quaternion
	@b CS.UnityEngine.Quaternion
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:Slerp(a,b,t) end
--[[
	@a CS.UnityEngine.Quaternion
	@b CS.UnityEngine.Quaternion
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:SlerpUnclamped(a,b,t) end
--[[
	@a CS.UnityEngine.Quaternion
	@b CS.UnityEngine.Quaternion
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:Lerp(a,b,t) end
--[[
	@a CS.UnityEngine.Quaternion
	@b CS.UnityEngine.Quaternion
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:LerpUnclamped(a,b,t) end
--[[
	@angle CS.System.Single
	@axis CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:AngleAxis(angle,axis) end
--[[
	@forward CS.UnityEngine.Vector3
	@upwards CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:LookRotation(forward,upwards) end
--[[
	@forward CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:LookRotation(forward) end
--[[
	@newX CS.System.Single
	@newY CS.System.Single
	@newZ CS.System.Single
	@newW CS.System.Single
--]]
function CS.UnityEngine.Quaternion:Set(newX,newY,newZ,newW) end
--[[
	@lhs CS.UnityEngine.Quaternion
	@rhs CS.UnityEngine.Quaternion
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:op_Multiply(lhs,rhs) end
--[[
	@rotation CS.UnityEngine.Quaternion
	@point CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Quaternion:op_Multiply(rotation,point) end
--[[
	@lhs CS.UnityEngine.Quaternion
	@rhs CS.UnityEngine.Quaternion
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Quaternion:op_Equality(lhs,rhs) end
--[[
	@lhs CS.UnityEngine.Quaternion
	@rhs CS.UnityEngine.Quaternion
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Quaternion:op_Inequality(lhs,rhs) end
--[[
	@a CS.UnityEngine.Quaternion
	@b CS.UnityEngine.Quaternion
	@return: CS.System.Single
--]]
function CS.UnityEngine.Quaternion:Dot(a,b) end
--[[
	@view CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Quaternion:SetLookRotation(view) end
--[[
	@view CS.UnityEngine.Vector3
	@up CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Quaternion:SetLookRotation(view,up) end
--[[
	@a CS.UnityEngine.Quaternion
	@b CS.UnityEngine.Quaternion
	@return: CS.System.Single
--]]
function CS.UnityEngine.Quaternion:Angle(a,b) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:Euler(x,y,z) end
--[[
	@euler CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:Euler(euler) end
--[[
	@angle CS.System.Single&
	@axis CS.UnityEngine.Vector3&
--]]
function CS.UnityEngine.Quaternion:ToAngleAxis(angle,axis) end
--[[
	@fromDirection CS.UnityEngine.Vector3
	@toDirection CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Quaternion:SetFromToRotation(fromDirection,toDirection) end
--[[
	@from CS.UnityEngine.Quaternion
	@to CS.UnityEngine.Quaternion
	@maxDegreesDelta CS.System.Single
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:RotateTowards(from,to,maxDegreesDelta) end
--[[
	@q CS.UnityEngine.Quaternion
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:Normalize(q) end
function CS.UnityEngine.Quaternion:Normalize() end
function CS.UnityEngine.Quaternion:GetHashCode() end
--[[
	@other CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Quaternion:Equals(other) end
--[[
	@other CS.UnityEngine.Quaternion
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Quaternion:Equals(other) end
function CS.UnityEngine.Quaternion:ToString() end
--[[
	@format CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Quaternion:ToString(format) end
--[[
	@format CS.System.String
	@formatProvider CS.System.IFormatProvider
	@return: CS.System.String
--]]
function CS.UnityEngine.Quaternion:ToString(format,formatProvider) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:EulerRotation(x,y,z) end
--[[
	@euler CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:EulerRotation(euler) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
--]]
function CS.UnityEngine.Quaternion:SetEulerRotation(x,y,z) end
--[[
	@euler CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Quaternion:SetEulerRotation(euler) end
function CS.UnityEngine.Quaternion:ToEuler() end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:EulerAngles(x,y,z) end
--[[
	@euler CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:EulerAngles(euler) end
--[[
	@axis CS.UnityEngine.Vector3&
	@angle CS.System.Single&
--]]
function CS.UnityEngine.Quaternion:ToAxisAngle(axis,angle) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
--]]
function CS.UnityEngine.Quaternion:SetEulerAngles(x,y,z) end
--[[
	@euler CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Quaternion:SetEulerAngles(euler) end
--[[
	@rotation CS.UnityEngine.Quaternion
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Quaternion:ToEulerAngles(rotation) end
function CS.UnityEngine.Quaternion:ToEulerAngles() end
--[[
	@axis CS.UnityEngine.Vector3
	@angle CS.System.Single
--]]
function CS.UnityEngine.Quaternion:SetAxisAngle(axis,angle) end
--[[
	@axis CS.UnityEngine.Vector3
	@angle CS.System.Single
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Quaternion:AxisAngle(axis,angle) end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.Color = {}
--[[
	@r CS.System.Single
	@g CS.System.Single
	@b CS.System.Single
	@a CS.System.Single
	@return: [luaIde#CS.UnityEngine.Color]
]]
function CS.UnityEngine.Color(r,g,b,a) end
--[[
	@r CS.System.Single
	@g CS.System.Single
	@b CS.System.Single
	@return: [luaIde#CS.UnityEngine.Color]
]]
function CS.UnityEngine.Color(r,g,b) end
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.red = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.green = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.blue = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.white = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.black = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.yellow = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.cyan = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.magenta = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.gray = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.grey = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.clear = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Color.grayscale = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.linear = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 
--]]
CS.UnityEngine.Color.gamma = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Color.maxColorComponent = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Color.r = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Color.g = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Color.b = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Color.a = nil
function CS.UnityEngine.Color:ToString() end
--[[
	@format CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Color:ToString(format) end
--[[
	@format CS.System.String
	@formatProvider CS.System.IFormatProvider
	@return: CS.System.String
--]]
function CS.UnityEngine.Color:ToString(format,formatProvider) end
function CS.UnityEngine.Color:GetHashCode() end
--[[
	@other CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Color:Equals(other) end
--[[
	@other CS.UnityEngine.Color
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Color:Equals(other) end
--[[
	@a CS.UnityEngine.Color
	@b CS.UnityEngine.Color
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Color:op_Addition(a,b) end
--[[
	@a CS.UnityEngine.Color
	@b CS.UnityEngine.Color
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Color:op_Subtraction(a,b) end
--[[
	@a CS.UnityEngine.Color
	@b CS.UnityEngine.Color
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Color:op_Multiply(a,b) end
--[[
	@a CS.UnityEngine.Color
	@b CS.System.Single
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Color:op_Multiply(a,b) end
--[[
	@b CS.System.Single
	@a CS.UnityEngine.Color
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Color:op_Multiply(b,a) end
--[[
	@a CS.UnityEngine.Color
	@b CS.System.Single
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Color:op_Division(a,b) end
--[[
	@lhs CS.UnityEngine.Color
	@rhs CS.UnityEngine.Color
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Color:op_Equality(lhs,rhs) end
--[[
	@lhs CS.UnityEngine.Color
	@rhs CS.UnityEngine.Color
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Color:op_Inequality(lhs,rhs) end
--[[
	@a CS.UnityEngine.Color
	@b CS.UnityEngine.Color
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Color:Lerp(a,b,t) end
--[[
	@a CS.UnityEngine.Color
	@b CS.UnityEngine.Color
	@t CS.System.Single
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Color:LerpUnclamped(a,b,t) end
--[[
	@c CS.UnityEngine.Color
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Color:op_Implicit(c) end
--[[
	@v CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Color:op_Implicit(v) end
--[[
	@rgbColor CS.UnityEngine.Color
	@H CS.System.Single&
	@S CS.System.Single&
	@V CS.System.Single&
--]]
function CS.UnityEngine.Color:RGBToHSV(rgbColor,H,S,V) end
--[[
	@H CS.System.Single
	@S CS.System.Single
	@V CS.System.Single
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Color:HSVToRGB(H,S,V) end
--[[
	@H CS.System.Single
	@S CS.System.Single
	@V CS.System.Single
	@hdr CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Color:HSVToRGB(H,S,V,hdr) end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.Ray = {}
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Ray]
]]
function CS.UnityEngine.Ray(origin,direction) end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Ray.origin = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Ray.direction = nil
--[[
	@distance CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Ray:GetPoint(distance) end
function CS.UnityEngine.Ray:ToString() end
--[[
	@format CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Ray:ToString(format) end
--[[
	@format CS.System.String
	@formatProvider CS.System.IFormatProvider
	@return: CS.System.String
--]]
function CS.UnityEngine.Ray:ToString(format,formatProvider) end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.Bounds = {}
--[[
	@center CS.UnityEngine.Vector3
	@size CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Bounds]
]]
function CS.UnityEngine.Bounds(center,size) end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Bounds.center = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Bounds.size = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Bounds.extents = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Bounds.min = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Bounds.max = nil
function CS.UnityEngine.Bounds:GetHashCode() end
--[[
	@other CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Bounds:Equals(other) end
--[[
	@other CS.UnityEngine.Bounds
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Bounds:Equals(other) end
--[[
	@lhs CS.UnityEngine.Bounds
	@rhs CS.UnityEngine.Bounds
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Bounds:op_Equality(lhs,rhs) end
--[[
	@lhs CS.UnityEngine.Bounds
	@rhs CS.UnityEngine.Bounds
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Bounds:op_Inequality(lhs,rhs) end
--[[
	@min CS.UnityEngine.Vector3
	@max CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Bounds:SetMinMax(min,max) end
--[[
	@point CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Bounds:Encapsulate(point) end
--[[
	@bounds CS.UnityEngine.Bounds
--]]
function CS.UnityEngine.Bounds:Encapsulate(bounds) end
--[[
	@amount CS.System.Single
--]]
function CS.UnityEngine.Bounds:Expand(amount) end
--[[
	@amount CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Bounds:Expand(amount) end
--[[
	@bounds CS.UnityEngine.Bounds
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Bounds:Intersects(bounds) end
--[[
	@ray CS.UnityEngine.Ray
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Bounds:IntersectRay(ray) end
--[[
	@ray CS.UnityEngine.Ray
	@distance CS.System.Single&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Bounds:IntersectRay(ray,distance) end
function CS.UnityEngine.Bounds:ToString() end
--[[
	@format CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Bounds:ToString(format) end
--[[
	@format CS.System.String
	@formatProvider CS.System.IFormatProvider
	@return: CS.System.String
--]]
function CS.UnityEngine.Bounds:ToString(format,formatProvider) end
--[[
	@point CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Bounds:Contains(point) end
--[[
	@point CS.UnityEngine.Vector3
	@return: CS.System.Single
--]]
function CS.UnityEngine.Bounds:SqrDistance(point) end
--[[
	@point CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Bounds:ClosestPoint(point) end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.Ray2D = {}
--[[
	@origin CS.UnityEngine.Vector2
	@direction CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Ray2D]
]]
function CS.UnityEngine.Ray2D(origin,direction) end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Ray2D.origin = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Ray2D.direction = nil
--[[
	@distance CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Ray2D:GetPoint(distance) end
function CS.UnityEngine.Ray2D:ToString() end
--[[
	@format CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Ray2D:ToString(format) end
--[[
	@format CS.System.String
	@formatProvider CS.System.IFormatProvider
	@return: CS.System.String
--]]
function CS.UnityEngine.Ray2D:ToString(format,formatProvider) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Time = {}
--[[
	@return: [luaIde#CS.UnityEngine.Time]
]]
function CS.UnityEngine.Time() end
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Time.time = nil
--[[
	CS.System.Double
	 Get 
--]]
CS.UnityEngine.Time.timeAsDouble = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Time.timeSinceLevelLoad = nil
--[[
	CS.System.Double
	 Get 
--]]
CS.UnityEngine.Time.timeSinceLevelLoadAsDouble = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Time.deltaTime = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Time.fixedTime = nil
--[[
	CS.System.Double
	 Get 
--]]
CS.UnityEngine.Time.fixedTimeAsDouble = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Time.unscaledTime = nil
--[[
	CS.System.Double
	 Get 
--]]
CS.UnityEngine.Time.unscaledTimeAsDouble = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Time.fixedUnscaledTime = nil
--[[
	CS.System.Double
	 Get 
--]]
CS.UnityEngine.Time.fixedUnscaledTimeAsDouble = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Time.unscaledDeltaTime = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Time.fixedUnscaledDeltaTime = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Time.fixedDeltaTime = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Time.maximumDeltaTime = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Time.smoothDeltaTime = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Time.maximumParticleDeltaTime = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Time.timeScale = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Time.frameCount = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Time.renderedFrameCount = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Time.realtimeSinceStartup = nil
--[[
	CS.System.Double
	 Get 
--]]
CS.UnityEngine.Time.realtimeSinceStartupAsDouble = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Time.captureDeltaTime = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Time.captureFramerate = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Time.inFixedTimeStep = nil

--@SuperType [luaIde#CS.UnityEngine.Object]
CS.UnityEngine.GameObject = {}
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.GameObject]
]]
function CS.UnityEngine.GameObject(name) end
--[[
	@return: [luaIde#CS.UnityEngine.GameObject]
]]
function CS.UnityEngine.GameObject() end
--[[
	@name CS.System.String
	@components CS.System.Type<>
	@return: [luaIde#CS.UnityEngine.GameObject]
]]
function CS.UnityEngine.GameObject(name,components) end
--[[
	@RefType [luaIde#CS.UnityEngine.Transform]
	 Get 
--]]
CS.UnityEngine.GameObject.transform = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.GameObject.layer = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.GameObject.activeSelf = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.GameObject.activeInHierarchy = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.GameObject.isStatic = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.GameObject.tag = nil
--[[
	CS.UnityEngine.SceneManagement.Scene
	 Get 
--]]
CS.UnityEngine.GameObject.scene = nil
--[[
	CS.System.UInt64
	 Get 
--]]
CS.UnityEngine.GameObject.sceneCullingMask = nil
--[[
	@RefType [luaIde#CS.UnityEngine.GameObject]
	 Get 
--]]
CS.UnityEngine.GameObject.gameObject = nil
--[[
	@type CS.UnityEngine.PrimitiveType
	@return: [luaIde#CS.UnityEngine.GameObject]
--]]
function CS.UnityEngine.GameObject:CreatePrimitive(type) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.GameObject:GetComponent(type) end
--[[
	@type CS.System.String
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.GameObject:GetComponent(type) end
--[[
	@type CS.System.Type
	@includeInactive CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.GameObject:GetComponentInChildren(type,includeInactive) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.GameObject:GetComponentInChildren(type) end
--[[
	@type CS.System.Type
	@includeInactive CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.GameObject:GetComponentInParent(type,includeInactive) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.GameObject:GetComponentInParent(type) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component<>]
--]]
function CS.UnityEngine.GameObject:GetComponents(type) end
--[[
	@type CS.System.Type
	@results CS.UnityEngine.Component<>
--]]
function CS.UnityEngine.GameObject:GetComponents(type,results) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component<>]
--]]
function CS.UnityEngine.GameObject:GetComponentsInChildren(type) end
--[[
	@type CS.System.Type
	@includeInactive CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Component<>]
--]]
function CS.UnityEngine.GameObject:GetComponentsInChildren(type,includeInactive) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component<>]
--]]
function CS.UnityEngine.GameObject:GetComponentsInParent(type) end
--[[
	@type CS.System.Type
	@includeInactive CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Component<>]
--]]
function CS.UnityEngine.GameObject:GetComponentsInParent(type,includeInactive) end
--[[
	@type CS.System.Type
	@component CS.UnityEngine.Component&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.GameObject:TryGetComponent(type,component) end
--[[
	@tag CS.System.String
	@return: [luaIde#CS.UnityEngine.GameObject]
--]]
function CS.UnityEngine.GameObject:FindWithTag(tag) end
--[[
	@methodName CS.System.String
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.GameObject:SendMessageUpwards(methodName,options) end
--[[
	@methodName CS.System.String
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.GameObject:SendMessage(methodName,options) end
--[[
	@methodName CS.System.String
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.GameObject:BroadcastMessage(methodName,options) end
--[[
	@componentType CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.GameObject:AddComponent(componentType) end
--[[
	@value CS.System.Boolean
--]]
function CS.UnityEngine.GameObject:SetActive(value) end
--[[
	@state CS.System.Boolean
--]]
function CS.UnityEngine.GameObject:SetActiveRecursively(state) end
--[[
	@tag CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.GameObject:CompareTag(tag) end
--[[
	@tag CS.System.String
	@return: [luaIde#CS.UnityEngine.GameObject]
--]]
function CS.UnityEngine.GameObject:FindGameObjectWithTag(tag) end
--[[
	@tag CS.System.String
	@return: [luaIde#CS.UnityEngine.GameObject<>]
--]]
function CS.UnityEngine.GameObject:FindGameObjectsWithTag(tag) end
--[[
	@methodName CS.System.String
	@value CS.System.Object
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.GameObject:SendMessageUpwards(methodName,value,options) end
--[[
	@methodName CS.System.String
	@value CS.System.Object
--]]
function CS.UnityEngine.GameObject:SendMessageUpwards(methodName,value) end
--[[
	@methodName CS.System.String
--]]
function CS.UnityEngine.GameObject:SendMessageUpwards(methodName) end
--[[
	@methodName CS.System.String
	@value CS.System.Object
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.GameObject:SendMessage(methodName,value,options) end
--[[
	@methodName CS.System.String
	@value CS.System.Object
--]]
function CS.UnityEngine.GameObject:SendMessage(methodName,value) end
--[[
	@methodName CS.System.String
--]]
function CS.UnityEngine.GameObject:SendMessage(methodName) end
--[[
	@methodName CS.System.String
	@parameter CS.System.Object
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.GameObject:BroadcastMessage(methodName,parameter,options) end
--[[
	@methodName CS.System.String
	@parameter CS.System.Object
--]]
function CS.UnityEngine.GameObject:BroadcastMessage(methodName,parameter) end
--[[
	@methodName CS.System.String
--]]
function CS.UnityEngine.GameObject:BroadcastMessage(methodName) end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.GameObject]
--]]
function CS.UnityEngine.GameObject:Find(name) end
--[[
	@clip CS.UnityEngine.Object
	@time CS.System.Single
--]]
function CS.UnityEngine.GameObject:SampleAnimation(clip,time) end
--[[
	@className CS.System.String
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.GameObject:AddComponent(className) end
--[[
	@animation CS.UnityEngine.Object
--]]
function CS.UnityEngine.GameObject:PlayAnimation(animation) end
function CS.UnityEngine.GameObject:StopAnimation() end

--@SuperType [luaIde#CS.UnityEngine.Object]
CS.UnityEngine.Component = {}
--[[
	@return: [luaIde#CS.UnityEngine.Component]
]]
function CS.UnityEngine.Component() end
--[[
	@RefType [luaIde#CS.UnityEngine.Transform]
	 Get 
--]]
CS.UnityEngine.Component.transform = nil
--[[
	@RefType [luaIde#CS.UnityEngine.GameObject]
	 Get 
--]]
CS.UnityEngine.Component.gameObject = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Component.tag = nil
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.Component:GetComponent(type) end
--[[
	@type CS.System.Type
	@component CS.UnityEngine.Component&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Component:TryGetComponent(type,component) end
--[[
	@type CS.System.String
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.Component:GetComponent(type) end
--[[
	@t CS.System.Type
	@includeInactive CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.Component:GetComponentInChildren(t,includeInactive) end
--[[
	@t CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.Component:GetComponentInChildren(t) end
--[[
	@t CS.System.Type
	@includeInactive CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Component<>]
--]]
function CS.UnityEngine.Component:GetComponentsInChildren(t,includeInactive) end
--[[
	@t CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component<>]
--]]
function CS.UnityEngine.Component:GetComponentsInChildren(t) end
--[[
	@t CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component]
--]]
function CS.UnityEngine.Component:GetComponentInParent(t) end
--[[
	@t CS.System.Type
	@includeInactive CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Component<>]
--]]
function CS.UnityEngine.Component:GetComponentsInParent(t,includeInactive) end
--[[
	@t CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component<>]
--]]
function CS.UnityEngine.Component:GetComponentsInParent(t) end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Component<>]
--]]
function CS.UnityEngine.Component:GetComponents(type) end
--[[
	@type CS.System.Type
	@results CS.UnityEngine.Component<>
--]]
function CS.UnityEngine.Component:GetComponents(type,results) end
--[[
	@tag CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Component:CompareTag(tag) end
--[[
	@methodName CS.System.String
	@value CS.System.Object
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.Component:SendMessageUpwards(methodName,value,options) end
--[[
	@methodName CS.System.String
	@value CS.System.Object
--]]
function CS.UnityEngine.Component:SendMessageUpwards(methodName,value) end
--[[
	@methodName CS.System.String
--]]
function CS.UnityEngine.Component:SendMessageUpwards(methodName) end
--[[
	@methodName CS.System.String
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.Component:SendMessageUpwards(methodName,options) end
--[[
	@methodName CS.System.String
	@value CS.System.Object
--]]
function CS.UnityEngine.Component:SendMessage(methodName,value) end
--[[
	@methodName CS.System.String
--]]
function CS.UnityEngine.Component:SendMessage(methodName) end
--[[
	@methodName CS.System.String
	@value CS.System.Object
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.Component:SendMessage(methodName,value,options) end
--[[
	@methodName CS.System.String
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.Component:SendMessage(methodName,options) end
--[[
	@methodName CS.System.String
	@parameter CS.System.Object
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.Component:BroadcastMessage(methodName,parameter,options) end
--[[
	@methodName CS.System.String
	@parameter CS.System.Object
--]]
function CS.UnityEngine.Component:BroadcastMessage(methodName,parameter) end
--[[
	@methodName CS.System.String
--]]
function CS.UnityEngine.Component:BroadcastMessage(methodName) end
--[[
	@methodName CS.System.String
	@options CS.UnityEngine.SendMessageOptions
--]]
function CS.UnityEngine.Component:BroadcastMessage(methodName,options) end

--@SuperType [luaIde#CS.UnityEngine.Component]
CS.UnityEngine.Behaviour = {}
--[[
	@return: [luaIde#CS.UnityEngine.Behaviour]
]]
function CS.UnityEngine.Behaviour() end
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Behaviour.enabled = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Behaviour.isActiveAndEnabled = nil

--@SuperType [luaIde#CS.UnityEngine.Component]
CS.UnityEngine.Transform = {}
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.position = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.localPosition = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.eulerAngles = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.localEulerAngles = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.right = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.up = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.forward = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Quaternion]
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.rotation = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Quaternion]
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.localRotation = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.localScale = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Transform]
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.parent = nil
--[[
	CS.UnityEngine.Matrix4x4
	 Get 
--]]
CS.UnityEngine.Transform.worldToLocalMatrix = nil
--[[
	CS.UnityEngine.Matrix4x4
	 Get 
--]]
CS.UnityEngine.Transform.localToWorldMatrix = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Transform]
	 Get 
--]]
CS.UnityEngine.Transform.root = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Transform.childCount = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Transform.lossyScale = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.hasChanged = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Transform.hierarchyCapacity = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Transform.hierarchyCount = nil
--[[
	@p CS.UnityEngine.Transform
--]]
function CS.UnityEngine.Transform:SetParent(p) end
--[[
	@parent CS.UnityEngine.Transform
	@worldPositionStays CS.System.Boolean
--]]
function CS.UnityEngine.Transform:SetParent(parent,worldPositionStays) end
--[[
	@position CS.UnityEngine.Vector3
	@rotation CS.UnityEngine.Quaternion
--]]
function CS.UnityEngine.Transform:SetPositionAndRotation(position,rotation) end
--[[
	@translation CS.UnityEngine.Vector3
	@relativeTo CS.UnityEngine.Space
--]]
function CS.UnityEngine.Transform:Translate(translation,relativeTo) end
--[[
	@translation CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Transform:Translate(translation) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@relativeTo CS.UnityEngine.Space
--]]
function CS.UnityEngine.Transform:Translate(x,y,z,relativeTo) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
--]]
function CS.UnityEngine.Transform:Translate(x,y,z) end
--[[
	@translation CS.UnityEngine.Vector3
	@relativeTo CS.UnityEngine.Transform
--]]
function CS.UnityEngine.Transform:Translate(translation,relativeTo) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@relativeTo CS.UnityEngine.Transform
--]]
function CS.UnityEngine.Transform:Translate(x,y,z,relativeTo) end
--[[
	@eulers CS.UnityEngine.Vector3
	@relativeTo CS.UnityEngine.Space
--]]
function CS.UnityEngine.Transform:Rotate(eulers,relativeTo) end
--[[
	@eulers CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Transform:Rotate(eulers) end
--[[
	@xAngle CS.System.Single
	@yAngle CS.System.Single
	@zAngle CS.System.Single
	@relativeTo CS.UnityEngine.Space
--]]
function CS.UnityEngine.Transform:Rotate(xAngle,yAngle,zAngle,relativeTo) end
--[[
	@xAngle CS.System.Single
	@yAngle CS.System.Single
	@zAngle CS.System.Single
--]]
function CS.UnityEngine.Transform:Rotate(xAngle,yAngle,zAngle) end
--[[
	@axis CS.UnityEngine.Vector3
	@angle CS.System.Single
	@relativeTo CS.UnityEngine.Space
--]]
function CS.UnityEngine.Transform:Rotate(axis,angle,relativeTo) end
--[[
	@axis CS.UnityEngine.Vector3
	@angle CS.System.Single
--]]
function CS.UnityEngine.Transform:Rotate(axis,angle) end
--[[
	@point CS.UnityEngine.Vector3
	@axis CS.UnityEngine.Vector3
	@angle CS.System.Single
--]]
function CS.UnityEngine.Transform:RotateAround(point,axis,angle) end
--[[
	@target CS.UnityEngine.Transform
	@worldUp CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Transform:LookAt(target,worldUp) end
--[[
	@target CS.UnityEngine.Transform
--]]
function CS.UnityEngine.Transform:LookAt(target) end
--[[
	@worldPosition CS.UnityEngine.Vector3
	@worldUp CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Transform:LookAt(worldPosition,worldUp) end
--[[
	@worldPosition CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Transform:LookAt(worldPosition) end
--[[
	@direction CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:TransformDirection(direction) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:TransformDirection(x,y,z) end
--[[
	@direction CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:InverseTransformDirection(direction) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:InverseTransformDirection(x,y,z) end
--[[
	@vector CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:TransformVector(vector) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:TransformVector(x,y,z) end
--[[
	@vector CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:InverseTransformVector(vector) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:InverseTransformVector(x,y,z) end
--[[
	@position CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:TransformPoint(position) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:TransformPoint(x,y,z) end
--[[
	@position CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:InverseTransformPoint(position) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Transform:InverseTransformPoint(x,y,z) end
function CS.UnityEngine.Transform:DetachChildren() end
function CS.UnityEngine.Transform:SetAsFirstSibling() end
function CS.UnityEngine.Transform:SetAsLastSibling() end
--[[
	@index CS.System.Int32
--]]
function CS.UnityEngine.Transform:SetSiblingIndex(index) end
function CS.UnityEngine.Transform:GetSiblingIndex() end
--[[
	@n CS.System.String
	@return: [luaIde#CS.UnityEngine.Transform]
--]]
function CS.UnityEngine.Transform:Find(n) end
--[[
	@parent CS.UnityEngine.Transform
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Transform:IsChildOf(parent) end
--[[
	@n CS.System.String
	@return: [luaIde#CS.UnityEngine.Transform]
--]]
function CS.UnityEngine.Transform:FindChild(n) end
function CS.UnityEngine.Transform:GetEnumerator() end
--[[
	@axis CS.UnityEngine.Vector3
	@angle CS.System.Single
--]]
function CS.UnityEngine.Transform:RotateAround(axis,angle) end
--[[
	@axis CS.UnityEngine.Vector3
	@angle CS.System.Single
--]]
function CS.UnityEngine.Transform:RotateAroundLocal(axis,angle) end
--[[
	@index CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Transform]
--]]
function CS.UnityEngine.Transform:GetChild(index) end
function CS.UnityEngine.Transform:GetChildCount() end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Resources = {}
--[[
	@return: [luaIde#CS.UnityEngine.Resources]
]]
function CS.UnityEngine.Resources() end
--[[
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Object<>]
--]]
function CS.UnityEngine.Resources:FindObjectsOfTypeAll(type) end
--[[
	@path CS.System.String
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Resources:Load(path) end
--[[
	@path CS.System.String
	@systemTypeInstance CS.System.Type
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Resources:Load(path,systemTypeInstance) end
--[[
	@path CS.System.String
	@return: CS.UnityEngine.ResourceRequest
--]]
function CS.UnityEngine.Resources:LoadAsync(path) end
--[[
	@path CS.System.String
	@type CS.System.Type
	@return: CS.UnityEngine.ResourceRequest
--]]
function CS.UnityEngine.Resources:LoadAsync(path,type) end
--[[
	@path CS.System.String
	@systemTypeInstance CS.System.Type
	@return: [luaIde#CS.UnityEngine.Object<>]
--]]
function CS.UnityEngine.Resources:LoadAll(path,systemTypeInstance) end
--[[
	@path CS.System.String
	@return: [luaIde#CS.UnityEngine.Object<>]
--]]
function CS.UnityEngine.Resources:LoadAll(path) end
--[[
	@type CS.System.Type
	@path CS.System.String
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Resources:GetBuiltinResource(type,path) end
--[[
	@assetToUnload CS.UnityEngine.Object
--]]
function CS.UnityEngine.Resources:UnloadAsset(assetToUnload) end
function CS.UnityEngine.Resources:UnloadUnusedAssets() end
--[[
	@instanceID CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Resources:InstanceIDToObject(instanceID) end
--[[
	@instanceIDs CS.Unity.Collections.NativeArray
	@objects CS.UnityEngine.Object<>
--]]
function CS.UnityEngine.Resources:InstanceIDToObjectList(instanceIDs,objects) end
--[[
	@assetPath CS.System.String
	@type CS.System.Type
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.UnityEngine.Resources:LoadAssetAtPath(assetPath,type) end

--@SuperType [luaIde#CS.UnityEngine.Object]
CS.UnityEngine.TextAsset = {}
--[[
	@return: [luaIde#CS.UnityEngine.TextAsset]
]]
function CS.UnityEngine.TextAsset() end
--[[
	@text CS.System.String
	@return: [luaIde#CS.UnityEngine.TextAsset]
]]
function CS.UnityEngine.TextAsset(text) end
--[[
	CS.System.Byte<>
	 Get 
--]]
CS.UnityEngine.TextAsset.bytes = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.TextAsset.text = nil
function CS.UnityEngine.TextAsset:ToString() end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.Keyframe = {}
--[[
	@time CS.System.Single
	@value CS.System.Single
	@return: [luaIde#CS.UnityEngine.Keyframe]
]]
function CS.UnityEngine.Keyframe(time,value) end
--[[
	@time CS.System.Single
	@value CS.System.Single
	@inTangent CS.System.Single
	@outTangent CS.System.Single
	@return: [luaIde#CS.UnityEngine.Keyframe]
]]
function CS.UnityEngine.Keyframe(time,value,inTangent,outTangent) end
--[[
	@time CS.System.Single
	@value CS.System.Single
	@inTangent CS.System.Single
	@outTangent CS.System.Single
	@inWeight CS.System.Single
	@outWeight CS.System.Single
	@return: [luaIde#CS.UnityEngine.Keyframe]
]]
function CS.UnityEngine.Keyframe(time,value,inTangent,outTangent,inWeight,outWeight) end
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Keyframe.time = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Keyframe.value = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Keyframe.inTangent = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Keyframe.outTangent = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Keyframe.inWeight = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Keyframe.outWeight = nil
--[[
	CS.UnityEngine.WeightedMode
	 Get 	 Set 
--]]
CS.UnityEngine.Keyframe.weightedMode = nil

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.AnimationCurve = {}
--[[
	@keys CS.UnityEngine.Keyframe<>
	@return: [luaIde#CS.UnityEngine.AnimationCurve]
]]
function CS.UnityEngine.AnimationCurve(keys) end
--[[
	@return: [luaIde#CS.UnityEngine.AnimationCurve]
]]
function CS.UnityEngine.AnimationCurve() end
--[[
	@RefType [luaIde#CS.UnityEngine.Keyframe<>]
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationCurve.keys = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.AnimationCurve.length = nil
--[[
	CS.UnityEngine.WrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationCurve.preWrapMode = nil
--[[
	CS.UnityEngine.WrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationCurve.postWrapMode = nil
--[[
	@time CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.AnimationCurve:Evaluate(time) end
--[[
	@time CS.System.Single
	@value CS.System.Single
	@return: CS.System.Int32
--]]
function CS.UnityEngine.AnimationCurve:AddKey(time,value) end
--[[
	@key CS.UnityEngine.Keyframe
	@return: CS.System.Int32
--]]
function CS.UnityEngine.AnimationCurve:AddKey(key) end
--[[
	@index CS.System.Int32
	@key CS.UnityEngine.Keyframe
	@return: CS.System.Int32
--]]
function CS.UnityEngine.AnimationCurve:MoveKey(index,key) end
--[[
	@index CS.System.Int32
--]]
function CS.UnityEngine.AnimationCurve:RemoveKey(index) end
--[[
	@index CS.System.Int32
	@weight CS.System.Single
--]]
function CS.UnityEngine.AnimationCurve:SmoothTangents(index,weight) end
--[[
	@timeStart CS.System.Single
	@timeEnd CS.System.Single
	@value CS.System.Single
	@return: [luaIde#CS.UnityEngine.AnimationCurve]
--]]
function CS.UnityEngine.AnimationCurve:Constant(timeStart,timeEnd,value) end
--[[
	@timeStart CS.System.Single
	@valueStart CS.System.Single
	@timeEnd CS.System.Single
	@valueEnd CS.System.Single
	@return: [luaIde#CS.UnityEngine.AnimationCurve]
--]]
function CS.UnityEngine.AnimationCurve:Linear(timeStart,valueStart,timeEnd,valueEnd) end
--[[
	@timeStart CS.System.Single
	@valueStart CS.System.Single
	@timeEnd CS.System.Single
	@valueEnd CS.System.Single
	@return: [luaIde#CS.UnityEngine.AnimationCurve]
--]]
function CS.UnityEngine.AnimationCurve:EaseInOut(timeStart,valueStart,timeEnd,valueEnd) end
--[[
	@o CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AnimationCurve:Equals(o) end
--[[
	@other CS.UnityEngine.AnimationCurve
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AnimationCurve:Equals(other) end
function CS.UnityEngine.AnimationCurve:GetHashCode() end

--@SuperType [luaIde#CS.UnityEngine.Motion]
CS.UnityEngine.AnimationClip = {}
--[[
	@return: [luaIde#CS.UnityEngine.AnimationClip]
]]
function CS.UnityEngine.AnimationClip() end
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.AnimationClip.length = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationClip.frameRate = nil
--[[
	CS.UnityEngine.WrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationClip.wrapMode = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Bounds]
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationClip.localBounds = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationClip.legacy = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AnimationClip.humanMotion = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AnimationClip.empty = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AnimationClip.hasGenericRootTransform = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AnimationClip.hasMotionFloatCurves = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AnimationClip.hasMotionCurves = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AnimationClip.hasRootCurves = nil
--[[
	CS.UnityEngine.AnimationEvent<>
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationClip.events = nil
--[[
	@go CS.UnityEngine.GameObject
	@time CS.System.Single
--]]
function CS.UnityEngine.AnimationClip:SampleAnimation(go,time) end
--[[
	@relativePath CS.System.String
	@type CS.System.Type
	@propertyName CS.System.String
	@curve CS.UnityEngine.AnimationCurve
--]]
function CS.UnityEngine.AnimationClip:SetCurve(relativePath,type,propertyName,curve) end
function CS.UnityEngine.AnimationClip:EnsureQuaternionContinuity() end
function CS.UnityEngine.AnimationClip:ClearCurves() end
--[[
	@evt CS.UnityEngine.AnimationEvent
--]]
function CS.UnityEngine.AnimationClip:AddEvent(evt) end

--@SuperType [luaIde#CS.UnityEngine.TrackedReference]
CS.UnityEngine.AnimationState = {}
--[[
	@return: [luaIde#CS.UnityEngine.AnimationState]
]]
function CS.UnityEngine.AnimationState() end
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationState.enabled = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationState.weight = nil
--[[
	CS.UnityEngine.WrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationState.wrapMode = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationState.time = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationState.normalizedTime = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationState.speed = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationState.normalizedSpeed = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.AnimationState.length = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationState.layer = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AnimationClip]
	 Get 
--]]
CS.UnityEngine.AnimationState.clip = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationState.name = nil
--[[
	CS.UnityEngine.AnimationBlendMode
	 Get 	 Set 
--]]
CS.UnityEngine.AnimationState.blendMode = nil
--[[
	@mix CS.UnityEngine.Transform
--]]
function CS.UnityEngine.AnimationState:AddMixingTransform(mix) end
--[[
	@mix CS.UnityEngine.Transform
	@recursive CS.System.Boolean
--]]
function CS.UnityEngine.AnimationState:AddMixingTransform(mix,recursive) end
--[[
	@mix CS.UnityEngine.Transform
--]]
function CS.UnityEngine.AnimationState:RemoveMixingTransform(mix) end

--@SuperType [luaIde#CS.UnityEngine.Behaviour]
CS.UnityEngine.MonoBehaviour = {}
--[[
	@return: [luaIde#CS.UnityEngine.MonoBehaviour]
]]
function CS.UnityEngine.MonoBehaviour() end
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.MonoBehaviour.useGUILayout = nil
function CS.UnityEngine.MonoBehaviour:IsInvoking() end
function CS.UnityEngine.MonoBehaviour:CancelInvoke() end
--[[
	@methodName CS.System.String
	@time CS.System.Single
--]]
function CS.UnityEngine.MonoBehaviour:Invoke(methodName,time) end
--[[
	@methodName CS.System.String
	@time CS.System.Single
	@repeatRate CS.System.Single
--]]
function CS.UnityEngine.MonoBehaviour:InvokeRepeating(methodName,time,repeatRate) end
--[[
	@methodName CS.System.String
--]]
function CS.UnityEngine.MonoBehaviour:CancelInvoke(methodName) end
--[[
	@methodName CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.MonoBehaviour:IsInvoking(methodName) end
--[[
	@methodName CS.System.String
	@return: CS.UnityEngine.Coroutine
--]]
function CS.UnityEngine.MonoBehaviour:StartCoroutine(methodName) end
--[[
	@methodName CS.System.String
	@value CS.System.Object
	@return: CS.UnityEngine.Coroutine
--]]
function CS.UnityEngine.MonoBehaviour:StartCoroutine(methodName,value) end
--[[
	@routine CS.System.Collections.IEnumerator
	@return: CS.UnityEngine.Coroutine
--]]
function CS.UnityEngine.MonoBehaviour:StartCoroutine(routine) end
--[[
	@routine CS.System.Collections.IEnumerator
	@return: CS.UnityEngine.Coroutine
--]]
function CS.UnityEngine.MonoBehaviour:StartCoroutine_Auto(routine) end
--[[
	@routine CS.System.Collections.IEnumerator
--]]
function CS.UnityEngine.MonoBehaviour:StopCoroutine(routine) end
--[[
	@routine CS.UnityEngine.Coroutine
--]]
function CS.UnityEngine.MonoBehaviour:StopCoroutine(routine) end
--[[
	@methodName CS.System.String
--]]
function CS.UnityEngine.MonoBehaviour:StopCoroutine(methodName) end
function CS.UnityEngine.MonoBehaviour:StopAllCoroutines() end
--[[
	@message CS.System.Object
--]]
function CS.UnityEngine.MonoBehaviour:print(message) end

--@SuperType [luaIde#CS.UnityEngine.Component]
CS.UnityEngine.ParticleSystem = {}
--[[
	@return: [luaIde#CS.UnityEngine.ParticleSystem]
]]
function CS.UnityEngine.ParticleSystem() end
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.ParticleSystem.isPlaying = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.ParticleSystem.isEmitting = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.ParticleSystem.isStopped = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.ParticleSystem.isPaused = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.ParticleSystem.particleCount = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.time = nil
--[[
	CS.System.UInt32
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.randomSeed = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.useAutoRandomSeed = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.ParticleSystem.proceduralSimulationSupported = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MainModule]
	 Get 
--]]
CS.UnityEngine.ParticleSystem.main = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.EmissionModule]
	 Get 
--]]
CS.UnityEngine.ParticleSystem.emission = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.ShapeModule]
	 Get 
--]]
CS.UnityEngine.ParticleSystem.shape = nil
--[[
	CS.UnityEngine.ParticleSystem.VelocityOverLifetimeModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.velocityOverLifetime = nil
--[[
	CS.UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.limitVelocityOverLifetime = nil
--[[
	CS.UnityEngine.ParticleSystem.InheritVelocityModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.inheritVelocity = nil
--[[
	CS.UnityEngine.ParticleSystem.LifetimeByEmitterSpeedModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.lifetimeByEmitterSpeed = nil
--[[
	CS.UnityEngine.ParticleSystem.ForceOverLifetimeModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.forceOverLifetime = nil
--[[
	CS.UnityEngine.ParticleSystem.ColorOverLifetimeModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.colorOverLifetime = nil
--[[
	CS.UnityEngine.ParticleSystem.ColorBySpeedModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.colorBySpeed = nil
--[[
	CS.UnityEngine.ParticleSystem.SizeOverLifetimeModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.sizeOverLifetime = nil
--[[
	CS.UnityEngine.ParticleSystem.SizeBySpeedModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.sizeBySpeed = nil
--[[
	CS.UnityEngine.ParticleSystem.RotationOverLifetimeModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.rotationOverLifetime = nil
--[[
	CS.UnityEngine.ParticleSystem.RotationBySpeedModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.rotationBySpeed = nil
--[[
	CS.UnityEngine.ParticleSystem.ExternalForcesModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.externalForces = nil
--[[
	CS.UnityEngine.ParticleSystem.NoiseModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.noise = nil
--[[
	CS.UnityEngine.ParticleSystem.CollisionModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.collision = nil
--[[
	CS.UnityEngine.ParticleSystem.TriggerModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.trigger = nil
--[[
	CS.UnityEngine.ParticleSystem.SubEmittersModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.subEmitters = nil
--[[
	CS.UnityEngine.ParticleSystem.TextureSheetAnimationModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.textureSheetAnimation = nil
--[[
	CS.UnityEngine.ParticleSystem.LightsModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.lights = nil
--[[
	CS.UnityEngine.ParticleSystem.TrailModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.trails = nil
--[[
	CS.UnityEngine.ParticleSystem.CustomDataModule
	 Get 
--]]
CS.UnityEngine.ParticleSystem.customData = nil
--[[
	@position CS.UnityEngine.Vector3
	@velocity CS.UnityEngine.Vector3
	@size CS.System.Single
	@lifetime CS.System.Single
	@color CS.UnityEngine.Color32
--]]
function CS.UnityEngine.ParticleSystem:Emit(position,velocity,size,lifetime,color) end
--[[
	@particle CS.UnityEngine.ParticleSystem.Particle
--]]
function CS.UnityEngine.ParticleSystem:Emit(particle) end
--[[
	@particles CS.UnityEngine.ParticleSystem.Particle<>
	@size CS.System.Int32
	@offset CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:SetParticles(particles,size,offset) end
--[[
	@particles CS.UnityEngine.ParticleSystem.Particle<>
	@size CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:SetParticles(particles,size) end
--[[
	@particles CS.UnityEngine.ParticleSystem.Particle<>
--]]
function CS.UnityEngine.ParticleSystem:SetParticles(particles) end
--[[
	@particles CS.Unity.Collections.NativeArray
	@size CS.System.Int32
	@offset CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:SetParticles(particles,size,offset) end
--[[
	@particles CS.Unity.Collections.NativeArray
	@size CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:SetParticles(particles,size) end
--[[
	@particles CS.Unity.Collections.NativeArray
--]]
function CS.UnityEngine.ParticleSystem:SetParticles(particles) end
--[[
	@particles CS.UnityEngine.ParticleSystem.Particle<>
	@size CS.System.Int32
	@offset CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:GetParticles(particles,size,offset) end
--[[
	@particles CS.UnityEngine.ParticleSystem.Particle<>
	@size CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:GetParticles(particles,size) end
--[[
	@particles CS.UnityEngine.ParticleSystem.Particle<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:GetParticles(particles) end
--[[
	@particles CS.Unity.Collections.NativeArray
	@size CS.System.Int32
	@offset CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:GetParticles(particles,size,offset) end
--[[
	@particles CS.Unity.Collections.NativeArray
	@size CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:GetParticles(particles,size) end
--[[
	@particles CS.Unity.Collections.NativeArray
	@return: CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:GetParticles(particles) end
--[[
	@customData CS.UnityEngine.Vector4<>
	@streamIndex CS.UnityEngine.ParticleSystemCustomData
--]]
function CS.UnityEngine.ParticleSystem:SetCustomParticleData(customData,streamIndex) end
--[[
	@customData CS.UnityEngine.Vector4<>
	@streamIndex CS.UnityEngine.ParticleSystemCustomData
	@return: CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:GetCustomParticleData(customData,streamIndex) end
function CS.UnityEngine.ParticleSystem:GetPlaybackState() end
--[[
	@playbackState CS.UnityEngine.ParticleSystem.PlaybackState
--]]
function CS.UnityEngine.ParticleSystem:SetPlaybackState(playbackState) end
function CS.UnityEngine.ParticleSystem:GetTrails() end
--[[
	@trailData CS.UnityEngine.ParticleSystem.Trails
--]]
function CS.UnityEngine.ParticleSystem:SetTrails(trailData) end
--[[
	@t CS.System.Single
	@withChildren CS.System.Boolean
	@restart CS.System.Boolean
	@fixedTimeStep CS.System.Boolean
--]]
function CS.UnityEngine.ParticleSystem:Simulate(t,withChildren,restart,fixedTimeStep) end
--[[
	@t CS.System.Single
	@withChildren CS.System.Boolean
	@restart CS.System.Boolean
--]]
function CS.UnityEngine.ParticleSystem:Simulate(t,withChildren,restart) end
--[[
	@t CS.System.Single
	@withChildren CS.System.Boolean
--]]
function CS.UnityEngine.ParticleSystem:Simulate(t,withChildren) end
--[[
	@t CS.System.Single
--]]
function CS.UnityEngine.ParticleSystem:Simulate(t) end
--[[
	@withChildren CS.System.Boolean
--]]
function CS.UnityEngine.ParticleSystem:Play(withChildren) end
function CS.UnityEngine.ParticleSystem:Play() end
--[[
	@withChildren CS.System.Boolean
--]]
function CS.UnityEngine.ParticleSystem:Pause(withChildren) end
function CS.UnityEngine.ParticleSystem:Pause() end
--[[
	@withChildren CS.System.Boolean
	@stopBehavior CS.UnityEngine.ParticleSystemStopBehavior
--]]
function CS.UnityEngine.ParticleSystem:Stop(withChildren,stopBehavior) end
--[[
	@withChildren CS.System.Boolean
--]]
function CS.UnityEngine.ParticleSystem:Stop(withChildren) end
function CS.UnityEngine.ParticleSystem:Stop() end
--[[
	@withChildren CS.System.Boolean
--]]
function CS.UnityEngine.ParticleSystem:Clear(withChildren) end
function CS.UnityEngine.ParticleSystem:Clear() end
--[[
	@withChildren CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.ParticleSystem:IsAlive(withChildren) end
function CS.UnityEngine.ParticleSystem:IsAlive() end
--[[
	@count CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:Emit(count) end
--[[
	@emitParams CS.UnityEngine.ParticleSystem.EmitParams
	@count CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:Emit(emitParams,count) end
--[[
	@subEmitterIndex CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:TriggerSubEmitter(subEmitterIndex) end
--[[
	@subEmitterIndex CS.System.Int32
	@particle CS.UnityEngine.ParticleSystem.Particle&
--]]
function CS.UnityEngine.ParticleSystem:TriggerSubEmitter(subEmitterIndex,particle) end
--[[
	@subEmitterIndex CS.System.Int32
	@particles CS.UnityEngine.ParticleSystem.Particle<>
--]]
function CS.UnityEngine.ParticleSystem:TriggerSubEmitter(subEmitterIndex,particles) end
function CS.UnityEngine.ParticleSystem:ResetPreMappedBufferMemory() end
--[[
	@vertexBuffersCount CS.System.Int32
	@indexBuffersCount CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem:SetMaximumPreMappedBufferCounts(vertexBuffersCount,indexBuffersCount) end
function CS.UnityEngine.ParticleSystem:AllocateAxisOfRotationAttribute() end
function CS.UnityEngine.ParticleSystem:AllocateMeshIndexAttribute() end
--[[
	@stream CS.UnityEngine.ParticleSystemCustomData
--]]
function CS.UnityEngine.ParticleSystem:AllocateCustomDataAttribute(stream) end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.ParticleSystem.MinMaxCurve = {}
--[[
	@constant CS.System.Single
	@return: [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
]]
function CS.UnityEngine.ParticleSystem.MinMaxCurve(constant) end
--[[
	@multiplier CS.System.Single
	@curve CS.UnityEngine.AnimationCurve
	@return: [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
]]
function CS.UnityEngine.ParticleSystem.MinMaxCurve(multiplier,curve) end
--[[
	@multiplier CS.System.Single
	@min CS.UnityEngine.AnimationCurve
	@max CS.UnityEngine.AnimationCurve
	@return: [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
]]
function CS.UnityEngine.ParticleSystem.MinMaxCurve(multiplier,min,max) end
--[[
	@min CS.System.Single
	@max CS.System.Single
	@return: [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
]]
function CS.UnityEngine.ParticleSystem.MinMaxCurve(min,max) end
--[[
	CS.UnityEngine.ParticleSystemCurveMode
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MinMaxCurve.mode = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MinMaxCurve.curveMultiplier = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AnimationCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MinMaxCurve.curveMax = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AnimationCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MinMaxCurve.curveMin = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MinMaxCurve.constantMax = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MinMaxCurve.constantMin = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MinMaxCurve.constant = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AnimationCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MinMaxCurve.curve = nil
--[[
	@time CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.ParticleSystem.MinMaxCurve:Evaluate(time) end
--[[
	@time CS.System.Single
	@lerpFactor CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.ParticleSystem.MinMaxCurve:Evaluate(time,lerpFactor) end
--[[
	@constant CS.System.Single
	@return: [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
--]]
function CS.UnityEngine.ParticleSystem.MinMaxCurve:op_Implicit(constant) end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.ParticleSystem.MainModule = {}
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.duration = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.loop = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.prewarm = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startDelay = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startDelayMultiplier = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startLifetime = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startLifetimeMultiplier = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startSpeed = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startSpeedMultiplier = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startSize3D = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startSize = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startSizeMultiplier = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startSizeX = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startSizeXMultiplier = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startSizeY = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startSizeYMultiplier = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startSizeZ = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startSizeZMultiplier = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startRotation3D = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startRotation = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startRotationMultiplier = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startRotationX = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startRotationXMultiplier = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startRotationY = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startRotationYMultiplier = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startRotationZ = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startRotationZMultiplier = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.flipRotation = nil
--[[
	CS.UnityEngine.ParticleSystem.MinMaxGradient
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.startColor = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.gravityModifier = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.gravityModifierMultiplier = nil
--[[
	CS.UnityEngine.ParticleSystemSimulationSpace
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.simulationSpace = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Transform]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.customSimulationSpace = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.simulationSpeed = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.useUnscaledTime = nil
--[[
	CS.UnityEngine.ParticleSystemScalingMode
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.scalingMode = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.playOnAwake = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.maxParticles = nil
--[[
	CS.UnityEngine.ParticleSystemEmitterVelocityMode
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.emitterVelocityMode = nil
--[[
	CS.UnityEngine.ParticleSystemStopAction
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.stopAction = nil
--[[
	CS.UnityEngine.ParticleSystemRingBufferMode
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.ringBufferMode = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.ringBufferLoopRange = nil
--[[
	CS.UnityEngine.ParticleSystemCullingMode
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.MainModule.cullingMode = nil

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.ParticleSystem.ShapeModule = {}
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.enabled = nil
--[[
	CS.UnityEngine.ParticleSystemShapeType
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.shapeType = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.randomDirectionAmount = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.sphericalDirectionAmount = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.randomPositionAmount = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.alignToDirection = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.radius = nil
--[[
	CS.UnityEngine.ParticleSystemShapeMultiModeValue
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.radiusMode = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.radiusSpread = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.radiusSpeed = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.radiusSpeedMultiplier = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.radiusThickness = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.angle = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.length = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.boxThickness = nil
--[[
	CS.UnityEngine.ParticleSystemMeshShapeType
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.meshShapeType = nil
--[[
	CS.UnityEngine.Mesh
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.mesh = nil
--[[
	CS.UnityEngine.MeshRenderer
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.meshRenderer = nil
--[[
	@RefType [luaIde#CS.UnityEngine.SkinnedMeshRenderer]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.skinnedMeshRenderer = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Sprite]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.sprite = nil
--[[
	CS.UnityEngine.SpriteRenderer
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.spriteRenderer = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.useMeshMaterialIndex = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.meshMaterialIndex = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.useMeshColors = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.normalOffset = nil
--[[
	CS.UnityEngine.ParticleSystemShapeMultiModeValue
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.meshSpawnMode = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.meshSpawnSpread = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.meshSpawnSpeed = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.meshSpawnSpeedMultiplier = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.arc = nil
--[[
	CS.UnityEngine.ParticleSystemShapeMultiModeValue
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.arcMode = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.arcSpread = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.arcSpeed = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.arcSpeedMultiplier = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.donutRadius = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.position = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.rotation = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.scale = nil
--[[
	CS.UnityEngine.Texture2D
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.texture = nil
--[[
	CS.UnityEngine.ParticleSystemShapeTextureChannel
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.textureClipChannel = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.textureClipThreshold = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.textureColorAffectsParticles = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.textureAlphaAffectsParticles = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.textureBilinearFiltering = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.ShapeModule.textureUVChannel = nil

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.ParticleSystem.EmissionModule = {}
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.EmissionModule.enabled = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.EmissionModule.rateOverTime = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.EmissionModule.rateOverTimeMultiplier = nil
--[[
	@RefType [luaIde#CS.UnityEngine.ParticleSystem.MinMaxCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.EmissionModule.rateOverDistance = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.EmissionModule.rateOverDistanceMultiplier = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystem.EmissionModule.burstCount = nil
--[[
	@bursts CS.UnityEngine.ParticleSystem.Burst<>
--]]
function CS.UnityEngine.ParticleSystem.EmissionModule:SetBursts(bursts) end
--[[
	@bursts CS.UnityEngine.ParticleSystem.Burst<>
	@size CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem.EmissionModule:SetBursts(bursts,size) end
--[[
	@bursts CS.UnityEngine.ParticleSystem.Burst<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.ParticleSystem.EmissionModule:GetBursts(bursts) end
--[[
	@index CS.System.Int32
	@burst CS.UnityEngine.ParticleSystem.Burst
--]]
function CS.UnityEngine.ParticleSystem.EmissionModule:SetBurst(index,burst) end
--[[
	@index CS.System.Int32
	@return: CS.UnityEngine.ParticleSystem.Burst
--]]
function CS.UnityEngine.ParticleSystem.EmissionModule:GetBurst(index) end

--@SuperType [luaIde#CS.System.Enum]
CS.UnityEngine.ParticleSystemCurveMode = {}
--[[
	CS.UnityEngine.ParticleSystemCurveMode
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystemCurveMode.Constant = 0
--[[
	CS.UnityEngine.ParticleSystemCurveMode
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystemCurveMode.Curve = 1
--[[
	CS.UnityEngine.ParticleSystemCurveMode
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystemCurveMode.TwoCurves = 2
--[[
	CS.UnityEngine.ParticleSystemCurveMode
	 Get 	 Set 
--]]
CS.UnityEngine.ParticleSystemCurveMode.TwoConstants = 3

--@SuperType [luaIde#CS.UnityEngine.Renderer]
CS.UnityEngine.SkinnedMeshRenderer = {}
--[[
	@return: [luaIde#CS.UnityEngine.SkinnedMeshRenderer]
]]
function CS.UnityEngine.SkinnedMeshRenderer() end
--[[
	CS.UnityEngine.SkinQuality
	 Get 	 Set 
--]]
CS.UnityEngine.SkinnedMeshRenderer.quality = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.SkinnedMeshRenderer.updateWhenOffscreen = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.SkinnedMeshRenderer.forceMatrixRecalculationPerRender = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Transform]
	 Get 	 Set 
--]]
CS.UnityEngine.SkinnedMeshRenderer.rootBone = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Transform<>]
	 Get 	 Set 
--]]
CS.UnityEngine.SkinnedMeshRenderer.bones = nil
--[[
	CS.UnityEngine.Mesh
	 Get 	 Set 
--]]
CS.UnityEngine.SkinnedMeshRenderer.sharedMesh = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.SkinnedMeshRenderer.skinnedMotionVectors = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Bounds]
	 Get 	 Set 
--]]
CS.UnityEngine.SkinnedMeshRenderer.localBounds = nil
--[[
	@index CS.System.Int32
	@return: CS.System.Single
--]]
function CS.UnityEngine.SkinnedMeshRenderer:GetBlendShapeWeight(index) end
--[[
	@index CS.System.Int32
	@value CS.System.Single
--]]
function CS.UnityEngine.SkinnedMeshRenderer:SetBlendShapeWeight(index,value) end
--[[
	@mesh CS.UnityEngine.Mesh
--]]
function CS.UnityEngine.SkinnedMeshRenderer:BakeMesh(mesh) end
--[[
	@mesh CS.UnityEngine.Mesh
	@useScale CS.System.Boolean
--]]
function CS.UnityEngine.SkinnedMeshRenderer:BakeMesh(mesh,useScale) end

--@SuperType [luaIde#CS.UnityEngine.Component]
CS.UnityEngine.Renderer = {}
--[[
	@return: [luaIde#CS.UnityEngine.Renderer]
]]
function CS.UnityEngine.Renderer() end
--[[
	@RefType [luaIde#CS.UnityEngine.Bounds]
	 Get 
--]]
CS.UnityEngine.Renderer.bounds = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.enabled = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Renderer.isVisible = nil
--[[
	CS.UnityEngine.Rendering.ShadowCastingMode
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.shadowCastingMode = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.receiveShadows = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.forceRenderingOff = nil
--[[
	CS.UnityEngine.MotionVectorGenerationMode
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.motionVectorGenerationMode = nil
--[[
	CS.UnityEngine.Rendering.LightProbeUsage
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.lightProbeUsage = nil
--[[
	CS.UnityEngine.Rendering.ReflectionProbeUsage
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.reflectionProbeUsage = nil
--[[
	CS.System.UInt32
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.renderingLayerMask = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.rendererPriority = nil
--[[
	CS.UnityEngine.Experimental.Rendering.RayTracingMode
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.rayTracingMode = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.sortingLayerName = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.sortingLayerID = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.sortingOrder = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.allowOcclusionWhenDynamic = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Renderer.isPartOfStaticBatch = nil
--[[
	CS.UnityEngine.Matrix4x4
	 Get 
--]]
CS.UnityEngine.Renderer.worldToLocalMatrix = nil
--[[
	CS.UnityEngine.Matrix4x4
	 Get 
--]]
CS.UnityEngine.Renderer.localToWorldMatrix = nil
--[[
	@RefType [luaIde#CS.UnityEngine.GameObject]
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.lightProbeProxyVolumeOverride = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Transform]
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.probeAnchor = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.lightmapIndex = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.realtimeLightmapIndex = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector4]
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.lightmapScaleOffset = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector4]
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.realtimeLightmapScaleOffset = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Material<>]
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.materials = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Material]
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.material = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Material]
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.sharedMaterial = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Material<>]
	 Get 	 Set 
--]]
CS.UnityEngine.Renderer.sharedMaterials = nil
function CS.UnityEngine.Renderer:HasPropertyBlock() end
--[[
	@properties CS.UnityEngine.MaterialPropertyBlock
--]]
function CS.UnityEngine.Renderer:SetPropertyBlock(properties) end
--[[
	@properties CS.UnityEngine.MaterialPropertyBlock
	@materialIndex CS.System.Int32
--]]
function CS.UnityEngine.Renderer:SetPropertyBlock(properties,materialIndex) end
--[[
	@properties CS.UnityEngine.MaterialPropertyBlock
--]]
function CS.UnityEngine.Renderer:GetPropertyBlock(properties) end
--[[
	@properties CS.UnityEngine.MaterialPropertyBlock
	@materialIndex CS.System.Int32
--]]
function CS.UnityEngine.Renderer:GetPropertyBlock(properties,materialIndex) end
--[[
	@m CS.UnityEngine.Material<>
--]]
function CS.UnityEngine.Renderer:GetMaterials(m) end
--[[
	@m CS.UnityEngine.Material<>
--]]
function CS.UnityEngine.Renderer:GetSharedMaterials(m) end
--[[
	@result CS.UnityEngine.Rendering.ReflectionProbeBlendInfo<>
--]]
function CS.UnityEngine.Renderer:GetClosestReflectionProbes(result) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.WWWForm = {}
--[[
	@return: [luaIde#CS.UnityEngine.WWWForm]
]]
function CS.UnityEngine.WWWForm() end
--[[
	@RefType [luaIde#CS.System.String,luaIde#CS.System.String]
	 Get 
--]]
CS.UnityEngine.WWWForm.headers = nil
--[[
	CS.System.Byte<>
	 Get 
--]]
CS.UnityEngine.WWWForm.data = nil
--[[
	@fieldName CS.System.String
	@value CS.System.String
--]]
function CS.UnityEngine.WWWForm:AddField(fieldName,value) end
--[[
	@fieldName CS.System.String
	@value CS.System.String
	@e CS.System.Text.Encoding
--]]
function CS.UnityEngine.WWWForm:AddField(fieldName,value,e) end
--[[
	@fieldName CS.System.String
	@i CS.System.Int32
--]]
function CS.UnityEngine.WWWForm:AddField(fieldName,i) end
--[[
	@fieldName CS.System.String
	@contents CS.System.Byte<>
--]]
function CS.UnityEngine.WWWForm:AddBinaryData(fieldName,contents) end
--[[
	@fieldName CS.System.String
	@contents CS.System.Byte<>
	@fileName CS.System.String
--]]
function CS.UnityEngine.WWWForm:AddBinaryData(fieldName,contents,fileName) end
--[[
	@fieldName CS.System.String
	@contents CS.System.Byte<>
	@fileName CS.System.String
	@mimeType CS.System.String
--]]
function CS.UnityEngine.WWWForm:AddBinaryData(fieldName,contents,fileName,mimeType) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Networking.UnityWebRequest = {}
--[[
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
]]
function CS.UnityEngine.Networking.UnityWebRequest() end
--[[
	@url CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
]]
function CS.UnityEngine.Networking.UnityWebRequest(url) end
--[[
	@uri CS.System.Uri
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
]]
function CS.UnityEngine.Networking.UnityWebRequest(uri) end
--[[
	@url CS.System.String
	@method CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
]]
function CS.UnityEngine.Networking.UnityWebRequest(url,method) end
--[[
	@uri CS.System.Uri
	@method CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
]]
function CS.UnityEngine.Networking.UnityWebRequest(uri,method) end
--[[
	@url CS.System.String
	@method CS.System.String
	@downloadHandler CS.UnityEngine.Networking.DownloadHandler
	@uploadHandler CS.UnityEngine.Networking.UploadHandler
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
]]
function CS.UnityEngine.Networking.UnityWebRequest(url,method,downloadHandler,uploadHandler) end
--[[
	@uri CS.System.Uri
	@method CS.System.String
	@downloadHandler CS.UnityEngine.Networking.DownloadHandler
	@uploadHandler CS.UnityEngine.Networking.UploadHandler
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
]]
function CS.UnityEngine.Networking.UnityWebRequest(uri,method,downloadHandler,uploadHandler) end
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.disposeCertificateHandlerOnDispose = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.disposeDownloadHandlerOnDispose = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.disposeUploadHandlerOnDispose = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.method = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Networking.UnityWebRequest.error = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.useHttpContinue = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.url = nil
--[[
	CS.System.Uri
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.uri = nil
--[[
	CS.System.Int64
	 Get 
--]]
CS.UnityEngine.Networking.UnityWebRequest.responseCode = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Networking.UnityWebRequest.uploadProgress = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Networking.UnityWebRequest.isModifiable = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Networking.UnityWebRequest.isDone = nil
--[[
	CS.UnityEngine.Networking.UnityWebRequest.Result
	 Get 
--]]
CS.UnityEngine.Networking.UnityWebRequest.result = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Networking.UnityWebRequest.downloadProgress = nil
--[[
	CS.System.UInt64
	 Get 
--]]
CS.UnityEngine.Networking.UnityWebRequest.uploadedBytes = nil
--[[
	CS.System.UInt64
	 Get 
--]]
CS.UnityEngine.Networking.UnityWebRequest.downloadedBytes = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.redirectLimit = nil
--[[
	CS.UnityEngine.Networking.UploadHandler
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.uploadHandler = nil
--[[
	CS.UnityEngine.Networking.DownloadHandler
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.downloadHandler = nil
--[[
	CS.UnityEngine.Networking.CertificateHandler
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.certificateHandler = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.timeout = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.kHttpVerbGET = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.kHttpVerbHEAD = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.kHttpVerbPOST = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.kHttpVerbPUT = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.kHttpVerbCREATE = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.kHttpVerbDELETE = nil
function CS.UnityEngine.Networking.UnityWebRequest:ClearCookieCache() end
--[[
	@uri CS.System.Uri
--]]
function CS.UnityEngine.Networking.UnityWebRequest:ClearCookieCache(uri) end
function CS.UnityEngine.Networking.UnityWebRequest:Dispose() end
function CS.UnityEngine.Networking.UnityWebRequest:Send() end
function CS.UnityEngine.Networking.UnityWebRequest:SendWebRequest() end
function CS.UnityEngine.Networking.UnityWebRequest:Abort() end
--[[
	@name CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Networking.UnityWebRequest:GetRequestHeader(name) end
--[[
	@name CS.System.String
	@value CS.System.String
--]]
function CS.UnityEngine.Networking.UnityWebRequest:SetRequestHeader(name,value) end
--[[
	@name CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Networking.UnityWebRequest:GetResponseHeader(name) end
function CS.UnityEngine.Networking.UnityWebRequest:GetResponseHeaders() end
--[[
	@uri CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Get(uri) end
--[[
	@uri CS.System.Uri
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Get(uri) end
--[[
	@uri CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Delete(uri) end
--[[
	@uri CS.System.Uri
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Delete(uri) end
--[[
	@uri CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Head(uri) end
--[[
	@uri CS.System.Uri
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Head(uri) end
--[[
	@uri CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:GetTexture(uri) end
--[[
	@uri CS.System.String
	@nonReadable CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:GetTexture(uri,nonReadable) end
--[[
	@uri CS.System.String
	@audioType CS.UnityEngine.AudioType
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:GetAudioClip(uri,audioType) end
--[[
	@uri CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:GetAssetBundle(uri) end
--[[
	@uri CS.System.String
	@crc CS.System.UInt32
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:GetAssetBundle(uri,crc) end
--[[
	@uri CS.System.String
	@version CS.System.UInt32
	@crc CS.System.UInt32
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:GetAssetBundle(uri,version,crc) end
--[[
	@uri CS.System.String
	@hash CS.UnityEngine.Hash128
	@crc CS.System.UInt32
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:GetAssetBundle(uri,hash,crc) end
--[[
	@uri CS.System.String
	@cachedAssetBundle CS.UnityEngine.CachedAssetBundle
	@crc CS.System.UInt32
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:GetAssetBundle(uri,cachedAssetBundle,crc) end
--[[
	@uri CS.System.String
	@bodyData CS.System.Byte<>
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Put(uri,bodyData) end
--[[
	@uri CS.System.Uri
	@bodyData CS.System.Byte<>
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Put(uri,bodyData) end
--[[
	@uri CS.System.String
	@bodyData CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Put(uri,bodyData) end
--[[
	@uri CS.System.Uri
	@bodyData CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Put(uri,bodyData) end
--[[
	@uri CS.System.String
	@postData CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Post(uri,postData) end
--[[
	@uri CS.System.Uri
	@postData CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Post(uri,postData) end
--[[
	@uri CS.System.String
	@formData CS.UnityEngine.WWWForm
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Post(uri,formData) end
--[[
	@uri CS.System.Uri
	@formData CS.UnityEngine.WWWForm
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Post(uri,formData) end
--[[
	@uri CS.System.String
	@multipartFormSections CS.UnityEngine.Networking.IMultipartFormSection<>
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Post(uri,multipartFormSections) end
--[[
	@uri CS.System.Uri
	@multipartFormSections CS.UnityEngine.Networking.IMultipartFormSection<>
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Post(uri,multipartFormSections) end
--[[
	@uri CS.System.String
	@multipartFormSections CS.UnityEngine.Networking.IMultipartFormSection<>
	@boundary CS.System.Byte<>
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Post(uri,multipartFormSections,boundary) end
--[[
	@uri CS.System.Uri
	@multipartFormSections CS.UnityEngine.Networking.IMultipartFormSection<>
	@boundary CS.System.Byte<>
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Post(uri,multipartFormSections,boundary) end
--[[
	@uri CS.System.String
	@formFields CS.System.String,luaIde#CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Post(uri,formFields) end
--[[
	@uri CS.System.Uri
	@formFields CS.System.String,luaIde#CS.System.String
	@return: [luaIde#CS.UnityEngine.Networking.UnityWebRequest]
--]]
function CS.UnityEngine.Networking.UnityWebRequest:Post(uri,formFields) end
--[[
	@s CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Networking.UnityWebRequest:EscapeURL(s) end
--[[
	@s CS.System.String
	@e CS.System.Text.Encoding
	@return: CS.System.String
--]]
function CS.UnityEngine.Networking.UnityWebRequest:EscapeURL(s,e) end
--[[
	@s CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Networking.UnityWebRequest:UnEscapeURL(s) end
--[[
	@s CS.System.String
	@e CS.System.Text.Encoding
	@return: CS.System.String
--]]
function CS.UnityEngine.Networking.UnityWebRequest:UnEscapeURL(s,e) end
--[[
	@multipartFormSections CS.UnityEngine.Networking.IMultipartFormSection<>
	@boundary CS.System.Byte<>
	@return: CS.System.Byte<>
--]]
function CS.UnityEngine.Networking.UnityWebRequest:SerializeFormSections(multipartFormSections,boundary) end
function CS.UnityEngine.Networking.UnityWebRequest:GenerateBoundary() end
--[[
	@formFields CS.System.String,luaIde#CS.System.String
	@return: CS.System.Byte<>
--]]
function CS.UnityEngine.Networking.UnityWebRequest:SerializeSimpleForm(formFields) end

--@SuperType [luaIde#CS.System.Enum]
CS.UnityEngine.Networking.UnityWebRequest.Result = {}
--[[
	CS.UnityEngine.Networking.UnityWebRequest.Result
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.Result.InProgress = 0
--[[
	CS.UnityEngine.Networking.UnityWebRequest.Result
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.Result.Success = 1
--[[
	CS.UnityEngine.Networking.UnityWebRequest.Result
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.Result.ConnectionError = 2
--[[
	CS.UnityEngine.Networking.UnityWebRequest.Result
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.Result.ProtocolError = 3
--[[
	CS.UnityEngine.Networking.UnityWebRequest.Result
	 Get 	 Set 
--]]
CS.UnityEngine.Networking.UnityWebRequest.Result.DataProcessingError = 4

--@SuperType [luaIde#CS.UnityEngine.Networking.DownloadHandler]
CS.UnityEngine.Networking.DownloadHandlerTexture = {}
--[[
	@return: [luaIde#CS.UnityEngine.Networking.DownloadHandlerTexture]
]]
function CS.UnityEngine.Networking.DownloadHandlerTexture() end
--[[
	@readable CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Networking.DownloadHandlerTexture]
]]
function CS.UnityEngine.Networking.DownloadHandlerTexture(readable) end
--[[
	CS.UnityEngine.Texture2D
	 Get 
--]]
CS.UnityEngine.Networking.DownloadHandlerTexture.texture = nil
--[[
	@www CS.UnityEngine.Networking.UnityWebRequest
	@return: CS.UnityEngine.Texture2D
--]]
function CS.UnityEngine.Networking.DownloadHandlerTexture:GetContent(www) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Debug = {}
--[[
	@return: [luaIde#CS.UnityEngine.Debug]
]]
function CS.UnityEngine.Debug() end
--[[
	CS.UnityEngine.ILogger
	 Get 
--]]
CS.UnityEngine.Debug.unityLogger = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Debug.developerConsoleVisible = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Debug.isDebugBuild = nil
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@color CS.UnityEngine.Color
	@duration CS.System.Single
--]]
function CS.UnityEngine.Debug:DrawLine(start,end_,color,duration) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@color CS.UnityEngine.Color
--]]
function CS.UnityEngine.Debug:DrawLine(start,end_,color) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Debug:DrawLine(start,end_) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@color CS.UnityEngine.Color
	@duration CS.System.Single
	@depthTest CS.System.Boolean
--]]
function CS.UnityEngine.Debug:DrawLine(start,end_,color,duration,depthTest) end
--[[
	@start CS.UnityEngine.Vector3
	@dir CS.UnityEngine.Vector3
	@color CS.UnityEngine.Color
	@duration CS.System.Single
--]]
function CS.UnityEngine.Debug:DrawRay(start,dir,color,duration) end
--[[
	@start CS.UnityEngine.Vector3
	@dir CS.UnityEngine.Vector3
	@color CS.UnityEngine.Color
--]]
function CS.UnityEngine.Debug:DrawRay(start,dir,color) end
--[[
	@start CS.UnityEngine.Vector3
	@dir CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Debug:DrawRay(start,dir) end
--[[
	@start CS.UnityEngine.Vector3
	@dir CS.UnityEngine.Vector3
	@color CS.UnityEngine.Color
	@duration CS.System.Single
	@depthTest CS.System.Boolean
--]]
function CS.UnityEngine.Debug:DrawRay(start,dir,color,duration,depthTest) end
function CS.UnityEngine.Debug:Break() end
function CS.UnityEngine.Debug:DebugBreak() end
--[[
	@buffer CS.System.Byte*
	@bufferMax CS.System.Int32
	@projectFolder CS.System.String
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Debug:ExtractStackTraceNoAlloc(buffer,bufferMax,projectFolder) end
--[[
	@message CS.System.Object
--]]
function CS.UnityEngine.Debug:Log(message) end
--[[
	@message CS.System.Object
	@context CS.UnityEngine.Object
--]]
function CS.UnityEngine.Debug:Log(message,context) end
--[[
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:LogFormat(format,args) end
--[[
	@context CS.UnityEngine.Object
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:LogFormat(context,format,args) end
--[[
	@logType CS.UnityEngine.LogType
	@logOptions CS.UnityEngine.LogOption
	@context CS.UnityEngine.Object
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:LogFormat(logType,logOptions,context,format,args) end
--[[
	@message CS.System.Object
--]]
function CS.UnityEngine.Debug:LogError(message) end
--[[
	@message CS.System.Object
	@context CS.UnityEngine.Object
--]]
function CS.UnityEngine.Debug:LogError(message,context) end
--[[
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:LogErrorFormat(format,args) end
--[[
	@context CS.UnityEngine.Object
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:LogErrorFormat(context,format,args) end
function CS.UnityEngine.Debug:ClearDeveloperConsole() end
--[[
	@exception CS.System.Exception
--]]
function CS.UnityEngine.Debug:LogException(exception) end
--[[
	@exception CS.System.Exception
	@context CS.UnityEngine.Object
--]]
function CS.UnityEngine.Debug:LogException(exception,context) end
--[[
	@message CS.System.Object
--]]
function CS.UnityEngine.Debug:LogWarning(message) end
--[[
	@message CS.System.Object
	@context CS.UnityEngine.Object
--]]
function CS.UnityEngine.Debug:LogWarning(message,context) end
--[[
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:LogWarningFormat(format,args) end
--[[
	@context CS.UnityEngine.Object
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:LogWarningFormat(context,format,args) end
--[[
	@condition CS.System.Boolean
--]]
function CS.UnityEngine.Debug:Assert(condition) end
--[[
	@condition CS.System.Boolean
	@context CS.UnityEngine.Object
--]]
function CS.UnityEngine.Debug:Assert(condition,context) end
--[[
	@condition CS.System.Boolean
	@message CS.System.Object
--]]
function CS.UnityEngine.Debug:Assert(condition,message) end
--[[
	@condition CS.System.Boolean
	@message CS.System.String
--]]
function CS.UnityEngine.Debug:Assert(condition,message) end
--[[
	@condition CS.System.Boolean
	@message CS.System.Object
	@context CS.UnityEngine.Object
--]]
function CS.UnityEngine.Debug:Assert(condition,message,context) end
--[[
	@condition CS.System.Boolean
	@message CS.System.String
	@context CS.UnityEngine.Object
--]]
function CS.UnityEngine.Debug:Assert(condition,message,context) end
--[[
	@condition CS.System.Boolean
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:AssertFormat(condition,format,args) end
--[[
	@condition CS.System.Boolean
	@context CS.UnityEngine.Object
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:AssertFormat(condition,context,format,args) end
--[[
	@message CS.System.Object
--]]
function CS.UnityEngine.Debug:LogAssertion(message) end
--[[
	@message CS.System.Object
	@context CS.UnityEngine.Object
--]]
function CS.UnityEngine.Debug:LogAssertion(message,context) end
--[[
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:LogAssertionFormat(format,args) end
--[[
	@context CS.UnityEngine.Object
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:LogAssertionFormat(context,format,args) end
--[[
	@condition CS.System.Boolean
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Debug:Assert(condition,format,args) end

--@SuperType [luaIde#CS.UnityEngine.Behaviour]
CS.UnityEngine.Animation = {}
--[[
	@return: [luaIde#CS.UnityEngine.Animation]
]]
function CS.UnityEngine.Animation() end
--[[
	@RefType [luaIde#CS.UnityEngine.AnimationClip]
	 Get 	 Set 
--]]
CS.UnityEngine.Animation.clip = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Animation.playAutomatically = nil
--[[
	CS.UnityEngine.WrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.Animation.wrapMode = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Animation.isPlaying = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Animation.animatePhysics = nil
--[[
	CS.UnityEngine.AnimationCullingType
	 Get 	 Set 
--]]
CS.UnityEngine.Animation.cullingType = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Bounds]
	 Get 	 Set 
--]]
CS.UnityEngine.Animation.localBounds = nil
function CS.UnityEngine.Animation:Stop() end
--[[
	@name CS.System.String
--]]
function CS.UnityEngine.Animation:Stop(name) end
function CS.UnityEngine.Animation:Rewind() end
--[[
	@name CS.System.String
--]]
function CS.UnityEngine.Animation:Rewind(name) end
function CS.UnityEngine.Animation:Sample() end
--[[
	@name CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animation:IsPlaying(name) end
function CS.UnityEngine.Animation:Play() end
--[[
	@mode CS.UnityEngine.PlayMode
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animation:Play(mode) end
--[[
	@animation CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animation:Play(animation) end
--[[
	@animation CS.System.String
	@mode CS.UnityEngine.PlayMode
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animation:Play(animation,mode) end
--[[
	@animation CS.System.String
--]]
function CS.UnityEngine.Animation:CrossFade(animation) end
--[[
	@animation CS.System.String
	@fadeLength CS.System.Single
--]]
function CS.UnityEngine.Animation:CrossFade(animation,fadeLength) end
--[[
	@animation CS.System.String
	@fadeLength CS.System.Single
	@mode CS.UnityEngine.PlayMode
--]]
function CS.UnityEngine.Animation:CrossFade(animation,fadeLength,mode) end
--[[
	@animation CS.System.String
--]]
function CS.UnityEngine.Animation:Blend(animation) end
--[[
	@animation CS.System.String
	@targetWeight CS.System.Single
--]]
function CS.UnityEngine.Animation:Blend(animation,targetWeight) end
--[[
	@animation CS.System.String
	@targetWeight CS.System.Single
	@fadeLength CS.System.Single
--]]
function CS.UnityEngine.Animation:Blend(animation,targetWeight,fadeLength) end
--[[
	@animation CS.System.String
	@return: [luaIde#CS.UnityEngine.AnimationState]
--]]
function CS.UnityEngine.Animation:CrossFadeQueued(animation) end
--[[
	@animation CS.System.String
	@fadeLength CS.System.Single
	@return: [luaIde#CS.UnityEngine.AnimationState]
--]]
function CS.UnityEngine.Animation:CrossFadeQueued(animation,fadeLength) end
--[[
	@animation CS.System.String
	@fadeLength CS.System.Single
	@queue CS.UnityEngine.QueueMode
	@return: [luaIde#CS.UnityEngine.AnimationState]
--]]
function CS.UnityEngine.Animation:CrossFadeQueued(animation,fadeLength,queue) end
--[[
	@animation CS.System.String
	@fadeLength CS.System.Single
	@queue CS.UnityEngine.QueueMode
	@mode CS.UnityEngine.PlayMode
	@return: [luaIde#CS.UnityEngine.AnimationState]
--]]
function CS.UnityEngine.Animation:CrossFadeQueued(animation,fadeLength,queue,mode) end
--[[
	@animation CS.System.String
	@return: [luaIde#CS.UnityEngine.AnimationState]
--]]
function CS.UnityEngine.Animation:PlayQueued(animation) end
--[[
	@animation CS.System.String
	@queue CS.UnityEngine.QueueMode
	@return: [luaIde#CS.UnityEngine.AnimationState]
--]]
function CS.UnityEngine.Animation:PlayQueued(animation,queue) end
--[[
	@animation CS.System.String
	@queue CS.UnityEngine.QueueMode
	@mode CS.UnityEngine.PlayMode
	@return: [luaIde#CS.UnityEngine.AnimationState]
--]]
function CS.UnityEngine.Animation:PlayQueued(animation,queue,mode) end
--[[
	@clip CS.UnityEngine.AnimationClip
	@newName CS.System.String
--]]
function CS.UnityEngine.Animation:AddClip(clip,newName) end
--[[
	@clip CS.UnityEngine.AnimationClip
	@newName CS.System.String
	@firstFrame CS.System.Int32
	@lastFrame CS.System.Int32
--]]
function CS.UnityEngine.Animation:AddClip(clip,newName,firstFrame,lastFrame) end
--[[
	@clip CS.UnityEngine.AnimationClip
	@newName CS.System.String
	@firstFrame CS.System.Int32
	@lastFrame CS.System.Int32
	@addLoopFrame CS.System.Boolean
--]]
function CS.UnityEngine.Animation:AddClip(clip,newName,firstFrame,lastFrame,addLoopFrame) end
--[[
	@clip CS.UnityEngine.AnimationClip
--]]
function CS.UnityEngine.Animation:RemoveClip(clip) end
--[[
	@clipName CS.System.String
--]]
function CS.UnityEngine.Animation:RemoveClip(clipName) end
function CS.UnityEngine.Animation:GetClipCount() end
--[[
	@mode CS.UnityEngine.AnimationPlayMode
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animation:Play(mode) end
--[[
	@animation CS.System.String
	@mode CS.UnityEngine.AnimationPlayMode
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animation:Play(animation,mode) end
--[[
	@layer CS.System.Int32
--]]
function CS.UnityEngine.Animation:SyncLayer(layer) end
function CS.UnityEngine.Animation:GetEnumerator() end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.AnimationClip]
--]]
function CS.UnityEngine.Animation:GetClip(name) end

--@SuperType [luaIde#CS.UnityEngine.Behaviour]
CS.UnityEngine.Animator = {}
--[[
	@return: [luaIde#CS.UnityEngine.Animator]
]]
function CS.UnityEngine.Animator() end
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Animator.isOptimizable = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Animator.isHuman = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Animator.hasRootMotion = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Animator.humanScale = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Animator.isInitialized = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Animator.deltaPosition = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Quaternion]
	 Get 
--]]
CS.UnityEngine.Animator.deltaRotation = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Animator.velocity = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Animator.angularVelocity = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.rootPosition = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Quaternion]
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.rootRotation = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.applyRootMotion = nil
--[[
	CS.UnityEngine.AnimatorUpdateMode
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.updateMode = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Animator.hasTransformHierarchy = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Animator.gravityWeight = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.bodyPosition = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Quaternion]
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.bodyRotation = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.stabilizeFeet = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Animator.layerCount = nil
--[[
	CS.UnityEngine.AnimatorControllerParameter<>
	 Get 
--]]
CS.UnityEngine.Animator.parameters = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Animator.parameterCount = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.feetPivotActive = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Animator.pivotWeight = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Animator.pivotPosition = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Animator.isMatchingTarget = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.speed = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Animator.targetPosition = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Quaternion]
	 Get 
--]]
CS.UnityEngine.Animator.targetRotation = nil
--[[
	CS.UnityEngine.AnimatorCullingMode
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.cullingMode = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.playbackTime = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.recorderStartTime = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.recorderStopTime = nil
--[[
	CS.UnityEngine.AnimatorRecorderMode
	 Get 
--]]
CS.UnityEngine.Animator.recorderMode = nil
--[[
	CS.UnityEngine.RuntimeAnimatorController
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.runtimeAnimatorController = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Animator.hasBoundPlayables = nil
--[[
	CS.UnityEngine.Avatar
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.avatar = nil
--[[
	CS.UnityEngine.Playables.PlayableGraph
	 Get 
--]]
CS.UnityEngine.Animator.playableGraph = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.layersAffectMassCenter = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Animator.leftFeetBottomHeight = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Animator.rightFeetBottomHeight = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.logWarnings = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.fireEvents = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Animator.keepAnimatorControllerStateOnDisable = nil
--[[
	@layerIndex CS.System.Int32
	@return: CS.UnityEngine.AnimationInfo<>
--]]
function CS.UnityEngine.Animator:GetCurrentAnimationClipState(layerIndex) end
--[[
	@layerIndex CS.System.Int32
	@return: CS.UnityEngine.AnimationInfo<>
--]]
function CS.UnityEngine.Animator:GetNextAnimationClipState(layerIndex) end
function CS.UnityEngine.Animator:Stop() end
--[[
	@name CS.System.String
	@return: CS.System.Single
--]]
function CS.UnityEngine.Animator:GetFloat(name) end
--[[
	@id CS.System.Int32
	@return: CS.System.Single
--]]
function CS.UnityEngine.Animator:GetFloat(id) end
--[[
	@name CS.System.String
	@value CS.System.Single
--]]
function CS.UnityEngine.Animator:SetFloat(name,value) end
--[[
	@name CS.System.String
	@value CS.System.Single
	@dampTime CS.System.Single
	@deltaTime CS.System.Single
--]]
function CS.UnityEngine.Animator:SetFloat(name,value,dampTime,deltaTime) end
--[[
	@id CS.System.Int32
	@value CS.System.Single
--]]
function CS.UnityEngine.Animator:SetFloat(id,value) end
--[[
	@id CS.System.Int32
	@value CS.System.Single
	@dampTime CS.System.Single
	@deltaTime CS.System.Single
--]]
function CS.UnityEngine.Animator:SetFloat(id,value,dampTime,deltaTime) end
--[[
	@name CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animator:GetBool(name) end
--[[
	@id CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animator:GetBool(id) end
--[[
	@name CS.System.String
	@value CS.System.Boolean
--]]
function CS.UnityEngine.Animator:SetBool(name,value) end
--[[
	@id CS.System.Int32
	@value CS.System.Boolean
--]]
function CS.UnityEngine.Animator:SetBool(id,value) end
--[[
	@name CS.System.String
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Animator:GetInteger(name) end
--[[
	@id CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Animator:GetInteger(id) end
--[[
	@name CS.System.String
	@value CS.System.Int32
--]]
function CS.UnityEngine.Animator:SetInteger(name,value) end
--[[
	@id CS.System.Int32
	@value CS.System.Int32
--]]
function CS.UnityEngine.Animator:SetInteger(id,value) end
--[[
	@name CS.System.String
--]]
function CS.UnityEngine.Animator:SetTrigger(name) end
--[[
	@id CS.System.Int32
--]]
function CS.UnityEngine.Animator:SetTrigger(id) end
--[[
	@name CS.System.String
--]]
function CS.UnityEngine.Animator:ResetTrigger(name) end
--[[
	@id CS.System.Int32
--]]
function CS.UnityEngine.Animator:ResetTrigger(id) end
--[[
	@name CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animator:IsParameterControlledByCurve(name) end
--[[
	@id CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animator:IsParameterControlledByCurve(id) end
--[[
	@goal CS.UnityEngine.AvatarIKGoal
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Animator:GetIKPosition(goal) end
--[[
	@goal CS.UnityEngine.AvatarIKGoal
	@goalPosition CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Animator:SetIKPosition(goal,goalPosition) end
--[[
	@goal CS.UnityEngine.AvatarIKGoal
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Animator:GetIKRotation(goal) end
--[[
	@goal CS.UnityEngine.AvatarIKGoal
	@goalRotation CS.UnityEngine.Quaternion
--]]
function CS.UnityEngine.Animator:SetIKRotation(goal,goalRotation) end
--[[
	@goal CS.UnityEngine.AvatarIKGoal
	@return: CS.System.Single
--]]
function CS.UnityEngine.Animator:GetIKPositionWeight(goal) end
--[[
	@goal CS.UnityEngine.AvatarIKGoal
	@value CS.System.Single
--]]
function CS.UnityEngine.Animator:SetIKPositionWeight(goal,value) end
--[[
	@goal CS.UnityEngine.AvatarIKGoal
	@return: CS.System.Single
--]]
function CS.UnityEngine.Animator:GetIKRotationWeight(goal) end
--[[
	@goal CS.UnityEngine.AvatarIKGoal
	@value CS.System.Single
--]]
function CS.UnityEngine.Animator:SetIKRotationWeight(goal,value) end
--[[
	@hint CS.UnityEngine.AvatarIKHint
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Animator:GetIKHintPosition(hint) end
--[[
	@hint CS.UnityEngine.AvatarIKHint
	@hintPosition CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Animator:SetIKHintPosition(hint,hintPosition) end
--[[
	@hint CS.UnityEngine.AvatarIKHint
	@return: CS.System.Single
--]]
function CS.UnityEngine.Animator:GetIKHintPositionWeight(hint) end
--[[
	@hint CS.UnityEngine.AvatarIKHint
	@value CS.System.Single
--]]
function CS.UnityEngine.Animator:SetIKHintPositionWeight(hint,value) end
--[[
	@lookAtPosition CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Animator:SetLookAtPosition(lookAtPosition) end
--[[
	@weight CS.System.Single
--]]
function CS.UnityEngine.Animator:SetLookAtWeight(weight) end
--[[
	@weight CS.System.Single
	@bodyWeight CS.System.Single
--]]
function CS.UnityEngine.Animator:SetLookAtWeight(weight,bodyWeight) end
--[[
	@weight CS.System.Single
	@bodyWeight CS.System.Single
	@headWeight CS.System.Single
--]]
function CS.UnityEngine.Animator:SetLookAtWeight(weight,bodyWeight,headWeight) end
--[[
	@weight CS.System.Single
	@bodyWeight CS.System.Single
	@headWeight CS.System.Single
	@eyesWeight CS.System.Single
--]]
function CS.UnityEngine.Animator:SetLookAtWeight(weight,bodyWeight,headWeight,eyesWeight) end
--[[
	@weight CS.System.Single
	@bodyWeight CS.System.Single
	@headWeight CS.System.Single
	@eyesWeight CS.System.Single
	@clampWeight CS.System.Single
--]]
function CS.UnityEngine.Animator:SetLookAtWeight(weight,bodyWeight,headWeight,eyesWeight,clampWeight) end
--[[
	@humanBoneId CS.UnityEngine.HumanBodyBones
	@rotation CS.UnityEngine.Quaternion
--]]
function CS.UnityEngine.Animator:SetBoneLocalRotation(humanBoneId,rotation) end
--[[
	@fullPathHash CS.System.Int32
	@layerIndex CS.System.Int32
	@return: CS.UnityEngine.StateMachineBehaviour<>
--]]
function CS.UnityEngine.Animator:GetBehaviours(fullPathHash,layerIndex) end
--[[
	@layerIndex CS.System.Int32
	@return: CS.System.String
--]]
function CS.UnityEngine.Animator:GetLayerName(layerIndex) end
--[[
	@layerName CS.System.String
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Animator:GetLayerIndex(layerName) end
--[[
	@layerIndex CS.System.Int32
	@return: CS.System.Single
--]]
function CS.UnityEngine.Animator:GetLayerWeight(layerIndex) end
--[[
	@layerIndex CS.System.Int32
	@weight CS.System.Single
--]]
function CS.UnityEngine.Animator:SetLayerWeight(layerIndex,weight) end
--[[
	@layerIndex CS.System.Int32
	@return: CS.UnityEngine.AnimatorStateInfo
--]]
function CS.UnityEngine.Animator:GetCurrentAnimatorStateInfo(layerIndex) end
--[[
	@layerIndex CS.System.Int32
	@return: CS.UnityEngine.AnimatorStateInfo
--]]
function CS.UnityEngine.Animator:GetNextAnimatorStateInfo(layerIndex) end
--[[
	@layerIndex CS.System.Int32
	@return: CS.UnityEngine.AnimatorTransitionInfo
--]]
function CS.UnityEngine.Animator:GetAnimatorTransitionInfo(layerIndex) end
--[[
	@layerIndex CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Animator:GetCurrentAnimatorClipInfoCount(layerIndex) end
--[[
	@layerIndex CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Animator:GetNextAnimatorClipInfoCount(layerIndex) end
--[[
	@layerIndex CS.System.Int32
	@return: CS.UnityEngine.AnimatorClipInfo<>
--]]
function CS.UnityEngine.Animator:GetCurrentAnimatorClipInfo(layerIndex) end
--[[
	@layerIndex CS.System.Int32
	@return: CS.UnityEngine.AnimatorClipInfo<>
--]]
function CS.UnityEngine.Animator:GetNextAnimatorClipInfo(layerIndex) end
--[[
	@layerIndex CS.System.Int32
	@clips CS.UnityEngine.AnimatorClipInfo<>
--]]
function CS.UnityEngine.Animator:GetCurrentAnimatorClipInfo(layerIndex,clips) end
--[[
	@layerIndex CS.System.Int32
	@clips CS.UnityEngine.AnimatorClipInfo<>
--]]
function CS.UnityEngine.Animator:GetNextAnimatorClipInfo(layerIndex,clips) end
--[[
	@layerIndex CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animator:IsInTransition(layerIndex) end
--[[
	@index CS.System.Int32
	@return: CS.UnityEngine.AnimatorControllerParameter
--]]
function CS.UnityEngine.Animator:GetParameter(index) end
--[[
	@matchPosition CS.UnityEngine.Vector3
	@matchRotation CS.UnityEngine.Quaternion
	@targetBodyPart CS.UnityEngine.AvatarTarget
	@weightMask CS.UnityEngine.MatchTargetWeightMask
	@startNormalizedTime CS.System.Single
--]]
function CS.UnityEngine.Animator:MatchTarget(matchPosition,matchRotation,targetBodyPart,weightMask,startNormalizedTime) end
--[[
	@matchPosition CS.UnityEngine.Vector3
	@matchRotation CS.UnityEngine.Quaternion
	@targetBodyPart CS.UnityEngine.AvatarTarget
	@weightMask CS.UnityEngine.MatchTargetWeightMask
	@startNormalizedTime CS.System.Single
	@targetNormalizedTime CS.System.Single
--]]
function CS.UnityEngine.Animator:MatchTarget(matchPosition,matchRotation,targetBodyPart,weightMask,startNormalizedTime,targetNormalizedTime) end
--[[
	@matchPosition CS.UnityEngine.Vector3
	@matchRotation CS.UnityEngine.Quaternion
	@targetBodyPart CS.UnityEngine.AvatarTarget
	@weightMask CS.UnityEngine.MatchTargetWeightMask
	@startNormalizedTime CS.System.Single
	@targetNormalizedTime CS.System.Single
	@completeMatch CS.System.Boolean
--]]
function CS.UnityEngine.Animator:MatchTarget(matchPosition,matchRotation,targetBodyPart,weightMask,startNormalizedTime,targetNormalizedTime,completeMatch) end
function CS.UnityEngine.Animator:InterruptMatchTarget() end
--[[
	@completeMatch CS.System.Boolean
--]]
function CS.UnityEngine.Animator:InterruptMatchTarget(completeMatch) end
--[[
	@normalizedTime CS.System.Single
--]]
function CS.UnityEngine.Animator:ForceStateNormalizedTime(normalizedTime) end
--[[
	@stateName CS.System.String
	@fixedTransitionDuration CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFadeInFixedTime(stateName,fixedTransitionDuration) end
--[[
	@stateName CS.System.String
	@fixedTransitionDuration CS.System.Single
	@layer CS.System.Int32
--]]
function CS.UnityEngine.Animator:CrossFadeInFixedTime(stateName,fixedTransitionDuration,layer) end
--[[
	@stateName CS.System.String
	@fixedTransitionDuration CS.System.Single
	@layer CS.System.Int32
	@fixedTimeOffset CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFadeInFixedTime(stateName,fixedTransitionDuration,layer,fixedTimeOffset) end
--[[
	@stateName CS.System.String
	@fixedTransitionDuration CS.System.Single
	@layer CS.System.Int32
	@fixedTimeOffset CS.System.Single
	@normalizedTransitionTime CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFadeInFixedTime(stateName,fixedTransitionDuration,layer,fixedTimeOffset,normalizedTransitionTime) end
--[[
	@stateHashName CS.System.Int32
	@fixedTransitionDuration CS.System.Single
	@layer CS.System.Int32
	@fixedTimeOffset CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFadeInFixedTime(stateHashName,fixedTransitionDuration,layer,fixedTimeOffset) end
--[[
	@stateHashName CS.System.Int32
	@fixedTransitionDuration CS.System.Single
	@layer CS.System.Int32
--]]
function CS.UnityEngine.Animator:CrossFadeInFixedTime(stateHashName,fixedTransitionDuration,layer) end
--[[
	@stateHashName CS.System.Int32
	@fixedTransitionDuration CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFadeInFixedTime(stateHashName,fixedTransitionDuration) end
--[[
	@stateHashName CS.System.Int32
	@fixedTransitionDuration CS.System.Single
	@layer CS.System.Int32
	@fixedTimeOffset CS.System.Single
	@normalizedTransitionTime CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFadeInFixedTime(stateHashName,fixedTransitionDuration,layer,fixedTimeOffset,normalizedTransitionTime) end
function CS.UnityEngine.Animator:WriteDefaultValues() end
--[[
	@stateName CS.System.String
	@normalizedTransitionDuration CS.System.Single
	@layer CS.System.Int32
	@normalizedTimeOffset CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFade(stateName,normalizedTransitionDuration,layer,normalizedTimeOffset) end
--[[
	@stateName CS.System.String
	@normalizedTransitionDuration CS.System.Single
	@layer CS.System.Int32
--]]
function CS.UnityEngine.Animator:CrossFade(stateName,normalizedTransitionDuration,layer) end
--[[
	@stateName CS.System.String
	@normalizedTransitionDuration CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFade(stateName,normalizedTransitionDuration) end
--[[
	@stateName CS.System.String
	@normalizedTransitionDuration CS.System.Single
	@layer CS.System.Int32
	@normalizedTimeOffset CS.System.Single
	@normalizedTransitionTime CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFade(stateName,normalizedTransitionDuration,layer,normalizedTimeOffset,normalizedTransitionTime) end
--[[
	@stateHashName CS.System.Int32
	@normalizedTransitionDuration CS.System.Single
	@layer CS.System.Int32
	@normalizedTimeOffset CS.System.Single
	@normalizedTransitionTime CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFade(stateHashName,normalizedTransitionDuration,layer,normalizedTimeOffset,normalizedTransitionTime) end
--[[
	@stateHashName CS.System.Int32
	@normalizedTransitionDuration CS.System.Single
	@layer CS.System.Int32
	@normalizedTimeOffset CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFade(stateHashName,normalizedTransitionDuration,layer,normalizedTimeOffset) end
--[[
	@stateHashName CS.System.Int32
	@normalizedTransitionDuration CS.System.Single
	@layer CS.System.Int32
--]]
function CS.UnityEngine.Animator:CrossFade(stateHashName,normalizedTransitionDuration,layer) end
--[[
	@stateHashName CS.System.Int32
	@normalizedTransitionDuration CS.System.Single
--]]
function CS.UnityEngine.Animator:CrossFade(stateHashName,normalizedTransitionDuration) end
--[[
	@stateName CS.System.String
	@layer CS.System.Int32
--]]
function CS.UnityEngine.Animator:PlayInFixedTime(stateName,layer) end
--[[
	@stateName CS.System.String
--]]
function CS.UnityEngine.Animator:PlayInFixedTime(stateName) end
--[[
	@stateName CS.System.String
	@layer CS.System.Int32
	@fixedTime CS.System.Single
--]]
function CS.UnityEngine.Animator:PlayInFixedTime(stateName,layer,fixedTime) end
--[[
	@stateNameHash CS.System.Int32
	@layer CS.System.Int32
	@fixedTime CS.System.Single
--]]
function CS.UnityEngine.Animator:PlayInFixedTime(stateNameHash,layer,fixedTime) end
--[[
	@stateNameHash CS.System.Int32
	@layer CS.System.Int32
--]]
function CS.UnityEngine.Animator:PlayInFixedTime(stateNameHash,layer) end
--[[
	@stateNameHash CS.System.Int32
--]]
function CS.UnityEngine.Animator:PlayInFixedTime(stateNameHash) end
--[[
	@stateName CS.System.String
	@layer CS.System.Int32
--]]
function CS.UnityEngine.Animator:Play(stateName,layer) end
--[[
	@stateName CS.System.String
--]]
function CS.UnityEngine.Animator:Play(stateName) end
--[[
	@stateName CS.System.String
	@layer CS.System.Int32
	@normalizedTime CS.System.Single
--]]
function CS.UnityEngine.Animator:Play(stateName,layer,normalizedTime) end
--[[
	@stateNameHash CS.System.Int32
	@layer CS.System.Int32
	@normalizedTime CS.System.Single
--]]
function CS.UnityEngine.Animator:Play(stateNameHash,layer,normalizedTime) end
--[[
	@stateNameHash CS.System.Int32
	@layer CS.System.Int32
--]]
function CS.UnityEngine.Animator:Play(stateNameHash,layer) end
--[[
	@stateNameHash CS.System.Int32
--]]
function CS.UnityEngine.Animator:Play(stateNameHash) end
--[[
	@targetIndex CS.UnityEngine.AvatarTarget
	@targetNormalizedTime CS.System.Single
--]]
function CS.UnityEngine.Animator:SetTarget(targetIndex,targetNormalizedTime) end
--[[
	@transform CS.UnityEngine.Transform
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animator:IsControlled(transform) end
--[[
	@humanBoneId CS.UnityEngine.HumanBodyBones
	@return: [luaIde#CS.UnityEngine.Transform]
--]]
function CS.UnityEngine.Animator:GetBoneTransform(humanBoneId) end
function CS.UnityEngine.Animator:StartPlayback() end
function CS.UnityEngine.Animator:StopPlayback() end
--[[
	@frameCount CS.System.Int32
--]]
function CS.UnityEngine.Animator:StartRecording(frameCount) end
function CS.UnityEngine.Animator:StopRecording() end
--[[
	@layerIndex CS.System.Int32
	@stateID CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Animator:HasState(layerIndex,stateID) end
--[[
	@name CS.System.String
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Animator:StringToHash(name) end
--[[
	@deltaTime CS.System.Single
--]]
function CS.UnityEngine.Animator:Update(deltaTime) end
function CS.UnityEngine.Animator:Rebind() end
function CS.UnityEngine.Animator:ApplyBuiltinRootMotion() end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Animator:GetVector(name) end
--[[
	@id CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Animator:GetVector(id) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Animator:SetVector(name,value) end
--[[
	@id CS.System.Int32
	@value CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Animator:SetVector(id,value) end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Animator:GetQuaternion(name) end
--[[
	@id CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Quaternion]
--]]
function CS.UnityEngine.Animator:GetQuaternion(id) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.Quaternion
--]]
function CS.UnityEngine.Animator:SetQuaternion(name,value) end
--[[
	@id CS.System.Int32
	@value CS.UnityEngine.Quaternion
--]]
function CS.UnityEngine.Animator:SetQuaternion(id,value) end

--@SuperType [luaIde#CS.UnityEngine.Behaviour]
CS.UnityEngine.Camera = {}
--[[
	@return: [luaIde#CS.UnityEngine.Camera]
]]
function CS.UnityEngine.Camera() end
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.nearClipPlane = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.farClipPlane = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.fieldOfView = nil
--[[
	CS.UnityEngine.RenderingPath
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.renderingPath = nil
--[[
	CS.UnityEngine.RenderingPath
	 Get 
--]]
CS.UnityEngine.Camera.actualRenderingPath = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.allowHDR = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.allowMSAA = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.allowDynamicResolution = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.forceIntoRenderTexture = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.orthographicSize = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.orthographic = nil
--[[
	CS.UnityEngine.Rendering.OpaqueSortMode
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.opaqueSortMode = nil
--[[
	CS.UnityEngine.TransparencySortMode
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.transparencySortMode = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.transparencySortAxis = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.depth = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.aspect = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Camera.velocity = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.cullingMask = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.eventMask = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.layerCullSpherical = nil
--[[
	CS.UnityEngine.CameraType
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.cameraType = nil
--[[
	CS.System.UInt64
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.overrideSceneCullingMask = nil
--[[
	CS.System.Single<>
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.layerCullDistances = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.useOcclusionCulling = nil
--[[
	CS.UnityEngine.Matrix4x4
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.cullingMatrix = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.backgroundColor = nil
--[[
	CS.UnityEngine.CameraClearFlags
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.clearFlags = nil
--[[
	CS.UnityEngine.DepthTextureMode
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.depthTextureMode = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.clearStencilAfterLightingPass = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.usePhysicalProperties = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.sensorSize = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.lensShift = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.focalLength = nil
--[[
	CS.UnityEngine.Camera.GateFitMode
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.gateFit = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Rect]
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.rect = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Rect]
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.pixelRect = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Camera.pixelWidth = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Camera.pixelHeight = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Camera.scaledPixelWidth = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Camera.scaledPixelHeight = nil
--[[
	@RefType [luaIde#CS.UnityEngine.RenderTexture]
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.targetTexture = nil
--[[
	@RefType [luaIde#CS.UnityEngine.RenderTexture]
	 Get 
--]]
CS.UnityEngine.Camera.activeTexture = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.targetDisplay = nil
--[[
	CS.UnityEngine.Matrix4x4
	 Get 
--]]
CS.UnityEngine.Camera.cameraToWorldMatrix = nil
--[[
	CS.UnityEngine.Matrix4x4
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.worldToCameraMatrix = nil
--[[
	CS.UnityEngine.Matrix4x4
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.projectionMatrix = nil
--[[
	CS.UnityEngine.Matrix4x4
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.nonJitteredProjectionMatrix = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.useJitteredProjectionMatrixForTransparentRendering = nil
--[[
	CS.UnityEngine.Matrix4x4
	 Get 
--]]
CS.UnityEngine.Camera.previousViewProjectionMatrix = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Camera]
	 Get 
--]]
CS.UnityEngine.Camera.main = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Camera]
	 Get 
--]]
CS.UnityEngine.Camera.current = nil
--[[
	CS.UnityEngine.SceneManagement.Scene
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.scene = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Camera.stereoEnabled = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.stereoSeparation = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.stereoConvergence = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Camera.areVRStereoViewMatricesWithinSingleCullTolerance = nil
--[[
	CS.UnityEngine.StereoTargetEyeMask
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.stereoTargetEye = nil
--[[
	CS.UnityEngine.Camera.MonoOrStereoscopicEye
	 Get 
--]]
CS.UnityEngine.Camera.stereoActiveEye = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Camera.allCamerasCount = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Camera<>]
	 Get 
--]]
CS.UnityEngine.Camera.allCameras = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Camera.commandBufferCount = nil
--[[
	CS.UnityEngine.Camera.CameraCallback
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.onPreCull = nil
--[[
	CS.UnityEngine.Camera.CameraCallback
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.onPreRender = nil
--[[
	CS.UnityEngine.Camera.CameraCallback
	 Get 	 Set 
--]]
CS.UnityEngine.Camera.onPostRender = nil
function CS.UnityEngine.Camera:Reset() end
function CS.UnityEngine.Camera:ResetTransparencySortSettings() end
function CS.UnityEngine.Camera:ResetAspect() end
function CS.UnityEngine.Camera:ResetCullingMatrix() end
--[[
	@shader CS.UnityEngine.Shader
	@replacementTag CS.System.String
--]]
function CS.UnityEngine.Camera:SetReplacementShader(shader,replacementTag) end
function CS.UnityEngine.Camera:ResetReplacementShader() end
function CS.UnityEngine.Camera:GetGateFittedFieldOfView() end
function CS.UnityEngine.Camera:GetGateFittedLensShift() end
--[[
	@colorBuffer CS.UnityEngine.RenderBuffer
	@depthBuffer CS.UnityEngine.RenderBuffer
--]]
function CS.UnityEngine.Camera:SetTargetBuffers(colorBuffer,depthBuffer) end
--[[
	@colorBuffer CS.UnityEngine.RenderBuffer<>
	@depthBuffer CS.UnityEngine.RenderBuffer
--]]
function CS.UnityEngine.Camera:SetTargetBuffers(colorBuffer,depthBuffer) end
function CS.UnityEngine.Camera:ResetWorldToCameraMatrix() end
function CS.UnityEngine.Camera:ResetProjectionMatrix() end
--[[
	@clipPlane CS.UnityEngine.Vector4
	@return: CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Camera:CalculateObliqueMatrix(clipPlane) end
--[[
	@position CS.UnityEngine.Vector3
	@eye CS.UnityEngine.Camera.MonoOrStereoscopicEye
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Camera:WorldToScreenPoint(position,eye) end
--[[
	@position CS.UnityEngine.Vector3
	@eye CS.UnityEngine.Camera.MonoOrStereoscopicEye
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Camera:WorldToViewportPoint(position,eye) end
--[[
	@position CS.UnityEngine.Vector3
	@eye CS.UnityEngine.Camera.MonoOrStereoscopicEye
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Camera:ViewportToWorldPoint(position,eye) end
--[[
	@position CS.UnityEngine.Vector3
	@eye CS.UnityEngine.Camera.MonoOrStereoscopicEye
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Camera:ScreenToWorldPoint(position,eye) end
--[[
	@position CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Camera:WorldToScreenPoint(position) end
--[[
	@position CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Camera:WorldToViewportPoint(position) end
--[[
	@position CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Camera:ViewportToWorldPoint(position) end
--[[
	@position CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Camera:ScreenToWorldPoint(position) end
--[[
	@position CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Camera:ScreenToViewportPoint(position) end
--[[
	@position CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Camera:ViewportToScreenPoint(position) end
--[[
	@pos CS.UnityEngine.Vector3
	@eye CS.UnityEngine.Camera.MonoOrStereoscopicEye
	@return: [luaIde#CS.UnityEngine.Ray]
--]]
function CS.UnityEngine.Camera:ViewportPointToRay(pos,eye) end
--[[
	@pos CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Ray]
--]]
function CS.UnityEngine.Camera:ViewportPointToRay(pos) end
--[[
	@pos CS.UnityEngine.Vector3
	@eye CS.UnityEngine.Camera.MonoOrStereoscopicEye
	@return: [luaIde#CS.UnityEngine.Ray]
--]]
function CS.UnityEngine.Camera:ScreenPointToRay(pos,eye) end
--[[
	@pos CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Ray]
--]]
function CS.UnityEngine.Camera:ScreenPointToRay(pos) end
--[[
	@viewport CS.UnityEngine.Rect
	@z CS.System.Single
	@eye CS.UnityEngine.Camera.MonoOrStereoscopicEye
	@outCorners CS.UnityEngine.Vector3<>
--]]
function CS.UnityEngine.Camera:CalculateFrustumCorners(viewport,z,eye,outCorners) end
--[[
	@output CS.UnityEngine.Matrix4x4&
	@focalLength CS.System.Single
	@sensorSize CS.UnityEngine.Vector2
	@lensShift CS.UnityEngine.Vector2
	@nearClip CS.System.Single
	@farClip CS.System.Single
	@gateFitParameters CS.UnityEngine.Camera.GateFitParameters
--]]
function CS.UnityEngine.Camera:CalculateProjectionMatrixFromPhysicalProperties(output,focalLength,sensorSize,lensShift,nearClip,farClip,gateFitParameters) end
--[[
	@focalLength CS.System.Single
	@sensorSize CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Camera:FocalLengthToFieldOfView(focalLength,sensorSize) end
--[[
	@fieldOfView CS.System.Single
	@sensorSize CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Camera:FieldOfViewToFocalLength(fieldOfView,sensorSize) end
--[[
	@horizontalFieldOfView CS.System.Single
	@aspectRatio CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Camera:HorizontalToVerticalFieldOfView(horizontalFieldOfView,aspectRatio) end
--[[
	@verticalFieldOfView CS.System.Single
	@aspectRatio CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Camera:VerticalToHorizontalFieldOfView(verticalFieldOfView,aspectRatio) end
--[[
	@eye CS.UnityEngine.Camera.StereoscopicEye
	@return: CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Camera:GetStereoNonJitteredProjectionMatrix(eye) end
--[[
	@eye CS.UnityEngine.Camera.StereoscopicEye
	@return: CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Camera:GetStereoViewMatrix(eye) end
--[[
	@eye CS.UnityEngine.Camera.StereoscopicEye
--]]
function CS.UnityEngine.Camera:CopyStereoDeviceProjectionMatrixToNonJittered(eye) end
--[[
	@eye CS.UnityEngine.Camera.StereoscopicEye
	@return: CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Camera:GetStereoProjectionMatrix(eye) end
--[[
	@eye CS.UnityEngine.Camera.StereoscopicEye
	@matrix CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Camera:SetStereoProjectionMatrix(eye,matrix) end
function CS.UnityEngine.Camera:ResetStereoProjectionMatrices() end
--[[
	@eye CS.UnityEngine.Camera.StereoscopicEye
	@matrix CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Camera:SetStereoViewMatrix(eye,matrix) end
function CS.UnityEngine.Camera:ResetStereoViewMatrices() end
--[[
	@cameras CS.UnityEngine.Camera<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Camera:GetAllCameras(cameras) end
--[[
	@cubemap CS.UnityEngine.Cubemap
	@faceMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Camera:RenderToCubemap(cubemap,faceMask) end
--[[
	@cubemap CS.UnityEngine.Cubemap
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Camera:RenderToCubemap(cubemap) end
--[[
	@cubemap CS.UnityEngine.RenderTexture
	@faceMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Camera:RenderToCubemap(cubemap,faceMask) end
--[[
	@cubemap CS.UnityEngine.RenderTexture
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Camera:RenderToCubemap(cubemap) end
--[[
	@cubemap CS.UnityEngine.RenderTexture
	@faceMask CS.System.Int32
	@stereoEye CS.UnityEngine.Camera.MonoOrStereoscopicEye
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Camera:RenderToCubemap(cubemap,faceMask,stereoEye) end
function CS.UnityEngine.Camera:Render() end
--[[
	@shader CS.UnityEngine.Shader
	@replacementTag CS.System.String
--]]
function CS.UnityEngine.Camera:RenderWithShader(shader,replacementTag) end
function CS.UnityEngine.Camera:RenderDontRestore() end
--[[
	@renderRequests CS.UnityEngine.Camera.RenderRequest<>
--]]
function CS.UnityEngine.Camera:SubmitRenderRequests(renderRequests) end
--[[
	@cur CS.UnityEngine.Camera
--]]
function CS.UnityEngine.Camera:SetupCurrent(cur) end
--[[
	@other CS.UnityEngine.Camera
--]]
function CS.UnityEngine.Camera:CopyFrom(other) end
--[[
	@evt CS.UnityEngine.Rendering.CameraEvent
--]]
function CS.UnityEngine.Camera:RemoveCommandBuffers(evt) end
function CS.UnityEngine.Camera:RemoveAllCommandBuffers() end
--[[
	@evt CS.UnityEngine.Rendering.CameraEvent
	@buffer CS.UnityEngine.Rendering.CommandBuffer
--]]
function CS.UnityEngine.Camera:AddCommandBuffer(evt,buffer) end
--[[
	@evt CS.UnityEngine.Rendering.CameraEvent
	@buffer CS.UnityEngine.Rendering.CommandBuffer
	@queueType CS.UnityEngine.Rendering.ComputeQueueType
--]]
function CS.UnityEngine.Camera:AddCommandBufferAsync(evt,buffer,queueType) end
--[[
	@evt CS.UnityEngine.Rendering.CameraEvent
	@buffer CS.UnityEngine.Rendering.CommandBuffer
--]]
function CS.UnityEngine.Camera:RemoveCommandBuffer(evt,buffer) end
--[[
	@evt CS.UnityEngine.Rendering.CameraEvent
	@return: CS.UnityEngine.Rendering.CommandBuffer<>
--]]
function CS.UnityEngine.Camera:GetCommandBuffers(evt) end
--[[
	@cullingParameters CS.UnityEngine.Rendering.ScriptableCullingParameters&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Camera:TryGetCullingParameters(cullingParameters) end
--[[
	@stereoAware CS.System.Boolean
	@cullingParameters CS.UnityEngine.Rendering.ScriptableCullingParameters&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Camera:TryGetCullingParameters(stereoAware,cullingParameters) end
function CS.UnityEngine.Camera:GetScreenWidth() end
function CS.UnityEngine.Camera:GetScreenHeight() end
function CS.UnityEngine.Camera:DoClear() end
function CS.UnityEngine.Camera:ResetFieldOfView() end
--[[
	@leftMatrix CS.UnityEngine.Matrix4x4
	@rightMatrix CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Camera:SetStereoViewMatrices(leftMatrix,rightMatrix) end
--[[
	@leftMatrix CS.UnityEngine.Matrix4x4
	@rightMatrix CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Camera:SetStereoProjectionMatrices(leftMatrix,rightMatrix) end
function CS.UnityEngine.Camera:GetStereoViewMatrices() end
function CS.UnityEngine.Camera:GetStereoProjectionMatrices() end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.RaycastHit = {}
--[[
	CS.UnityEngine.Collider
	 Get 
--]]
CS.UnityEngine.RaycastHit.collider = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.RaycastHit.point = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.RaycastHit.normal = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.RaycastHit.barycentricCoordinate = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.RaycastHit.distance = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.RaycastHit.triangleIndex = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.RaycastHit.textureCoord = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.RaycastHit.textureCoord2 = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Transform]
	 Get 
--]]
CS.UnityEngine.RaycastHit.transform = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Rigidbody]
	 Get 
--]]
CS.UnityEngine.RaycastHit.rigidbody = nil
--[[
	CS.UnityEngine.ArticulationBody
	 Get 
--]]
CS.UnityEngine.RaycastHit.articulationBody = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.RaycastHit.lightmapCoord = nil

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Physics = {}
--[[
	@return: [luaIde#CS.UnityEngine.Physics]
]]
function CS.UnityEngine.Physics() end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.gravity = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.defaultContactOffset = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.sleepThreshold = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.queriesHitTriggers = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.queriesHitBackfaces = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.bounceThreshold = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.defaultMaxDepenetrationVelocity = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.defaultSolverIterations = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.defaultSolverVelocityIterations = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.defaultMaxAngularSpeed = nil
--[[
	CS.UnityEngine.PhysicsScene
	 Get 
--]]
CS.UnityEngine.Physics.defaultPhysicsScene = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.autoSimulation = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.autoSyncTransforms = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.reuseCollisionCallbacks = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.interCollisionDistance = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.interCollisionStiffness = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.interCollisionSettingsToggle = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.clothGravity = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.IgnoreRaycastLayer = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.DefaultRaycastLayers = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Physics.AllLayers = nil
--[[
	@collider1 CS.UnityEngine.Collider
	@collider2 CS.UnityEngine.Collider
	@ignore CS.System.Boolean
--]]
function CS.UnityEngine.Physics:IgnoreCollision(collider1,collider2,ignore) end
--[[
	@collider1 CS.UnityEngine.Collider
	@collider2 CS.UnityEngine.Collider
--]]
function CS.UnityEngine.Physics:IgnoreCollision(collider1,collider2) end
--[[
	@layer1 CS.System.Int32
	@layer2 CS.System.Int32
	@ignore CS.System.Boolean
--]]
function CS.UnityEngine.Physics:IgnoreLayerCollision(layer1,layer2,ignore) end
--[[
	@layer1 CS.System.Int32
	@layer2 CS.System.Int32
--]]
function CS.UnityEngine.Physics:IgnoreLayerCollision(layer1,layer2) end
--[[
	@layer1 CS.System.Int32
	@layer2 CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:GetIgnoreLayerCollision(layer1,layer2) end
--[[
	@collider1 CS.UnityEngine.Collider
	@collider2 CS.UnityEngine.Collider
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:GetIgnoreCollision(collider1,collider2) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(origin,direction,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(origin,direction,maxDistance,layerMask) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(origin,direction,maxDistance) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(origin,direction) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(origin,direction,hitInfo,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(origin,direction,hitInfo,maxDistance,layerMask) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(origin,direction,hitInfo,maxDistance) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(origin,direction,hitInfo) end
--[[
	@ray CS.UnityEngine.Ray
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(ray,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@ray CS.UnityEngine.Ray
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(ray,maxDistance,layerMask) end
--[[
	@ray CS.UnityEngine.Ray
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(ray,maxDistance) end
--[[
	@ray CS.UnityEngine.Ray
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(ray) end
--[[
	@ray CS.UnityEngine.Ray
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(ray,hitInfo,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@ray CS.UnityEngine.Ray
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(ray,hitInfo,maxDistance,layerMask) end
--[[
	@ray CS.UnityEngine.Ray
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(ray,hitInfo,maxDistance) end
--[[
	@ray CS.UnityEngine.Ray
	@hitInfo CS.UnityEngine.RaycastHit&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Raycast(ray,hitInfo) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Linecast(start,end_,layerMask,queryTriggerInteraction) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Linecast(start,end_,layerMask) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Linecast(start,end_) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Linecast(start,end_,hitInfo,layerMask,queryTriggerInteraction) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Linecast(start,end_,hitInfo,layerMask) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:Linecast(start,end_,hitInfo) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CapsuleCast(point1,point2,radius,direction,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CapsuleCast(point1,point2,radius,direction,maxDistance,layerMask) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CapsuleCast(point1,point2,radius,direction,maxDistance) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CapsuleCast(point1,point2,radius,direction) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CapsuleCast(point1,point2,radius,direction,hitInfo,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CapsuleCast(point1,point2,radius,direction,hitInfo,maxDistance,layerMask) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CapsuleCast(point1,point2,radius,direction,hitInfo,maxDistance) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CapsuleCast(point1,point2,radius,direction,hitInfo) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(origin,radius,direction,hitInfo,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(origin,radius,direction,hitInfo,maxDistance,layerMask) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(origin,radius,direction,hitInfo,maxDistance) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(origin,radius,direction,hitInfo) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(ray,radius,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(ray,radius,maxDistance,layerMask) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(ray,radius,maxDistance) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(ray,radius) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(ray,radius,hitInfo,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(ray,radius,hitInfo,maxDistance,layerMask) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(ray,radius,hitInfo,maxDistance) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@hitInfo CS.UnityEngine.RaycastHit&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:SphereCast(ray,radius,hitInfo) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:BoxCast(center,halfExtents,direction,orientation,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:BoxCast(center,halfExtents,direction,orientation,maxDistance,layerMask) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:BoxCast(center,halfExtents,direction,orientation,maxDistance) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:BoxCast(center,halfExtents,direction,orientation) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:BoxCast(center,halfExtents,direction) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:BoxCast(center,halfExtents,direction,hitInfo,orientation,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:BoxCast(center,halfExtents,direction,hitInfo,orientation,maxDistance,layerMask) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:BoxCast(center,halfExtents,direction,hitInfo,orientation,maxDistance) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@orientation CS.UnityEngine.Quaternion
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:BoxCast(center,halfExtents,direction,hitInfo,orientation) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:BoxCast(center,halfExtents,direction,hitInfo) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:RaycastAll(origin,direction,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:RaycastAll(origin,direction,maxDistance,layerMask) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:RaycastAll(origin,direction,maxDistance) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:RaycastAll(origin,direction) end
--[[
	@ray CS.UnityEngine.Ray
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:RaycastAll(ray,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@ray CS.UnityEngine.Ray
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:RaycastAll(ray,maxDistance,layerMask) end
--[[
	@ray CS.UnityEngine.Ray
	@maxDistance CS.System.Single
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:RaycastAll(ray,maxDistance) end
--[[
	@ray CS.UnityEngine.Ray
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:RaycastAll(ray) end
--[[
	@ray CS.UnityEngine.Ray
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:RaycastNonAlloc(ray,results,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@ray CS.UnityEngine.Ray
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:RaycastNonAlloc(ray,results,maxDistance,layerMask) end
--[[
	@ray CS.UnityEngine.Ray
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:RaycastNonAlloc(ray,results,maxDistance) end
--[[
	@ray CS.UnityEngine.Ray
	@results CS.UnityEngine.RaycastHit<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:RaycastNonAlloc(ray,results) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:RaycastNonAlloc(origin,direction,results,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:RaycastNonAlloc(origin,direction,results,maxDistance,layerMask) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:RaycastNonAlloc(origin,direction,results,maxDistance) end
--[[
	@origin CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:RaycastNonAlloc(origin,direction,results) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:CapsuleCastAll(point1,point2,radius,direction,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:CapsuleCastAll(point1,point2,radius,direction,maxDistance,layerMask) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:CapsuleCastAll(point1,point2,radius,direction,maxDistance) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:CapsuleCastAll(point1,point2,radius,direction) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:SphereCastAll(origin,radius,direction,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:SphereCastAll(origin,radius,direction,maxDistance,layerMask) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:SphereCastAll(origin,radius,direction,maxDistance) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:SphereCastAll(origin,radius,direction) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:SphereCastAll(ray,radius,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:SphereCastAll(ray,radius,maxDistance,layerMask) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@maxDistance CS.System.Single
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:SphereCastAll(ray,radius,maxDistance) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:SphereCastAll(ray,radius) end
--[[
	@point0 CS.UnityEngine.Vector3
	@point1 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.UnityEngine.Collider<>
--]]
function CS.UnityEngine.Physics:OverlapCapsule(point0,point1,radius,layerMask,queryTriggerInteraction) end
--[[
	@point0 CS.UnityEngine.Vector3
	@point1 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.UnityEngine.Collider<>
--]]
function CS.UnityEngine.Physics:OverlapCapsule(point0,point1,radius,layerMask) end
--[[
	@point0 CS.UnityEngine.Vector3
	@point1 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@return: CS.UnityEngine.Collider<>
--]]
function CS.UnityEngine.Physics:OverlapCapsule(point0,point1,radius) end
--[[
	@position CS.UnityEngine.Vector3
	@radius CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.UnityEngine.Collider<>
--]]
function CS.UnityEngine.Physics:OverlapSphere(position,radius,layerMask,queryTriggerInteraction) end
--[[
	@position CS.UnityEngine.Vector3
	@radius CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.UnityEngine.Collider<>
--]]
function CS.UnityEngine.Physics:OverlapSphere(position,radius,layerMask) end
--[[
	@position CS.UnityEngine.Vector3
	@radius CS.System.Single
	@return: CS.UnityEngine.Collider<>
--]]
function CS.UnityEngine.Physics:OverlapSphere(position,radius) end
--[[
	@step CS.System.Single
--]]
function CS.UnityEngine.Physics:Simulate(step) end
function CS.UnityEngine.Physics:SyncTransforms() end
--[[
	@colliderA CS.UnityEngine.Collider
	@positionA CS.UnityEngine.Vector3
	@rotationA CS.UnityEngine.Quaternion
	@colliderB CS.UnityEngine.Collider
	@positionB CS.UnityEngine.Vector3
	@rotationB CS.UnityEngine.Quaternion
	@direction CS.UnityEngine.Vector3&
	@distance CS.System.Single&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:ComputePenetration(colliderA,positionA,rotationA,colliderB,positionB,rotationB,direction,distance) end
--[[
	@point CS.UnityEngine.Vector3
	@collider CS.UnityEngine.Collider
	@position CS.UnityEngine.Vector3
	@rotation CS.UnityEngine.Quaternion
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Physics:ClosestPoint(point,collider,position,rotation) end
--[[
	@position CS.UnityEngine.Vector3
	@radius CS.System.Single
	@results CS.UnityEngine.Collider<>
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:OverlapSphereNonAlloc(position,radius,results,layerMask,queryTriggerInteraction) end
--[[
	@position CS.UnityEngine.Vector3
	@radius CS.System.Single
	@results CS.UnityEngine.Collider<>
	@layerMask CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:OverlapSphereNonAlloc(position,radius,results,layerMask) end
--[[
	@position CS.UnityEngine.Vector3
	@radius CS.System.Single
	@results CS.UnityEngine.Collider<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:OverlapSphereNonAlloc(position,radius,results) end
--[[
	@position CS.UnityEngine.Vector3
	@radius CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CheckSphere(position,radius,layerMask,queryTriggerInteraction) end
--[[
	@position CS.UnityEngine.Vector3
	@radius CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CheckSphere(position,radius,layerMask) end
--[[
	@position CS.UnityEngine.Vector3
	@radius CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CheckSphere(position,radius) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:CapsuleCastNonAlloc(point1,point2,radius,direction,results,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:CapsuleCastNonAlloc(point1,point2,radius,direction,results,maxDistance,layerMask) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:CapsuleCastNonAlloc(point1,point2,radius,direction,results,maxDistance) end
--[[
	@point1 CS.UnityEngine.Vector3
	@point2 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:CapsuleCastNonAlloc(point1,point2,radius,direction,results) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:SphereCastNonAlloc(origin,radius,direction,results,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:SphereCastNonAlloc(origin,radius,direction,results,maxDistance,layerMask) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:SphereCastNonAlloc(origin,radius,direction,results,maxDistance) end
--[[
	@origin CS.UnityEngine.Vector3
	@radius CS.System.Single
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:SphereCastNonAlloc(origin,radius,direction,results) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:SphereCastNonAlloc(ray,radius,results,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:SphereCastNonAlloc(ray,radius,results,maxDistance,layerMask) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@results CS.UnityEngine.RaycastHit<>
	@maxDistance CS.System.Single
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:SphereCastNonAlloc(ray,radius,results,maxDistance) end
--[[
	@ray CS.UnityEngine.Ray
	@radius CS.System.Single
	@results CS.UnityEngine.RaycastHit<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:SphereCastNonAlloc(ray,radius,results) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@radius CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CheckCapsule(start,end_,radius,layerMask,queryTriggerInteraction) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@radius CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CheckCapsule(start,end_,radius,layerMask) end
--[[
	@start CS.UnityEngine.Vector3
	@end_ CS.UnityEngine.Vector3
	@radius CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CheckCapsule(start,end_,radius) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@layermask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CheckBox(center,halfExtents,orientation,layermask,queryTriggerInteraction) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@layerMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CheckBox(center,halfExtents,orientation,layerMask) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CheckBox(center,halfExtents,orientation) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Physics:CheckBox(center,halfExtents) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.UnityEngine.Collider<>
--]]
function CS.UnityEngine.Physics:OverlapBox(center,halfExtents,orientation,layerMask,queryTriggerInteraction) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@layerMask CS.System.Int32
	@return: CS.UnityEngine.Collider<>
--]]
function CS.UnityEngine.Physics:OverlapBox(center,halfExtents,orientation,layerMask) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@return: CS.UnityEngine.Collider<>
--]]
function CS.UnityEngine.Physics:OverlapBox(center,halfExtents,orientation) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@return: CS.UnityEngine.Collider<>
--]]
function CS.UnityEngine.Physics:OverlapBox(center,halfExtents) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@results CS.UnityEngine.Collider<>
	@orientation CS.UnityEngine.Quaternion
	@mask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:OverlapBoxNonAlloc(center,halfExtents,results,orientation,mask,queryTriggerInteraction) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@results CS.UnityEngine.Collider<>
	@orientation CS.UnityEngine.Quaternion
	@mask CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:OverlapBoxNonAlloc(center,halfExtents,results,orientation,mask) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@results CS.UnityEngine.Collider<>
	@orientation CS.UnityEngine.Quaternion
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:OverlapBoxNonAlloc(center,halfExtents,results,orientation) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@results CS.UnityEngine.Collider<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:OverlapBoxNonAlloc(center,halfExtents,results) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:BoxCastNonAlloc(center,halfExtents,direction,results,orientation,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@orientation CS.UnityEngine.Quaternion
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:BoxCastNonAlloc(center,halfExtents,direction,results,orientation) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:BoxCastNonAlloc(center,halfExtents,direction,results,orientation,maxDistance) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:BoxCastNonAlloc(center,halfExtents,direction,results,orientation,maxDistance,layerMask) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@results CS.UnityEngine.RaycastHit<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:BoxCastNonAlloc(center,halfExtents,direction,results) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:BoxCastAll(center,halfExtents,direction,orientation,maxDistance,layerMask,queryTriggerInteraction) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@layerMask CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:BoxCastAll(center,halfExtents,direction,orientation,maxDistance,layerMask) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@maxDistance CS.System.Single
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:BoxCastAll(center,halfExtents,direction,orientation,maxDistance) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@orientation CS.UnityEngine.Quaternion
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:BoxCastAll(center,halfExtents,direction,orientation) end
--[[
	@center CS.UnityEngine.Vector3
	@halfExtents CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Physics:BoxCastAll(center,halfExtents,direction) end
--[[
	@point0 CS.UnityEngine.Vector3
	@point1 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@results CS.UnityEngine.Collider<>
	@layerMask CS.System.Int32
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:OverlapCapsuleNonAlloc(point0,point1,radius,results,layerMask,queryTriggerInteraction) end
--[[
	@point0 CS.UnityEngine.Vector3
	@point1 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@results CS.UnityEngine.Collider<>
	@layerMask CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:OverlapCapsuleNonAlloc(point0,point1,radius,results,layerMask) end
--[[
	@point0 CS.UnityEngine.Vector3
	@point1 CS.UnityEngine.Vector3
	@radius CS.System.Single
	@results CS.UnityEngine.Collider<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Physics:OverlapCapsuleNonAlloc(point0,point1,radius,results) end
--[[
	@worldBounds CS.UnityEngine.Bounds
	@subdivisions CS.System.Int32
--]]
function CS.UnityEngine.Physics:RebuildBroadphaseRegions(worldBounds,subdivisions) end
--[[
	@meshID CS.System.Int32
	@convex CS.System.Boolean
--]]
function CS.UnityEngine.Physics:BakeMesh(meshID,convex) end

--@SuperType [luaIde#CS.UnityEngine.Collider]
CS.UnityEngine.BoxCollider = {}
--[[
	@return: [luaIde#CS.UnityEngine.BoxCollider]
]]
function CS.UnityEngine.BoxCollider() end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.BoxCollider.center = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.BoxCollider.size = nil

--@SuperType [luaIde#CS.UnityEngine.AudioBehaviour]
CS.UnityEngine.AudioSource = {}
--[[
	@return: [luaIde#CS.UnityEngine.AudioSource]
]]
function CS.UnityEngine.AudioSource() end
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.volume = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.pitch = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.time = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.timeSamples = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AudioClip]
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.clip = nil
--[[
	CS.UnityEngine.Audio.AudioMixerGroup
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.outputAudioMixerGroup = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AudioSource.isPlaying = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AudioSource.isVirtual = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.loop = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.ignoreListenerVolume = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.playOnAwake = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.ignoreListenerPause = nil
--[[
	CS.UnityEngine.AudioVelocityUpdateMode
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.velocityUpdateMode = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.panStereo = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.spatialBlend = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.spatialize = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.spatializePostEffects = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.reverbZoneMix = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.bypassEffects = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.bypassListenerEffects = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.bypassReverbZones = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.dopplerLevel = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.spread = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.priority = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.mute = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.minDistance = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.maxDistance = nil
--[[
	CS.UnityEngine.AudioRolloffMode
	 Get 	 Set 
--]]
CS.UnityEngine.AudioSource.rolloffMode = nil
function CS.UnityEngine.AudioSource:Play() end
--[[
	@delay CS.System.UInt64
--]]
function CS.UnityEngine.AudioSource:Play(delay) end
--[[
	@delay CS.System.Single
--]]
function CS.UnityEngine.AudioSource:PlayDelayed(delay) end
--[[
	@time CS.System.Double
--]]
function CS.UnityEngine.AudioSource:PlayScheduled(time) end
--[[
	@clip CS.UnityEngine.AudioClip
--]]
function CS.UnityEngine.AudioSource:PlayOneShot(clip) end
--[[
	@clip CS.UnityEngine.AudioClip
	@volumeScale CS.System.Single
--]]
function CS.UnityEngine.AudioSource:PlayOneShot(clip,volumeScale) end
--[[
	@time CS.System.Double
--]]
function CS.UnityEngine.AudioSource:SetScheduledStartTime(time) end
--[[
	@time CS.System.Double
--]]
function CS.UnityEngine.AudioSource:SetScheduledEndTime(time) end
function CS.UnityEngine.AudioSource:Stop() end
function CS.UnityEngine.AudioSource:Pause() end
function CS.UnityEngine.AudioSource:UnPause() end
--[[
	@clip CS.UnityEngine.AudioClip
	@position CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.AudioSource:PlayClipAtPoint(clip,position) end
--[[
	@clip CS.UnityEngine.AudioClip
	@position CS.UnityEngine.Vector3
	@volume CS.System.Single
--]]
function CS.UnityEngine.AudioSource:PlayClipAtPoint(clip,position,volume) end
--[[
	@type CS.UnityEngine.AudioSourceCurveType
	@curve CS.UnityEngine.AnimationCurve
--]]
function CS.UnityEngine.AudioSource:SetCustomCurve(type,curve) end
--[[
	@type CS.UnityEngine.AudioSourceCurveType
	@return: [luaIde#CS.UnityEngine.AnimationCurve]
--]]
function CS.UnityEngine.AudioSource:GetCustomCurve(type) end
--[[
	@numSamples CS.System.Int32
	@channel CS.System.Int32
	@return: CS.System.Single<>
--]]
function CS.UnityEngine.AudioSource:GetOutputData(numSamples,channel) end
--[[
	@samples CS.System.Single<>
	@channel CS.System.Int32
--]]
function CS.UnityEngine.AudioSource:GetOutputData(samples,channel) end
--[[
	@numSamples CS.System.Int32
	@channel CS.System.Int32
	@window CS.UnityEngine.FFTWindow
	@return: CS.System.Single<>
--]]
function CS.UnityEngine.AudioSource:GetSpectrumData(numSamples,channel,window) end
--[[
	@samples CS.System.Single<>
	@channel CS.System.Int32
	@window CS.UnityEngine.FFTWindow
--]]
function CS.UnityEngine.AudioSource:GetSpectrumData(samples,channel,window) end
--[[
	@index CS.System.Int32
	@value CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AudioSource:SetSpatializerFloat(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Single&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AudioSource:GetSpatializerFloat(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Single&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AudioSource:GetAmbisonicDecoderFloat(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AudioSource:SetAmbisonicDecoderFloat(index,value) end

--@SuperType [luaIde#CS.UnityEngine.Object]
CS.UnityEngine.AudioClip = {}
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.AudioClip.length = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.AudioClip.samples = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.AudioClip.channels = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.AudioClip.frequency = nil
--[[
	CS.UnityEngine.AudioClipLoadType
	 Get 
--]]
CS.UnityEngine.AudioClip.loadType = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AudioClip.preloadAudioData = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AudioClip.ambisonic = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AudioClip.loadInBackground = nil
--[[
	CS.UnityEngine.AudioDataLoadState
	 Get 
--]]
CS.UnityEngine.AudioClip.loadState = nil
function CS.UnityEngine.AudioClip:LoadAudioData() end
function CS.UnityEngine.AudioClip:UnloadAudioData() end
--[[
	@data CS.System.Single<>
	@offsetSamples CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AudioClip:GetData(data,offsetSamples) end
--[[
	@data CS.System.Single<>
	@offsetSamples CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AudioClip:SetData(data,offsetSamples) end
--[[
	@name CS.System.String
	@lengthSamples CS.System.Int32
	@channels CS.System.Int32
	@frequency CS.System.Int32
	@_3D CS.System.Boolean
	@stream CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.AudioClip]
--]]
function CS.UnityEngine.AudioClip:Create(name,lengthSamples,channels,frequency,_3D,stream) end
--[[
	@name CS.System.String
	@lengthSamples CS.System.Int32
	@channels CS.System.Int32
	@frequency CS.System.Int32
	@_3D CS.System.Boolean
	@stream CS.System.Boolean
	@pcmreadercallback CS.UnityEngine.AudioClip.PCMReaderCallback
	@return: [luaIde#CS.UnityEngine.AudioClip]
--]]
function CS.UnityEngine.AudioClip:Create(name,lengthSamples,channels,frequency,_3D,stream,pcmreadercallback) end
--[[
	@name CS.System.String
	@lengthSamples CS.System.Int32
	@channels CS.System.Int32
	@frequency CS.System.Int32
	@_3D CS.System.Boolean
	@stream CS.System.Boolean
	@pcmreadercallback CS.UnityEngine.AudioClip.PCMReaderCallback
	@pcmsetpositioncallback CS.UnityEngine.AudioClip.PCMSetPositionCallback
	@return: [luaIde#CS.UnityEngine.AudioClip]
--]]
function CS.UnityEngine.AudioClip:Create(name,lengthSamples,channels,frequency,_3D,stream,pcmreadercallback,pcmsetpositioncallback) end
--[[
	@name CS.System.String
	@lengthSamples CS.System.Int32
	@channels CS.System.Int32
	@frequency CS.System.Int32
	@stream CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.AudioClip]
--]]
function CS.UnityEngine.AudioClip:Create(name,lengthSamples,channels,frequency,stream) end
--[[
	@name CS.System.String
	@lengthSamples CS.System.Int32
	@channels CS.System.Int32
	@frequency CS.System.Int32
	@stream CS.System.Boolean
	@pcmreadercallback CS.UnityEngine.AudioClip.PCMReaderCallback
	@return: [luaIde#CS.UnityEngine.AudioClip]
--]]
function CS.UnityEngine.AudioClip:Create(name,lengthSamples,channels,frequency,stream,pcmreadercallback) end
--[[
	@name CS.System.String
	@lengthSamples CS.System.Int32
	@channels CS.System.Int32
	@frequency CS.System.Int32
	@stream CS.System.Boolean
	@pcmreadercallback CS.UnityEngine.AudioClip.PCMReaderCallback
	@pcmsetpositioncallback CS.UnityEngine.AudioClip.PCMSetPositionCallback
	@return: [luaIde#CS.UnityEngine.AudioClip]
--]]
function CS.UnityEngine.AudioClip:Create(name,lengthSamples,channels,frequency,stream,pcmreadercallback,pcmsetpositioncallback) end

--@SuperType [luaIde#CS.UnityEngine.AudioBehaviour]
CS.UnityEngine.AudioListener = {}
--[[
	@return: [luaIde#CS.UnityEngine.AudioListener]
]]
function CS.UnityEngine.AudioListener() end
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AudioListener.volume = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AudioListener.pause = nil
--[[
	CS.UnityEngine.AudioVelocityUpdateMode
	 Get 	 Set 
--]]
CS.UnityEngine.AudioListener.velocityUpdateMode = nil
--[[
	@numSamples CS.System.Int32
	@channel CS.System.Int32
	@return: CS.System.Single<>
--]]
function CS.UnityEngine.AudioListener:GetOutputData(numSamples,channel) end
--[[
	@samples CS.System.Single<>
	@channel CS.System.Int32
--]]
function CS.UnityEngine.AudioListener:GetOutputData(samples,channel) end
--[[
	@numSamples CS.System.Int32
	@channel CS.System.Int32
	@window CS.UnityEngine.FFTWindow
	@return: CS.System.Single<>
--]]
function CS.UnityEngine.AudioListener:GetSpectrumData(numSamples,channel,window) end
--[[
	@samples CS.System.Single<>
	@channel CS.System.Int32
	@window CS.UnityEngine.FFTWindow
--]]
function CS.UnityEngine.AudioListener:GetSpectrumData(samples,channel,window) end

--@SuperType [luaIde#CS.UnityEngine.EventSystems.EventTrigger]
CS.UIEventListener = {}
--[[
	@return: [luaIde#CS.UIEventListener]
]]
function CS.UIEventListener() end
--[[
	CS.UIEventListener.VoidDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onClick = nil
--[[
	CS.UIEventListener.VoidDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onDoubleClick = nil
--[[
	CS.UIEventListener.VectorDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onDown = nil
--[[
	CS.UIEventListener.VoidDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onEnter = nil
--[[
	CS.UIEventListener.VoidDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onExit = nil
--[[
	CS.UIEventListener.VectorDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onUp = nil
--[[
	CS.UIEventListener.VoidDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onSelect = nil
--[[
	CS.UIEventListener.VoidDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onUpdateSelect = nil
--[[
	CS.UIEventListener.VoidDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onDeSelect = nil
--[[
	CS.UIEventListener.VectorDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onDrag = nil
--[[
	CS.UIEventListener.VectorDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onDragEnd = nil
--[[
	CS.UIEventListener.VoidDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onDrop = nil
--[[
	CS.UIEventListener.VectorDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onScroll = nil
--[[
	CS.UIEventListener.VoidDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onMove = nil
--[[
	CS.UIEventListener.VectorDelegate
	 Get 	 Set 
--]]
CS.UIEventListener.onDragStart = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UIEventListener.IsPassEvent = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UIEventListener.IsPassDragEvent = nil
--[[
	@go CS.UnityEngine.GameObject
	@return: [luaIde#CS.UIEventListener]
--]]
function CS.UIEventListener:Get(go) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UIEventListener:OnPointerClick(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UIEventListener:OnPointerDown(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UIEventListener:OnPointerEnter(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UIEventListener:OnPointerExit(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UIEventListener:OnPointerUp(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UIEventListener:OnSelect(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UIEventListener:OnUpdateSelected(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UIEventListener:OnBeginDrag(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UIEventListener:OnDeselect(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UIEventListener:OnDrag(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UIEventListener:OnEndDrag(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UIEventListener:OnDrop(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UIEventListener:OnScroll(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.AxisEventData
--]]
function CS.UIEventListener:OnMove(eventData) end

--@SuperType [luaIde#CS.System.Object]
CS.AssetDataPath = {}
--[[
	@return: [luaIde#CS.AssetDataPath]
]]
function CS.AssetDataPath() end
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.AssetDataPath.ChannelStatus = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.AssetDataPath.ClientVersion = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.AssetDataPath.ResVersion = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.AssetDataPath.Flags = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.AssetDataPath.ResObscur = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.AssetDataPath.HotFixPlayAndDown = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.AssetDataPath.IsHotFix = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.AssetDataPath.IsAssetBundle = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.AssetDataPath.IsScriptBundle = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.AssetDataPath.IsLog = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.AssetDataPath.IsSDK = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.AssetDataPath.IsGM = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.AssetDataPath.IsFps = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.AssetDataPath.IsLogo = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.AssetDataPath.IsHotfixNow = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.AssetDataPath.SdkDir = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.AssetDataPath.PersistentDataPath = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.AssetDataPath.StreamingAssetsPath = nil
--[[
	CS.OperatingSystem
	 Get 	 Set 
--]]
CS.AssetDataPath.OS = nil
function CS.AssetDataPath:GetInstance() end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.TotalManager = {}
--[[
	@return: [luaIde#CS.TotalManager]
]]
function CS.TotalManager() end
--[[
	CS.XLua.LuaTable
	 Get 
--]]
CS.TotalManager.ScriptEnv = nil
--[[
	CS.XLua.LuaFunction
	 Get 
--]]
CS.TotalManager.LuaCommand = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.TotalManager.Initialization = nil
function CS.TotalManager:GetInstance() end
function CS.TotalManager:OnLuaInitialization() end
--[[
	@id CS.System.Int32
	@week CS.System.Int32
	@time CS.System.String
	@title CS.System.String
	@content CS.System.String
--]]
function CS.TotalManager:AddNotificationMessage(id,week,time,title,content) end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.HotFixManager = {}
--[[
	@return: [luaIde#CS.HotFixManager]
]]
function CS.HotFixManager() end
function CS.HotFixManager:GetInstance() end
--[[
	@evt CS.EventUtils.EventWithInt
--]]
function CS.HotFixManager:LuaPlayAndDownEvent(evt) end
function CS.HotFixManager:StartPlayAndDown() end
--[[
	@path CS.System.String
	@return: CS.System.Boolean
--]]
function CS.HotFixManager:IsHotFixFile(path) end
--[[
	@name CS.System.String
	@evt CS.HotFixDownLoaderEvent
--]]
function CS.HotFixManager:LoadHoxFixFile(name,evt) end
--[[
	@name CS.System.String
--]]
function CS.HotFixManager:SequenceHoxFixFile(name) end
function CS.HotFixManager:IsHoxFixComplete() end
function CS.HotFixManager:GetHotFixPlayAndDowneSumCount() end
function CS.HotFixManager:GetHotFixPlayAndDownLeftCount() end
--[[
	@size CS.System.Double
	@return: CS.System.String
--]]
function CS.HotFixManager:GetSizeString(size) end

--@SuperType [luaIde#CS.System.Object]
CS.HotFixWindow = {}
--[[
	@return: [luaIde#CS.HotFixWindow]
]]
function CS.HotFixWindow() end
--[[
	@logo CS.System.String
--]]
function CS.HotFixWindow:ShowLogo(logo) end
--[[
	@evt CS.EventUtils.EventWithBool
--]]
function CS.HotFixWindow:ShowTipsPermissionPanel(evt) end
--[[
	@text CS.System.String
	@evt CS.EventUtils.EventWithBool
	@showBackGround CS.System.Boolean
--]]
function CS.HotFixWindow:ShowTipsOneKey(text,evt,showBackGround) end
--[[
	@text CS.System.String
	@evt CS.EventUtils.EventWithBool
	@showBackGround CS.System.Boolean
--]]
function CS.HotFixWindow:ShowTipsTwoKey(text,evt,showBackGround) end
--[[
	@localVersions CS.System.Int32
	@newVersions CS.System.Int32
--]]
function CS.HotFixWindow:SetVersionValue(localVersions,newVersions) end
function CS.HotFixWindow:OnDestroy() end
function CS.HotFixWindow:OnCompleteLoading() end
function CS.HotFixWindow:ShowDynamicPanel() end
--[[
	@text CS.System.String
	@showBackGround CS.System.Boolean
--]]
function CS.HotFixWindow:ShowBubbleTips(text,showBackGround) end
--[[
	@show CS.System.Boolean
--]]
function CS.HotFixWindow:SetSliderShow(show) end
--[[
	@fillAmount CS.System.Single
--]]
function CS.HotFixWindow:SetSliderValue(fillAmount) end
--[[
	@percent CS.System.Single
	@language CS.System.String
--]]
function CS.HotFixWindow:OnResLoading(percent,language) end

--@SuperType [luaIde#CS.System.Enum]
CS.OperatingSystem = {}
--[[
	CS.OperatingSystem
	 Get 	 Set 
--]]
CS.OperatingSystem.WINDOWS = 0
--[[
	CS.OperatingSystem
	 Get 	 Set 
--]]
CS.OperatingSystem.ANDROID = 1
--[[
	CS.OperatingSystem
	 Get 	 Set 
--]]
CS.OperatingSystem.IOS = 2

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.SDKManager = {}
--[[
	@return: [luaIde#CS.SDKManager]
]]
function CS.SDKManager() end
--[[
	CS.SDKBase
	 Get 	 Set 
--]]
CS.SDKManager.MsdkApi = nil
function CS.SDKManager:GetInstance() end
--[[
	@sData CS.System.String
--]]
function CS.SDKManager:JavaEvent(sData) end
--[[
	@func CS.EventUtils.EventWithString
--]]
function CS.SDKManager:Listen(func) end
--[[
	@sImg CS.System.String
	@w CS.System.Int32
	@h CS.System.Int32
	@func CS.EventUtils.EventWithByte
--]]
function CS.SDKManager:PhotoUI(sImg,w,h,func) end
--[[
	@sFile CS.System.String
	@func CS.EventUtils.EventWithString
--]]
function CS.SDKManager:AudioUI(sFile,func) end
--[[
	@sFile CS.System.String
	@func CS.EventUtils.EventWithString
--]]
function CS.SDKManager:VideoUI(sFile,func) end
--[[
	@sUrl CS.System.String
--]]
function CS.SDKManager:SetPhoto(sUrl) end
--[[
	@sUrl CS.System.String
--]]
function CS.SDKManager:SetAudio(sUrl) end
--[[
	@sUrl CS.System.String
--]]
function CS.SDKManager:SetVideo(sUrl) end
--[[
	@sUrl CS.System.String
	@return: CS.System.String
--]]
function CS.SDKManager:GetPhonePath(sUrl) end

--@SuperType [luaIde#CS.System.Object]
CS.LuaUtils = {}
--[[
	@anim CS.UnityEngine.Animation
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.AnimationState]
--]]
function CS.LuaUtils:GetAnimatorState(anim,name) end
--[[
	@camera CS.UnityEngine.Camera
	@return: [luaIde#CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData]
--]]
function CS.LuaUtils:GetUniversalAdditionalCameraData(camera) end
--[[
	@go CS.UnityEngine.GameObject
--]]
function CS.LuaUtils:ClickButton(go) end
--[[
	@position CS.UnityEngine.Vector3
	@layerMask CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.LuaUtils:NavMeshSamplePosition(position,layerMask) end
--[[
	@position CS.UnityEngine.Vector3
	@layerMask CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.LuaUtils:NavMeshSampleLongPosition(position,layerMask) end
--[[
	@position1 CS.UnityEngine.Vector3
	@position2 CS.UnityEngine.Vector3
	@layerMask CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.LuaUtils:NavMeshRaycast(position1,position2,layerMask) end
--[[
	@ray CS.UnityEngine.Ray
	@distance CS.System.Single
	@layerMask CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RaycastHit]
--]]
function CS.LuaUtils:RaycastHitRay(ray,distance,layerMask) end
--[[
	@start CS.UnityEngine.Vector3
	@direction CS.UnityEngine.Vector3
	@layerMask CS.System.Int32
	@distance CS.System.Single
	@return: [luaIde#CS.UnityEngine.RaycastHit]
--]]
function CS.LuaUtils:RaycastHitRay(start,direction,layerMask,distance) end
--[[
	@layers CS.System.Int32<>
	@return: CS.System.Int32
--]]
function CS.LuaUtils:LeftOperation(layers) end
--[[
	@id CS.System.Int32
	@week CS.System.Int32
	@time CS.System.String
	@title CS.System.String
	@content CS.System.String
--]]
function CS.LuaUtils:AddNotificationMessage(id,week,time,title,content) end
--[[
	@bytes CS.System.Byte<>
	@return: [luaIde#CS.UnityEngine.Sprite]
--]]
function CS.LuaUtils:LoadWWWImage(bytes) end

--@SuperType [luaIde#CS.System.Object]
CS.LuaUIUtils = {}
--[[
	@target CS.UnityEngine.Transform
	@vector3 CS.UnityEngine.Vector3
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoMove(target,vector3,duration) end
--[[
	@target CS.UnityEngine.Transform
	@vector2 CS.UnityEngine.Vector2
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoMove2(target,vector2,duration) end
--[[
	@target CS.UnityEngine.Transform
	@endValue CS.System.Single
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoMoveX(target,endValue,duration) end
--[[
	@target CS.UnityEngine.Transform
	@endValue CS.System.Single
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoMoveY(target,endValue,duration) end
--[[
	@target CS.UnityEngine.Transform
	@endValue CS.System.Single
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoMoveZ(target,endValue,duration) end
--[[
	@target CS.UnityEngine.Transform
	@vector3 CS.UnityEngine.Vector3
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoLocalMove(target,vector3,duration) end
--[[
	@target CS.UnityEngine.Transform
	@vector2 CS.UnityEngine.Vector2
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoLocalMove(target,vector2,duration) end
--[[
	@target CS.UnityEngine.Transform
	@endValue CS.System.Single
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoLocalMoveX(target,endValue,duration) end
--[[
	@target CS.UnityEngine.Transform
	@endValue CS.System.Single
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoLocalMoveY(target,endValue,duration) end
--[[
	@target CS.UnityEngine.Transform
	@endValue CS.System.Single
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoLocalMoveZ(target,endValue,duration) end
--[[
	@target CS.UnityEngine.Transform
	@vector3 CS.UnityEngine.Vector3
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoScale(target,vector3,duration) end
--[[
	@target CS.UnityEngine.Transform
	@vector2 CS.UnityEngine.Vector2
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoScale(target,vector2,duration) end
--[[
	@target CS.UnityEngine.Transform
	@endValue CS.System.Single
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoScaleX(target,endValue,duration) end
--[[
	@target CS.UnityEngine.Transform
	@endValue CS.System.Single
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoScaleY(target,endValue,duration) end
--[[
	@target CS.UnityEngine.Transform
	@endValue CS.System.Single
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoScaleZ(target,endValue,duration) end
--[[
	@target CS.UnityEngine.Transform
	@vector3 CS.UnityEngine.Vector3
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoRotate(target,vector3,duration) end
--[[
	@target CS.UnityEngine.Transform
	@vector2 CS.UnityEngine.Vector2
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoRotate(target,vector2,duration) end
--[[
	@target CS.UnityEngine.Transform
	@vector3 CS.UnityEngine.Vector3
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoLocalRotate(target,vector3,duration) end
--[[
	@target CS.UnityEngine.Transform
	@vector2 CS.UnityEngine.Vector2
	@duration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoLocalRotate(target,vector2,duration) end
--[[
	@from CS.System.Single
	@to CS.System.Single
	@duration CS.System.Single
	@onUpdate CS.XLua.LuaFunction
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:DoFloat(from,to,duration,onUpdate) end
--[[
	@tweener CS.DG.Tweening.Tweener
	@ease CS.DG.Tweening.Ease
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:SetEase(tweener,ease) end
--[[
	@tweener CS.DG.Tweening.Tweener
	@delay CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:SetDelay(tweener,delay) end
--[[
	@tweener CS.DG.Tweening.Tweener
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:SetRelative(tweener) end
--[[
	@tweener CS.DG.Tweening.Tweener
	@onStart CS.XLua.LuaFunction
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:OnStart(tweener,onStart) end
--[[
	@tweener CS.DG.Tweening.Tweener
	@onUpdate CS.XLua.LuaFunction
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:OnUpdate(tweener,onUpdate) end
--[[
	@tweener CS.DG.Tweening.Tweener
	@onComplete CS.XLua.LuaFunction
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.LuaUIUtils:OnComplete(tweener,onComplete) end
--[[
	@tweener CS.DG.Tweening.Tweener
	@complete CS.System.Boolean
--]]
function CS.LuaUIUtils:Kill(tweener,complete) end

--@SuperType [luaIde#CS.System.Object]
CS.ABDLManager = {}
--[[
	@return: [luaIde#CS.ABDLManager]
]]
function CS.ABDLManager() end
function CS.ABDLManager:GetInstance() end
--[[
	@path CS.System.String
	@return: [luaIde#CS.DownLoader]
--]]
function CS.ABDLManager:DownLoader(path) end
--[[
	@path CS.System.String
	@sign CS.System.String
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.ABDLManager:GetAsset(path,sign) end
--[[
	@path CS.System.String
	@name CS.System.String
	@sign CS.System.String
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.ABDLManager:GetAssetByName(path,name,sign) end
--[[
	@path CS.System.String
	@sign CS.System.String
	@return: [luaIde#CS.DownLoader]
--]]
function CS.ABDLManager:GetDownLoader(path,sign) end
--[[
	@path CS.System.String
	@return: CS.System.Boolean
--]]
function CS.ABDLManager:IsHotFixFile(path) end
--[[
	@path CS.System.String<>
--]]
function CS.ABDLManager:OnSequenceHoxFixFile(path) end
--[[
	@path CS.System.String
	@sign CS.System.String
--]]
function CS.ABDLManager:UnLoadAsset(path,sign) end
--[[
	@path CS.System.String<>
	@sign CS.System.String
--]]
function CS.ABDLManager:UnLoadAsset(path,sign) end
--[[
	@sign CS.System.String<>
--]]
function CS.ABDLManager:UnLoad(sign) end
--[[
	@sign CS.System.String<>
	@keepStartsWith CS.System.String
--]]
function CS.ABDLManager:UnLoadUnnecessary(sign,keepStartsWith) end
function CS.ABDLManager:Dispose() end
--[[
	@paths CS.System.String<>
	@contain CS.System.Boolean
	@return: CS.System.String<>
--]]
function CS.ABDLManager:GetDependencies(paths,contain) end
function CS.ABDLManager:WriteDependencies() end
--[[
	@path CS.System.String
	@return: CS.System.String
--]]
function CS.ABDLManager:GetFullPathByMd5(path) end

--@SuperType [luaIde#CS.System.Object]
CS.DownLoader = {}
--[[
	@path CS.System.String
	@return: [luaIde#CS.DownLoader]
]]
function CS.DownLoader(path) end
--[[
	@RefType [luaIde#CS.UnityEngine.Object]
	 Get 
--]]
CS.DownLoader.MainAsset = nil
--[[
	CS.System.String
	 Get 
--]]
CS.DownLoader.Path = nil
--[[
	CS.DownLoaderState
	 Get 
--]]
CS.DownLoader.State = nil
--[[
	CS.UnityEngine.AssetBundle
	 Get 
--]]
CS.DownLoader.AssetBundle = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.DownLoader.IsHotFixFile = nil
--[[
	CS.System.Boolean
	 Set 
--]]
CS.DownLoader.IsLoadAll = nil
--[[
	CS.System.String
	 Get 
--]]
CS.DownLoader.BundlePath = nil
--[[
	@sign CS.System.String
--]]
function CS.DownLoader:AddSign(sign) end
--[[
	@complete CS.DownLoaderComplete
	@async CS.System.Boolean
	@sign CS.System.String
--]]
function CS.DownLoader:Load(complete,async,sign) end
--[[
	@sign CS.System.String<>
--]]
function CS.DownLoader:UnLoad(sign) end
--[[
	@sign CS.System.String
--]]
function CS.DownLoader:UnLoad(sign) end
--[[
	@sign CS.System.String<>
	@keepStartsWith CS.System.String
--]]
function CS.DownLoader:UnLoadUnnecessary(sign,keepStartsWith) end
function CS.DownLoader:Dispose() end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.Object]
--]]
function CS.DownLoader:AssetByName(name) end
function CS.DownLoader:SequenceHoxFixFile() end

--@SuperType [luaIde#CS.System.Object]
CS.ABDownLoader = {}
--[[
	@path CS.System.String
	@sign CS.System.String
	@async CS.System.Boolean
	@return: [luaIde#CS.ABDownLoader]
]]
function CS.ABDownLoader(path,sign,async) end
--[[
	@path CS.System.String<>
	@sign CS.System.String
	@async CS.System.Boolean
	@return: [luaIde#CS.ABDownLoader]
]]
function CS.ABDownLoader(path,sign,async) end
--[[
	CS.System.Single
	 Get 
--]]
CS.ABDownLoader.Progress = nil
--[[
	CS.DownLoaderState
	 Get 
--]]
CS.ABDownLoader.State = nil
--[[
	CS.System.String
	 Get 
--]]
CS.ABDownLoader.Sign = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.ABDownLoader.FpsNum = nil
function CS.ABDownLoader:AddSign() end
--[[
	@complete CS.EventUtils.Event
	@progress CS.EventUtils.EventWithFloat
--]]
function CS.ABDownLoader:Load(complete,progress) end
function CS.ABDownLoader:UnLoad() end

--@SuperType [luaIde#CS.System.Object]
CS.ABTemporary = {}
--[[
	@sign CS.System.String
	@return: [luaIde#CS.ABTemporary]
]]
function CS.ABTemporary(sign) end
--[[
	@path CS.System.String<>
--]]
function CS.ABTemporary:Temporary(path) end
function CS.ABTemporary:Destroy() end

--@SuperType [luaIde#CS.System.Enum]
CS.DownLoaderState = {}
--[[
	CS.DownLoaderState
	 Get 	 Set 
--]]
CS.DownLoaderState.Running = 0
--[[
	CS.DownLoaderState
	 Get 	 Set 
--]]
CS.DownLoaderState.Complete = 1
--[[
	CS.DownLoaderState
	 Get 	 Set 
--]]
CS.DownLoaderState.None = 2

--@SuperType [luaIde#CS.System.Enum]
CS.UnityEngine.WrapMode = {}
--[[
	CS.UnityEngine.WrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.WrapMode.Once = 1
--[[
	CS.UnityEngine.WrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.WrapMode.Loop = 2
--[[
	CS.UnityEngine.WrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.WrapMode.PingPong = 4
--[[
	CS.UnityEngine.WrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.WrapMode.Default = 0
--[[
	CS.UnityEngine.WrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.WrapMode.ClampForever = 8
--[[
	CS.UnityEngine.WrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.WrapMode.Clamp = 1

--@SuperType [luaIde#CS.System.Enum]
CS.UnityEngine.SceneManagement.LoadSceneMode = {}
--[[
	CS.UnityEngine.SceneManagement.LoadSceneMode
	 Get 	 Set 
--]]
CS.UnityEngine.SceneManagement.LoadSceneMode.Single = 0
--[[
	CS.UnityEngine.SceneManagement.LoadSceneMode
	 Get 	 Set 
--]]
CS.UnityEngine.SceneManagement.LoadSceneMode.Additive = 1

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.SceneBehaviour = {}
--[[
	@return: [luaIde#CS.SceneBehaviour]
]]
function CS.SceneBehaviour() end

--@SuperType [luaIde#CS.System.Object]
CS.ClientSocket = {}
--[[
	@RefType [luaIde#CS.System.Object]
	 Get 	 Set 
--]]
CS.ClientSocket.RecLocker = nil
--[[
	@RefType [luaIde#CS.System.Object]
	 Get 	 Set 
--]]
CS.ClientSocket.SendLocker = nil
--[[
	@RefType [luaIde#CS.System.Object]
	 Get 	 Set 
--]]
CS.ClientSocket.EventLocker = nil
function CS.ClientSocket:GetInstance() end
--[[
	@dispatch CS.EventUtils.SocketDispatchEvent
	@evt CS.EventUtils.EventWithInt
--]]
function CS.ClientSocket:LuaDispatchEvent(dispatch,evt) end
--[[
	@reconnectionReviseProto CS.System.Int64<>
--]]
function CS.ClientSocket:ReconnectionReviseProto(reconnectionReviseProto) end
function CS.ClientSocket:OnDestroy() end
function CS.ClientSocket:Connect() end
function CS.ClientSocket:Closed() end
--[[
	@isSuspend CS.System.Boolean
--]]
function CS.ClientSocket:IsSuspendSend(isSuspend) end
--[[
	@ul CS.System.Int64
	@protoId CS.System.Int32
	@bytes CS.System.Byte<>
--]]
function CS.ClientSocket:Send(ul,protoId,bytes) end
--[[
	@ul CS.System.Int64
	@protoId CS.System.Int32
	@bytes CS.System.Byte<>
--]]
function CS.ClientSocket:SendPriority(ul,protoId,bytes) end
--[[
	@count CS.System.Int32
--]]
function CS.ClientSocket:ProtoCount(count) end
--[[
	@count CS.System.Int32
--]]
function CS.ClientSocket:ProtoClean(count) end
--[[
	@ul CS.System.Int64
	@return: CS.System.Int64
--]]
function CS.ClientSocket:ReconnectionRevise(ul) end
function CS.ClientSocket:Run() end
--[[
	@bytes CS.System.Byte<>
--]]
function CS.ClientSocket:LogBytes(bytes) end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.ShaderStudio.WeaponTrail.WeaponTrailBase = {}
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.ShaderStudio.WeaponTrail.WeaponTrailBase.IsUpdating = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.ShaderStudio.WeaponTrail.WeaponTrailBase._time = nil
--[[
	@rootTr CS.UnityEngine.Transform
	@rootAnim CS.UnityEngine.Animation
--]]
function CS.ShaderStudio.WeaponTrail.WeaponTrailBase:SetHostInfo(rootTr,rootAnim) end
function CS.ShaderStudio.WeaponTrail.WeaponTrailBase:StartTrail() end
function CS.ShaderStudio.WeaponTrail.WeaponTrailBase:EndTrail() end

--@SuperType [luaIde#CS.System.Object]
CS.ShaderStudio.GraphicsOptimizer = {}
--[[
	@rootGo CS.UnityEngine.GameObject
--]]
function CS.ShaderStudio.GraphicsOptimizer:StaticBatchingCombine(rootGo) end
--[[
	@rootGo CS.UnityEngine.GameObject
--]]
function CS.ShaderStudio.GraphicsOptimizer:AddLODs(rootGo) end
--[[
	@root CS.UnityEngine.GameObject
--]]
function CS.ShaderStudio.GraphicsOptimizer:OptimizeGrass(root) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.SceneManagement.SceneManager = {}
--[[
	@return: [luaIde#CS.UnityEngine.SceneManagement.SceneManager]
]]
function CS.UnityEngine.SceneManagement.SceneManager() end
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SceneManagement.SceneManager.sceneCount = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SceneManagement.SceneManager.sceneCountInBuildSettings = nil
function CS.UnityEngine.SceneManagement.SceneManager:GetActiveScene() end
--[[
	@scene CS.UnityEngine.SceneManagement.Scene
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.SceneManagement.SceneManager:SetActiveScene(scene) end
--[[
	@scenePath CS.System.String
	@return: CS.UnityEngine.SceneManagement.Scene
--]]
function CS.UnityEngine.SceneManagement.SceneManager:GetSceneByPath(scenePath) end
--[[
	@name CS.System.String
	@return: CS.UnityEngine.SceneManagement.Scene
--]]
function CS.UnityEngine.SceneManagement.SceneManager:GetSceneByName(name) end
--[[
	@buildIndex CS.System.Int32
	@return: CS.UnityEngine.SceneManagement.Scene
--]]
function CS.UnityEngine.SceneManagement.SceneManager:GetSceneByBuildIndex(buildIndex) end
--[[
	@index CS.System.Int32
	@return: CS.UnityEngine.SceneManagement.Scene
--]]
function CS.UnityEngine.SceneManagement.SceneManager:GetSceneAt(index) end
--[[
	@sceneName CS.System.String
	@parameters CS.UnityEngine.SceneManagement.CreateSceneParameters
	@return: CS.UnityEngine.SceneManagement.Scene
--]]
function CS.UnityEngine.SceneManagement.SceneManager:CreateScene(sceneName,parameters) end
--[[
	@sourceScene CS.UnityEngine.SceneManagement.Scene
	@destinationScene CS.UnityEngine.SceneManagement.Scene
--]]
function CS.UnityEngine.SceneManagement.SceneManager:MergeScenes(sourceScene,destinationScene) end
--[[
	@go CS.UnityEngine.GameObject
	@scene CS.UnityEngine.SceneManagement.Scene
--]]
function CS.UnityEngine.SceneManagement.SceneManager:MoveGameObjectToScene(go,scene) end
--[[
	@value CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.SceneManagement.SceneManager:add_sceneLoaded(value) end
--[[
	@value CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.SceneManagement.SceneManager:remove_sceneLoaded(value) end
--[[
	@value CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.SceneManagement.SceneManager:add_sceneUnloaded(value) end
--[[
	@value CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.SceneManagement.SceneManager:remove_sceneUnloaded(value) end
--[[
	@value CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.SceneManagement.SceneManager:add_activeSceneChanged(value) end
--[[
	@value CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.SceneManagement.SceneManager:remove_activeSceneChanged(value) end
function CS.UnityEngine.SceneManagement.SceneManager:GetAllScenes() end
--[[
	@sceneName CS.System.String
	@return: CS.UnityEngine.SceneManagement.Scene
--]]
function CS.UnityEngine.SceneManagement.SceneManager:CreateScene(sceneName) end
--[[
	@sceneName CS.System.String
	@mode CS.UnityEngine.SceneManagement.LoadSceneMode
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadScene(sceneName,mode) end
--[[
	@sceneName CS.System.String
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadScene(sceneName) end
--[[
	@sceneName CS.System.String
	@parameters CS.UnityEngine.SceneManagement.LoadSceneParameters
	@return: CS.UnityEngine.SceneManagement.Scene
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadScene(sceneName,parameters) end
--[[
	@sceneBuildIndex CS.System.Int32
	@mode CS.UnityEngine.SceneManagement.LoadSceneMode
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadScene(sceneBuildIndex,mode) end
--[[
	@sceneBuildIndex CS.System.Int32
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadScene(sceneBuildIndex) end
--[[
	@sceneBuildIndex CS.System.Int32
	@parameters CS.UnityEngine.SceneManagement.LoadSceneParameters
	@return: CS.UnityEngine.SceneManagement.Scene
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadScene(sceneBuildIndex,parameters) end
--[[
	@sceneBuildIndex CS.System.Int32
	@mode CS.UnityEngine.SceneManagement.LoadSceneMode
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadSceneAsync(sceneBuildIndex,mode) end
--[[
	@sceneBuildIndex CS.System.Int32
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadSceneAsync(sceneBuildIndex) end
--[[
	@sceneBuildIndex CS.System.Int32
	@parameters CS.UnityEngine.SceneManagement.LoadSceneParameters
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadSceneAsync(sceneBuildIndex,parameters) end
--[[
	@sceneName CS.System.String
	@mode CS.UnityEngine.SceneManagement.LoadSceneMode
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadSceneAsync(sceneName,mode) end
--[[
	@sceneName CS.System.String
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadSceneAsync(sceneName) end
--[[
	@sceneName CS.System.String
	@parameters CS.UnityEngine.SceneManagement.LoadSceneParameters
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:LoadSceneAsync(sceneName,parameters) end
--[[
	@scene CS.UnityEngine.SceneManagement.Scene
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.SceneManagement.SceneManager:UnloadScene(scene) end
--[[
	@sceneBuildIndex CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.SceneManagement.SceneManager:UnloadScene(sceneBuildIndex) end
--[[
	@sceneName CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.SceneManagement.SceneManager:UnloadScene(sceneName) end
--[[
	@sceneBuildIndex CS.System.Int32
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:UnloadSceneAsync(sceneBuildIndex) end
--[[
	@sceneName CS.System.String
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:UnloadSceneAsync(sceneName) end
--[[
	@scene CS.UnityEngine.SceneManagement.Scene
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:UnloadSceneAsync(scene) end
--[[
	@sceneBuildIndex CS.System.Int32
	@options CS.UnityEngine.SceneManagement.UnloadSceneOptions
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:UnloadSceneAsync(sceneBuildIndex,options) end
--[[
	@sceneName CS.System.String
	@options CS.UnityEngine.SceneManagement.UnloadSceneOptions
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:UnloadSceneAsync(sceneName,options) end
--[[
	@scene CS.UnityEngine.SceneManagement.Scene
	@options CS.UnityEngine.SceneManagement.UnloadSceneOptions
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.SceneManagement.SceneManager:UnloadSceneAsync(scene,options) end

--@SuperType [luaIde#CS.System.Object]
CS.IceMark.UI.IceMarkTools = {}
--[[
	@return: [luaIde#CS.IceMark.UI.IceMarkTools]
]]
function CS.IceMark.UI.IceMarkTools() end
--[[
	@parent CS.UnityEngine.GameObject
	@prefab CS.UnityEngine.GameObject
	@return: [luaIde#CS.UnityEngine.GameObject]
--]]
function CS.IceMark.UI.IceMarkTools:AddChild(parent,prefab) end
--[[
	@obj CS.UnityEngine.Object
--]]
function CS.IceMark.UI.IceMarkTools:Destroy(obj) end

--@SuperType [luaIde#CS.UnityEngine.EventSystems.UIBehaviour]
CS.IceMark.UI.IceButton = {}
--[[
	@return: [luaIde#CS.IceMark.UI.IceButton]
]]
function CS.IceMark.UI.IceButton() end
--[[
	CS.IceMark.UI.IceButton.IceButtonEvent
	 Get 	 Set 
--]]
CS.IceMark.UI.IceButton.OnClick = nil
--[[
	CS.IceMark.UI.IceButton.IceButtonEvent
	 Get 	 Set 
--]]
CS.IceMark.UI.IceButton.OnDoubleClick = nil
--[[
	CS.IceMark.UI.IceButton.IceButtonEvent
	 Get 	 Set 
--]]
CS.IceMark.UI.IceButton.OnDelay = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.IceMark.UI.IceButton.isActive = nil
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.IceMark.UI.IceButton:OnPointerClick(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.IceMark.UI.IceButton:OnPointerDown(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.IceMark.UI.IceButton:OnPointerUp(eventData) end
function CS.IceMark.UI.IceButton:RemoveAllListeners() end

--@SuperType [luaIde#CS.DG.Tweening.Tween]
CS.DG.Tweening.Tweener = {}
--[[
	@newStartValue CS.System.Object
	@newDuration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.DG.Tweening.Tweener:ChangeStartValue(newStartValue,newDuration) end
--[[
	@newEndValue CS.System.Object
	@newDuration CS.System.Single
	@snapStartValue CS.System.Boolean
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.DG.Tweening.Tweener:ChangeEndValue(newEndValue,newDuration,snapStartValue) end
--[[
	@newEndValue CS.System.Object
	@snapStartValue CS.System.Boolean
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.DG.Tweening.Tweener:ChangeEndValue(newEndValue,snapStartValue) end
--[[
	@newStartValue CS.System.Object
	@newEndValue CS.System.Object
	@newDuration CS.System.Single
	@return: [luaIde#CS.DG.Tweening.Tweener]
--]]
function CS.DG.Tweening.Tweener:ChangeValues(newStartValue,newEndValue,newDuration) end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.TableTrigger = {}
--[[
	@return: [luaIde#CS.TableTrigger]
]]
function CS.TableTrigger() end
--[[
	CS.System.Single
	 Set 
--]]
CS.TableTrigger.Radius = nil
--[[
	CS.EventUtils.EventPhysical
	 Get 	 Set 
--]]
CS.TableTrigger.EnterEvent = nil
--[[
	CS.EventUtils.EventPhysical
	 Get 	 Set 
--]]
CS.TableTrigger.ExitEvent = nil
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
--]]
function CS.TableTrigger:Rect(x,y,z) end
function CS.TableTrigger:Destroy() end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.TablePhysical = {}
--[[
	@return: [luaIde#CS.TablePhysical]
]]
function CS.TablePhysical() end
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.TablePhysical.Tag = nil
--[[
	CS.XLua.LuaTable
	 Get 	 Set 
--]]
CS.TablePhysical.Table = nil

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.Mathf = {}
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Mathf.PI = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Mathf.Infinity = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Mathf.NegativeInfinity = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Mathf.Deg2Rad = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Mathf.Rad2Deg = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Mathf.Epsilon = nil
--[[
	@value CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Mathf:ClosestPowerOfTwo(value) end
--[[
	@value CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Mathf:IsPowerOfTwo(value) end
--[[
	@value CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Mathf:NextPowerOfTwo(value) end
--[[
	@value CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:GammaToLinearSpace(value) end
--[[
	@value CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:LinearToGammaSpace(value) end
--[[
	@kelvin CS.System.Single
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Mathf:CorrelatedColorTemperatureToRGB(kelvin) end
--[[
	@val CS.System.Single
	@return: CS.System.UInt16
--]]
function CS.UnityEngine.Mathf:FloatToHalf(val) end
--[[
	@val CS.System.UInt16
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:HalfToFloat(val) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:PerlinNoise(x,y) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Sin(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Cos(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Tan(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Asin(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Acos(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Atan(f) end
--[[
	@y CS.System.Single
	@x CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Atan2(y,x) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Sqrt(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Abs(f) end
--[[
	@value CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Mathf:Abs(value) end
--[[
	@a CS.System.Single
	@b CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Min(a,b) end
--[[
	@values CS.System.Single<>
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Min(values) end
--[[
	@a CS.System.Int32
	@b CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Mathf:Min(a,b) end
--[[
	@values CS.System.Int32<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Mathf:Min(values) end
--[[
	@a CS.System.Single
	@b CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Max(a,b) end
--[[
	@values CS.System.Single<>
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Max(values) end
--[[
	@a CS.System.Int32
	@b CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Mathf:Max(a,b) end
--[[
	@values CS.System.Int32<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Mathf:Max(values) end
--[[
	@f CS.System.Single
	@p CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Pow(f,p) end
--[[
	@power CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Exp(power) end
--[[
	@f CS.System.Single
	@p CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Log(f,p) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Log(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Log10(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Ceil(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Floor(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Round(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Mathf:CeilToInt(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Mathf:FloorToInt(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Mathf:RoundToInt(f) end
--[[
	@f CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Sign(f) end
--[[
	@value CS.System.Single
	@min CS.System.Single
	@max CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Clamp(value,min,max) end
--[[
	@value CS.System.Int32
	@min CS.System.Int32
	@max CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Mathf:Clamp(value,min,max) end
--[[
	@value CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Clamp01(value) end
--[[
	@a CS.System.Single
	@b CS.System.Single
	@t CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Lerp(a,b,t) end
--[[
	@a CS.System.Single
	@b CS.System.Single
	@t CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:LerpUnclamped(a,b,t) end
--[[
	@a CS.System.Single
	@b CS.System.Single
	@t CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:LerpAngle(a,b,t) end
--[[
	@current CS.System.Single
	@target CS.System.Single
	@maxDelta CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:MoveTowards(current,target,maxDelta) end
--[[
	@current CS.System.Single
	@target CS.System.Single
	@maxDelta CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:MoveTowardsAngle(current,target,maxDelta) end
--[[
	@from CS.System.Single
	@to CS.System.Single
	@t CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:SmoothStep(from,to,t) end
--[[
	@value CS.System.Single
	@absmax CS.System.Single
	@gamma CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Gamma(value,absmax,gamma) end
--[[
	@a CS.System.Single
	@b CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Mathf:Approximately(a,b) end
--[[
	@current CS.System.Single
	@target CS.System.Single
	@currentVelocity CS.System.Single&
	@smoothTime CS.System.Single
	@maxSpeed CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:SmoothDamp(current,target,currentVelocity,smoothTime,maxSpeed) end
--[[
	@current CS.System.Single
	@target CS.System.Single
	@currentVelocity CS.System.Single&
	@smoothTime CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:SmoothDamp(current,target,currentVelocity,smoothTime) end
--[[
	@current CS.System.Single
	@target CS.System.Single
	@currentVelocity CS.System.Single&
	@smoothTime CS.System.Single
	@maxSpeed CS.System.Single
	@deltaTime CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:SmoothDamp(current,target,currentVelocity,smoothTime,maxSpeed,deltaTime) end
--[[
	@current CS.System.Single
	@target CS.System.Single
	@currentVelocity CS.System.Single&
	@smoothTime CS.System.Single
	@maxSpeed CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:SmoothDampAngle(current,target,currentVelocity,smoothTime,maxSpeed) end
--[[
	@current CS.System.Single
	@target CS.System.Single
	@currentVelocity CS.System.Single&
	@smoothTime CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:SmoothDampAngle(current,target,currentVelocity,smoothTime) end
--[[
	@current CS.System.Single
	@target CS.System.Single
	@currentVelocity CS.System.Single&
	@smoothTime CS.System.Single
	@maxSpeed CS.System.Single
	@deltaTime CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:SmoothDampAngle(current,target,currentVelocity,smoothTime,maxSpeed,deltaTime) end
--[[
	@t CS.System.Single
	@length CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:Repeat(t,length) end
--[[
	@t CS.System.Single
	@length CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:PingPong(t,length) end
--[[
	@a CS.System.Single
	@b CS.System.Single
	@value CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:InverseLerp(a,b,value) end
--[[
	@current CS.System.Single
	@target CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.Mathf:DeltaAngle(current,target) end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.SpinWithMouse = {}
--[[
	@return: [luaIde#CS.SpinWithMouse]
]]
function CS.SpinWithMouse() end
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.SpinWithMouse.Speed = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.SpinWithMouse.Active = nil
--[[
	CS.EventUtils.EventWithVector2
	 Get 	 Set 
--]]
CS.SpinWithMouse.CallBack = nil
--[[
	@target CS.UnityEngine.Transform
--]]
function CS.SpinWithMouse:SetTarget(target) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.SpinWithMouse:OnDrag(eventData) end

--@SuperType [luaIde#CS.UnityEngine.Component]
CS.UnityEngine.Rigidbody = {}
--[[
	@return: [luaIde#CS.UnityEngine.Rigidbody]
]]
function CS.UnityEngine.Rigidbody() end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.velocity = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.angularVelocity = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.drag = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.angularDrag = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.mass = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.useGravity = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.maxDepenetrationVelocity = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.isKinematic = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.freezeRotation = nil
--[[
	CS.UnityEngine.RigidbodyConstraints
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.constraints = nil
--[[
	CS.UnityEngine.CollisionDetectionMode
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.collisionDetectionMode = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.centerOfMass = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Rigidbody.worldCenterOfMass = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Quaternion]
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.inertiaTensorRotation = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.inertiaTensor = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.detectCollisions = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.position = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Quaternion]
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.rotation = nil
--[[
	CS.UnityEngine.RigidbodyInterpolation
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.interpolation = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.solverIterations = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.sleepThreshold = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.maxAngularVelocity = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Rigidbody.solverVelocityIterations = nil
--[[
	@density CS.System.Single
--]]
function CS.UnityEngine.Rigidbody:SetDensity(density) end
--[[
	@position CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Rigidbody:MovePosition(position) end
--[[
	@rot CS.UnityEngine.Quaternion
--]]
function CS.UnityEngine.Rigidbody:MoveRotation(rot) end
function CS.UnityEngine.Rigidbody:Sleep() end
function CS.UnityEngine.Rigidbody:IsSleeping() end
function CS.UnityEngine.Rigidbody:WakeUp() end
function CS.UnityEngine.Rigidbody:ResetCenterOfMass() end
function CS.UnityEngine.Rigidbody:ResetInertiaTensor() end
--[[
	@relativePoint CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Rigidbody:GetRelativePointVelocity(relativePoint) end
--[[
	@worldPoint CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Rigidbody:GetPointVelocity(worldPoint) end
--[[
	@a CS.System.Single
--]]
function CS.UnityEngine.Rigidbody:SetMaxAngularVelocity(a) end
--[[
	@force CS.UnityEngine.Vector3
	@mode CS.UnityEngine.ForceMode
--]]
function CS.UnityEngine.Rigidbody:AddForce(force,mode) end
--[[
	@force CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Rigidbody:AddForce(force) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@mode CS.UnityEngine.ForceMode
--]]
function CS.UnityEngine.Rigidbody:AddForce(x,y,z,mode) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
--]]
function CS.UnityEngine.Rigidbody:AddForce(x,y,z) end
--[[
	@force CS.UnityEngine.Vector3
	@mode CS.UnityEngine.ForceMode
--]]
function CS.UnityEngine.Rigidbody:AddRelativeForce(force,mode) end
--[[
	@force CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Rigidbody:AddRelativeForce(force) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@mode CS.UnityEngine.ForceMode
--]]
function CS.UnityEngine.Rigidbody:AddRelativeForce(x,y,z,mode) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
--]]
function CS.UnityEngine.Rigidbody:AddRelativeForce(x,y,z) end
--[[
	@torque CS.UnityEngine.Vector3
	@mode CS.UnityEngine.ForceMode
--]]
function CS.UnityEngine.Rigidbody:AddTorque(torque,mode) end
--[[
	@torque CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Rigidbody:AddTorque(torque) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@mode CS.UnityEngine.ForceMode
--]]
function CS.UnityEngine.Rigidbody:AddTorque(x,y,z,mode) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
--]]
function CS.UnityEngine.Rigidbody:AddTorque(x,y,z) end
--[[
	@torque CS.UnityEngine.Vector3
	@mode CS.UnityEngine.ForceMode
--]]
function CS.UnityEngine.Rigidbody:AddRelativeTorque(torque,mode) end
--[[
	@torque CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Rigidbody:AddRelativeTorque(torque) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@mode CS.UnityEngine.ForceMode
--]]
function CS.UnityEngine.Rigidbody:AddRelativeTorque(x,y,z,mode) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
--]]
function CS.UnityEngine.Rigidbody:AddRelativeTorque(x,y,z) end
--[[
	@force CS.UnityEngine.Vector3
	@position CS.UnityEngine.Vector3
	@mode CS.UnityEngine.ForceMode
--]]
function CS.UnityEngine.Rigidbody:AddForceAtPosition(force,position,mode) end
--[[
	@force CS.UnityEngine.Vector3
	@position CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.Rigidbody:AddForceAtPosition(force,position) end
--[[
	@explosionForce CS.System.Single
	@explosionPosition CS.UnityEngine.Vector3
	@explosionRadius CS.System.Single
	@upwardsModifier CS.System.Single
	@mode CS.UnityEngine.ForceMode
--]]
function CS.UnityEngine.Rigidbody:AddExplosionForce(explosionForce,explosionPosition,explosionRadius,upwardsModifier,mode) end
--[[
	@explosionForce CS.System.Single
	@explosionPosition CS.UnityEngine.Vector3
	@explosionRadius CS.System.Single
	@upwardsModifier CS.System.Single
--]]
function CS.UnityEngine.Rigidbody:AddExplosionForce(explosionForce,explosionPosition,explosionRadius,upwardsModifier) end
--[[
	@explosionForce CS.System.Single
	@explosionPosition CS.UnityEngine.Vector3
	@explosionRadius CS.System.Single
--]]
function CS.UnityEngine.Rigidbody:AddExplosionForce(explosionForce,explosionPosition,explosionRadius) end
--[[
	@position CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.Rigidbody:ClosestPointOnBounds(position) end
--[[
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rigidbody:SweepTest(direction,hitInfo,maxDistance,queryTriggerInteraction) end
--[[
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@maxDistance CS.System.Single
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rigidbody:SweepTest(direction,hitInfo,maxDistance) end
--[[
	@direction CS.UnityEngine.Vector3
	@hitInfo CS.UnityEngine.RaycastHit&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rigidbody:SweepTest(direction,hitInfo) end
--[[
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@queryTriggerInteraction CS.UnityEngine.QueryTriggerInteraction
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Rigidbody:SweepTestAll(direction,maxDistance,queryTriggerInteraction) end
--[[
	@direction CS.UnityEngine.Vector3
	@maxDistance CS.System.Single
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Rigidbody:SweepTestAll(direction,maxDistance) end
--[[
	@direction CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.RaycastHit<>]
--]]
function CS.UnityEngine.Rigidbody:SweepTestAll(direction) end

--@SuperType [luaIde#CS.UnityEngine.Behaviour]
CS.UnityEngine.AI.NavMeshAgent = {}
--[[
	@return: [luaIde#CS.UnityEngine.AI.NavMeshAgent]
]]
function CS.UnityEngine.AI.NavMeshAgent() end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.destination = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.stoppingDistance = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.velocity = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.nextPosition = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.steeringTarget = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.desiredVelocity = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.remainingDistance = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.baseOffset = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.isOnOffMeshLink = nil
--[[
	CS.UnityEngine.AI.OffMeshLinkData
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.currentOffMeshLinkData = nil
--[[
	CS.UnityEngine.AI.OffMeshLinkData
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.nextOffMeshLinkData = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.autoTraverseOffMeshLink = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.autoBraking = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.autoRepath = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.hasPath = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.pathPending = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.isPathStale = nil
--[[
	CS.UnityEngine.AI.NavMeshPathStatus
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.pathStatus = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.pathEndPosition = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.isStopped = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AI.NavMeshPath]
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.path = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Object]
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.navMeshOwner = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.agentTypeID = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.areaMask = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.speed = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.angularSpeed = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.acceleration = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.updatePosition = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.updateRotation = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.updateUpAxis = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.radius = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.height = nil
--[[
	CS.UnityEngine.AI.ObstacleAvoidanceType
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.obstacleAvoidanceType = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshAgent.avoidancePriority = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.AI.NavMeshAgent.isOnNavMesh = nil
--[[
	@target CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMeshAgent:SetDestination(target) end
--[[
	@activated CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMeshAgent:ActivateCurrentOffMeshLink(activated) end
function CS.UnityEngine.AI.NavMeshAgent:CompleteOffMeshLink() end
--[[
	@newPosition CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMeshAgent:Warp(newPosition) end
--[[
	@offset CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.AI.NavMeshAgent:Move(offset) end
function CS.UnityEngine.AI.NavMeshAgent:Stop() end
--[[
	@stopUpdates CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMeshAgent:Stop(stopUpdates) end
function CS.UnityEngine.AI.NavMeshAgent:Resume() end
function CS.UnityEngine.AI.NavMeshAgent:ResetPath() end
--[[
	@path CS.UnityEngine.AI.NavMeshPath
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMeshAgent:SetPath(path) end
--[[
	@hit CS.UnityEngine.AI.NavMeshHit&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMeshAgent:FindClosestEdge(hit) end
--[[
	@targetPosition CS.UnityEngine.Vector3
	@hit CS.UnityEngine.AI.NavMeshHit&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMeshAgent:Raycast(targetPosition,hit) end
--[[
	@targetPosition CS.UnityEngine.Vector3
	@path CS.UnityEngine.AI.NavMeshPath
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMeshAgent:CalculatePath(targetPosition,path) end
--[[
	@areaMask CS.System.Int32
	@maxDistance CS.System.Single
	@hit CS.UnityEngine.AI.NavMeshHit&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMeshAgent:SamplePathPosition(areaMask,maxDistance,hit) end
--[[
	@layer CS.System.Int32
	@cost CS.System.Single
--]]
function CS.UnityEngine.AI.NavMeshAgent:SetLayerCost(layer,cost) end
--[[
	@layer CS.System.Int32
	@return: CS.System.Single
--]]
function CS.UnityEngine.AI.NavMeshAgent:GetLayerCost(layer) end
--[[
	@areaIndex CS.System.Int32
	@areaCost CS.System.Single
--]]
function CS.UnityEngine.AI.NavMeshAgent:SetAreaCost(areaIndex,areaCost) end
--[[
	@areaIndex CS.System.Int32
	@return: CS.System.Single
--]]
function CS.UnityEngine.AI.NavMeshAgent:GetAreaCost(areaIndex) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.AI.NavMeshPath = {}
--[[
	@return: [luaIde#CS.UnityEngine.AI.NavMeshPath]
]]
function CS.UnityEngine.AI.NavMeshPath() end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3<>]
	 Get 
--]]
CS.UnityEngine.AI.NavMeshPath.corners = nil
--[[
	CS.UnityEngine.AI.NavMeshPathStatus
	 Get 
--]]
CS.UnityEngine.AI.NavMeshPath.status = nil
--[[
	@results CS.UnityEngine.Vector3<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.AI.NavMeshPath:GetCornersNonAlloc(results) end
function CS.UnityEngine.AI.NavMeshPath:ClearCorners() end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.AI.NavMesh = {}
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMesh.avoidancePredictionTime = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMesh.pathfindingIterationsPerFrame = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMesh.AllAreas = nil
--[[
	CS.UnityEngine.AI.NavMesh.OnNavMeshPreUpdate
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMesh.onPreUpdate = nil
--[[
	@sourcePosition CS.UnityEngine.Vector3
	@targetPosition CS.UnityEngine.Vector3
	@hit CS.UnityEngine.AI.NavMeshHit&
	@areaMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMesh:Raycast(sourcePosition,targetPosition,hit,areaMask) end
--[[
	@sourcePosition CS.UnityEngine.Vector3
	@targetPosition CS.UnityEngine.Vector3
	@areaMask CS.System.Int32
	@path CS.UnityEngine.AI.NavMeshPath
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMesh:CalculatePath(sourcePosition,targetPosition,areaMask,path) end
--[[
	@sourcePosition CS.UnityEngine.Vector3
	@hit CS.UnityEngine.AI.NavMeshHit&
	@areaMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMesh:FindClosestEdge(sourcePosition,hit,areaMask) end
--[[
	@sourcePosition CS.UnityEngine.Vector3
	@hit CS.UnityEngine.AI.NavMeshHit&
	@maxDistance CS.System.Single
	@areaMask CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMesh:SamplePosition(sourcePosition,hit,maxDistance,areaMask) end
--[[
	@layer CS.System.Int32
	@cost CS.System.Single
--]]
function CS.UnityEngine.AI.NavMesh:SetLayerCost(layer,cost) end
--[[
	@layer CS.System.Int32
	@return: CS.System.Single
--]]
function CS.UnityEngine.AI.NavMesh:GetLayerCost(layer) end
--[[
	@layerName CS.System.String
	@return: CS.System.Int32
--]]
function CS.UnityEngine.AI.NavMesh:GetNavMeshLayerFromName(layerName) end
--[[
	@areaIndex CS.System.Int32
	@cost CS.System.Single
--]]
function CS.UnityEngine.AI.NavMesh:SetAreaCost(areaIndex,cost) end
--[[
	@areaIndex CS.System.Int32
	@return: CS.System.Single
--]]
function CS.UnityEngine.AI.NavMesh:GetAreaCost(areaIndex) end
--[[
	@areaName CS.System.String
	@return: CS.System.Int32
--]]
function CS.UnityEngine.AI.NavMesh:GetAreaFromName(areaName) end
function CS.UnityEngine.AI.NavMesh:CalculateTriangulation() end
--[[
	@vertices CS.UnityEngine.Vector3{}&
	@indices CS.System.Int32{}&
--]]
function CS.UnityEngine.AI.NavMesh:Triangulate(vertices,indices) end
function CS.UnityEngine.AI.NavMesh:AddOffMeshLinks() end
function CS.UnityEngine.AI.NavMesh:RestoreNavMesh() end
--[[
	@navMeshData CS.UnityEngine.AI.NavMeshData
	@return: CS.UnityEngine.AI.NavMeshDataInstance
--]]
function CS.UnityEngine.AI.NavMesh:AddNavMeshData(navMeshData) end
--[[
	@navMeshData CS.UnityEngine.AI.NavMeshData
	@position CS.UnityEngine.Vector3
	@rotation CS.UnityEngine.Quaternion
	@return: CS.UnityEngine.AI.NavMeshDataInstance
--]]
function CS.UnityEngine.AI.NavMesh:AddNavMeshData(navMeshData,position,rotation) end
--[[
	@handle CS.UnityEngine.AI.NavMeshDataInstance
--]]
function CS.UnityEngine.AI.NavMesh:RemoveNavMeshData(handle) end
--[[
	@link CS.UnityEngine.AI.NavMeshLinkData
	@return: CS.UnityEngine.AI.NavMeshLinkInstance
--]]
function CS.UnityEngine.AI.NavMesh:AddLink(link) end
--[[
	@link CS.UnityEngine.AI.NavMeshLinkData
	@position CS.UnityEngine.Vector3
	@rotation CS.UnityEngine.Quaternion
	@return: CS.UnityEngine.AI.NavMeshLinkInstance
--]]
function CS.UnityEngine.AI.NavMesh:AddLink(link,position,rotation) end
--[[
	@handle CS.UnityEngine.AI.NavMeshLinkInstance
--]]
function CS.UnityEngine.AI.NavMesh:RemoveLink(handle) end
--[[
	@sourcePosition CS.UnityEngine.Vector3
	@hit CS.UnityEngine.AI.NavMeshHit&
	@maxDistance CS.System.Single
	@filter CS.UnityEngine.AI.NavMeshQueryFilter
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMesh:SamplePosition(sourcePosition,hit,maxDistance,filter) end
--[[
	@sourcePosition CS.UnityEngine.Vector3
	@hit CS.UnityEngine.AI.NavMeshHit&
	@filter CS.UnityEngine.AI.NavMeshQueryFilter
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMesh:FindClosestEdge(sourcePosition,hit,filter) end
--[[
	@sourcePosition CS.UnityEngine.Vector3
	@targetPosition CS.UnityEngine.Vector3
	@hit CS.UnityEngine.AI.NavMeshHit&
	@filter CS.UnityEngine.AI.NavMeshQueryFilter
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMesh:Raycast(sourcePosition,targetPosition,hit,filter) end
--[[
	@sourcePosition CS.UnityEngine.Vector3
	@targetPosition CS.UnityEngine.Vector3
	@filter CS.UnityEngine.AI.NavMeshQueryFilter
	@path CS.UnityEngine.AI.NavMeshPath
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.AI.NavMesh:CalculatePath(sourcePosition,targetPosition,filter,path) end
function CS.UnityEngine.AI.NavMesh:CreateSettings() end
--[[
	@agentTypeID CS.System.Int32
--]]
function CS.UnityEngine.AI.NavMesh:RemoveSettings(agentTypeID) end
--[[
	@agentTypeID CS.System.Int32
	@return: CS.UnityEngine.AI.NavMeshBuildSettings
--]]
function CS.UnityEngine.AI.NavMesh:GetSettingsByID(agentTypeID) end
function CS.UnityEngine.AI.NavMesh:GetSettingsCount() end
--[[
	@index CS.System.Int32
	@return: CS.UnityEngine.AI.NavMeshBuildSettings
--]]
function CS.UnityEngine.AI.NavMesh:GetSettingsByIndex(index) end
--[[
	@agentTypeID CS.System.Int32
	@return: CS.System.String
--]]
function CS.UnityEngine.AI.NavMesh:GetSettingsNameFromID(agentTypeID) end
function CS.UnityEngine.AI.NavMesh:RemoveAllNavMeshData() end

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.AI.NavMeshHit = {}
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshHit.position = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshHit.normal = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshHit.distance = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshHit.mask = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshHit.hit = nil

--@SuperType [luaIde#CS.System.Enum]
CS.UnityEngine.AI.NavMeshPathStatus = {}
--[[
	CS.UnityEngine.AI.NavMeshPathStatus
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshPathStatus.PathComplete = 0
--[[
	CS.UnityEngine.AI.NavMeshPathStatus
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshPathStatus.PathPartial = 1
--[[
	CS.UnityEngine.AI.NavMeshPathStatus
	 Get 	 Set 
--]]
CS.UnityEngine.AI.NavMeshPathStatus.PathInvalid = 2

--@SuperType [luaIde#CS.System.Enum]
CS.UnityEngine.AI.ObstacleAvoidanceType = {}
--[[
	CS.UnityEngine.AI.ObstacleAvoidanceType
	 Get 	 Set 
--]]
CS.UnityEngine.AI.ObstacleAvoidanceType.NoObstacleAvoidance = 0
--[[
	CS.UnityEngine.AI.ObstacleAvoidanceType
	 Get 	 Set 
--]]
CS.UnityEngine.AI.ObstacleAvoidanceType.LowQualityObstacleAvoidance = 1
--[[
	CS.UnityEngine.AI.ObstacleAvoidanceType
	 Get 	 Set 
--]]
CS.UnityEngine.AI.ObstacleAvoidanceType.MedQualityObstacleAvoidance = 2
--[[
	CS.UnityEngine.AI.ObstacleAvoidanceType
	 Get 	 Set 
--]]
CS.UnityEngine.AI.ObstacleAvoidanceType.GoodQualityObstacleAvoidance = 3
--[[
	CS.UnityEngine.AI.ObstacleAvoidanceType
	 Get 	 Set 
--]]
CS.UnityEngine.AI.ObstacleAvoidanceType.HighQualityObstacleAvoidance = 4

--@SuperType [luaIde#CS.UnityEngine.Transform]
CS.UnityEngine.RectTransform = {}
--[[
	@return: [luaIde#CS.UnityEngine.RectTransform]
]]
function CS.UnityEngine.RectTransform() end
--[[
	@RefType [luaIde#CS.UnityEngine.Rect]
	 Get 
--]]
CS.UnityEngine.RectTransform.rect = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.RectTransform.anchorMin = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.RectTransform.anchorMax = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.RectTransform.anchoredPosition = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.RectTransform.sizeDelta = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.RectTransform.pivot = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.UnityEngine.RectTransform.anchoredPosition3D = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.RectTransform.offsetMin = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.RectTransform.offsetMax = nil
--[[
	@value CS.UnityEngine.RectTransform.ReapplyDrivenProperties
--]]
function CS.UnityEngine.RectTransform:add_reapplyDrivenProperties(value) end
--[[
	@value CS.UnityEngine.RectTransform.ReapplyDrivenProperties
--]]
function CS.UnityEngine.RectTransform:remove_reapplyDrivenProperties(value) end
function CS.UnityEngine.RectTransform:ForceUpdateRectTransforms() end
--[[
	@fourCornersArray CS.UnityEngine.Vector3<>
--]]
function CS.UnityEngine.RectTransform:GetLocalCorners(fourCornersArray) end
--[[
	@fourCornersArray CS.UnityEngine.Vector3<>
--]]
function CS.UnityEngine.RectTransform:GetWorldCorners(fourCornersArray) end
--[[
	@edge CS.UnityEngine.RectTransform.Edge
	@inset CS.System.Single
	@size CS.System.Single
--]]
function CS.UnityEngine.RectTransform:SetInsetAndSizeFromParentEdge(edge,inset,size) end
--[[
	@axis CS.UnityEngine.RectTransform.Axis
	@size CS.System.Single
--]]
function CS.UnityEngine.RectTransform:SetSizeWithCurrentAnchors(axis,size) end

--@SuperType [luaIde#CS.System.Enum]
CS.DG.Tweening.Ease = {}
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.Unset = 0
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.Linear = 1
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InSine = 2
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.OutSine = 3
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InOutSine = 4
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InQuad = 5
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.OutQuad = 6
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InOutQuad = 7
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InCubic = 8
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.OutCubic = 9
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InOutCubic = 10
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InQuart = 11
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.OutQuart = 12
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InOutQuart = 13
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InQuint = 14
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.OutQuint = 15
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InOutQuint = 16
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InExpo = 17
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.OutExpo = 18
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InOutExpo = 19
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InCirc = 20
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.OutCirc = 21
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InOutCirc = 22
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InElastic = 23
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.OutElastic = 24
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InOutElastic = 25
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InBack = 26
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.OutBack = 27
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InOutBack = 28
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InBounce = 29
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.OutBounce = 30
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InOutBounce = 31
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.Flash = 32
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InFlash = 33
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.OutFlash = 34
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.InOutFlash = 35
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.INTERNAL_Zero = 36
--[[
	CS.DG.Tweening.Ease
	 Get 	 Set 
--]]
CS.DG.Tweening.Ease.INTERNAL_Custom = 37

--@SuperType [luaIde#CS.System.ValueType]
CS.UnityEngine.Rect = {}
--[[
	@x CS.System.Single
	@y CS.System.Single
	@width CS.System.Single
	@height CS.System.Single
	@return: [luaIde#CS.UnityEngine.Rect]
]]
function CS.UnityEngine.Rect(x,y,width,height) end
--[[
	@position CS.UnityEngine.Vector2
	@size CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Rect]
]]
function CS.UnityEngine.Rect(position,size) end
--[[
	@source CS.UnityEngine.Rect
	@return: [luaIde#CS.UnityEngine.Rect]
]]
function CS.UnityEngine.Rect(source) end
--[[
	@RefType [luaIde#CS.UnityEngine.Rect]
	 Get 
--]]
CS.UnityEngine.Rect.zero = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.x = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.y = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.position = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.center = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.min = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.max = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.width = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.height = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.size = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.xMin = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.yMin = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.xMax = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Rect.yMax = nil
--[[
	@xmin CS.System.Single
	@ymin CS.System.Single
	@xmax CS.System.Single
	@ymax CS.System.Single
	@return: [luaIde#CS.UnityEngine.Rect]
--]]
function CS.UnityEngine.Rect:MinMaxRect(xmin,ymin,xmax,ymax) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@width CS.System.Single
	@height CS.System.Single
--]]
function CS.UnityEngine.Rect:Set(x,y,width,height) end
--[[
	@point CS.UnityEngine.Vector2
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rect:Contains(point) end
--[[
	@point CS.UnityEngine.Vector3
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rect:Contains(point) end
--[[
	@point CS.UnityEngine.Vector3
	@allowInverse CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rect:Contains(point,allowInverse) end
--[[
	@other CS.UnityEngine.Rect
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rect:Overlaps(other) end
--[[
	@other CS.UnityEngine.Rect
	@allowInverse CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rect:Overlaps(other,allowInverse) end
--[[
	@rectangle CS.UnityEngine.Rect
	@normalizedRectCoordinates CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Rect:NormalizedToPoint(rectangle,normalizedRectCoordinates) end
--[[
	@rectangle CS.UnityEngine.Rect
	@point CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Rect:PointToNormalized(rectangle,point) end
--[[
	@lhs CS.UnityEngine.Rect
	@rhs CS.UnityEngine.Rect
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rect:op_Inequality(lhs,rhs) end
--[[
	@lhs CS.UnityEngine.Rect
	@rhs CS.UnityEngine.Rect
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rect:op_Equality(lhs,rhs) end
function CS.UnityEngine.Rect:GetHashCode() end
--[[
	@other CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rect:Equals(other) end
--[[
	@other CS.UnityEngine.Rect
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Rect:Equals(other) end
function CS.UnityEngine.Rect:ToString() end
--[[
	@format CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Rect:ToString(format) end
--[[
	@format CS.System.String
	@formatProvider CS.System.IFormatProvider
	@return: CS.System.String
--]]
function CS.UnityEngine.Rect:ToString(format,formatProvider) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.RectTransformUtility = {}
--[[
	@point CS.UnityEngine.Vector2
	@elementTransform CS.UnityEngine.Transform
	@canvas CS.UnityEngine.Canvas
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.RectTransformUtility:PixelAdjustPoint(point,elementTransform,canvas) end
--[[
	@rectTransform CS.UnityEngine.RectTransform
	@canvas CS.UnityEngine.Canvas
	@return: [luaIde#CS.UnityEngine.Rect]
--]]
function CS.UnityEngine.RectTransformUtility:PixelAdjustRect(rectTransform,canvas) end
--[[
	@rect CS.UnityEngine.RectTransform
	@screenPoint CS.UnityEngine.Vector2
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.RectTransformUtility:RectangleContainsScreenPoint(rect,screenPoint) end
--[[
	@rect CS.UnityEngine.RectTransform
	@screenPoint CS.UnityEngine.Vector2
	@cam CS.UnityEngine.Camera
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.RectTransformUtility:RectangleContainsScreenPoint(rect,screenPoint,cam) end
--[[
	@rect CS.UnityEngine.RectTransform
	@screenPoint CS.UnityEngine.Vector2
	@cam CS.UnityEngine.Camera
	@offset CS.UnityEngine.Vector4
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.RectTransformUtility:RectangleContainsScreenPoint(rect,screenPoint,cam,offset) end
--[[
	@rect CS.UnityEngine.RectTransform
	@screenPoint CS.UnityEngine.Vector2
	@cam CS.UnityEngine.Camera
	@worldPoint CS.UnityEngine.Vector3&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.RectTransformUtility:ScreenPointToWorldPointInRectangle(rect,screenPoint,cam,worldPoint) end
--[[
	@rect CS.UnityEngine.RectTransform
	@screenPoint CS.UnityEngine.Vector2
	@cam CS.UnityEngine.Camera
	@localPoint CS.UnityEngine.Vector2&
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.RectTransformUtility:ScreenPointToLocalPointInRectangle(rect,screenPoint,cam,localPoint) end
--[[
	@cam CS.UnityEngine.Camera
	@screenPos CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Ray]
--]]
function CS.UnityEngine.RectTransformUtility:ScreenPointToRay(cam,screenPos) end
--[[
	@cam CS.UnityEngine.Camera
	@worldPoint CS.UnityEngine.Vector3
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.RectTransformUtility:WorldToScreenPoint(cam,worldPoint) end
--[[
	@root CS.UnityEngine.Transform
	@child CS.UnityEngine.Transform
	@return: [luaIde#CS.UnityEngine.Bounds]
--]]
function CS.UnityEngine.RectTransformUtility:CalculateRelativeRectTransformBounds(root,child) end
--[[
	@trans CS.UnityEngine.Transform
	@return: [luaIde#CS.UnityEngine.Bounds]
--]]
function CS.UnityEngine.RectTransformUtility:CalculateRelativeRectTransformBounds(trans) end
--[[
	@rect CS.UnityEngine.RectTransform
	@axis CS.System.Int32
	@keepPositioning CS.System.Boolean
	@recursive CS.System.Boolean
--]]
function CS.UnityEngine.RectTransformUtility:FlipLayoutOnAxis(rect,axis,keepPositioning,recursive) end
--[[
	@rect CS.UnityEngine.RectTransform
	@keepPositioning CS.System.Boolean
	@recursive CS.System.Boolean
--]]
function CS.UnityEngine.RectTransformUtility:FlipLayoutAxes(rect,keepPositioning,recursive) end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.UnityEngine.UI.Extensions.UIFlippable = {}
--[[
	@return: [luaIde#CS.UnityEngine.UI.Extensions.UIFlippable]
]]
function CS.UnityEngine.UI.Extensions.UIFlippable() end
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Extensions.UIFlippable.horizontal = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Extensions.UIFlippable.vertical = nil
--[[
	@verts CS.UnityEngine.UI.VertexHelper
--]]
function CS.UnityEngine.UI.Extensions.UIFlippable:ModifyMesh(verts) end
--[[
	@mesh CS.UnityEngine.Mesh
--]]
function CS.UnityEngine.UI.Extensions.UIFlippable:ModifyMesh(mesh) end

--@SuperType [luaIde#CS.System.Enum]
CS.UnityEngine.RenderMode = {}
--[[
	CS.UnityEngine.RenderMode
	 Get 	 Set 
--]]
CS.UnityEngine.RenderMode.ScreenSpaceOverlay = 0
--[[
	CS.UnityEngine.RenderMode
	 Get 	 Set 
--]]
CS.UnityEngine.RenderMode.ScreenSpaceCamera = 1
--[[
	CS.UnityEngine.RenderMode
	 Get 	 Set 
--]]
CS.UnityEngine.RenderMode.WorldSpace = 2

--@SuperType [luaIde#CS.System.Object]
CS.ShaderStudio.PostEffectsManager = {}
--[[
	@RefType [luaIde#CS.ShaderStudio.PostEffectsManager]
	 Get 
--]]
CS.ShaderStudio.PostEffectsManager.Instance = nil
--[[
	@cam CS.UnityEngine.Camera
	@return: CS.ShaderStudio.ImageEffect.YSPostEffectProxy
--]]
function CS.ShaderStudio.PostEffectsManager:CreatePostEffectProxy(cam) end
--[[
	@cam CS.UnityEngine.Camera
	@return: CS.ShaderStudio.ImageEffect.YSPostEffectProxy
--]]
function CS.ShaderStudio.PostEffectsManager:GetPostEffectProxy(cam) end
--[[
	@cam CS.UnityEngine.Camera
	@fadeInTime CS.System.Single
--]]
function CS.ShaderStudio.PostEffectsManager:StartRadialBlur(cam,fadeInTime) end
--[[
	@fadeOutTime CS.System.Single
--]]
function CS.ShaderStudio.PostEffectsManager:EndRadialBlur(fadeOutTime) end
--[[
	@enable CS.System.Boolean
	@cam CS.UnityEngine.Camera
	@focalDistance CS.System.Single
	@Smoothness CS.System.Single
	@BlurWidth CS.System.Single
--]]
function CS.ShaderStudio.PostEffectsManager:SetDOFEnabled(enable,cam,focalDistance,Smoothness,BlurWidth) end
--[[
	@enable CS.System.Boolean
	@cam CS.UnityEngine.Camera
--]]
function CS.ShaderStudio.PostEffectsManager:SetVignettingEnabled(enable,cam) end
--[[
	@cam CS.UnityEngine.Camera
--]]
function CS.ShaderStudio.PostEffectsManager:DisableAllPostEffects(cam) end
--[[
	@cam CS.UnityEngine.Camera
--]]
function CS.ShaderStudio.PostEffectsManager:RevertAllPostEffects(cam) end
function CS.ShaderStudio.PostEffectsManager:Update() end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.TableDestruction = {}
--[[
	@return: [luaIde#CS.TableDestruction]
]]
function CS.TableDestruction() end
--[[
	@radius CS.System.Single
	@force CS.System.Single
--]]
function CS.TableDestruction:Radius(radius,force) end
--[[
	@x CS.System.Single
	@y CS.System.Single
	@z CS.System.Single
	@force CS.System.Single
--]]
function CS.TableDestruction:Rect(x,y,z,force) end
--[[
	@radius CS.System.Single
	@angle CS.System.Single
	@force CS.System.Single
--]]
function CS.TableDestruction:Sector(radius,angle,force) end
function CS.TableDestruction:Destroy() end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.SystemInfo = {}
--[[
	@return: [luaIde#CS.UnityEngine.SystemInfo]
]]
function CS.UnityEngine.SystemInfo() end
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.SystemInfo.batteryLevel = nil
--[[
	CS.UnityEngine.BatteryStatus
	 Get 
--]]
CS.UnityEngine.SystemInfo.batteryStatus = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.SystemInfo.operatingSystem = nil
--[[
	CS.UnityEngine.OperatingSystemFamily
	 Get 
--]]
CS.UnityEngine.SystemInfo.operatingSystemFamily = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.SystemInfo.processorType = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.processorFrequency = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.processorCount = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.systemMemorySize = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.SystemInfo.deviceUniqueIdentifier = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.SystemInfo.deviceName = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.SystemInfo.deviceModel = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsAccelerometer = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsGyroscope = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsLocationService = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsVibration = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsAudio = nil
--[[
	CS.UnityEngine.DeviceType
	 Get 
--]]
CS.UnityEngine.SystemInfo.deviceType = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.graphicsMemorySize = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.SystemInfo.graphicsDeviceName = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.SystemInfo.graphicsDeviceVendor = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.graphicsDeviceID = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.graphicsDeviceVendorID = nil
--[[
	CS.UnityEngine.Rendering.GraphicsDeviceType
	 Get 
--]]
CS.UnityEngine.SystemInfo.graphicsDeviceType = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.graphicsUVStartsAtTop = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.SystemInfo.graphicsDeviceVersion = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.graphicsShaderLevel = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.graphicsMultiThreaded = nil
--[[
	CS.UnityEngine.Rendering.RenderingThreadingMode
	 Get 
--]]
CS.UnityEngine.SystemInfo.renderingThreadingMode = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.hasHiddenSurfaceRemovalOnGPU = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.hasDynamicUniformArrayIndexingInFragmentShaders = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsShadows = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsRawShadowDepthSampling = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsMotionVectors = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supports3DTextures = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsCompressed3DTextures = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supports2DArrayTextures = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supports3DRenderTextures = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsCubemapArrayTextures = nil
--[[
	CS.UnityEngine.Rendering.CopyTextureSupport
	 Get 
--]]
CS.UnityEngine.SystemInfo.copyTextureSupport = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsComputeShaders = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsConservativeRaster = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsMultiview = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsGeometryShaders = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsTessellationShaders = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsRenderTargetArrayIndexFromVertexShader = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsInstancing = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsHardwareQuadTopology = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supports32bitsIndexBuffer = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsSparseTextures = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportedRenderTargetCount = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsSeparatedRenderTargetsBlend = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportedRandomWriteTargetCount = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsMultisampledTextures = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsMultisampled2DArrayTextures = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsMultisampleAutoResolve = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsTextureWrapMirrorOnce = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.usesReversedZBuffer = nil
--[[
	CS.UnityEngine.NPOTSupport
	 Get 
--]]
CS.UnityEngine.SystemInfo.npotSupport = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxTextureSize = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxCubemapSize = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxComputeBufferInputsVertex = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxComputeBufferInputsFragment = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxComputeBufferInputsGeometry = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxComputeBufferInputsDomain = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxComputeBufferInputsHull = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxComputeBufferInputsCompute = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxComputeWorkGroupSize = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxComputeWorkGroupSizeX = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxComputeWorkGroupSizeY = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.maxComputeWorkGroupSizeZ = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsAsyncCompute = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsGpuRecorder = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsGraphicsFence = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsAsyncGPUReadback = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsRayTracing = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsSetConstantBuffer = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.SystemInfo.constantBufferOffsetAlignment = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.hasMipMaxLevel = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsMipStreaming = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.usesLoadStoreActions = nil
--[[
	CS.UnityEngine.HDRDisplaySupportFlags
	 Get 
--]]
CS.UnityEngine.SystemInfo.hdrDisplaySupportFlags = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.SystemInfo.supportsStoreAndResolveAction = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.SystemInfo.unsupportedIdentifier = nil
--[[
	@format CS.UnityEngine.RenderTextureFormat
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.SystemInfo:SupportsRenderTextureFormat(format) end
--[[
	@format CS.UnityEngine.RenderTextureFormat
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.SystemInfo:SupportsBlendingOnRenderTextureFormat(format) end
--[[
	@format CS.UnityEngine.TextureFormat
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.SystemInfo:SupportsTextureFormat(format) end
--[[
	@format CS.UnityEngine.Rendering.VertexAttributeFormat
	@dimension CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.SystemInfo:SupportsVertexAttributeFormat(format,dimension) end
--[[
	@format CS.UnityEngine.Experimental.Rendering.GraphicsFormat
	@usage CS.UnityEngine.Experimental.Rendering.FormatUsage
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.SystemInfo:IsFormatSupported(format,usage) end
--[[
	@format CS.UnityEngine.Experimental.Rendering.GraphicsFormat
	@usage CS.UnityEngine.Experimental.Rendering.FormatUsage
	@return: CS.UnityEngine.Experimental.Rendering.GraphicsFormat
--]]
function CS.UnityEngine.SystemInfo:GetCompatibleFormat(format,usage) end
--[[
	@format CS.UnityEngine.Experimental.Rendering.DefaultFormat
	@return: CS.UnityEngine.Experimental.Rendering.GraphicsFormat
--]]
function CS.UnityEngine.SystemInfo:GetGraphicsFormat(format) end
--[[
	@desc CS.UnityEngine.RenderTextureDescriptor
	@return: CS.System.Int32
--]]
function CS.UnityEngine.SystemInfo:GetRenderTextureSupportedMSAASampleCount(desc) end

--@SuperType [luaIde#CS.System.Object]
CS.ServerConfig = {}
--[[
	@return: [luaIde#CS.ServerConfig]
]]
function CS.ServerConfig() end
--[[
	CS.System.String
	 Get 
--]]
CS.ServerConfig.SeverConfigUrl = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.ServerConfig.Ip = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.ServerConfig.Port = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.ServerConfig.PlatId = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.ServerConfig.DitchId = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.ServerConfig.DateTicks = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.ServerConfig.UpdateNotice = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.ServerConfig.ServerList = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.ServerConfig.Resource = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.ServerConfig.Client = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.ServerConfig.ClientVersion = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.ServerConfig.ResVersion = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.ServerConfig.ClientBiUrl = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.ServerConfig.ClientMsgUrl = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.ServerConfig.PostWebRequestURL = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.ServerConfig.Flags = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.ServerConfig.ServerConfigParams = nil
--[[
	@text CS.System.String
--]]
function CS.ServerConfig:ReadAppConfig(text) end
--[[
	@text CS.System.String
--]]
function CS.ServerConfig:ReadServerConfig(text) end
--[[
	@ip CS.System.String
	@port CS.System.Int32
--]]
function CS.ServerConfig:ChangeServerInfo(ip,port) end
--[[
	@account CS.System.String
	@key CS.System.String
	@return: CS.System.String
--]]
function CS.ServerConfig:GetMD5HashFromString(account,key) end

--@SuperType [luaIde#CS.UnityEngine.Object]
CS.UnityEngine.U2D.SpriteAtlas = {}
--[[
	@return: [luaIde#CS.UnityEngine.U2D.SpriteAtlas]
]]
function CS.UnityEngine.U2D.SpriteAtlas() end
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.U2D.SpriteAtlas.isVariant = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.U2D.SpriteAtlas.tag = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.U2D.SpriteAtlas.spriteCount = nil
--[[
	@sprite CS.UnityEngine.Sprite
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.U2D.SpriteAtlas:CanBindTo(sprite) end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.Sprite]
--]]
function CS.UnityEngine.U2D.SpriteAtlas:GetSprite(name) end
--[[
	@sprites CS.UnityEngine.Sprite<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.U2D.SpriteAtlas:GetSprites(sprites) end
--[[
	@sprites CS.UnityEngine.Sprite<>
	@name CS.System.String
	@return: CS.System.Int32
--]]
function CS.UnityEngine.U2D.SpriteAtlas:GetSprites(sprites,name) end

--@SuperType [luaIde#CS.UnityEngine.Object]
CS.UnityEngine.Sprite = {}
--[[
	@RefType [luaIde#CS.UnityEngine.Bounds]
	 Get 
--]]
CS.UnityEngine.Sprite.bounds = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Rect]
	 Get 
--]]
CS.UnityEngine.Sprite.rect = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector4]
	 Get 
--]]
CS.UnityEngine.Sprite.border = nil
--[[
	CS.UnityEngine.Texture2D
	 Get 
--]]
CS.UnityEngine.Sprite.texture = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Sprite.pixelsPerUnit = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Sprite.spriteAtlasTextureScale = nil
--[[
	CS.UnityEngine.Texture2D
	 Get 
--]]
CS.UnityEngine.Sprite.associatedAlphaSplitTexture = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Sprite.pivot = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Sprite.packed = nil
--[[
	CS.UnityEngine.SpritePackingMode
	 Get 
--]]
CS.UnityEngine.Sprite.packingMode = nil
--[[
	CS.UnityEngine.SpritePackingRotation
	 Get 
--]]
CS.UnityEngine.Sprite.packingRotation = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Rect]
	 Get 
--]]
CS.UnityEngine.Sprite.textureRect = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Sprite.textureRectOffset = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2<>]
	 Get 
--]]
CS.UnityEngine.Sprite.vertices = nil
--[[
	CS.System.UInt16<>
	 Get 
--]]
CS.UnityEngine.Sprite.triangles = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2<>]
	 Get 
--]]
CS.UnityEngine.Sprite.uv = nil
function CS.UnityEngine.Sprite:GetPhysicsShapeCount() end
--[[
	@shapeIdx CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Sprite:GetPhysicsShapePointCount(shapeIdx) end
--[[
	@shapeIdx CS.System.Int32
	@physicsShape CS.UnityEngine.Vector2<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Sprite:GetPhysicsShape(shapeIdx,physicsShape) end
--[[
	@physicsShapes CS.System.Collections.Generic.IList
--]]
function CS.UnityEngine.Sprite:OverridePhysicsShape(physicsShapes) end
--[[
	@vertices CS.UnityEngine.Vector2<>
	@triangles CS.System.UInt16<>
--]]
function CS.UnityEngine.Sprite:OverrideGeometry(vertices,triangles) end
--[[
	@texture CS.UnityEngine.Texture2D
	@rect CS.UnityEngine.Rect
	@pivot CS.UnityEngine.Vector2
	@pixelsPerUnit CS.System.Single
	@extrude CS.System.UInt32
	@meshType CS.UnityEngine.SpriteMeshType
	@border CS.UnityEngine.Vector4
	@generateFallbackPhysicsShape CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.Sprite]
--]]
function CS.UnityEngine.Sprite:Create(texture,rect,pivot,pixelsPerUnit,extrude,meshType,border,generateFallbackPhysicsShape) end
--[[
	@texture CS.UnityEngine.Texture2D
	@rect CS.UnityEngine.Rect
	@pivot CS.UnityEngine.Vector2
	@pixelsPerUnit CS.System.Single
	@extrude CS.System.UInt32
	@meshType CS.UnityEngine.SpriteMeshType
	@border CS.UnityEngine.Vector4
	@return: [luaIde#CS.UnityEngine.Sprite]
--]]
function CS.UnityEngine.Sprite:Create(texture,rect,pivot,pixelsPerUnit,extrude,meshType,border) end
--[[
	@texture CS.UnityEngine.Texture2D
	@rect CS.UnityEngine.Rect
	@pivot CS.UnityEngine.Vector2
	@pixelsPerUnit CS.System.Single
	@extrude CS.System.UInt32
	@meshType CS.UnityEngine.SpriteMeshType
	@return: [luaIde#CS.UnityEngine.Sprite]
--]]
function CS.UnityEngine.Sprite:Create(texture,rect,pivot,pixelsPerUnit,extrude,meshType) end
--[[
	@texture CS.UnityEngine.Texture2D
	@rect CS.UnityEngine.Rect
	@pivot CS.UnityEngine.Vector2
	@pixelsPerUnit CS.System.Single
	@extrude CS.System.UInt32
	@return: [luaIde#CS.UnityEngine.Sprite]
--]]
function CS.UnityEngine.Sprite:Create(texture,rect,pivot,pixelsPerUnit,extrude) end
--[[
	@texture CS.UnityEngine.Texture2D
	@rect CS.UnityEngine.Rect
	@pivot CS.UnityEngine.Vector2
	@pixelsPerUnit CS.System.Single
	@return: [luaIde#CS.UnityEngine.Sprite]
--]]
function CS.UnityEngine.Sprite:Create(texture,rect,pivot,pixelsPerUnit) end
--[[
	@texture CS.UnityEngine.Texture2D
	@rect CS.UnityEngine.Rect
	@pivot CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Sprite]
--]]
function CS.UnityEngine.Sprite:Create(texture,rect,pivot) end

--@SuperType [luaIde#CS.UnityEngine.UI.Selectable]
CS.UnityEngine.UI.Toggle = {}
--[[
	CS.UnityEngine.UI.ToggleGroup
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Toggle.group = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Toggle.isOn = nil
--[[
	CS.UnityEngine.UI.Toggle.ToggleTransition
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Toggle.toggleTransition = nil
--[[
	@RefType [luaIde#CS.UnityEngine.UI.Graphic]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Toggle.graphic = nil
--[[
	CS.UnityEngine.UI.Toggle.ToggleEvent
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Toggle.onValueChanged = nil
--[[
	@executing CS.UnityEngine.UI.CanvasUpdate
--]]
function CS.UnityEngine.UI.Toggle:Rebuild(executing) end
function CS.UnityEngine.UI.Toggle:LayoutComplete() end
function CS.UnityEngine.UI.Toggle:GraphicUpdateComplete() end
--[[
	@value CS.System.Boolean
--]]
function CS.UnityEngine.UI.Toggle:SetIsOnWithoutNotify(value) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.Toggle:OnPointerClick(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UnityEngine.UI.Toggle:OnSubmit(eventData) end

--@SuperType [luaIde#CS.UnityEngine.EventSystems.UIBehaviour]
CS.UnityEngine.UI.ScrollRect = {}
--[[
	@RefType [luaIde#CS.UnityEngine.RectTransform]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.content = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.horizontal = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.vertical = nil
--[[
	CS.UnityEngine.UI.ScrollRect.MovementType
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.movementType = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.elasticity = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.inertia = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.decelerationRate = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.scrollSensitivity = nil
--[[
	@RefType [luaIde#CS.UnityEngine.RectTransform]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.viewport = nil
--[[
	CS.UnityEngine.UI.Scrollbar
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.horizontalScrollbar = nil
--[[
	CS.UnityEngine.UI.Scrollbar
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.verticalScrollbar = nil
--[[
	CS.UnityEngine.UI.ScrollRect.ScrollbarVisibility
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.horizontalScrollbarVisibility = nil
--[[
	CS.UnityEngine.UI.ScrollRect.ScrollbarVisibility
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.verticalScrollbarVisibility = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.horizontalScrollbarSpacing = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.verticalScrollbarSpacing = nil
--[[
	CS.UnityEngine.UI.ScrollRect.ScrollRectEvent
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.onValueChanged = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.velocity = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.normalizedPosition = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.horizontalNormalizedPosition = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.ScrollRect.verticalNormalizedPosition = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.ScrollRect.minWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.ScrollRect.preferredWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.ScrollRect.flexibleWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.ScrollRect.minHeight = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.ScrollRect.preferredHeight = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.ScrollRect.flexibleHeight = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.UI.ScrollRect.layoutPriority = nil
--[[
	@executing CS.UnityEngine.UI.CanvasUpdate
--]]
function CS.UnityEngine.UI.ScrollRect:Rebuild(executing) end
function CS.UnityEngine.UI.ScrollRect:LayoutComplete() end
function CS.UnityEngine.UI.ScrollRect:GraphicUpdateComplete() end
function CS.UnityEngine.UI.ScrollRect:IsActive() end
function CS.UnityEngine.UI.ScrollRect:StopMovement() end
--[[
	@data CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.ScrollRect:OnScroll(data) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.ScrollRect:OnInitializePotentialDrag(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.ScrollRect:OnBeginDrag(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.ScrollRect:OnEndDrag(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.ScrollRect:OnDrag(eventData) end
function CS.UnityEngine.UI.ScrollRect:CalculateLayoutInputHorizontal() end
function CS.UnityEngine.UI.ScrollRect:CalculateLayoutInputVertical() end
function CS.UnityEngine.UI.ScrollRect:SetLayoutHorizontal() end
function CS.UnityEngine.UI.ScrollRect:SetLayoutVertical() end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.AssetsList = {}
--[[
	@return: [luaIde#CS.AssetsList]
]]
function CS.AssetsList() end
--[[
	@RefType [luaIde#CS.UnityEngine.Object<>]
	 Get 	 Set 
--]]
CS.AssetsList.Assets = nil

--@SuperType [luaIde#CS.UnityEngine.UI.Selectable]
CS.UnityEngine.UI.Slider = {}
--[[
	@RefType [luaIde#CS.UnityEngine.RectTransform]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Slider.fillRect = nil
--[[
	@RefType [luaIde#CS.UnityEngine.RectTransform]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Slider.handleRect = nil
--[[
	CS.UnityEngine.UI.Slider.Direction
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Slider.direction = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Slider.minValue = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Slider.maxValue = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Slider.wholeNumbers = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Slider.value = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Slider.normalizedValue = nil
--[[
	CS.UnityEngine.UI.Slider.SliderEvent
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Slider.onValueChanged = nil
--[[
	@input CS.System.Single
--]]
function CS.UnityEngine.UI.Slider:SetValueWithoutNotify(input) end
--[[
	@executing CS.UnityEngine.UI.CanvasUpdate
--]]
function CS.UnityEngine.UI.Slider:Rebuild(executing) end
function CS.UnityEngine.UI.Slider:LayoutComplete() end
function CS.UnityEngine.UI.Slider:GraphicUpdateComplete() end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.Slider:OnPointerDown(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.Slider:OnDrag(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.AxisEventData
--]]
function CS.UnityEngine.UI.Slider:OnMove(eventData) end
function CS.UnityEngine.UI.Slider:FindSelectableOnLeft() end
function CS.UnityEngine.UI.Slider:FindSelectableOnRight() end
function CS.UnityEngine.UI.Slider:FindSelectableOnUp() end
function CS.UnityEngine.UI.Slider:FindSelectableOnDown() end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.Slider:OnInitializePotentialDrag(eventData) end
--[[
	@direction CS.UnityEngine.UI.Slider.Direction
	@includeRectLayouts CS.System.Boolean
--]]
function CS.UnityEngine.UI.Slider:SetDirection(direction,includeRectLayouts) end

--@SuperType [luaIde#CS.System.Enum]
CS.UnityEngine.CameraClearFlags = {}
--[[
	CS.UnityEngine.CameraClearFlags
	 Get 	 Set 
--]]
CS.UnityEngine.CameraClearFlags.Skybox = 1
--[[
	CS.UnityEngine.CameraClearFlags
	 Get 	 Set 
--]]
CS.UnityEngine.CameraClearFlags.Color = 2
--[[
	CS.UnityEngine.CameraClearFlags
	 Get 	 Set 
--]]
CS.UnityEngine.CameraClearFlags.SolidColor = 2
--[[
	CS.UnityEngine.CameraClearFlags
	 Get 	 Set 
--]]
CS.UnityEngine.CameraClearFlags.Depth = 3
--[[
	CS.UnityEngine.CameraClearFlags
	 Get 	 Set 
--]]
CS.UnityEngine.CameraClearFlags.Nothing = 4

--@SuperType [luaIde#CS.UnityEngine.UI.MaskableGraphic]
CS.UnityEngine.UI.Image = {}
--[[
	@RefType [luaIde#CS.UnityEngine.Sprite]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.sprite = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Sprite]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.overrideSprite = nil
--[[
	CS.UnityEngine.UI.Image.Type
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.type = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.preserveAspect = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.fillCenter = nil
--[[
	CS.UnityEngine.UI.Image.FillMethod
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.fillMethod = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.fillAmount = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.fillClockwise = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.fillOrigin = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.alphaHitTestMinimumThreshold = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.useSpriteMesh = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Material]
	 Get 
--]]
CS.UnityEngine.UI.Image.defaultETC1GraphicMaterial = nil
--[[
	CS.UnityEngine.Texture
	 Get 
--]]
CS.UnityEngine.UI.Image.mainTexture = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.UI.Image.hasBorder = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.pixelsPerUnitMultiplier = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Image.pixelsPerUnit = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Material]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Image.material = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Image.minWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Image.preferredWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Image.flexibleWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Image.minHeight = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Image.preferredHeight = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Image.flexibleHeight = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.UI.Image.layoutPriority = nil
function CS.UnityEngine.UI.Image:DisableSpriteOptimizations() end
function CS.UnityEngine.UI.Image:OnBeforeSerialize() end
function CS.UnityEngine.UI.Image:OnAfterDeserialize() end
function CS.UnityEngine.UI.Image:SetNativeSize() end
function CS.UnityEngine.UI.Image:CalculateLayoutInputHorizontal() end
function CS.UnityEngine.UI.Image:CalculateLayoutInputVertical() end
--[[
	@screenPoint CS.UnityEngine.Vector2
	@eventCamera CS.UnityEngine.Camera
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.UI.Image:IsRaycastLocationValid(screenPoint,eventCamera) end

--@SuperType [luaIde#CS.UnityEngine.UI.Selectable]
CS.UnityEngine.UI.Button = {}
--[[
	CS.UnityEngine.UI.Button.ButtonClickedEvent
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Button.onClick = nil
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.Button:OnPointerClick(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UnityEngine.UI.Button:OnSubmit(eventData) end

--@SuperType [luaIde#CS.System.ValueType]
CS.System.DateTime = {}
--[[
	@ticks CS.System.Int64
	@return: [luaIde#CS.System.DateTime]
]]
function CS.System.DateTime(ticks) end
--[[
	@ticks CS.System.Int64
	@kind CS.System.DateTimeKind
	@return: [luaIde#CS.System.DateTime]
]]
function CS.System.DateTime(ticks,kind) end
--[[
	@year CS.System.Int32
	@month CS.System.Int32
	@day CS.System.Int32
	@return: [luaIde#CS.System.DateTime]
]]
function CS.System.DateTime(year,month,day) end
--[[
	@year CS.System.Int32
	@month CS.System.Int32
	@day CS.System.Int32
	@calendar CS.System.Globalization.Calendar
	@return: [luaIde#CS.System.DateTime]
]]
function CS.System.DateTime(year,month,day,calendar) end
--[[
	@year CS.System.Int32
	@month CS.System.Int32
	@day CS.System.Int32
	@hour CS.System.Int32
	@minute CS.System.Int32
	@second CS.System.Int32
	@return: [luaIde#CS.System.DateTime]
]]
function CS.System.DateTime(year,month,day,hour,minute,second) end
--[[
	@year CS.System.Int32
	@month CS.System.Int32
	@day CS.System.Int32
	@hour CS.System.Int32
	@minute CS.System.Int32
	@second CS.System.Int32
	@kind CS.System.DateTimeKind
	@return: [luaIde#CS.System.DateTime]
]]
function CS.System.DateTime(year,month,day,hour,minute,second,kind) end
--[[
	@year CS.System.Int32
	@month CS.System.Int32
	@day CS.System.Int32
	@hour CS.System.Int32
	@minute CS.System.Int32
	@second CS.System.Int32
	@calendar CS.System.Globalization.Calendar
	@return: [luaIde#CS.System.DateTime]
]]
function CS.System.DateTime(year,month,day,hour,minute,second,calendar) end
--[[
	@year CS.System.Int32
	@month CS.System.Int32
	@day CS.System.Int32
	@hour CS.System.Int32
	@minute CS.System.Int32
	@second CS.System.Int32
	@millisecond CS.System.Int32
	@return: [luaIde#CS.System.DateTime]
]]
function CS.System.DateTime(year,month,day,hour,minute,second,millisecond) end
--[[
	@year CS.System.Int32
	@month CS.System.Int32
	@day CS.System.Int32
	@hour CS.System.Int32
	@minute CS.System.Int32
	@second CS.System.Int32
	@millisecond CS.System.Int32
	@kind CS.System.DateTimeKind
	@return: [luaIde#CS.System.DateTime]
]]
function CS.System.DateTime(year,month,day,hour,minute,second,millisecond,kind) end
--[[
	@year CS.System.Int32
	@month CS.System.Int32
	@day CS.System.Int32
	@hour CS.System.Int32
	@minute CS.System.Int32
	@second CS.System.Int32
	@millisecond CS.System.Int32
	@calendar CS.System.Globalization.Calendar
	@return: [luaIde#CS.System.DateTime]
]]
function CS.System.DateTime(year,month,day,hour,minute,second,millisecond,calendar) end
--[[
	@year CS.System.Int32
	@month CS.System.Int32
	@day CS.System.Int32
	@hour CS.System.Int32
	@minute CS.System.Int32
	@second CS.System.Int32
	@millisecond CS.System.Int32
	@calendar CS.System.Globalization.Calendar
	@kind CS.System.DateTimeKind
	@return: [luaIde#CS.System.DateTime]
]]
function CS.System.DateTime(year,month,day,hour,minute,second,millisecond,calendar,kind) end
--[[
	@RefType [luaIde#CS.System.DateTime]
	 Get 
--]]
CS.System.DateTime.Date = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.System.DateTime.Day = nil
--[[
	CS.System.DayOfWeek
	 Get 
--]]
CS.System.DateTime.DayOfWeek = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.System.DateTime.DayOfYear = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.System.DateTime.Hour = nil
--[[
	CS.System.DateTimeKind
	 Get 
--]]
CS.System.DateTime.Kind = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.System.DateTime.Millisecond = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.System.DateTime.Minute = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.System.DateTime.Month = nil
--[[
	@RefType [luaIde#CS.System.DateTime]
	 Get 
--]]
CS.System.DateTime.Now = nil
--[[
	@RefType [luaIde#CS.System.DateTime]
	 Get 
--]]
CS.System.DateTime.UtcNow = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.System.DateTime.Second = nil
--[[
	CS.System.Int64
	 Get 
--]]
CS.System.DateTime.Ticks = nil
--[[
	CS.System.TimeSpan
	 Get 
--]]
CS.System.DateTime.TimeOfDay = nil
--[[
	@RefType [luaIde#CS.System.DateTime]
	 Get 
--]]
CS.System.DateTime.Today = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.System.DateTime.Year = nil
--[[
	@RefType [luaIde#CS.System.DateTime]
	 Get 	 Set 
--]]
CS.System.DateTime.MinValue = nil
--[[
	@RefType [luaIde#CS.System.DateTime]
	 Get 	 Set 
--]]
CS.System.DateTime.MaxValue = nil
--[[
	@value CS.System.TimeSpan
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:Add(value) end
--[[
	@value CS.System.Double
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:AddDays(value) end
--[[
	@value CS.System.Double
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:AddHours(value) end
--[[
	@value CS.System.Double
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:AddMilliseconds(value) end
--[[
	@value CS.System.Double
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:AddMinutes(value) end
--[[
	@months CS.System.Int32
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:AddMonths(months) end
--[[
	@value CS.System.Double
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:AddSeconds(value) end
--[[
	@value CS.System.Int64
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:AddTicks(value) end
--[[
	@value CS.System.Int32
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:AddYears(value) end
--[[
	@t1 CS.System.DateTime
	@t2 CS.System.DateTime
	@return: CS.System.Int32
--]]
function CS.System.DateTime:Compare(t1,t2) end
--[[
	@value CS.System.Object
	@return: CS.System.Int32
--]]
function CS.System.DateTime:CompareTo(value) end
--[[
	@value CS.System.DateTime
	@return: CS.System.Int32
--]]
function CS.System.DateTime:CompareTo(value) end
--[[
	@year CS.System.Int32
	@month CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.System.DateTime:DaysInMonth(year,month) end
--[[
	@value CS.System.Object
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:Equals(value) end
--[[
	@value CS.System.DateTime
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:Equals(value) end
--[[
	@t1 CS.System.DateTime
	@t2 CS.System.DateTime
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:Equals(t1,t2) end
--[[
	@dateData CS.System.Int64
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:FromBinary(dateData) end
--[[
	@fileTime CS.System.Int64
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:FromFileTime(fileTime) end
--[[
	@fileTime CS.System.Int64
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:FromFileTimeUtc(fileTime) end
--[[
	@d CS.System.Double
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:FromOADate(d) end
function CS.System.DateTime:IsDaylightSavingTime() end
--[[
	@value CS.System.DateTime
	@kind CS.System.DateTimeKind
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:SpecifyKind(value,kind) end
function CS.System.DateTime:ToBinary() end
function CS.System.DateTime:GetHashCode() end
--[[
	@year CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:IsLeapYear(year) end
--[[
	@s CS.System.String
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:Parse(s) end
--[[
	@s CS.System.String
	@provider CS.System.IFormatProvider
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:Parse(s,provider) end
--[[
	@s CS.System.String
	@provider CS.System.IFormatProvider
	@styles CS.System.Globalization.DateTimeStyles
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:Parse(s,provider,styles) end
--[[
	@s CS.System.String
	@format CS.System.String
	@provider CS.System.IFormatProvider
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:ParseExact(s,format,provider) end
--[[
	@s CS.System.String
	@format CS.System.String
	@provider CS.System.IFormatProvider
	@style CS.System.Globalization.DateTimeStyles
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:ParseExact(s,format,provider,style) end
--[[
	@s CS.System.String
	@formats CS.System.String<>
	@provider CS.System.IFormatProvider
	@style CS.System.Globalization.DateTimeStyles
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:ParseExact(s,formats,provider,style) end
--[[
	@value CS.System.DateTime
	@return: CS.System.TimeSpan
--]]
function CS.System.DateTime:Subtract(value) end
--[[
	@value CS.System.TimeSpan
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:Subtract(value) end
function CS.System.DateTime:ToOADate() end
function CS.System.DateTime:ToFileTime() end
function CS.System.DateTime:ToFileTimeUtc() end
function CS.System.DateTime:ToLocalTime() end
function CS.System.DateTime:ToLongDateString() end
function CS.System.DateTime:ToLongTimeString() end
function CS.System.DateTime:ToShortDateString() end
function CS.System.DateTime:ToShortTimeString() end
function CS.System.DateTime:ToString() end
--[[
	@format CS.System.String
	@return: CS.System.String
--]]
function CS.System.DateTime:ToString(format) end
--[[
	@provider CS.System.IFormatProvider
	@return: CS.System.String
--]]
function CS.System.DateTime:ToString(provider) end
--[[
	@format CS.System.String
	@provider CS.System.IFormatProvider
	@return: CS.System.String
--]]
function CS.System.DateTime:ToString(format,provider) end
function CS.System.DateTime:ToUniversalTime() end
--[[
	@s CS.System.String
	@result CS.System.DateTime&
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:TryParse(s,result) end
--[[
	@s CS.System.String
	@provider CS.System.IFormatProvider
	@styles CS.System.Globalization.DateTimeStyles
	@result CS.System.DateTime&
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:TryParse(s,provider,styles,result) end
--[[
	@s CS.System.String
	@format CS.System.String
	@provider CS.System.IFormatProvider
	@style CS.System.Globalization.DateTimeStyles
	@result CS.System.DateTime&
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:TryParseExact(s,format,provider,style,result) end
--[[
	@s CS.System.String
	@formats CS.System.String<>
	@provider CS.System.IFormatProvider
	@style CS.System.Globalization.DateTimeStyles
	@result CS.System.DateTime&
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:TryParseExact(s,formats,provider,style,result) end
--[[
	@d CS.System.DateTime
	@t CS.System.TimeSpan
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:op_Addition(d,t) end
--[[
	@d CS.System.DateTime
	@t CS.System.TimeSpan
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.DateTime:op_Subtraction(d,t) end
--[[
	@d1 CS.System.DateTime
	@d2 CS.System.DateTime
	@return: CS.System.TimeSpan
--]]
function CS.System.DateTime:op_Subtraction(d1,d2) end
--[[
	@d1 CS.System.DateTime
	@d2 CS.System.DateTime
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:op_Equality(d1,d2) end
--[[
	@d1 CS.System.DateTime
	@d2 CS.System.DateTime
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:op_Inequality(d1,d2) end
--[[
	@t1 CS.System.DateTime
	@t2 CS.System.DateTime
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:op_LessThan(t1,t2) end
--[[
	@t1 CS.System.DateTime
	@t2 CS.System.DateTime
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:op_LessThanOrEqual(t1,t2) end
--[[
	@t1 CS.System.DateTime
	@t2 CS.System.DateTime
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:op_GreaterThan(t1,t2) end
--[[
	@t1 CS.System.DateTime
	@t2 CS.System.DateTime
	@return: CS.System.Boolean
--]]
function CS.System.DateTime:op_GreaterThanOrEqual(t1,t2) end
function CS.System.DateTime:GetDateTimeFormats() end
--[[
	@provider CS.System.IFormatProvider
	@return: CS.System.String<>
--]]
function CS.System.DateTime:GetDateTimeFormats(provider) end
--[[
	@format CS.System.Char
	@return: CS.System.String<>
--]]
function CS.System.DateTime:GetDateTimeFormats(format) end
--[[
	@format CS.System.Char
	@provider CS.System.IFormatProvider
	@return: CS.System.String<>
--]]
function CS.System.DateTime:GetDateTimeFormats(format,provider) end
function CS.System.DateTime:GetTypeCode() end

--@SuperType [luaIde#CS.UnityEngine.Object]
CS.UnityEngine.Material = {}
--[[
	@shader CS.UnityEngine.Shader
	@return: [luaIde#CS.UnityEngine.Material]
]]
function CS.UnityEngine.Material(shader) end
--[[
	@source CS.UnityEngine.Material
	@return: [luaIde#CS.UnityEngine.Material]
]]
function CS.UnityEngine.Material(source) end
--[[
	@contents CS.System.String
	@return: [luaIde#CS.UnityEngine.Material]
]]
function CS.UnityEngine.Material(contents) end
--[[
	CS.UnityEngine.Shader
	 Get 	 Set 
--]]
CS.UnityEngine.Material.shader = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 	 Set 
--]]
CS.UnityEngine.Material.color = nil
--[[
	CS.UnityEngine.Texture
	 Get 	 Set 
--]]
CS.UnityEngine.Material.mainTexture = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Material.mainTextureOffset = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Material.mainTextureScale = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Material.renderQueue = nil
--[[
	CS.UnityEngine.MaterialGlobalIlluminationFlags
	 Get 	 Set 
--]]
CS.UnityEngine.Material.globalIlluminationFlags = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Material.doubleSidedGI = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Material.enableInstancing = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Material.passCount = nil
--[[
	CS.System.String<>
	 Get 	 Set 
--]]
CS.UnityEngine.Material.shaderKeywords = nil
--[[
	@scriptContents CS.System.String
	@return: [luaIde#CS.UnityEngine.Material]
--]]
function CS.UnityEngine.Material:Create(scriptContents) end
--[[
	@nameID CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Material:HasProperty(nameID) end
--[[
	@name CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Material:HasProperty(name) end
--[[
	@keyword CS.System.String
--]]
function CS.UnityEngine.Material:EnableKeyword(keyword) end
--[[
	@keyword CS.System.String
--]]
function CS.UnityEngine.Material:DisableKeyword(keyword) end
--[[
	@keyword CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Material:IsKeywordEnabled(keyword) end
--[[
	@passName CS.System.String
	@enabled CS.System.Boolean
--]]
function CS.UnityEngine.Material:SetShaderPassEnabled(passName,enabled) end
--[[
	@passName CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Material:GetShaderPassEnabled(passName) end
--[[
	@pass CS.System.Int32
	@return: CS.System.String
--]]
function CS.UnityEngine.Material:GetPassName(pass) end
--[[
	@passName CS.System.String
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Material:FindPass(passName) end
--[[
	@tag CS.System.String
	@val CS.System.String
--]]
function CS.UnityEngine.Material:SetOverrideTag(tag,val) end
--[[
	@tag CS.System.String
	@searchFallbacks CS.System.Boolean
	@defaultValue CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.Material:GetTag(tag,searchFallbacks,defaultValue) end
--[[
	@tag CS.System.String
	@searchFallbacks CS.System.Boolean
	@return: CS.System.String
--]]
function CS.UnityEngine.Material:GetTag(tag,searchFallbacks) end
--[[
	@start CS.UnityEngine.Material
	@end_ CS.UnityEngine.Material
	@t CS.System.Single
--]]
function CS.UnityEngine.Material:Lerp(start,end_,t) end
--[[
	@pass CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Material:SetPass(pass) end
--[[
	@mat CS.UnityEngine.Material
--]]
function CS.UnityEngine.Material:CopyPropertiesFromMaterial(mat) end
function CS.UnityEngine.Material:ComputeCRC() end
function CS.UnityEngine.Material:GetTexturePropertyNames() end
function CS.UnityEngine.Material:GetTexturePropertyNameIDs() end
--[[
	@outNames CS.System.String<>
--]]
function CS.UnityEngine.Material:GetTexturePropertyNames(outNames) end
--[[
	@outNames CS.System.Int32<>
--]]
function CS.UnityEngine.Material:GetTexturePropertyNameIDs(outNames) end
--[[
	@name CS.System.String
	@value CS.System.Single
--]]
function CS.UnityEngine.Material:SetFloat(name,value) end
--[[
	@nameID CS.System.Int32
	@value CS.System.Single
--]]
function CS.UnityEngine.Material:SetFloat(nameID,value) end
--[[
	@name CS.System.String
	@value CS.System.Int32
--]]
function CS.UnityEngine.Material:SetInt(name,value) end
--[[
	@nameID CS.System.Int32
	@value CS.System.Int32
--]]
function CS.UnityEngine.Material:SetInt(nameID,value) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.Color
--]]
function CS.UnityEngine.Material:SetColor(name,value) end
--[[
	@nameID CS.System.Int32
	@value CS.UnityEngine.Color
--]]
function CS.UnityEngine.Material:SetColor(nameID,value) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.Vector4
--]]
function CS.UnityEngine.Material:SetVector(name,value) end
--[[
	@nameID CS.System.Int32
	@value CS.UnityEngine.Vector4
--]]
function CS.UnityEngine.Material:SetVector(nameID,value) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Material:SetMatrix(name,value) end
--[[
	@nameID CS.System.Int32
	@value CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Material:SetMatrix(nameID,value) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.Texture
--]]
function CS.UnityEngine.Material:SetTexture(name,value) end
--[[
	@nameID CS.System.Int32
	@value CS.UnityEngine.Texture
--]]
function CS.UnityEngine.Material:SetTexture(nameID,value) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.RenderTexture
	@element CS.UnityEngine.Rendering.RenderTextureSubElement
--]]
function CS.UnityEngine.Material:SetTexture(name,value,element) end
--[[
	@nameID CS.System.Int32
	@value CS.UnityEngine.RenderTexture
	@element CS.UnityEngine.Rendering.RenderTextureSubElement
--]]
function CS.UnityEngine.Material:SetTexture(nameID,value,element) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.ComputeBuffer
--]]
function CS.UnityEngine.Material:SetBuffer(name,value) end
--[[
	@nameID CS.System.Int32
	@value CS.UnityEngine.ComputeBuffer
--]]
function CS.UnityEngine.Material:SetBuffer(nameID,value) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.GraphicsBuffer
--]]
function CS.UnityEngine.Material:SetBuffer(name,value) end
--[[
	@nameID CS.System.Int32
	@value CS.UnityEngine.GraphicsBuffer
--]]
function CS.UnityEngine.Material:SetBuffer(nameID,value) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.ComputeBuffer
	@offset CS.System.Int32
	@size CS.System.Int32
--]]
function CS.UnityEngine.Material:SetConstantBuffer(name,value,offset,size) end
--[[
	@nameID CS.System.Int32
	@value CS.UnityEngine.ComputeBuffer
	@offset CS.System.Int32
	@size CS.System.Int32
--]]
function CS.UnityEngine.Material:SetConstantBuffer(nameID,value,offset,size) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.GraphicsBuffer
	@offset CS.System.Int32
	@size CS.System.Int32
--]]
function CS.UnityEngine.Material:SetConstantBuffer(name,value,offset,size) end
--[[
	@nameID CS.System.Int32
	@value CS.UnityEngine.GraphicsBuffer
	@offset CS.System.Int32
	@size CS.System.Int32
--]]
function CS.UnityEngine.Material:SetConstantBuffer(nameID,value,offset,size) end
--[[
	@name CS.System.String
	@values CS.System.Single<>
--]]
function CS.UnityEngine.Material:SetFloatArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.System.Single<>
--]]
function CS.UnityEngine.Material:SetFloatArray(nameID,values) end
--[[
	@name CS.System.String
	@values CS.System.Single<>
--]]
function CS.UnityEngine.Material:SetFloatArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.System.Single<>
--]]
function CS.UnityEngine.Material:SetFloatArray(nameID,values) end
--[[
	@name CS.System.String
	@values CS.UnityEngine.Color<>
--]]
function CS.UnityEngine.Material:SetColorArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.UnityEngine.Color<>
--]]
function CS.UnityEngine.Material:SetColorArray(nameID,values) end
--[[
	@name CS.System.String
	@values CS.UnityEngine.Color<>
--]]
function CS.UnityEngine.Material:SetColorArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.UnityEngine.Color<>
--]]
function CS.UnityEngine.Material:SetColorArray(nameID,values) end
--[[
	@name CS.System.String
	@values CS.UnityEngine.Vector4<>
--]]
function CS.UnityEngine.Material:SetVectorArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.UnityEngine.Vector4<>
--]]
function CS.UnityEngine.Material:SetVectorArray(nameID,values) end
--[[
	@name CS.System.String
	@values CS.UnityEngine.Vector4<>
--]]
function CS.UnityEngine.Material:SetVectorArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.UnityEngine.Vector4<>
--]]
function CS.UnityEngine.Material:SetVectorArray(nameID,values) end
--[[
	@name CS.System.String
	@values CS.UnityEngine.Matrix4x4<>
--]]
function CS.UnityEngine.Material:SetMatrixArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.UnityEngine.Matrix4x4<>
--]]
function CS.UnityEngine.Material:SetMatrixArray(nameID,values) end
--[[
	@name CS.System.String
	@values CS.UnityEngine.Matrix4x4<>
--]]
function CS.UnityEngine.Material:SetMatrixArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.UnityEngine.Matrix4x4<>
--]]
function CS.UnityEngine.Material:SetMatrixArray(nameID,values) end
--[[
	@name CS.System.String
	@return: CS.System.Single
--]]
function CS.UnityEngine.Material:GetFloat(name) end
--[[
	@nameID CS.System.Int32
	@return: CS.System.Single
--]]
function CS.UnityEngine.Material:GetFloat(nameID) end
--[[
	@name CS.System.String
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Material:GetInt(name) end
--[[
	@nameID CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Material:GetInt(nameID) end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Material:GetColor(name) end
--[[
	@nameID CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Color]
--]]
function CS.UnityEngine.Material:GetColor(nameID) end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Material:GetVector(name) end
--[[
	@nameID CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Vector4]
--]]
function CS.UnityEngine.Material:GetVector(nameID) end
--[[
	@name CS.System.String
	@return: CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Material:GetMatrix(name) end
--[[
	@nameID CS.System.Int32
	@return: CS.UnityEngine.Matrix4x4
--]]
function CS.UnityEngine.Material:GetMatrix(nameID) end
--[[
	@name CS.System.String
	@return: CS.UnityEngine.Texture
--]]
function CS.UnityEngine.Material:GetTexture(name) end
--[[
	@nameID CS.System.Int32
	@return: CS.UnityEngine.Texture
--]]
function CS.UnityEngine.Material:GetTexture(nameID) end
--[[
	@name CS.System.String
	@return: CS.System.Single<>
--]]
function CS.UnityEngine.Material:GetFloatArray(name) end
--[[
	@nameID CS.System.Int32
	@return: CS.System.Single<>
--]]
function CS.UnityEngine.Material:GetFloatArray(nameID) end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.Color<>]
--]]
function CS.UnityEngine.Material:GetColorArray(name) end
--[[
	@nameID CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Color<>]
--]]
function CS.UnityEngine.Material:GetColorArray(nameID) end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.Vector4<>]
--]]
function CS.UnityEngine.Material:GetVectorArray(name) end
--[[
	@nameID CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Vector4<>]
--]]
function CS.UnityEngine.Material:GetVectorArray(nameID) end
--[[
	@name CS.System.String
	@return: CS.UnityEngine.Matrix4x4<>
--]]
function CS.UnityEngine.Material:GetMatrixArray(name) end
--[[
	@nameID CS.System.Int32
	@return: CS.UnityEngine.Matrix4x4<>
--]]
function CS.UnityEngine.Material:GetMatrixArray(nameID) end
--[[
	@name CS.System.String
	@values CS.System.Single<>
--]]
function CS.UnityEngine.Material:GetFloatArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.System.Single<>
--]]
function CS.UnityEngine.Material:GetFloatArray(nameID,values) end
--[[
	@name CS.System.String
	@values CS.UnityEngine.Color<>
--]]
function CS.UnityEngine.Material:GetColorArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.UnityEngine.Color<>
--]]
function CS.UnityEngine.Material:GetColorArray(nameID,values) end
--[[
	@name CS.System.String
	@values CS.UnityEngine.Vector4<>
--]]
function CS.UnityEngine.Material:GetVectorArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.UnityEngine.Vector4<>
--]]
function CS.UnityEngine.Material:GetVectorArray(nameID,values) end
--[[
	@name CS.System.String
	@values CS.UnityEngine.Matrix4x4<>
--]]
function CS.UnityEngine.Material:GetMatrixArray(name,values) end
--[[
	@nameID CS.System.Int32
	@values CS.UnityEngine.Matrix4x4<>
--]]
function CS.UnityEngine.Material:GetMatrixArray(nameID,values) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.Vector2
--]]
function CS.UnityEngine.Material:SetTextureOffset(name,value) end
--[[
	@nameID CS.System.Int32
	@value CS.UnityEngine.Vector2
--]]
function CS.UnityEngine.Material:SetTextureOffset(nameID,value) end
--[[
	@name CS.System.String
	@value CS.UnityEngine.Vector2
--]]
function CS.UnityEngine.Material:SetTextureScale(name,value) end
--[[
	@nameID CS.System.Int32
	@value CS.UnityEngine.Vector2
--]]
function CS.UnityEngine.Material:SetTextureScale(nameID,value) end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Material:GetTextureOffset(name) end
--[[
	@nameID CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Material:GetTextureOffset(nameID) end
--[[
	@name CS.System.String
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Material:GetTextureScale(name) end
--[[
	@nameID CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.Material:GetTextureScale(nameID) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.PlayerPrefs = {}
--[[
	@return: [luaIde#CS.UnityEngine.PlayerPrefs]
]]
function CS.UnityEngine.PlayerPrefs() end
--[[
	@key CS.System.String
	@value CS.System.Int32
--]]
function CS.UnityEngine.PlayerPrefs:SetInt(key,value) end
--[[
	@key CS.System.String
	@defaultValue CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.UnityEngine.PlayerPrefs:GetInt(key,defaultValue) end
--[[
	@key CS.System.String
	@return: CS.System.Int32
--]]
function CS.UnityEngine.PlayerPrefs:GetInt(key) end
--[[
	@key CS.System.String
	@value CS.System.Single
--]]
function CS.UnityEngine.PlayerPrefs:SetFloat(key,value) end
--[[
	@key CS.System.String
	@defaultValue CS.System.Single
	@return: CS.System.Single
--]]
function CS.UnityEngine.PlayerPrefs:GetFloat(key,defaultValue) end
--[[
	@key CS.System.String
	@return: CS.System.Single
--]]
function CS.UnityEngine.PlayerPrefs:GetFloat(key) end
--[[
	@key CS.System.String
	@value CS.System.String
--]]
function CS.UnityEngine.PlayerPrefs:SetString(key,value) end
--[[
	@key CS.System.String
	@defaultValue CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.PlayerPrefs:GetString(key,defaultValue) end
--[[
	@key CS.System.String
	@return: CS.System.String
--]]
function CS.UnityEngine.PlayerPrefs:GetString(key) end
--[[
	@key CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.PlayerPrefs:HasKey(key) end
--[[
	@key CS.System.String
--]]
function CS.UnityEngine.PlayerPrefs:DeleteKey(key) end
function CS.UnityEngine.PlayerPrefs:DeleteAll() end
function CS.UnityEngine.PlayerPrefs:Save() end

--@SuperType [luaIde#CS.UnityEngine.Behaviour]
CS.UnityEngine.Canvas = {}
--[[
	@return: [luaIde#CS.UnityEngine.Canvas]
]]
function CS.UnityEngine.Canvas() end
--[[
	CS.UnityEngine.RenderMode
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.renderMode = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Canvas.isRootCanvas = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Rect]
	 Get 
--]]
CS.UnityEngine.Canvas.pixelRect = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.scaleFactor = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.referencePixelsPerUnit = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.overridePixelPerfect = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.pixelPerfect = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.planeDistance = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Canvas.renderOrder = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.overrideSorting = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.sortingOrder = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.targetDisplay = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.sortingLayerID = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Canvas.cachedSortingLayerValue = nil
--[[
	CS.UnityEngine.AdditionalCanvasShaderChannels
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.additionalShaderChannels = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.sortingLayerName = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Canvas]
	 Get 
--]]
CS.UnityEngine.Canvas.rootCanvas = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Canvas.renderingDisplaySize = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Camera]
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.worldCamera = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Canvas.normalizedSortingGridSize = nil
--[[
	@value CS.UnityEngine.Canvas.WillRenderCanvases
--]]
function CS.UnityEngine.Canvas:add_preWillRenderCanvases(value) end
--[[
	@value CS.UnityEngine.Canvas.WillRenderCanvases
--]]
function CS.UnityEngine.Canvas:remove_preWillRenderCanvases(value) end
--[[
	@value CS.UnityEngine.Canvas.WillRenderCanvases
--]]
function CS.UnityEngine.Canvas:add_willRenderCanvases(value) end
--[[
	@value CS.UnityEngine.Canvas.WillRenderCanvases
--]]
function CS.UnityEngine.Canvas:remove_willRenderCanvases(value) end
function CS.UnityEngine.Canvas:GetDefaultCanvasTextMaterial() end
function CS.UnityEngine.Canvas:GetDefaultCanvasMaterial() end
function CS.UnityEngine.Canvas:GetETC1SupportedCanvasMaterial() end
function CS.UnityEngine.Canvas:ForceUpdateCanvases() end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Input = {}
--[[
	@return: [luaIde#CS.UnityEngine.Input]
]]
function CS.UnityEngine.Input() end
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Input.simulateMouseWithTouches = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Input.anyKey = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Input.anyKeyDown = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Input.inputString = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Input.mousePosition = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 
--]]
CS.UnityEngine.Input.mouseScrollDelta = nil
--[[
	CS.UnityEngine.IMECompositionMode
	 Get 	 Set 
--]]
CS.UnityEngine.Input.imeCompositionMode = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Input.compositionString = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Input.imeIsSelected = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2]
	 Get 	 Set 
--]]
CS.UnityEngine.Input.compositionCursorPos = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Input.mousePresent = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Input.touchCount = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Input.touchPressureSupported = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Input.stylusTouchSupported = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Input.touchSupported = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Input.multiTouchEnabled = nil
--[[
	CS.UnityEngine.DeviceOrientation
	 Get 
--]]
CS.UnityEngine.Input.deviceOrientation = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 
--]]
CS.UnityEngine.Input.acceleration = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Input.compensateSensors = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Input.accelerationEventCount = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Input.backButtonLeavesApp = nil
--[[
	CS.UnityEngine.LocationService
	 Get 
--]]
CS.UnityEngine.Input.location = nil
--[[
	CS.UnityEngine.Compass
	 Get 
--]]
CS.UnityEngine.Input.compass = nil
--[[
	CS.UnityEngine.Gyroscope
	 Get 
--]]
CS.UnityEngine.Input.gyro = nil
--[[
	CS.UnityEngine.Touch<>
	 Get 
--]]
CS.UnityEngine.Input.touches = nil
--[[
	CS.UnityEngine.AccelerationEvent<>
	 Get 
--]]
CS.UnityEngine.Input.accelerationEvents = nil
--[[
	@axisName CS.System.String
	@return: CS.System.Single
--]]
function CS.UnityEngine.Input:GetAxis(axisName) end
--[[
	@axisName CS.System.String
	@return: CS.System.Single
--]]
function CS.UnityEngine.Input:GetAxisRaw(axisName) end
--[[
	@buttonName CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetButton(buttonName) end
--[[
	@buttonName CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetButtonDown(buttonName) end
--[[
	@buttonName CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetButtonUp(buttonName) end
--[[
	@button CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetMouseButton(button) end
--[[
	@button CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetMouseButtonDown(button) end
--[[
	@button CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetMouseButtonUp(button) end
function CS.UnityEngine.Input:ResetInputAxes() end
function CS.UnityEngine.Input:GetJoystickNames() end
--[[
	@index CS.System.Int32
	@return: CS.UnityEngine.Touch
--]]
function CS.UnityEngine.Input:GetTouch(index) end
--[[
	@index CS.System.Int32
	@return: CS.UnityEngine.AccelerationEvent
--]]
function CS.UnityEngine.Input:GetAccelerationEvent(index) end
--[[
	@key CS.UnityEngine.KeyCode
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetKey(key) end
--[[
	@name CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetKey(name) end
--[[
	@key CS.UnityEngine.KeyCode
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetKeyUp(key) end
--[[
	@name CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetKeyUp(name) end
--[[
	@key CS.UnityEngine.KeyCode
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetKeyDown(key) end
--[[
	@name CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Input:GetKeyDown(name) end

--@SuperType [luaIde#CS.Mono.Xml.SmallXmlParser]
CS.Mono.Xml.SecurityParser = {}
--[[
	@return: [luaIde#CS.Mono.Xml.SecurityParser]
]]
function CS.Mono.Xml.SecurityParser() end
--[[
	@xml CS.System.String
--]]
function CS.Mono.Xml.SecurityParser:LoadXml(xml) end
function CS.Mono.Xml.SecurityParser:ToXml() end
--[[
	@parser CS.Mono.Xml.SmallXmlParser
--]]
function CS.Mono.Xml.SecurityParser:OnStartParsing(parser) end
--[[
	@name CS.System.String
	@text CS.System.String
--]]
function CS.Mono.Xml.SecurityParser:OnProcessingInstruction(name,text) end
--[[
	@s CS.System.String
--]]
function CS.Mono.Xml.SecurityParser:OnIgnorableWhitespace(s) end
--[[
	@name CS.System.String
	@attrs CS.Mono.Xml.SmallXmlParser.IAttrList
--]]
function CS.Mono.Xml.SecurityParser:OnStartElement(name,attrs) end
--[[
	@name CS.System.String
--]]
function CS.Mono.Xml.SecurityParser:OnEndElement(name) end
--[[
	@ch CS.System.String
--]]
function CS.Mono.Xml.SecurityParser:OnChars(ch) end
--[[
	@parser CS.Mono.Xml.SmallXmlParser
--]]
function CS.Mono.Xml.SecurityParser:OnEndParsing(parser) end

--@SuperType [luaIde#CS.System.Object]
CS.System.Security.SecurityElement = {}
--[[
	@tag CS.System.String
	@return: [luaIde#CS.System.Security.SecurityElement]
]]
function CS.System.Security.SecurityElement(tag) end
--[[
	@tag CS.System.String
	@text CS.System.String
	@return: [luaIde#CS.System.Security.SecurityElement]
]]
function CS.System.Security.SecurityElement(tag,text) end
--[[
	@RefType [luaIde#CS.System.Object,luaIde#CS.System.Object]
	 Get 	 Set 
--]]
CS.System.Security.SecurityElement.Attributes = nil
--[[
	@RefType [luaIde#CS.System.Object<>]
	 Get 	 Set 
--]]
CS.System.Security.SecurityElement.Children = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.System.Security.SecurityElement.Tag = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.System.Security.SecurityElement.Text = nil
--[[
	@name CS.System.String
	@value CS.System.String
--]]
function CS.System.Security.SecurityElement:AddAttribute(name,value) end
--[[
	@child CS.System.Security.SecurityElement
--]]
function CS.System.Security.SecurityElement:AddChild(child) end
--[[
	@name CS.System.String
	@return: CS.System.String
--]]
function CS.System.Security.SecurityElement:Attribute(name) end
function CS.System.Security.SecurityElement:Copy() end
--[[
	@other CS.System.Security.SecurityElement
	@return: CS.System.Boolean
--]]
function CS.System.Security.SecurityElement:Equal(other) end
--[[
	@str CS.System.String
	@return: CS.System.String
--]]
function CS.System.Security.SecurityElement:Escape(str) end
--[[
	@xml CS.System.String
	@return: [luaIde#CS.System.Security.SecurityElement]
--]]
function CS.System.Security.SecurityElement:FromString(xml) end
--[[
	@name CS.System.String
	@return: CS.System.Boolean
--]]
function CS.System.Security.SecurityElement:IsValidAttributeName(name) end
--[[
	@value CS.System.String
	@return: CS.System.Boolean
--]]
function CS.System.Security.SecurityElement:IsValidAttributeValue(value) end
--[[
	@tag CS.System.String
	@return: CS.System.Boolean
--]]
function CS.System.Security.SecurityElement:IsValidTag(tag) end
--[[
	@text CS.System.String
	@return: CS.System.Boolean
--]]
function CS.System.Security.SecurityElement:IsValidText(text) end
--[[
	@tag CS.System.String
	@return: [luaIde#CS.System.Security.SecurityElement]
--]]
function CS.System.Security.SecurityElement:SearchForChildByTag(tag) end
--[[
	@tag CS.System.String
	@return: CS.System.String
--]]
function CS.System.Security.SecurityElement:SearchForTextOfTag(tag) end
function CS.System.Security.SecurityElement:ToString() end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Application = {}
--[[
	@return: [luaIde#CS.UnityEngine.Application]
]]
function CS.UnityEngine.Application() end
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Application.isPlaying = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Application.isFocused = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.buildGUID = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Application.runInBackground = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Application.isBatchMode = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.dataPath = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.streamingAssetsPath = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.persistentDataPath = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.temporaryCachePath = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.absoluteURL = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.unityVersion = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.version = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.installerName = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.identifier = nil
--[[
	CS.UnityEngine.ApplicationInstallMode
	 Get 
--]]
CS.UnityEngine.Application.installMode = nil
--[[
	CS.UnityEngine.ApplicationSandboxType
	 Get 
--]]
CS.UnityEngine.Application.sandboxType = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.productName = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.companyName = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.cloudProjectId = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Application.targetFrameRate = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Application.consoleLogPath = nil
--[[
	CS.UnityEngine.ThreadPriority
	 Get 	 Set 
--]]
CS.UnityEngine.Application.backgroundLoadingPriority = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Application.genuine = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Application.genuineCheckAvailable = nil
--[[
	CS.UnityEngine.RuntimePlatform
	 Get 
--]]
CS.UnityEngine.Application.platform = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Application.isMobilePlatform = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Application.isConsolePlatform = nil
--[[
	CS.UnityEngine.SystemLanguage
	 Get 
--]]
CS.UnityEngine.Application.systemLanguage = nil
--[[
	CS.UnityEngine.NetworkReachability
	 Get 
--]]
CS.UnityEngine.Application.internetReachability = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Application.isEditor = nil
--[[
	@exitCode CS.System.Int32
--]]
function CS.UnityEngine.Application:Quit(exitCode) end
function CS.UnityEngine.Application:Quit() end
function CS.UnityEngine.Application:CancelQuit() end
function CS.UnityEngine.Application:Unload() end
--[[
	@levelIndex CS.System.Int32
	@return: CS.System.Single
--]]
function CS.UnityEngine.Application:GetStreamProgressForLevel(levelIndex) end
--[[
	@levelName CS.System.String
	@return: CS.System.Single
--]]
function CS.UnityEngine.Application:GetStreamProgressForLevel(levelName) end
--[[
	@levelIndex CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Application:CanStreamedLevelBeLoaded(levelIndex) end
--[[
	@levelName CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Application:CanStreamedLevelBeLoaded(levelName) end
--[[
	@obj CS.UnityEngine.Object
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Application:IsPlaying(obj) end
function CS.UnityEngine.Application:GetBuildTags() end
--[[
	@buildTags CS.System.String<>
--]]
function CS.UnityEngine.Application:SetBuildTags(buildTags) end
function CS.UnityEngine.Application:HasProLicense() end
--[[
	@script CS.System.String
--]]
function CS.UnityEngine.Application:ExternalEval(script) end
--[[
	@delegateMethod CS.UnityEngine.Application.AdvertisingIdentifierCallback
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Application:RequestAdvertisingIdentifierAsync(delegateMethod) end
--[[
	@url CS.System.String
--]]
function CS.UnityEngine.Application:OpenURL(url) end
--[[
	@mode CS.System.Int32
--]]
function CS.UnityEngine.Application:ForceCrash(mode) end
--[[
	@logType CS.UnityEngine.LogType
	@return: CS.UnityEngine.StackTraceLogType
--]]
function CS.UnityEngine.Application:GetStackTraceLogType(logType) end
--[[
	@logType CS.UnityEngine.LogType
	@stackTraceType CS.UnityEngine.StackTraceLogType
--]]
function CS.UnityEngine.Application:SetStackTraceLogType(logType,stackTraceType) end
--[[
	@mode CS.UnityEngine.UserAuthorization
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.Application:RequestUserAuthorization(mode) end
--[[
	@mode CS.UnityEngine.UserAuthorization
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Application:HasUserAuthorization(mode) end
--[[
	@value CS.UnityEngine.Application.LowMemoryCallback
--]]
function CS.UnityEngine.Application:add_lowMemory(value) end
--[[
	@value CS.UnityEngine.Application.LowMemoryCallback
--]]
function CS.UnityEngine.Application:remove_lowMemory(value) end
--[[
	@value CS.UnityEngine.Application.LogCallback
--]]
function CS.UnityEngine.Application:add_logMessageReceived(value) end
--[[
	@value CS.UnityEngine.Application.LogCallback
--]]
function CS.UnityEngine.Application:remove_logMessageReceived(value) end
--[[
	@value CS.UnityEngine.Application.LogCallback
--]]
function CS.UnityEngine.Application:add_logMessageReceivedThreaded(value) end
--[[
	@value CS.UnityEngine.Application.LogCallback
--]]
function CS.UnityEngine.Application:remove_logMessageReceivedThreaded(value) end
--[[
	@functionName CS.System.String
	@args CS.System.Object<>
--]]
function CS.UnityEngine.Application:ExternalCall(functionName,args) end
--[[
	@o CS.UnityEngine.Object
--]]
function CS.UnityEngine.Application:DontDestroyOnLoad(o) end
--[[
	@filename CS.System.String
	@superSize CS.System.Int32
--]]
function CS.UnityEngine.Application:CaptureScreenshot(filename,superSize) end
--[[
	@filename CS.System.String
--]]
function CS.UnityEngine.Application:CaptureScreenshot(filename) end
--[[
	@value CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.Application:add_onBeforeRender(value) end
--[[
	@value CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.Application:remove_onBeforeRender(value) end
--[[
	@value CS.System.Action
--]]
function CS.UnityEngine.Application:add_focusChanged(value) end
--[[
	@value CS.System.Action
--]]
function CS.UnityEngine.Application:remove_focusChanged(value) end
--[[
	@value CS.System.Action
--]]
function CS.UnityEngine.Application:add_deepLinkActivated(value) end
--[[
	@value CS.System.Action
--]]
function CS.UnityEngine.Application:remove_deepLinkActivated(value) end
--[[
	@value CS.System.Func
--]]
function CS.UnityEngine.Application:add_wantsToQuit(value) end
--[[
	@value CS.System.Func
--]]
function CS.UnityEngine.Application:remove_wantsToQuit(value) end
--[[
	@value CS.System.Action
--]]
function CS.UnityEngine.Application:add_quitting(value) end
--[[
	@value CS.System.Action
--]]
function CS.UnityEngine.Application:remove_quitting(value) end
--[[
	@value CS.System.Action
--]]
function CS.UnityEngine.Application:add_unloading(value) end
--[[
	@value CS.System.Action
--]]
function CS.UnityEngine.Application:remove_unloading(value) end
--[[
	@handler CS.UnityEngine.Application.LogCallback
--]]
function CS.UnityEngine.Application:RegisterLogCallback(handler) end
--[[
	@handler CS.UnityEngine.Application.LogCallback
--]]
function CS.UnityEngine.Application:RegisterLogCallbackThreaded(handler) end
--[[
	@index CS.System.Int32
--]]
function CS.UnityEngine.Application:LoadLevel(index) end
--[[
	@name CS.System.String
--]]
function CS.UnityEngine.Application:LoadLevel(name) end
--[[
	@index CS.System.Int32
--]]
function CS.UnityEngine.Application:LoadLevelAdditive(index) end
--[[
	@name CS.System.String
--]]
function CS.UnityEngine.Application:LoadLevelAdditive(name) end
--[[
	@index CS.System.Int32
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.Application:LoadLevelAsync(index) end
--[[
	@levelName CS.System.String
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.Application:LoadLevelAsync(levelName) end
--[[
	@index CS.System.Int32
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.Application:LoadLevelAdditiveAsync(index) end
--[[
	@levelName CS.System.String
	@return: [luaIde#CS.UnityEngine.AsyncOperation]
--]]
function CS.UnityEngine.Application:LoadLevelAdditiveAsync(levelName) end
--[[
	@index CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Application:UnloadLevel(index) end
--[[
	@scenePath CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Application:UnloadLevel(scenePath) end

--@SuperType [luaIde#CS.UnityEngine.EventSystems.UIBehaviour]
CS.UnityEngine.UI.Graphic = {}
--[[
	@RefType [luaIde#CS.UnityEngine.Material]
	 Get 
--]]
CS.UnityEngine.UI.Graphic.defaultGraphicMaterial = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Graphic.color = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Graphic.raycastTarget = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector4]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Graphic.raycastPadding = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.UI.Graphic.depth = nil
--[[
	@RefType [luaIde#CS.UnityEngine.RectTransform]
	 Get 
--]]
CS.UnityEngine.UI.Graphic.rectTransform = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Canvas]
	 Get 
--]]
CS.UnityEngine.UI.Graphic.canvas = nil
--[[
	CS.UnityEngine.CanvasRenderer
	 Get 
--]]
CS.UnityEngine.UI.Graphic.canvasRenderer = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Material]
	 Get 
--]]
CS.UnityEngine.UI.Graphic.defaultMaterial = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Material]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Graphic.material = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Material]
	 Get 
--]]
CS.UnityEngine.UI.Graphic.materialForRendering = nil
--[[
	CS.UnityEngine.Texture
	 Get 
--]]
CS.UnityEngine.UI.Graphic.mainTexture = nil
function CS.UnityEngine.UI.Graphic:SetAllDirty() end
function CS.UnityEngine.UI.Graphic:SetLayoutDirty() end
function CS.UnityEngine.UI.Graphic:SetVerticesDirty() end
function CS.UnityEngine.UI.Graphic:SetMaterialDirty() end
function CS.UnityEngine.UI.Graphic:OnCullingChanged() end
--[[
	@update CS.UnityEngine.UI.CanvasUpdate
--]]
function CS.UnityEngine.UI.Graphic:Rebuild(update) end
function CS.UnityEngine.UI.Graphic:LayoutComplete() end
function CS.UnityEngine.UI.Graphic:GraphicUpdateComplete() end
function CS.UnityEngine.UI.Graphic:SetNativeSize() end
--[[
	@sp CS.UnityEngine.Vector2
	@eventCamera CS.UnityEngine.Camera
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.UI.Graphic:Raycast(sp,eventCamera) end
--[[
	@point CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.UI.Graphic:PixelAdjustPoint(point) end
function CS.UnityEngine.UI.Graphic:GetPixelAdjustedRect() end
--[[
	@targetColor CS.UnityEngine.Color
	@duration CS.System.Single
	@ignoreTimeScale CS.System.Boolean
	@useAlpha CS.System.Boolean
--]]
function CS.UnityEngine.UI.Graphic:CrossFadeColor(targetColor,duration,ignoreTimeScale,useAlpha) end
--[[
	@targetColor CS.UnityEngine.Color
	@duration CS.System.Single
	@ignoreTimeScale CS.System.Boolean
	@useAlpha CS.System.Boolean
	@useRGB CS.System.Boolean
--]]
function CS.UnityEngine.UI.Graphic:CrossFadeColor(targetColor,duration,ignoreTimeScale,useAlpha,useRGB) end
--[[
	@alpha CS.System.Single
	@duration CS.System.Single
	@ignoreTimeScale CS.System.Boolean
--]]
function CS.UnityEngine.UI.Graphic:CrossFadeAlpha(alpha,duration,ignoreTimeScale) end
--[[
	@action CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.UI.Graphic:RegisterDirtyLayoutCallback(action) end
--[[
	@action CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.UI.Graphic:UnregisterDirtyLayoutCallback(action) end
--[[
	@action CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.UI.Graphic:RegisterDirtyVerticesCallback(action) end
--[[
	@action CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.UI.Graphic:UnregisterDirtyVerticesCallback(action) end
--[[
	@action CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.UI.Graphic:RegisterDirtyMaterialCallback(action) end
--[[
	@action CS.UnityEngine.Events.UnityAction
--]]
function CS.UnityEngine.UI.Graphic:UnregisterDirtyMaterialCallback(action) end

--@SuperType [luaIde#CS.UnityEngine.UI.MaskableGraphic]
CS.UnityEngine.UI.Text = {}
--[[
	CS.UnityEngine.TextGenerator
	 Get 
--]]
CS.UnityEngine.UI.Text.cachedTextGenerator = nil
--[[
	CS.UnityEngine.TextGenerator
	 Get 
--]]
CS.UnityEngine.UI.Text.cachedTextGeneratorForLayout = nil
--[[
	CS.UnityEngine.Texture
	 Get 
--]]
CS.UnityEngine.UI.Text.mainTexture = nil
--[[
	CS.UnityEngine.Font
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.font = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.text = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.supportRichText = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.resizeTextForBestFit = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.resizeTextMinSize = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.resizeTextMaxSize = nil
--[[
	CS.UnityEngine.TextAnchor
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.alignment = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.alignByGeometry = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.fontSize = nil
--[[
	CS.UnityEngine.HorizontalWrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.horizontalOverflow = nil
--[[
	CS.UnityEngine.VerticalWrapMode
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.verticalOverflow = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.lineSpacing = nil
--[[
	CS.UnityEngine.FontStyle
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Text.fontStyle = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Text.pixelsPerUnit = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Text.minWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Text.preferredWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Text.flexibleWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Text.minHeight = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Text.preferredHeight = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.Text.flexibleHeight = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.UI.Text.layoutPriority = nil
function CS.UnityEngine.UI.Text:FontTextureChanged() end
--[[
	@extents CS.UnityEngine.Vector2
	@return: CS.UnityEngine.TextGenerationSettings
--]]
function CS.UnityEngine.UI.Text:GetGenerationSettings(extents) end
--[[
	@anchor CS.UnityEngine.TextAnchor
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.UI.Text:GetTextAnchorPivot(anchor) end
function CS.UnityEngine.UI.Text:CalculateLayoutInputHorizontal() end
function CS.UnityEngine.UI.Text:CalculateLayoutInputVertical() end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.EffectDelay = {}
--[[
	@return: [luaIde#CS.EffectDelay]
]]
function CS.EffectDelay() end
--[[
	@RefType [luaIde#CS.UnityEngine.GameObject<>]
	 Get 	 Set 
--]]
CS.EffectDelay.GameObjects = nil
--[[
	CS.System.Single<>
	 Get 	 Set 
--]]
CS.EffectDelay.DelayTime = nil

--@SuperType [luaIde#CS.UnityEngine.UI.Selectable]
CS.UnityEngine.UI.InputField = {}
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.shouldHideMobileInput = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.shouldActivateOnSelect = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.text = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.UI.InputField.isFocused = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.caretBlinkRate = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.caretWidth = nil
--[[
	@RefType [luaIde#CS.UnityEngine.UI.Text]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.textComponent = nil
--[[
	@RefType [luaIde#CS.UnityEngine.UI.Graphic]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.placeholder = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.caretColor = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.customCaretColor = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.selectionColor = nil
--[[
	CS.UnityEngine.UI.InputField.SubmitEvent
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.onEndEdit = nil
--[[
	CS.UnityEngine.UI.InputField.OnChangeEvent
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.onValueChanged = nil
--[[
	CS.UnityEngine.UI.InputField.OnValidateInput
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.onValidateInput = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.characterLimit = nil
--[[
	CS.UnityEngine.UI.InputField.ContentType
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.contentType = nil
--[[
	CS.UnityEngine.UI.InputField.LineType
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.lineType = nil
--[[
	CS.UnityEngine.UI.InputField.InputType
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.inputType = nil
--[[
	CS.UnityEngine.TouchScreenKeyboard
	 Get 
--]]
CS.UnityEngine.UI.InputField.touchScreenKeyboard = nil
--[[
	CS.UnityEngine.TouchScreenKeyboardType
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.keyboardType = nil
--[[
	CS.UnityEngine.UI.InputField.CharacterValidation
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.characterValidation = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.readOnly = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.UI.InputField.multiLine = nil
--[[
	CS.System.Char
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.asteriskChar = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.UI.InputField.wasCanceled = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.caretPosition = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.selectionAnchorPosition = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.UI.InputField.selectionFocusPosition = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.InputField.minWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.InputField.preferredWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.InputField.flexibleWidth = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.InputField.minHeight = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.InputField.preferredHeight = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.UI.InputField.flexibleHeight = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.UI.InputField.layoutPriority = nil
--[[
	@input CS.System.String
--]]
function CS.UnityEngine.UI.InputField:SetTextWithoutNotify(input) end
--[[
	@shift CS.System.Boolean
--]]
function CS.UnityEngine.UI.InputField:MoveTextEnd(shift) end
--[[
	@shift CS.System.Boolean
--]]
function CS.UnityEngine.UI.InputField:MoveTextStart(shift) end
--[[
	@screen CS.UnityEngine.Vector2
	@return: [luaIde#CS.UnityEngine.Vector2]
--]]
function CS.UnityEngine.UI.InputField:ScreenToLocal(screen) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.InputField:OnBeginDrag(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.InputField:OnDrag(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.InputField:OnEndDrag(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.InputField:OnPointerDown(eventData) end
--[[
	@e CS.UnityEngine.Event
--]]
function CS.UnityEngine.UI.InputField:ProcessEvent(e) end
--[[
	@eventData CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UnityEngine.UI.InputField:OnUpdateSelected(eventData) end
function CS.UnityEngine.UI.InputField:ForceLabelUpdate() end
--[[
	@update CS.UnityEngine.UI.CanvasUpdate
--]]
function CS.UnityEngine.UI.InputField:Rebuild(update) end
function CS.UnityEngine.UI.InputField:LayoutComplete() end
function CS.UnityEngine.UI.InputField:GraphicUpdateComplete() end
function CS.UnityEngine.UI.InputField:ActivateInputField() end
--[[
	@eventData CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UnityEngine.UI.InputField:OnSelect(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.InputField:OnPointerClick(eventData) end
function CS.UnityEngine.UI.InputField:DeactivateInputField() end
--[[
	@eventData CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UnityEngine.UI.InputField:OnDeselect(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UnityEngine.UI.InputField:OnSubmit(eventData) end
function CS.UnityEngine.UI.InputField:CalculateLayoutInputHorizontal() end
function CS.UnityEngine.UI.InputField:CalculateLayoutInputVertical() end

--@SuperType [luaIde#CS.UnityEngine.UI.Selectable]
CS.UnityEngine.UI.Dropdown = {}
--[[
	@RefType [luaIde#CS.UnityEngine.RectTransform]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Dropdown.template = nil
--[[
	@RefType [luaIde#CS.UnityEngine.UI.Text]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Dropdown.captionText = nil
--[[
	@RefType [luaIde#CS.UnityEngine.UI.Image]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Dropdown.captionImage = nil
--[[
	@RefType [luaIde#CS.UnityEngine.UI.Text]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Dropdown.itemText = nil
--[[
	@RefType [luaIde#CS.UnityEngine.UI.Image]
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Dropdown.itemImage = nil
--[[
	CS.UnityEngine.UI.Dropdown.OptionData<>
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Dropdown.options = nil
--[[
	CS.UnityEngine.UI.Dropdown.DropdownEvent
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Dropdown.onValueChanged = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Dropdown.alphaFadeSpeed = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.UI.Dropdown.value = nil
--[[
	@input CS.System.Int32
--]]
function CS.UnityEngine.UI.Dropdown:SetValueWithoutNotify(input) end
function CS.UnityEngine.UI.Dropdown:RefreshShownValue() end
--[[
	@options CS.UnityEngine.UI.Dropdown.OptionData<>
--]]
function CS.UnityEngine.UI.Dropdown:AddOptions(options) end
--[[
	@options CS.System.String<>
--]]
function CS.UnityEngine.UI.Dropdown:AddOptions(options) end
--[[
	@options CS.UnityEngine.Sprite<>
--]]
function CS.UnityEngine.UI.Dropdown:AddOptions(options) end
function CS.UnityEngine.UI.Dropdown:ClearOptions() end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.UnityEngine.UI.Dropdown:OnPointerClick(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UnityEngine.UI.Dropdown:OnSubmit(eventData) end
--[[
	@eventData CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UnityEngine.UI.Dropdown:OnCancel(eventData) end
function CS.UnityEngine.UI.Dropdown:Show() end
function CS.UnityEngine.UI.Dropdown:Hide() end

--@SuperType [luaIde#CS.System.Enum]
CS.UnityEngine.KeyCode = {}
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.None = 0
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Backspace = 8
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Delete = 127
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Tab = 9
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Clear = 12
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Return = 13
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Pause = 19
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Escape = 27
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Space = 32
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Keypad0 = 256
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Keypad1 = 257
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Keypad2 = 258
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Keypad3 = 259
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Keypad4 = 260
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Keypad5 = 261
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Keypad6 = 262
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Keypad7 = 263
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Keypad8 = 264
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Keypad9 = 265
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.KeypadPeriod = 266
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.KeypadDivide = 267
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.KeypadMultiply = 268
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.KeypadMinus = 269
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.KeypadPlus = 270
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.KeypadEnter = 271
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.KeypadEquals = 272
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.UpArrow = 273
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.DownArrow = 274
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.RightArrow = 275
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.LeftArrow = 276
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Insert = 277
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Home = 278
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.End = 279
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.PageUp = 280
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.PageDown = 281
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F1 = 282
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F2 = 283
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F3 = 284
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F4 = 285
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F5 = 286
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F6 = 287
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F7 = 288
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F8 = 289
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F9 = 290
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F10 = 291
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F11 = 292
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F12 = 293
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F13 = 294
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F14 = 295
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F15 = 296
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Alpha0 = 48
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Alpha1 = 49
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Alpha2 = 50
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Alpha3 = 51
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Alpha4 = 52
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Alpha5 = 53
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Alpha6 = 54
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Alpha7 = 55
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Alpha8 = 56
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Alpha9 = 57
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Exclaim = 33
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.DoubleQuote = 34
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Hash = 35
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Dollar = 36
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Percent = 37
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Ampersand = 38
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Quote = 39
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.LeftParen = 40
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.RightParen = 41
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Asterisk = 42
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Plus = 43
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Comma = 44
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Minus = 45
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Period = 46
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Slash = 47
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Colon = 58
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Semicolon = 59
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Less = 60
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Equals = 61
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Greater = 62
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Question = 63
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.At = 64
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.LeftBracket = 91
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Backslash = 92
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.RightBracket = 93
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Caret = 94
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Underscore = 95
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.BackQuote = 96
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.A = 97
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.B = 98
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.C = 99
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.D = 100
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.E = 101
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.F = 102
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.G = 103
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.H = 104
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.I = 105
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.J = 106
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.K = 107
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.L = 108
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.M = 109
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.N = 110
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.O = 111
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.P = 112
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Q = 113
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.R = 114
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.S = 115
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.T = 116
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.U = 117
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.V = 118
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.W = 119
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.X = 120
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Y = 121
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Z = 122
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.LeftCurlyBracket = 123
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Pipe = 124
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.RightCurlyBracket = 125
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Tilde = 126
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Numlock = 300
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.CapsLock = 301
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.ScrollLock = 302
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.RightShift = 303
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.LeftShift = 304
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.RightControl = 305
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.LeftControl = 306
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.RightAlt = 307
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.LeftAlt = 308
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.LeftCommand = 310
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.LeftApple = 310
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.LeftWindows = 311
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.RightCommand = 309
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.RightApple = 309
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.RightWindows = 312
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.AltGr = 313
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Help = 315
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Print = 316
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.SysReq = 317
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Break = 318
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Menu = 319
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Mouse0 = 323
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Mouse1 = 324
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Mouse2 = 325
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Mouse3 = 326
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Mouse4 = 327
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Mouse5 = 328
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Mouse6 = 329
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton0 = 330
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton1 = 331
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton2 = 332
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton3 = 333
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton4 = 334
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton5 = 335
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton6 = 336
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton7 = 337
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton8 = 338
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton9 = 339
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton10 = 340
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton11 = 341
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton12 = 342
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton13 = 343
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton14 = 344
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton15 = 345
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton16 = 346
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton17 = 347
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton18 = 348
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.JoystickButton19 = 349
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button0 = 350
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button1 = 351
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button2 = 352
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button3 = 353
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button4 = 354
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button5 = 355
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button6 = 356
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button7 = 357
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button8 = 358
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button9 = 359
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button10 = 360
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button11 = 361
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button12 = 362
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button13 = 363
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button14 = 364
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button15 = 365
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button16 = 366
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button17 = 367
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button18 = 368
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick1Button19 = 369
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button0 = 370
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button1 = 371
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button2 = 372
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button3 = 373
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button4 = 374
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button5 = 375
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button6 = 376
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button7 = 377
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button8 = 378
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button9 = 379
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button10 = 380
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button11 = 381
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button12 = 382
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button13 = 383
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button14 = 384
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button15 = 385
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button16 = 386
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button17 = 387
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button18 = 388
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick2Button19 = 389
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button0 = 390
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button1 = 391
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button2 = 392
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button3 = 393
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button4 = 394
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button5 = 395
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button6 = 396
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button7 = 397
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button8 = 398
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button9 = 399
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button10 = 400
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button11 = 401
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button12 = 402
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button13 = 403
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button14 = 404
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button15 = 405
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button16 = 406
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button17 = 407
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button18 = 408
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick3Button19 = 409
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button0 = 410
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button1 = 411
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button2 = 412
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button3 = 413
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button4 = 414
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button5 = 415
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button6 = 416
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button7 = 417
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button8 = 418
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button9 = 419
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button10 = 420
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button11 = 421
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button12 = 422
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button13 = 423
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button14 = 424
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button15 = 425
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button16 = 426
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button17 = 427
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button18 = 428
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick4Button19 = 429
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button0 = 430
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button1 = 431
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button2 = 432
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button3 = 433
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button4 = 434
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button5 = 435
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button6 = 436
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button7 = 437
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button8 = 438
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button9 = 439
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button10 = 440
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button11 = 441
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button12 = 442
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button13 = 443
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button14 = 444
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button15 = 445
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button16 = 446
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button17 = 447
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button18 = 448
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick5Button19 = 449
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button0 = 450
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button1 = 451
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button2 = 452
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button3 = 453
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button4 = 454
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button5 = 455
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button6 = 456
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button7 = 457
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button8 = 458
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button9 = 459
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button10 = 460
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button11 = 461
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button12 = 462
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button13 = 463
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button14 = 464
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button15 = 465
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button16 = 466
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button17 = 467
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button18 = 468
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick6Button19 = 469
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button0 = 470
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button1 = 471
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button2 = 472
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button3 = 473
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button4 = 474
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button5 = 475
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button6 = 476
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button7 = 477
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button8 = 478
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button9 = 479
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button10 = 480
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button11 = 481
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button12 = 482
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button13 = 483
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button14 = 484
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button15 = 485
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button16 = 486
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button17 = 487
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button18 = 488
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick7Button19 = 489
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button0 = 490
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button1 = 491
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button2 = 492
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button3 = 493
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button4 = 494
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button5 = 495
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button6 = 496
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button7 = 497
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button8 = 498
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button9 = 499
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button10 = 500
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button11 = 501
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button12 = 502
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button13 = 503
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button14 = 504
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button15 = 505
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button16 = 506
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button17 = 507
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button18 = 508
--[[
	CS.UnityEngine.KeyCode
	 Get 	 Set 
--]]
CS.UnityEngine.KeyCode.Joystick8Button19 = 509

--@SuperType [luaIde#CS.System.Object]
CS.ShaderStudio.ShaderCache = {}
--[[
	@return: [luaIde#CS.ShaderStudio.ShaderCache]
]]
function CS.ShaderStudio.ShaderCache() end
--[[
	@assetbundle CS.UnityEngine.AssetBundle
--]]
function CS.ShaderStudio.ShaderCache:Add(assetbundle) end
--[[
	@shaders CS.UnityEngine.Shader<>
--]]
function CS.ShaderStudio.ShaderCache:Add(shaders) end
--[[
	@shader CS.UnityEngine.Shader
--]]
function CS.ShaderStudio.ShaderCache:Add(shader) end
--[[
	@name CS.System.String
	@return: CS.UnityEngine.Shader
--]]
function CS.ShaderStudio.ShaderCache:Find(name) end
function CS.ShaderStudio.ShaderCache:Clear() end

--@SuperType [luaIde#CS.UnityEngine.UI.Text]
CS.LinkImageText = {}
--[[
	@return: [luaIde#CS.LinkImageText]
]]
function CS.LinkImageText() end
--[[
	CS.LinkImageText.HrefClickEvent
	 Get 	 Set 
--]]
CS.LinkImageText.onHrefClick = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.LinkImageText.text = nil
--[[
	CS.EventUtils.LinkTexthEvent
	 Get 	 Set 
--]]
CS.LinkImageText.LinkTexthEvent = nil
--[[
	CS.EventUtils.ImageTexthEvent
	 Get 	 Set 
--]]
CS.LinkImageText.ImageTexthEvent = nil
--[[
	CS.System.Func
	 Get 	 Set 
--]]
CS.LinkImageText.funLoadSprite = nil
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
--]]
function CS.LinkImageText:OnPointerClick(eventData) end
function CS.LinkImageText:RemoveListener() end

--@SuperType [luaIde#CS.System.Object]
CS.SoundRecordVO = {}
--[[
	@return: [luaIde#CS.SoundRecordVO]
]]
function CS.SoundRecordVO() end
--[[
	@RefType [luaIde#CS.UnityEngine.AudioClip]
	 Get 	 Set 
--]]
CS.SoundRecordVO.Clip = nil
--[[
	CS.System.Single<>
	 Get 	 Set 
--]]
CS.SoundRecordVO.Data = nil
--[[
	CS.System.Byte<>
	 Get 	 Set 
--]]
CS.SoundRecordVO.DataByte = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.SoundRecordVO.Nam = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.SoundRecordVO.Text = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.SoundRecordVO.Second = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.SoundRecordVO.State = nil
--[[
	@sUser CS.System.String
	@func CS.EventUtils.Event
	@return: [luaIde#CS.SoundRecordVO]
--]]
function CS.SoundRecordVO:GetVO(sUser,func) end
--[[
	@state CS.System.Int32
--]]
function CS.SoundRecordVO:RunEvent(state) end
--[[
	@clip CS.UnityEngine.AudioClip
	@len CS.System.Int32
--]]
function CS.SoundRecordVO:SetClip(clip,len) end

--@SuperType [luaIde#CS.System.Object]
CS.DownSoundVO = {}
--[[
	@return: [luaIde#CS.DownSoundVO]
]]
function CS.DownSoundVO() end
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.DownSoundVO.UI_Data = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.DownSoundVO.Nam = nil
--[[
	CS.System.Single<>
	 Get 	 Set 
--]]
CS.DownSoundVO.Data = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AudioClip]
	 Get 	 Set 
--]]
CS.DownSoundVO.Clip = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.DownSoundVO.State = nil
--[[
	CS.EventUtils.Event
	 Get 	 Set 
--]]
CS.DownSoundVO.Func = nil
--[[
	@nam CS.System.String
	@dataUI CS.System.Boolean
	@func CS.EventUtils.Event
	@return: [luaIde#CS.DownSoundVO]
--]]
function CS.DownSoundVO:GetVO(nam,dataUI,func) end
function CS.DownSoundVO:RunEvent() end

--@SuperType [luaIde#CS.SoundRecordMgr_Press]
CS.SoundRecordMgr = {}
--[[
	@return: [luaIde#CS.SoundRecordMgr]
]]
function CS.SoundRecordMgr() end
--[[
	@RefType [luaIde#CS.SoundRecordMgr]
	 Get 
--]]
CS.SoundRecordMgr.Instance = nil
function CS.SoundRecordMgr:Update() end
--[[
	@nam CS.System.String
	@nam2 CS.System.String
	@return: CS.System.Boolean
--]]
function CS.SoundRecordMgr:IsSamePanNam(nam,nam2) end
--[[
	@sUser CS.System.String
	@func CS.EventUtils.Event
	@return: [luaIde#CS.SoundRecordVO]
--]]
function CS.SoundRecordMgr:Record(sUser,func) end
function CS.SoundRecordMgr:Clean() end
--[[
	@vo CS.SoundRecordVO
--]]
function CS.SoundRecordMgr:Stop(vo) end
--[[
	@nam CS.System.String
	@dataUI CS.System.Boolean
	@func CS.EventUtils.Event
	@return: [luaIde#CS.DownSoundVO]
--]]
function CS.SoundRecordMgr:Down(nam,dataUI,func) end
function CS.SoundRecordMgr:Dispose() end
function CS.SoundRecordMgr:HasRight() end
--[[
	@sEnd CS.System.String
	@return: CS.System.Boolean
--]]
function CS.SoundRecordMgr:OnAskRight(sEnd) end
function CS.SoundRecordMgr:AskRight() end

--@SuperType [luaIde#CS.UnityEngine.Renderer]
CS.UnityEngine.LineRenderer = {}
--[[
	@return: [luaIde#CS.UnityEngine.LineRenderer]
]]
function CS.UnityEngine.LineRenderer() end
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.startWidth = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.endWidth = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.widthMultiplier = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.numCornerVertices = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.numCapVertices = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.useWorldSpace = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.loop = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.startColor = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.endColor = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.positionCount = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.shadowBias = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.generateLightingData = nil
--[[
	CS.UnityEngine.LineTextureMode
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.textureMode = nil
--[[
	CS.UnityEngine.LineAlignment
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.alignment = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AnimationCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.widthCurve = nil
--[[
	CS.UnityEngine.Gradient
	 Get 	 Set 
--]]
CS.UnityEngine.LineRenderer.colorGradient = nil
--[[
	@start CS.System.Single
	@end_ CS.System.Single
--]]
function CS.UnityEngine.LineRenderer:SetWidth(start,end_) end
--[[
	@start CS.UnityEngine.Color
	@end_ CS.UnityEngine.Color
--]]
function CS.UnityEngine.LineRenderer:SetColors(start,end_) end
--[[
	@count CS.System.Int32
--]]
function CS.UnityEngine.LineRenderer:SetVertexCount(count) end
--[[
	@index CS.System.Int32
	@position CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.LineRenderer:SetPosition(index,position) end
--[[
	@index CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.LineRenderer:GetPosition(index) end
--[[
	@tolerance CS.System.Single
--]]
function CS.UnityEngine.LineRenderer:Simplify(tolerance) end
--[[
	@mesh CS.UnityEngine.Mesh
	@useTransform CS.System.Boolean
--]]
function CS.UnityEngine.LineRenderer:BakeMesh(mesh,useTransform) end
--[[
	@mesh CS.UnityEngine.Mesh
	@camera CS.UnityEngine.Camera
	@useTransform CS.System.Boolean
--]]
function CS.UnityEngine.LineRenderer:BakeMesh(mesh,camera,useTransform) end
--[[
	@positions CS.UnityEngine.Vector3<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.LineRenderer:GetPositions(positions) end
--[[
	@positions CS.UnityEngine.Vector3<>
--]]
function CS.UnityEngine.LineRenderer:SetPositions(positions) end
--[[
	@positions CS.Unity.Collections.NativeArray
--]]
function CS.UnityEngine.LineRenderer:SetPositions(positions) end
--[[
	@positions CS.Unity.Collections.NativeSlice
--]]
function CS.UnityEngine.LineRenderer:SetPositions(positions) end
--[[
	@positions CS.Unity.Collections.NativeArray
	@return: CS.System.Int32
--]]
function CS.UnityEngine.LineRenderer:GetPositions(positions) end
--[[
	@positions CS.Unity.Collections.NativeSlice
	@return: CS.System.Int32
--]]
function CS.UnityEngine.LineRenderer:GetPositions(positions) end

--@SuperType [luaIde#CS.UnityEngine.EventSystems.UIBehaviour]
CS.UnityEngine.EventSystems.EventSystem = {}
--[[
	@RefType [luaIde#CS.UnityEngine.EventSystems.EventSystem]
	 Get 	 Set 
--]]
CS.UnityEngine.EventSystems.EventSystem.current = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.EventSystems.EventSystem.sendNavigationEvents = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.EventSystems.EventSystem.pixelDragThreshold = nil
--[[
	CS.UnityEngine.EventSystems.BaseInputModule
	 Get 
--]]
CS.UnityEngine.EventSystems.EventSystem.currentInputModule = nil
--[[
	@RefType [luaIde#CS.UnityEngine.GameObject]
	 Get 	 Set 
--]]
CS.UnityEngine.EventSystems.EventSystem.firstSelectedGameObject = nil
--[[
	@RefType [luaIde#CS.UnityEngine.GameObject]
	 Get 
--]]
CS.UnityEngine.EventSystems.EventSystem.currentSelectedGameObject = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.EventSystems.EventSystem.isFocused = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.EventSystems.EventSystem.alreadySelecting = nil
function CS.UnityEngine.EventSystems.EventSystem:UpdateModules() end
--[[
	@selected CS.UnityEngine.GameObject
	@pointer CS.UnityEngine.EventSystems.BaseEventData
--]]
function CS.UnityEngine.EventSystems.EventSystem:SetSelectedGameObject(selected,pointer) end
--[[
	@selected CS.UnityEngine.GameObject
--]]
function CS.UnityEngine.EventSystems.EventSystem:SetSelectedGameObject(selected) end
--[[
	@eventData CS.UnityEngine.EventSystems.PointerEventData
	@raycastResults CS.UnityEngine.EventSystems.RaycastResult<>
--]]
function CS.UnityEngine.EventSystems.EventSystem:RaycastAll(eventData,raycastResults) end
function CS.UnityEngine.EventSystems.EventSystem:IsPointerOverGameObject() end
--[[
	@pointerId CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.EventSystems.EventSystem:IsPointerOverGameObject(pointerId) end
function CS.UnityEngine.EventSystems.EventSystem:ToString() end

--@SuperType [luaIde#CS.UnityEngine.EventSystems.PointerInputModule]
CS.UnityEngine.EventSystems.StandaloneInputModule = {}
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.EventSystems.StandaloneInputModule.forceModuleActive = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.EventSystems.StandaloneInputModule.inputActionsPerSecond = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.EventSystems.StandaloneInputModule.repeatDelay = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.EventSystems.StandaloneInputModule.horizontalAxis = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.EventSystems.StandaloneInputModule.verticalAxis = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.EventSystems.StandaloneInputModule.submitButton = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.EventSystems.StandaloneInputModule.cancelButton = nil
function CS.UnityEngine.EventSystems.StandaloneInputModule:UpdateModule() end
function CS.UnityEngine.EventSystems.StandaloneInputModule:IsModuleSupported() end
function CS.UnityEngine.EventSystems.StandaloneInputModule:ShouldActivateModule() end
function CS.UnityEngine.EventSystems.StandaloneInputModule:ActivateModule() end
function CS.UnityEngine.EventSystems.StandaloneInputModule:DeactivateModule() end
function CS.UnityEngine.EventSystems.StandaloneInputModule:Process() end

--@SuperType [luaIde#CS.System.Object]
CS.ShaderStudio.GraphicsSetup = {}
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.ShaderStudio.GraphicsSetup.QualityLevel = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.ShaderStudio.GraphicsSetup.View3D = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.ShaderStudio.GraphicsSetup.MaxQualityLevelCount = nil

--@SuperType [luaIde#CS.System.Object]
CS.System.Text.StringBuilder = {}
--[[
	@return: [luaIde#CS.System.Text.StringBuilder]
]]
function CS.System.Text.StringBuilder() end
--[[
	@capacity CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
]]
function CS.System.Text.StringBuilder(capacity) end
--[[
	@value CS.System.String
	@return: [luaIde#CS.System.Text.StringBuilder]
]]
function CS.System.Text.StringBuilder(value) end
--[[
	@value CS.System.String
	@capacity CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
]]
function CS.System.Text.StringBuilder(value,capacity) end
--[[
	@value CS.System.String
	@startIndex CS.System.Int32
	@length CS.System.Int32
	@capacity CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
]]
function CS.System.Text.StringBuilder(value,startIndex,length,capacity) end
--[[
	@capacity CS.System.Int32
	@maxCapacity CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
]]
function CS.System.Text.StringBuilder(capacity,maxCapacity) end
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.System.Text.StringBuilder.Capacity = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.System.Text.StringBuilder.MaxCapacity = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.System.Text.StringBuilder.Length = nil
--[[
	@capacity CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.System.Text.StringBuilder:EnsureCapacity(capacity) end
function CS.System.Text.StringBuilder:ToString() end
--[[
	@startIndex CS.System.Int32
	@length CS.System.Int32
	@return: CS.System.String
--]]
function CS.System.Text.StringBuilder:ToString(startIndex,length) end
function CS.System.Text.StringBuilder:Clear() end
--[[
	@value CS.System.Char
	@repeatCount CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value,repeatCount) end
--[[
	@value CS.System.Char<>
	@startIndex CS.System.Int32
	@charCount CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value,startIndex,charCount) end
--[[
	@value CS.System.String
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.String
	@startIndex CS.System.Int32
	@count CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value,startIndex,count) end
function CS.System.Text.StringBuilder:AppendLine() end
--[[
	@value CS.System.String
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:AppendLine(value) end
--[[
	@sourceIndex CS.System.Int32
	@destination CS.System.Char<>
	@destinationIndex CS.System.Int32
	@count CS.System.Int32
--]]
function CS.System.Text.StringBuilder:CopyTo(sourceIndex,destination,destinationIndex,count) end
--[[
	@index CS.System.Int32
	@value CS.System.String
	@count CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value,count) end
--[[
	@startIndex CS.System.Int32
	@length CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Remove(startIndex,length) end
--[[
	@value CS.System.Boolean
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.SByte
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.Byte
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.Char
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.Int16
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.Int64
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.Single
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.Double
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.Decimal
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.UInt16
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.UInt32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.UInt64
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.Object
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@value CS.System.Char<>
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value) end
--[[
	@index CS.System.Int32
	@value CS.System.String
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Boolean
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.SByte
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Byte
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Int16
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Char
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Char<>
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Char<>
	@startIndex CS.System.Int32
	@charCount CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value,startIndex,charCount) end
--[[
	@index CS.System.Int32
	@value CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Int64
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Single
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Double
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Decimal
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.UInt16
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.UInt32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.UInt64
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@index CS.System.Int32
	@value CS.System.Object
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Insert(index,value) end
--[[
	@format CS.System.String
	@arg0 CS.System.Object
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:AppendFormat(format,arg0) end
--[[
	@format CS.System.String
	@arg0 CS.System.Object
	@arg1 CS.System.Object
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:AppendFormat(format,arg0,arg1) end
--[[
	@format CS.System.String
	@arg0 CS.System.Object
	@arg1 CS.System.Object
	@arg2 CS.System.Object
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:AppendFormat(format,arg0,arg1,arg2) end
--[[
	@format CS.System.String
	@args CS.System.Object<>
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:AppendFormat(format,args) end
--[[
	@provider CS.System.IFormatProvider
	@format CS.System.String
	@arg0 CS.System.Object
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:AppendFormat(provider,format,arg0) end
--[[
	@provider CS.System.IFormatProvider
	@format CS.System.String
	@arg0 CS.System.Object
	@arg1 CS.System.Object
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:AppendFormat(provider,format,arg0,arg1) end
--[[
	@provider CS.System.IFormatProvider
	@format CS.System.String
	@arg0 CS.System.Object
	@arg1 CS.System.Object
	@arg2 CS.System.Object
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:AppendFormat(provider,format,arg0,arg1,arg2) end
--[[
	@provider CS.System.IFormatProvider
	@format CS.System.String
	@args CS.System.Object<>
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:AppendFormat(provider,format,args) end
--[[
	@oldValue CS.System.String
	@newValue CS.System.String
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Replace(oldValue,newValue) end
--[[
	@sb CS.System.Text.StringBuilder
	@return: CS.System.Boolean
--]]
function CS.System.Text.StringBuilder:Equals(sb) end
--[[
	@oldValue CS.System.String
	@newValue CS.System.String
	@startIndex CS.System.Int32
	@count CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Replace(oldValue,newValue,startIndex,count) end
--[[
	@oldChar CS.System.Char
	@newChar CS.System.Char
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Replace(oldChar,newChar) end
--[[
	@oldChar CS.System.Char
	@newChar CS.System.Char
	@startIndex CS.System.Int32
	@count CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Replace(oldChar,newChar,startIndex,count) end
--[[
	@value CS.System.Char*
	@valueCount CS.System.Int32
	@return: [luaIde#CS.System.Text.StringBuilder]
--]]
function CS.System.Text.StringBuilder:Append(value,valueCount) end

--@SuperType [luaIde#CS.System.Object]
CS.GameUtils = {}
--[[
	@return: [luaIde#CS.GameUtils]
]]
function CS.GameUtils() end
function CS.GameUtils:LoadABBytes() end
function CS.GameUtils:UnLoadABBytes() end
--[[
	@path CS.System.String&
	@return: CS.System.Byte<>
--]]
function CS.GameUtils:ReadAllBytesByBundle(path) end
--[[
	@path CS.System.String
	@return: CS.System.String
--]]
function CS.GameUtils:GetWWWFullPathByMd5(path) end
--[[
	@bt CS.System.Byte<>
	@return: CS.System.Byte<>
--]]
function CS.GameUtils:ABDecryption(bt) end
--[[
	@sFind CS.System.String
	@sJson CS.System.String
	@return: CS.System.String
--]]
function CS.GameUtils:GetJson(sFind,sJson) end
--[[
	@bytes CS.System.Byte<>
	@return: CS.System.String
--]]
function CS.GameUtils:GetBase64(bytes) end
--[[
	@bytes CS.System.Byte<>
	@return: CS.System.String
--]]
function CS.GameUtils:GetStrX2(bytes) end
--[[
	@s CS.System.String
	@return: CS.System.Byte<>
--]]
function CS.GameUtils:GetStrByte(s) end
--[[
	@s CS.System.String
	@return: CS.System.String
--]]
function CS.GameUtils:GetSHA256(s) end
--[[
	@bytesS CS.System.Byte<>
	@byteKey CS.System.Byte<>
	@return: CS.System.Byte<>
--]]
function CS.GameUtils:GetHMACSHA256(bytesS,byteKey) end
--[[
	@clip CS.UnityEngine.AudioClip
	@start CS.System.Int32
	@end_ CS.System.Int32
	@return: CS.System.Single<>
--]]
function CS.GameUtils:GetClipFloats(clip,start,end_) end
--[[
	@name CS.System.String
	@iRoad CS.System.Int32
	@frequency CS.System.Int32
	@data CS.System.Single<>
	@return: [luaIde#CS.UnityEngine.AudioClip]
--]]
function CS.GameUtils:GetClip(name,iRoad,frequency,data) end
--[[
	@data CS.System.Single<>
	@iWavHZ CS.System.Int32
	@iSoundHz CS.System.Int32
	@return: CS.System.Byte<>
--]]
function CS.GameUtils:GetWav(data,iWavHZ,iSoundHz) end
--[[
	@data CS.System.Single<>
	@return: CS.System.Byte<>
--]]
function CS.GameUtils:GetClipByte(data) end
--[[
	@bytes CS.System.Byte<>
	@return: CS.System.Single<>
--]]
function CS.GameUtils:GetFloatByByte(bytes) end
--[[
	@obj CS.UnityEngine.Object
	@return: CS.System.Boolean
--]]
function CS.GameUtils:IsNull(obj) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Ping = {}
--[[
	@address CS.System.String
	@return: [luaIde#CS.UnityEngine.Ping]
]]
function CS.UnityEngine.Ping(address) end
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Ping.isDone = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Ping.time = nil
--[[
	CS.System.String
	 Get 
--]]
CS.UnityEngine.Ping.ip = nil
function CS.UnityEngine.Ping:DestroyPing() end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.ShaderStudio.RoleVision = {}
--[[
	@return: [luaIde#CS.ShaderStudio.RoleVision]
]]
function CS.ShaderStudio.RoleVision() end
--[[
	@material CS.UnityEngine.Material
	@return: CS.System.Boolean
--]]
function CS.ShaderStudio.RoleVision:IsRoleMaterial(material) end
function CS.ShaderStudio.RoleVision:DisableAllEffects() end
--[[
	@fadeTime CS.System.Single
--]]
function CS.ShaderStudio.RoleVision:FadeInTransparent(fadeTime) end
--[[
	@fadeTime CS.System.Single
--]]
function CS.ShaderStudio.RoleVision:FadeOutTransparent(fadeTime) end
function CS.ShaderStudio.RoleVision:DisableTransparent() end
--[[
	@fadeTime CS.System.Single
--]]
function CS.ShaderStudio.RoleVision:FadeInDissolve(fadeTime) end
--[[
	@fadeTime CS.System.Single
--]]
function CS.ShaderStudio.RoleVision:FadeOutDissolve(fadeTime) end
function CS.ShaderStudio.RoleVision:DisableDissolve() end
--[[
	@fadeTime CS.System.Single
	@r CS.System.Single
	@g CS.System.Single
	@b CS.System.Single
--]]
function CS.ShaderStudio.RoleVision:FadeInRim(fadeTime,r,g,b) end
--[[
	@fadeTime CS.System.Single
--]]
function CS.ShaderStudio.RoleVision:FadeOutRim(fadeTime) end
function CS.ShaderStudio.RoleVision:DisableRim() end
--[[
	@time CS.System.Single
	@r CS.System.Single
	@g CS.System.Single
	@b CS.System.Single
--]]
function CS.ShaderStudio.RoleVision:ApplyFlash(time,r,g,b) end
--[[
	@id CS.System.Int32
--]]
function CS.ShaderStudio.RoleVision:ApplyEffect(id) end
function CS.ShaderStudio.RoleVision:DisableEffect() end

--@SuperType [luaIde#CS.UnityEngine.Renderer]
CS.UnityEngine.TrailRenderer = {}
--[[
	@return: [luaIde#CS.UnityEngine.TrailRenderer]
]]
function CS.UnityEngine.TrailRenderer() end
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.time = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.startWidth = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.endWidth = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.widthMultiplier = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.autodestruct = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.emitting = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.numCornerVertices = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.numCapVertices = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.minVertexDistance = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.startColor = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Color]
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.endColor = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.TrailRenderer.positionCount = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.shadowBias = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.generateLightingData = nil
--[[
	CS.UnityEngine.LineTextureMode
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.textureMode = nil
--[[
	CS.UnityEngine.LineAlignment
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.alignment = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AnimationCurve]
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.widthCurve = nil
--[[
	CS.UnityEngine.Gradient
	 Get 	 Set 
--]]
CS.UnityEngine.TrailRenderer.colorGradient = nil
--[[
	@index CS.System.Int32
	@position CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.TrailRenderer:SetPosition(index,position) end
--[[
	@index CS.System.Int32
	@return: [luaIde#CS.UnityEngine.Vector3]
--]]
function CS.UnityEngine.TrailRenderer:GetPosition(index) end
function CS.UnityEngine.TrailRenderer:Clear() end
--[[
	@mesh CS.UnityEngine.Mesh
	@useTransform CS.System.Boolean
--]]
function CS.UnityEngine.TrailRenderer:BakeMesh(mesh,useTransform) end
--[[
	@mesh CS.UnityEngine.Mesh
	@camera CS.UnityEngine.Camera
	@useTransform CS.System.Boolean
--]]
function CS.UnityEngine.TrailRenderer:BakeMesh(mesh,camera,useTransform) end
--[[
	@positions CS.UnityEngine.Vector3<>
	@return: CS.System.Int32
--]]
function CS.UnityEngine.TrailRenderer:GetPositions(positions) end
--[[
	@positions CS.UnityEngine.Vector3<>
--]]
function CS.UnityEngine.TrailRenderer:SetPositions(positions) end
--[[
	@position CS.UnityEngine.Vector3
--]]
function CS.UnityEngine.TrailRenderer:AddPosition(position) end
--[[
	@positions CS.UnityEngine.Vector3<>
--]]
function CS.UnityEngine.TrailRenderer:AddPositions(positions) end
--[[
	@positions CS.Unity.Collections.NativeArray
--]]
function CS.UnityEngine.TrailRenderer:SetPositions(positions) end
--[[
	@positions CS.Unity.Collections.NativeSlice
--]]
function CS.UnityEngine.TrailRenderer:SetPositions(positions) end
--[[
	@positions CS.Unity.Collections.NativeArray
	@return: CS.System.Int32
--]]
function CS.UnityEngine.TrailRenderer:GetPositions(positions) end
--[[
	@positions CS.Unity.Collections.NativeSlice
	@return: CS.System.Int32
--]]
function CS.UnityEngine.TrailRenderer:GetPositions(positions) end
--[[
	@positions CS.Unity.Collections.NativeArray
--]]
function CS.UnityEngine.TrailRenderer:AddPositions(positions) end
--[[
	@positions CS.Unity.Collections.NativeSlice
--]]
function CS.UnityEngine.TrailRenderer:AddPositions(positions) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Profiling.Profiler = {}
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Profiling.Profiler.supported = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Profiling.Profiler.logFile = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Profiling.Profiler.enableBinaryLog = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.Profiling.Profiler.maxUsedMemory = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Profiling.Profiler.enabled = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Profiling.Profiler.enableAllocationCallstacks = nil
--[[
	CS.System.Int32
	 Get 
--]]
CS.UnityEngine.Profiling.Profiler.areaCount = nil
--[[
	CS.System.Int64
	 Get 
--]]
CS.UnityEngine.Profiling.Profiler.usedHeapSizeLong = nil
--[[
	@area CS.UnityEngine.Profiling.ProfilerArea
	@enabled CS.System.Boolean
--]]
function CS.UnityEngine.Profiling.Profiler:SetAreaEnabled(area,enabled) end
--[[
	@area CS.UnityEngine.Profiling.ProfilerArea
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Profiling.Profiler:GetAreaEnabled(area) end
--[[
	@file CS.System.String
--]]
function CS.UnityEngine.Profiling.Profiler:AddFramesFromFile(file) end
--[[
	@threadGroupName CS.System.String
	@threadName CS.System.String
--]]
function CS.UnityEngine.Profiling.Profiler:BeginThreadProfiling(threadGroupName,threadName) end
function CS.UnityEngine.Profiling.Profiler:EndThreadProfiling() end
--[[
	@name CS.System.String
--]]
function CS.UnityEngine.Profiling.Profiler:BeginSample(name) end
--[[
	@name CS.System.String
	@targetObject CS.UnityEngine.Object
--]]
function CS.UnityEngine.Profiling.Profiler:BeginSample(name,targetObject) end
function CS.UnityEngine.Profiling.Profiler:EndSample() end
--[[
	@o CS.UnityEngine.Object
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Profiling.Profiler:GetRuntimeMemorySize(o) end
--[[
	@o CS.UnityEngine.Object
	@return: CS.System.Int64
--]]
function CS.UnityEngine.Profiling.Profiler:GetRuntimeMemorySizeLong(o) end
function CS.UnityEngine.Profiling.Profiler:GetMonoHeapSize() end
function CS.UnityEngine.Profiling.Profiler:GetMonoHeapSizeLong() end
function CS.UnityEngine.Profiling.Profiler:GetMonoUsedSize() end
function CS.UnityEngine.Profiling.Profiler:GetMonoUsedSizeLong() end
--[[
	@size CS.System.UInt32
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Profiling.Profiler:SetTempAllocatorRequestedSize(size) end
function CS.UnityEngine.Profiling.Profiler:GetTempAllocatorSize() end
function CS.UnityEngine.Profiling.Profiler:GetTotalAllocatedMemory() end
function CS.UnityEngine.Profiling.Profiler:GetTotalAllocatedMemoryLong() end
function CS.UnityEngine.Profiling.Profiler:GetTotalUnusedReservedMemory() end
function CS.UnityEngine.Profiling.Profiler:GetTotalUnusedReservedMemoryLong() end
function CS.UnityEngine.Profiling.Profiler:GetTotalReservedMemory() end
function CS.UnityEngine.Profiling.Profiler:GetTotalReservedMemoryLong() end
--[[
	@stats CS.Unity.Collections.NativeArray
	@return: CS.System.Int64
--]]
function CS.UnityEngine.Profiling.Profiler:GetTotalFragmentationInfo(stats) end
function CS.UnityEngine.Profiling.Profiler:GetAllocatedMemoryForGraphicsDriver() end
--[[
	@id CS.System.Guid
	@tag CS.System.Int32
	@data CS.
--]]
function CS.UnityEngine.Profiling.Profiler:EmitFrameMetaData(id,tag,data) end

--@SuperType [luaIde#CS.System.Object]
CS.System.GC = {}
--[[
	CS.System.Int32
	 Get 
--]]
CS.System.GC.MaxGeneration = nil
--[[
	@bytesAllocated CS.System.Int64
--]]
function CS.System.GC:AddMemoryPressure(bytesAllocated) end
--[[
	@bytesAllocated CS.System.Int64
--]]
function CS.System.GC:RemoveMemoryPressure(bytesAllocated) end
--[[
	@obj CS.System.Object
	@return: CS.System.Int32
--]]
function CS.System.GC:GetGeneration(obj) end
--[[
	@generation CS.System.Int32
--]]
function CS.System.GC:Collect(generation) end
function CS.System.GC:Collect() end
--[[
	@generation CS.System.Int32
	@mode CS.System.GCCollectionMode
--]]
function CS.System.GC:Collect(generation,mode) end
--[[
	@generation CS.System.Int32
	@mode CS.System.GCCollectionMode
	@blocking CS.System.Boolean
--]]
function CS.System.GC:Collect(generation,mode,blocking) end
--[[
	@generation CS.System.Int32
	@mode CS.System.GCCollectionMode
	@blocking CS.System.Boolean
	@compacting CS.System.Boolean
--]]
function CS.System.GC:Collect(generation,mode,blocking,compacting) end
--[[
	@generation CS.System.Int32
	@return: CS.System.Int32
--]]
function CS.System.GC:CollectionCount(generation) end
--[[
	@obj CS.System.Object
--]]
function CS.System.GC:KeepAlive(obj) end
--[[
	@wo CS.System.WeakReference
	@return: CS.System.Int32
--]]
function CS.System.GC:GetGeneration(wo) end
function CS.System.GC:WaitForPendingFinalizers() end
--[[
	@obj CS.System.Object
--]]
function CS.System.GC:SuppressFinalize(obj) end
--[[
	@obj CS.System.Object
--]]
function CS.System.GC:ReRegisterForFinalize(obj) end
--[[
	@forceFullCollection CS.System.Boolean
	@return: CS.System.Int64
--]]
function CS.System.GC:GetTotalMemory(forceFullCollection) end
--[[
	@maxGenerationThreshold CS.System.Int32
	@largeObjectHeapThreshold CS.System.Int32
--]]
function CS.System.GC:RegisterForFullGCNotification(maxGenerationThreshold,largeObjectHeapThreshold) end
function CS.System.GC:CancelFullGCNotification() end
function CS.System.GC:WaitForFullGCApproach() end
--[[
	@millisecondsTimeout CS.System.Int32
	@return: CS.System.GCNotificationStatus
--]]
function CS.System.GC:WaitForFullGCApproach(millisecondsTimeout) end
function CS.System.GC:WaitForFullGCComplete() end
--[[
	@millisecondsTimeout CS.System.Int32
	@return: CS.System.GCNotificationStatus
--]]
function CS.System.GC:WaitForFullGCComplete(millisecondsTimeout) end
--[[
	@totalSize CS.System.Int64
	@return: CS.System.Boolean
--]]
function CS.System.GC:TryStartNoGCRegion(totalSize) end
--[[
	@totalSize CS.System.Int64
	@lohSize CS.System.Int64
	@return: CS.System.Boolean
--]]
function CS.System.GC:TryStartNoGCRegion(totalSize,lohSize) end
--[[
	@totalSize CS.System.Int64
	@disallowFullBlockingGC CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.System.GC:TryStartNoGCRegion(totalSize,disallowFullBlockingGC) end
--[[
	@totalSize CS.System.Int64
	@lohSize CS.System.Int64
	@disallowFullBlockingGC CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.System.GC:TryStartNoGCRegion(totalSize,lohSize,disallowFullBlockingGC) end
function CS.System.GC:EndNoGCRegion() end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.FPS = {}
--[[
	@return: [luaIde#CS.FPS]
]]
function CS.FPS() end
--[[
	CS.System.Single
	 Get 
--]]
CS.FPS.Fps = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.FPS.IsScreenLog = nil
--[[
	@content CS.System.String
--]]
function CS.FPS:AddContent(content) end
--[[
	@s CS.System.String
--]]
function CS.FPS:Log(s) end

--@SuperType [luaIde#CS.System.Object]
CS.PostWebRequest = {}
--[[
	@return: [luaIde#CS.PostWebRequest]
]]
function CS.PostWebRequest() end
--[[
	@bytes CS.System.Byte<>
	@uuid CS.System.String
	@evt CS.PostWebRequestEvent
--]]
function CS.PostWebRequest:OnPut(bytes,uuid,evt) end
--[[
	@uuid CS.System.String
	@evt CS.PostWebRequestWithBytes
--]]
function CS.PostWebRequest:OnGet(uuid,evt) end
--[[
	@uuid CS.System.String
	@evt CS.PostWebRequestWithBytes
	@return: CS.System.Collections.IEnumerator
--]]
function CS.PostWebRequest:OnAsyncGet(uuid,evt) end
--[[
	@bytes CS.System.Byte<>
	@inspect CS.System.Int32
	@evt CS.PostWebPhotoInspectEvent
--]]
function CS.PostWebRequest:OnPhotoInspect(bytes,inspect,evt) end
--[[
	@sUrl CS.System.String
	@sPostJson CS.System.String
	@sDicSign CS.System.String
	@func CS.OnPostWebForStr
--]]
function CS.PostWebRequest:PostWebForStr(sUrl,sPostJson,sDicSign,func) end
--[[
	@sUrl CS.System.String
	@bytesPost CS.System.Byte<>
	@sDicSign CS.System.String
	@func CS.OnPostWebForStr
--]]
function CS.PostWebRequest:PostWeb_ByteJson(sUrl,bytesPost,sDicSign,func) end
function CS.PostWebRequest:OnDestroy() end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.SceneDistort = {}
--[[
	@return: [luaIde#CS.SceneDistort]
]]
function CS.SceneDistort() end
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.SceneDistort.fadeInTime = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.SceneDistort.fadeOutTime = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AnimationCurve]
	 Get 	 Set 
--]]
CS.SceneDistort.distortStrength = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AnimationCurve]
	 Get 	 Set 
--]]
CS.SceneDistort.distortRadius = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.SceneDistort.width = nil
--[[
	@target CS.UnityEngine.Camera
--]]
function CS.SceneDistort:FadeInInternal(target) end
function CS.SceneDistort:FadeOutInternal() end
--[[
	@source CS.UnityEngine.Camera
	@target CS.UnityEngine.Camera
--]]
function CS.SceneDistort:FadeIn(source,target) end
function CS.SceneDistort:FadeOut() end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.GraphicsManager = {}
--[[
	@return: [luaIde#CS.GraphicsManager]
]]
function CS.GraphicsManager() end
--[[
	@RefType [luaIde#CS.UnityEngine.Vector3]
	 Get 	 Set 
--]]
CS.GraphicsManager.RolePosition = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.GraphicsManager.IsSwimming = nil
function CS.GraphicsManager:Init() end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.EmptyWallMono = {}
--[[
	@return: [luaIde#CS.EmptyWallMono]
]]
function CS.EmptyWallMono() end
--[[
	@RefType [luaIde#CS.UnityEngine.Transform<>]
	 Get 	 Set 
--]]
CS.EmptyWallMono.NavMeshRaycast = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Transform<>]
	 Get 	 Set 
--]]
CS.EmptyWallMono.NavMeshEffect = nil

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.StairsMono = {}
--[[
	@return: [luaIde#CS.StairsMono]
]]
function CS.StairsMono() end
--[[
	@RefType [luaIde#CS.UnityEngine.Transform<>]
	 Get 	 Set 
--]]
CS.StairsMono.StartPosition = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Transform<>]
	 Get 	 Set 
--]]
CS.StairsMono.EndPosition = nil

--@SuperType [luaIde#CS.System.Object]
CS.GCloudVoiceManager = {}
--[[
	CS.RealTimeBase
	 Get 	 Set 
--]]
CS.GCloudVoiceManager.RealTimeBase = nil
function CS.GCloudVoiceManager:GetInstance() end
--[[
	@appID CS.System.String
	@appKey CS.System.String
	@openID CS.System.String
	@callback CS.EventUtils.EventWithString
	@regionID CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:Login(appID,appKey,openID,callback,regionID) end
--[[
	@requsetPostCallBack CS.EventUtils.EventWithString
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:AddRequsetEvent(requsetPostCallBack) end
--[[
	@str CS.System.String
--]]
function CS.GCloudVoiceManager:CallBack(str) end
--[[
	@roomType CS.System.String
	@roomName CS.System.String
	@anchor CS.System.Boolean
	@msTimeout CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:OnJoinRoom(roomType,roomName,anchor,msTimeout) end
--[[
	@roomName CS.System.String
	@anchor CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:OnChangeRole(roomName,anchor) end
--[[
	@roomName CS.System.String
	@msTimeout CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:OnQuitRoom(roomName,msTimeout) end
function CS.GCloudVoiceManager:OnQuitAllRoom() end
function CS.GCloudVoiceManager:OnOpenMic() end
function CS.GCloudVoiceManager:OnCloseMic() end
function CS.GCloudVoiceManager:OnOpeSpeake() end
function CS.GCloudVoiceManager:OnCloseSpeake() end
--[[
	@value CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:OnSetMicVolume(value) end
--[[
	@value CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:OnSetSpeakerVolume(value) end
--[[
	@url CS.System.String
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:SetServerInfo(url) end
--[[
	@pFilePath CS.System.String
	@bRepeat CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:PlayBackgroundMusic(pFilePath,bRepeat) end
function CS.GCloudVoiceManager:StopBackgroundMusic() end
--[[
	@channelID CS.System.String
	@maxCount CS.System.Int32
	@notifyMemChange CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:GetChannelUserList(channelID,maxCount,notifyMemChange) end
--[[
	@command CS.System.String
	@queryBody CS.System.String
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:RequestRestApi(command,queryBody) end
--[[
	@userID CS.System.String
	@channelID CS.System.String
	@lastTime CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:KickOtherFromChannel(userID,channelID,lastTime) end
--[[
	@userID CS.System.String
	@isOn CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:SetListenOtherVoice(userID,isOn) end
--[[
	@userID CS.System.String
	@mute CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:SetOtherMicMute(userID,mute) end
--[[
	@userID CS.System.String
	@mute CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:SetOtherSpeakerMute(userID,mute) end
--[[
	@vol CS.System.Int32
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:SetBackgroundMusicVolume(vol) end
function CS.GCloudVoiceManager:ReleaseMicSync() end
function CS.GCloudVoiceManager:ResumeMicSync() end
--[[
	@release CS.System.Boolean
	@return: CS.System.Boolean
--]]
function CS.GCloudVoiceManager:SetReleaseMicWhenMute(release) end
function CS.GCloudVoiceManager:GetMicState() end
function CS.GCloudVoiceManager:GetSpeakerState() end
function CS.GCloudVoiceManager:LoginOut() end
function CS.GCloudVoiceManager:Update() end
function CS.GCloudVoiceManager:Pause() end
function CS.GCloudVoiceManager:Resume() end

--@SuperType [luaIde#CS.System.Object]
CS.System.IO.Directory = {}
--[[
	@path CS.System.String
	@return: CS.System.String<>
--]]
function CS.System.IO.Directory:GetFiles(path) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@return: CS.System.String<>
--]]
function CS.System.IO.Directory:GetFiles(path,searchPattern) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@searchOption CS.System.IO.SearchOption
	@return: CS.System.String<>
--]]
function CS.System.IO.Directory:GetFiles(path,searchPattern,searchOption) end
--[[
	@path CS.System.String
	@return: CS.System.String<>
--]]
function CS.System.IO.Directory:GetDirectories(path) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@return: CS.System.String<>
--]]
function CS.System.IO.Directory:GetDirectories(path,searchPattern) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@searchOption CS.System.IO.SearchOption
	@return: CS.System.String<>
--]]
function CS.System.IO.Directory:GetDirectories(path,searchPattern,searchOption) end
--[[
	@path CS.System.String
	@return: CS.System.String<>
--]]
function CS.System.IO.Directory:GetFileSystemEntries(path) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@return: CS.System.String<>
--]]
function CS.System.IO.Directory:GetFileSystemEntries(path,searchPattern) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@searchOption CS.System.IO.SearchOption
	@return: CS.System.String<>
--]]
function CS.System.IO.Directory:GetFileSystemEntries(path,searchPattern,searchOption) end
--[[
	@path CS.System.String
	@return: CS.System.Collections.Generic.IEnumerable
--]]
function CS.System.IO.Directory:EnumerateDirectories(path) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@return: CS.System.Collections.Generic.IEnumerable
--]]
function CS.System.IO.Directory:EnumerateDirectories(path,searchPattern) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@searchOption CS.System.IO.SearchOption
	@return: CS.System.Collections.Generic.IEnumerable
--]]
function CS.System.IO.Directory:EnumerateDirectories(path,searchPattern,searchOption) end
--[[
	@path CS.System.String
	@return: CS.System.Collections.Generic.IEnumerable
--]]
function CS.System.IO.Directory:EnumerateFiles(path) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@return: CS.System.Collections.Generic.IEnumerable
--]]
function CS.System.IO.Directory:EnumerateFiles(path,searchPattern) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@searchOption CS.System.IO.SearchOption
	@return: CS.System.Collections.Generic.IEnumerable
--]]
function CS.System.IO.Directory:EnumerateFiles(path,searchPattern,searchOption) end
--[[
	@path CS.System.String
	@return: CS.System.Collections.Generic.IEnumerable
--]]
function CS.System.IO.Directory:EnumerateFileSystemEntries(path) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@return: CS.System.Collections.Generic.IEnumerable
--]]
function CS.System.IO.Directory:EnumerateFileSystemEntries(path,searchPattern) end
--[[
	@path CS.System.String
	@searchPattern CS.System.String
	@searchOption CS.System.IO.SearchOption
	@return: CS.System.Collections.Generic.IEnumerable
--]]
function CS.System.IO.Directory:EnumerateFileSystemEntries(path,searchPattern,searchOption) end
--[[
	@path CS.System.String
	@return: CS.System.String
--]]
function CS.System.IO.Directory:GetDirectoryRoot(path) end
--[[
	@path CS.System.String
	@return: CS.System.IO.DirectoryInfo
--]]
function CS.System.IO.Directory:CreateDirectory(path) end
--[[
	@path CS.System.String
--]]
function CS.System.IO.Directory:Delete(path) end
--[[
	@path CS.System.String
	@recursive CS.System.Boolean
--]]
function CS.System.IO.Directory:Delete(path,recursive) end
--[[
	@path CS.System.String
	@return: CS.System.Boolean
--]]
function CS.System.IO.Directory:Exists(path) end
--[[
	@path CS.System.String
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.IO.Directory:GetLastAccessTime(path) end
--[[
	@path CS.System.String
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.IO.Directory:GetLastAccessTimeUtc(path) end
--[[
	@path CS.System.String
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.IO.Directory:GetLastWriteTime(path) end
--[[
	@path CS.System.String
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.IO.Directory:GetLastWriteTimeUtc(path) end
--[[
	@path CS.System.String
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.IO.Directory:GetCreationTime(path) end
--[[
	@path CS.System.String
	@return: [luaIde#CS.System.DateTime]
--]]
function CS.System.IO.Directory:GetCreationTimeUtc(path) end
function CS.System.IO.Directory:GetCurrentDirectory() end
function CS.System.IO.Directory:GetLogicalDrives() end
--[[
	@path CS.System.String
	@return: CS.System.IO.DirectoryInfo
--]]
function CS.System.IO.Directory:GetParent(path) end
--[[
	@sourceDirName CS.System.String
	@destDirName CS.System.String
--]]
function CS.System.IO.Directory:Move(sourceDirName,destDirName) end
--[[
	@path CS.System.String
	@creationTime CS.System.DateTime
--]]
function CS.System.IO.Directory:SetCreationTime(path,creationTime) end
--[[
	@path CS.System.String
	@creationTimeUtc CS.System.DateTime
--]]
function CS.System.IO.Directory:SetCreationTimeUtc(path,creationTimeUtc) end
--[[
	@path CS.System.String
--]]
function CS.System.IO.Directory:SetCurrentDirectory(path) end
--[[
	@path CS.System.String
	@lastAccessTime CS.System.DateTime
--]]
function CS.System.IO.Directory:SetLastAccessTime(path,lastAccessTime) end
--[[
	@path CS.System.String
	@lastAccessTimeUtc CS.System.DateTime
--]]
function CS.System.IO.Directory:SetLastAccessTimeUtc(path,lastAccessTimeUtc) end
--[[
	@path CS.System.String
	@lastWriteTime CS.System.DateTime
--]]
function CS.System.IO.Directory:SetLastWriteTime(path,lastWriteTime) end
--[[
	@path CS.System.String
	@lastWriteTimeUtc CS.System.DateTime
--]]
function CS.System.IO.Directory:SetLastWriteTimeUtc(path,lastWriteTimeUtc) end

--@SuperType [luaIde#CS.System.IO.FileSystemInfo]
CS.System.IO.FileInfo = {}
--[[
	@fileName CS.System.String
	@return: [luaIde#CS.System.IO.FileInfo]
]]
function CS.System.IO.FileInfo(fileName) end
--[[
	CS.System.String
	 Get 
--]]
CS.System.IO.FileInfo.Name = nil
--[[
	CS.System.Int64
	 Get 
--]]
CS.System.IO.FileInfo.Length = nil
--[[
	CS.System.String
	 Get 
--]]
CS.System.IO.FileInfo.DirectoryName = nil
--[[
	CS.System.IO.DirectoryInfo
	 Get 
--]]
CS.System.IO.FileInfo.Directory = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.System.IO.FileInfo.IsReadOnly = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.System.IO.FileInfo.Exists = nil
function CS.System.IO.FileInfo:OpenText() end
function CS.System.IO.FileInfo:CreateText() end
function CS.System.IO.FileInfo:AppendText() end
--[[
	@destFileName CS.System.String
	@return: [luaIde#CS.System.IO.FileInfo]
--]]
function CS.System.IO.FileInfo:CopyTo(destFileName) end
--[[
	@destFileName CS.System.String
	@overwrite CS.System.Boolean
	@return: [luaIde#CS.System.IO.FileInfo]
--]]
function CS.System.IO.FileInfo:CopyTo(destFileName,overwrite) end
function CS.System.IO.FileInfo:Create() end
function CS.System.IO.FileInfo:Delete() end
function CS.System.IO.FileInfo:Decrypt() end
function CS.System.IO.FileInfo:Encrypt() end
--[[
	@mode CS.System.IO.FileMode
	@return: CS.System.IO.FileStream
--]]
function CS.System.IO.FileInfo:Open(mode) end
--[[
	@mode CS.System.IO.FileMode
	@access CS.System.IO.FileAccess
	@return: CS.System.IO.FileStream
--]]
function CS.System.IO.FileInfo:Open(mode,access) end
--[[
	@mode CS.System.IO.FileMode
	@access CS.System.IO.FileAccess
	@share CS.System.IO.FileShare
	@return: CS.System.IO.FileStream
--]]
function CS.System.IO.FileInfo:Open(mode,access,share) end
function CS.System.IO.FileInfo:OpenRead() end
function CS.System.IO.FileInfo:OpenWrite() end
--[[
	@destFileName CS.System.String
--]]
function CS.System.IO.FileInfo:MoveTo(destFileName) end
--[[
	@destinationFileName CS.System.String
	@destinationBackupFileName CS.System.String
	@return: [luaIde#CS.System.IO.FileInfo]
--]]
function CS.System.IO.FileInfo:Replace(destinationFileName,destinationBackupFileName) end
--[[
	@destinationFileName CS.System.String
	@destinationBackupFileName CS.System.String
	@ignoreMetadataErrors CS.System.Boolean
	@return: [luaIde#CS.System.IO.FileInfo]
--]]
function CS.System.IO.FileInfo:Replace(destinationFileName,destinationBackupFileName,ignoreMetadataErrors) end
function CS.System.IO.FileInfo:ToString() end

--@SuperType [luaIde#CS.System.Object]
CS.ShaderStudio.UIPostProcess = {}
--[[
	@return: [luaIde#CS.ShaderStudio.UIPostProcess]
]]
function CS.ShaderStudio.UIPostProcess() end
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.ShaderStudio.UIPostProcess.BloomEnabled = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.ShaderStudio.UIPostProcess.ToneEnabled = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.ShaderStudio.UIPostProcess.enabled = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.ShaderStudio.UIPostProcess.intensity = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.ShaderStudio.UIPostProcess.threshhold = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.ShaderStudio.UIPostProcess.softKnee = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.ShaderStudio.UIPostProcess.diffusion = nil
function CS.ShaderStudio.UIPostProcess:UpdateKeywords() end

--@SuperType [luaIde#CS.System.Object]
CS.BuglyAgent = {}
--[[
	@return: [luaIde#CS.BuglyAgent]
]]
function CS.BuglyAgent() end
--[[
	CS.System.String
	 Get 
--]]
CS.BuglyAgent.PluginVersion = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.BuglyAgent.IsInitialized = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.BuglyAgent.AutoQuitApplicationAfterReport = nil
--[[
	@type CS.System.Int32
	@logLevel CS.System.Int32
--]]
function CS.BuglyAgent:ConfigCrashReporter(type,logLevel) end
--[[
	@appId CS.System.String
--]]
function CS.BuglyAgent:InitWithAppId(appId) end
function CS.BuglyAgent:EnableExceptionHandler() end
--[[
	@handler CS.BuglyAgent.LogCallbackDelegate
--]]
function CS.BuglyAgent:RegisterLogCallback(handler) end
--[[
	@handler CS.System.Func
--]]
function CS.BuglyAgent:SetLogCallbackExtrasHandler(handler) end
--[[
	@e CS.System.Exception
	@message CS.System.String
--]]
function CS.BuglyAgent:ReportException(e,message) end
--[[
	@name CS.System.String
	@message CS.System.String
	@stackTrace CS.System.String
--]]
function CS.BuglyAgent:ReportException(name,message,stackTrace) end
--[[
	@handler CS.BuglyAgent.LogCallbackDelegate
--]]
function CS.BuglyAgent:UnregisterLogCallback(handler) end
--[[
	@userId CS.System.String
--]]
function CS.BuglyAgent:SetUserId(userId) end
--[[
	@sceneId CS.System.Int32
--]]
function CS.BuglyAgent:SetScene(sceneId) end
--[[
	@key CS.System.String
	@value CS.System.String
--]]
function CS.BuglyAgent:AddSceneData(key,value) end
--[[
	@enable CS.System.Boolean
--]]
function CS.BuglyAgent:ConfigDebugMode(enable) end
--[[
	@autoQuit CS.System.Boolean
--]]
function CS.BuglyAgent:ConfigAutoQuitApplication(autoQuit) end
--[[
	@level CS.LogSeverity
--]]
function CS.BuglyAgent:ConfigAutoReportLogLevel(level) end
--[[
	@channel CS.System.String
	@version CS.System.String
	@user CS.System.String
	@delay CS.System.Int64
--]]
function CS.BuglyAgent:ConfigDefault(channel,version,user,delay) end
--[[
	@tag CS.System.String
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.BuglyAgent:DebugLog(tag,format,args) end
--[[
	@level CS.LogSeverity
	@format CS.System.String
	@args CS.System.Object<>
--]]
function CS.BuglyAgent:PrintLog(level,format,args) end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData = {}
--[[
	@return: [luaIde#CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData]
]]
function CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData() end
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.version = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.renderShadows = nil
--[[
	CS.UnityEngine.Rendering.Universal.CameraOverrideOption
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.requiresDepthOption = nil
--[[
	CS.UnityEngine.Rendering.Universal.CameraOverrideOption
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.requiresColorOption = nil
--[[
	CS.UnityEngine.Rendering.Universal.CameraRenderType
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.renderType = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Camera<>]
	 Get 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.cameraStack = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.clearDepth = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.requiresDepthTexture = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.requiresColorTexture = nil
--[[
	CS.UnityEngine.Rendering.Universal.ScriptableRenderer
	 Get 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.scriptableRenderer = nil
--[[
	CS.UnityEngine.LayerMask
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.volumeLayerMask = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Transform]
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.volumeTrigger = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.renderPostProcessing = nil
--[[
	CS.UnityEngine.Rendering.Universal.AntialiasingMode
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.antialiasing = nil
--[[
	CS.UnityEngine.Rendering.Universal.AntialiasingQuality
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.antialiasingQuality = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.stopNaN = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.dithering = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData.allowXRRendering = nil
--[[
	@index CS.System.Int32
--]]
function CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData:SetRenderer(index) end
function CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData:OnBeforeSerialize() end
function CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData:OnAfterDeserialize() end
function CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData:OnDrawGizmos() end

--@SuperType [luaIde#CS.System.Enum]
CS.UnityEngine.Rendering.Universal.CameraRenderType = {}
--[[
	CS.UnityEngine.Rendering.Universal.CameraRenderType
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.CameraRenderType.Base = 0
--[[
	CS.UnityEngine.Rendering.Universal.CameraRenderType
	 Get 	 Set 
--]]
CS.UnityEngine.Rendering.Universal.CameraRenderType.Overlay = 1

--@SuperType [luaIde#CS.UnityEngine.EventSystems.UIBehaviour]
CS.UIAniComponent = {}
--[[
	@return: [luaIde#CS.UIAniComponent]
]]
function CS.UIAniComponent() end
--[[
	CS.DG.Tweening.TweenCallback
	 Get 	 Set 
--]]
CS.UIAniComponent.ShowCallBack = nil
--[[
	CS.DG.Tweening.TweenCallback
	 Get 	 Set 
--]]
CS.UIAniComponent.HideCallBack = nil
function CS.UIAniComponent:SetInit() end
function CS.UIAniComponent:GetHideAni() end
function CS.UIAniComponent:GetPlayTime() end
function CS.UIAniComponent:ResetInit() end
function CS.UIAniComponent:SetDefaultOpenAni() end
function CS.UIAniComponent:SetDefaultCloseAni() end
function CS.UIAniComponent:PlayShowAni() end
function CS.UIAniComponent:PlayHideAni() end

--@SuperType [luaIde#CS.UnityEngine.UI.Dropdown]
CS.UIDropdownComponent = {}
--[[
	@return: [luaIde#CS.UIDropdownComponent]
]]
function CS.UIDropdownComponent() end
--[[
	CS.UIDropdownComponent.DropdownDelegate
	 Get 	 Set 
--]]
CS.UIDropdownComponent.onShow = nil
--[[
	CS.UIDropdownComponent.DropdownDelegate
	 Get 	 Set 
--]]
CS.UIDropdownComponent.onHide = nil
--[[
	@str CS.System.String<>
--]]
function CS.UIDropdownComponent:AddStringOptionDataList(str) end
--[[
	@isUp CS.System.Boolean
--]]
function CS.UIDropdownComponent:SetDropDownDirection(isUp) end

--@SuperType [luaIde#CS.TMPro.TMP_Text]
CS.TMPro.TextMeshProUGUI = {}
--[[
	@return: [luaIde#CS.TMPro.TextMeshProUGUI]
]]
function CS.TMPro.TextMeshProUGUI() end
--[[
	@RefType [luaIde#CS.UnityEngine.Material]
	 Get 
--]]
CS.TMPro.TextMeshProUGUI.materialForRendering = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.TMPro.TextMeshProUGUI.autoSizeTextContainer = nil
--[[
	CS.UnityEngine.Mesh
	 Get 
--]]
CS.TMPro.TextMeshProUGUI.mesh = nil
--[[
	CS.UnityEngine.CanvasRenderer
	 Get 
--]]
CS.TMPro.TextMeshProUGUI.canvasRenderer = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector4]
	 Get 	 Set 
--]]
CS.TMPro.TextMeshProUGUI.maskOffset = nil
function CS.TMPro.TextMeshProUGUI:ComputeMarginSize() end
function CS.TMPro.TextMeshProUGUI:CalculateLayoutInputHorizontal() end
function CS.TMPro.TextMeshProUGUI:CalculateLayoutInputVertical() end
function CS.TMPro.TextMeshProUGUI:SetVerticesDirty() end
function CS.TMPro.TextMeshProUGUI:SetLayoutDirty() end
function CS.TMPro.TextMeshProUGUI:SetMaterialDirty() end
function CS.TMPro.TextMeshProUGUI:SetAllDirty() end
--[[
	@update CS.UnityEngine.UI.CanvasUpdate
--]]
function CS.TMPro.TextMeshProUGUI:Rebuild(update) end
--[[
	@baseMaterial CS.UnityEngine.Material
	@return: [luaIde#CS.UnityEngine.Material]
--]]
function CS.TMPro.TextMeshProUGUI:GetModifiedMaterial(baseMaterial) end
function CS.TMPro.TextMeshProUGUI:RecalculateClipping() end
--[[
	@clipRect CS.UnityEngine.Rect
	@validRect CS.System.Boolean
--]]
function CS.TMPro.TextMeshProUGUI:Cull(clipRect,validRect) end
function CS.TMPro.TextMeshProUGUI:UpdateMeshPadding() end
--[[
	@ignoreActiveState CS.System.Boolean
	@forceTextReparsing CS.System.Boolean
--]]
function CS.TMPro.TextMeshProUGUI:ForceMeshUpdate(ignoreActiveState,forceTextReparsing) end
--[[
	@text CS.System.String
	@return: CS.TMPro.TMP_TextInfo
--]]
function CS.TMPro.TextMeshProUGUI:GetTextInfo(text) end
function CS.TMPro.TextMeshProUGUI:ClearMesh() end
--[[
	@value CS.System.Action
--]]
function CS.TMPro.TextMeshProUGUI:add_OnPreRenderText(value) end
--[[
	@value CS.System.Action
--]]
function CS.TMPro.TextMeshProUGUI:remove_OnPreRenderText(value) end
--[[
	@mesh CS.UnityEngine.Mesh
	@index CS.System.Int32
--]]
function CS.TMPro.TextMeshProUGUI:UpdateGeometry(mesh,index) end
--[[
	@flags CS.TMPro.TMP_VertexDataUpdateFlags
--]]
function CS.TMPro.TextMeshProUGUI:UpdateVertexData(flags) end
function CS.TMPro.TextMeshProUGUI:UpdateVertexData() end
function CS.TMPro.TextMeshProUGUI:UpdateFontAsset() end

--@SuperType [luaIde#CS.UnityEngine.MonoBehaviour]
CS.VideoComponent = {}
--[[
	@return: [luaIde#CS.VideoComponent]
]]
function CS.VideoComponent() end
--[[
	@RefType [luaIde#CS.UnityEngine.RenderTexture]
	 Get 
--]]
CS.VideoComponent.RenderTexture = nil
--[[
	@RefType [luaIde#CS.UnityEngine.AudioSource]
	 Get 
--]]
CS.VideoComponent.AudioSource = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Video.VideoPlayer]
	 Get 
--]]
CS.VideoComponent.VideoPlayer = nil
--[[
	@image CS.UnityEngine.UI.RawImage
	@width CS.System.Int32
	@height CS.System.Int32
--]]
function CS.VideoComponent:CreateVideoPlayer(image,width,height) end
--[[
	@url CS.System.String
--]]
function CS.VideoComponent:PlayVideoByPath(url) end

--@SuperType [luaIde#CS.UnityEngine.Texture]
CS.UnityEngine.RenderTexture = {}
--[[
	@desc CS.UnityEngine.RenderTextureDescriptor
	@return: [luaIde#CS.UnityEngine.RenderTexture]
]]
function CS.UnityEngine.RenderTexture(desc) end
--[[
	@textureToCopy CS.UnityEngine.RenderTexture
	@return: [luaIde#CS.UnityEngine.RenderTexture]
]]
function CS.UnityEngine.RenderTexture(textureToCopy) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depth CS.System.Int32
	@format CS.UnityEngine.Experimental.Rendering.DefaultFormat
	@return: [luaIde#CS.UnityEngine.RenderTexture]
]]
function CS.UnityEngine.RenderTexture(width,height,depth,format) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depth CS.System.Int32
	@format CS.UnityEngine.Experimental.Rendering.GraphicsFormat
	@return: [luaIde#CS.UnityEngine.RenderTexture]
]]
function CS.UnityEngine.RenderTexture(width,height,depth,format) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depth CS.System.Int32
	@format CS.UnityEngine.Experimental.Rendering.GraphicsFormat
	@mipCount CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RenderTexture]
]]
function CS.UnityEngine.RenderTexture(width,height,depth,format,mipCount) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depth CS.System.Int32
	@format CS.UnityEngine.RenderTextureFormat
	@readWrite CS.UnityEngine.RenderTextureReadWrite
	@return: [luaIde#CS.UnityEngine.RenderTexture]
]]
function CS.UnityEngine.RenderTexture(width,height,depth,format,readWrite) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depth CS.System.Int32
	@format CS.UnityEngine.RenderTextureFormat
	@return: [luaIde#CS.UnityEngine.RenderTexture]
]]
function CS.UnityEngine.RenderTexture(width,height,depth,format) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depth CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RenderTexture]
]]
function CS.UnityEngine.RenderTexture(width,height,depth) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depth CS.System.Int32
	@format CS.UnityEngine.RenderTextureFormat
	@mipCount CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RenderTexture]
]]
function CS.UnityEngine.RenderTexture(width,height,depth,format,mipCount) end
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.width = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.height = nil
--[[
	CS.UnityEngine.Rendering.TextureDimension
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.dimension = nil
--[[
	CS.UnityEngine.Experimental.Rendering.GraphicsFormat
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.graphicsFormat = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.useMipMap = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.RenderTexture.sRGB = nil
--[[
	CS.UnityEngine.VRTextureUsage
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.vrUsage = nil
--[[
	CS.UnityEngine.RenderTextureMemoryless
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.memorylessMode = nil
--[[
	CS.UnityEngine.RenderTextureFormat
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.format = nil
--[[
	CS.UnityEngine.Experimental.Rendering.GraphicsFormat
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.stencilFormat = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.autoGenerateMips = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.volumeDepth = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.antiAliasing = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.bindTextureMS = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.enableRandomWrite = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.useDynamicScale = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.isPowerOfTwo = nil
--[[
	@RefType [luaIde#CS.UnityEngine.RenderTexture]
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.active = nil
--[[
	CS.UnityEngine.RenderBuffer
	 Get 
--]]
CS.UnityEngine.RenderTexture.colorBuffer = nil
--[[
	CS.UnityEngine.RenderBuffer
	 Get 
--]]
CS.UnityEngine.RenderTexture.depthBuffer = nil
--[[
	CS.System.Int32
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.depth = nil
--[[
	CS.UnityEngine.RenderTextureDescriptor
	 Get 	 Set 
--]]
CS.UnityEngine.RenderTexture.descriptor = nil
function CS.UnityEngine.RenderTexture:GetNativeDepthBufferPtr() end
--[[
	@discardColor CS.System.Boolean
	@discardDepth CS.System.Boolean
--]]
function CS.UnityEngine.RenderTexture:DiscardContents(discardColor,discardDepth) end
function CS.UnityEngine.RenderTexture:MarkRestoreExpected() end
function CS.UnityEngine.RenderTexture:DiscardContents() end
function CS.UnityEngine.RenderTexture:ResolveAntiAliasedSurface() end
--[[
	@target CS.UnityEngine.RenderTexture
--]]
function CS.UnityEngine.RenderTexture:ResolveAntiAliasedSurface(target) end
--[[
	@propertyName CS.System.String
--]]
function CS.UnityEngine.RenderTexture:SetGlobalShaderProperty(propertyName) end
function CS.UnityEngine.RenderTexture:Create() end
function CS.UnityEngine.RenderTexture:Release() end
function CS.UnityEngine.RenderTexture:IsCreated() end
function CS.UnityEngine.RenderTexture:GenerateMips() end
--[[
	@equirect CS.UnityEngine.RenderTexture
	@eye CS.UnityEngine.Camera.MonoOrStereoscopicEye
--]]
function CS.UnityEngine.RenderTexture:ConvertToEquirect(equirect,eye) end
--[[
	@rt CS.UnityEngine.RenderTexture
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.RenderTexture:SupportsStencil(rt) end
--[[
	@temp CS.UnityEngine.RenderTexture
--]]
function CS.UnityEngine.RenderTexture:ReleaseTemporary(temp) end
--[[
	@desc CS.UnityEngine.RenderTextureDescriptor
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(desc) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@format CS.UnityEngine.Experimental.Rendering.GraphicsFormat
	@antiAliasing CS.System.Int32
	@memorylessMode CS.UnityEngine.RenderTextureMemoryless
	@vrUsage CS.UnityEngine.VRTextureUsage
	@useDynamicScale CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer,format,antiAliasing,memorylessMode,vrUsage,useDynamicScale) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@format CS.UnityEngine.Experimental.Rendering.GraphicsFormat
	@antiAliasing CS.System.Int32
	@memorylessMode CS.UnityEngine.RenderTextureMemoryless
	@vrUsage CS.UnityEngine.VRTextureUsage
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer,format,antiAliasing,memorylessMode,vrUsage) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@format CS.UnityEngine.Experimental.Rendering.GraphicsFormat
	@antiAliasing CS.System.Int32
	@memorylessMode CS.UnityEngine.RenderTextureMemoryless
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer,format,antiAliasing,memorylessMode) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@format CS.UnityEngine.Experimental.Rendering.GraphicsFormat
	@antiAliasing CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer,format,antiAliasing) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@format CS.UnityEngine.Experimental.Rendering.GraphicsFormat
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer,format) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@format CS.UnityEngine.RenderTextureFormat
	@readWrite CS.UnityEngine.RenderTextureReadWrite
	@antiAliasing CS.System.Int32
	@memorylessMode CS.UnityEngine.RenderTextureMemoryless
	@vrUsage CS.UnityEngine.VRTextureUsage
	@useDynamicScale CS.System.Boolean
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer,format,readWrite,antiAliasing,memorylessMode,vrUsage,useDynamicScale) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@format CS.UnityEngine.RenderTextureFormat
	@readWrite CS.UnityEngine.RenderTextureReadWrite
	@antiAliasing CS.System.Int32
	@memorylessMode CS.UnityEngine.RenderTextureMemoryless
	@vrUsage CS.UnityEngine.VRTextureUsage
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer,format,readWrite,antiAliasing,memorylessMode,vrUsage) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@format CS.UnityEngine.RenderTextureFormat
	@readWrite CS.UnityEngine.RenderTextureReadWrite
	@antiAliasing CS.System.Int32
	@memorylessMode CS.UnityEngine.RenderTextureMemoryless
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer,format,readWrite,antiAliasing,memorylessMode) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@format CS.UnityEngine.RenderTextureFormat
	@readWrite CS.UnityEngine.RenderTextureReadWrite
	@antiAliasing CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer,format,readWrite,antiAliasing) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@format CS.UnityEngine.RenderTextureFormat
	@readWrite CS.UnityEngine.RenderTextureReadWrite
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer,format,readWrite) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@format CS.UnityEngine.RenderTextureFormat
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer,format) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@depthBuffer CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height,depthBuffer) end
--[[
	@width CS.System.Int32
	@height CS.System.Int32
	@return: [luaIde#CS.UnityEngine.RenderTexture]
--]]
function CS.UnityEngine.RenderTexture:GetTemporary(width,height) end
--[[
	@color CS.UnityEngine.Color
--]]
function CS.UnityEngine.RenderTexture:SetBorderColor(color) end
function CS.UnityEngine.RenderTexture:GetTexelOffset() end

--@SuperType [luaIde#CS.UnityEngine.Behaviour]
CS.UnityEngine.Video.VideoPlayer = {}
--[[
	@return: [luaIde#CS.UnityEngine.Video.VideoPlayer]
]]
function CS.UnityEngine.Video.VideoPlayer() end
--[[
	CS.UnityEngine.Video.VideoSource
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.source = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.url = nil
--[[
	CS.UnityEngine.Video.VideoClip
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.clip = nil
--[[
	CS.UnityEngine.Video.VideoRenderMode
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.renderMode = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Camera]
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.targetCamera = nil
--[[
	@RefType [luaIde#CS.UnityEngine.RenderTexture]
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.targetTexture = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Renderer]
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.targetMaterialRenderer = nil
--[[
	CS.System.String
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.targetMaterialProperty = nil
--[[
	CS.UnityEngine.Video.VideoAspectRatio
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.aspectRatio = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.targetCameraAlpha = nil
--[[
	CS.UnityEngine.Video.Video3DLayout
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.targetCamera3DLayout = nil
--[[
	CS.UnityEngine.Texture
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.texture = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.isPrepared = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.waitForFirstFrame = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.playOnAwake = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.isPlaying = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.isPaused = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.canSetTime = nil
--[[
	CS.System.Double
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.time = nil
--[[
	CS.System.Int64
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.frame = nil
--[[
	CS.System.Double
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.clockTime = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.canStep = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.canSetPlaybackSpeed = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.playbackSpeed = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.isLooping = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.canSetTimeSource = nil
--[[
	CS.UnityEngine.Video.VideoTimeSource
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.timeSource = nil
--[[
	CS.UnityEngine.Video.VideoTimeReference
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.timeReference = nil
--[[
	CS.System.Double
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.externalReferenceTime = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.canSetSkipOnDrop = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.skipOnDrop = nil
--[[
	CS.System.UInt64
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.frameCount = nil
--[[
	CS.System.Single
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.frameRate = nil
--[[
	CS.System.Double
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.length = nil
--[[
	CS.System.UInt32
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.width = nil
--[[
	CS.System.UInt32
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.height = nil
--[[
	CS.System.UInt32
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.pixelAspectRatioNumerator = nil
--[[
	CS.System.UInt32
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.pixelAspectRatioDenominator = nil
--[[
	CS.System.UInt16
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.audioTrackCount = nil
--[[
	CS.System.UInt16
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.controlledAudioTrackMaxCount = nil
--[[
	CS.System.UInt16
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.controlledAudioTrackCount = nil
--[[
	CS.UnityEngine.Video.VideoAudioOutputMode
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.audioOutputMode = nil
--[[
	CS.System.Boolean
	 Get 
--]]
CS.UnityEngine.Video.VideoPlayer.canSetDirectAudioVolume = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UnityEngine.Video.VideoPlayer.sendFrameReadyEvents = nil
function CS.UnityEngine.Video.VideoPlayer:Prepare() end
function CS.UnityEngine.Video.VideoPlayer:Play() end
function CS.UnityEngine.Video.VideoPlayer:Pause() end
function CS.UnityEngine.Video.VideoPlayer:Stop() end
function CS.UnityEngine.Video.VideoPlayer:StepForward() end
--[[
	@trackIndex CS.System.UInt16
	@return: CS.System.String
--]]
function CS.UnityEngine.Video.VideoPlayer:GetAudioLanguageCode(trackIndex) end
--[[
	@trackIndex CS.System.UInt16
	@return: CS.System.UInt16
--]]
function CS.UnityEngine.Video.VideoPlayer:GetAudioChannelCount(trackIndex) end
--[[
	@trackIndex CS.System.UInt16
	@return: CS.System.UInt32
--]]
function CS.UnityEngine.Video.VideoPlayer:GetAudioSampleRate(trackIndex) end
--[[
	@trackIndex CS.System.UInt16
	@enabled CS.System.Boolean
--]]
function CS.UnityEngine.Video.VideoPlayer:EnableAudioTrack(trackIndex,enabled) end
--[[
	@trackIndex CS.System.UInt16
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Video.VideoPlayer:IsAudioTrackEnabled(trackIndex) end
--[[
	@trackIndex CS.System.UInt16
	@return: CS.System.Single
--]]
function CS.UnityEngine.Video.VideoPlayer:GetDirectAudioVolume(trackIndex) end
--[[
	@trackIndex CS.System.UInt16
	@volume CS.System.Single
--]]
function CS.UnityEngine.Video.VideoPlayer:SetDirectAudioVolume(trackIndex,volume) end
--[[
	@trackIndex CS.System.UInt16
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Video.VideoPlayer:GetDirectAudioMute(trackIndex) end
--[[
	@trackIndex CS.System.UInt16
	@mute CS.System.Boolean
--]]
function CS.UnityEngine.Video.VideoPlayer:SetDirectAudioMute(trackIndex,mute) end
--[[
	@trackIndex CS.System.UInt16
	@return: [luaIde#CS.UnityEngine.AudioSource]
--]]
function CS.UnityEngine.Video.VideoPlayer:GetTargetAudioSource(trackIndex) end
--[[
	@trackIndex CS.System.UInt16
	@source CS.UnityEngine.AudioSource
--]]
function CS.UnityEngine.Video.VideoPlayer:SetTargetAudioSource(trackIndex,source) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.EventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:add_prepareCompleted(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.EventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:remove_prepareCompleted(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.EventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:add_loopPointReached(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.EventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:remove_loopPointReached(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.EventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:add_started(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.EventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:remove_started(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.EventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:add_frameDropped(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.EventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:remove_frameDropped(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.ErrorEventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:add_errorReceived(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.ErrorEventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:remove_errorReceived(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.EventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:add_seekCompleted(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.EventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:remove_seekCompleted(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.TimeEventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:add_clockResyncOccurred(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.TimeEventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:remove_clockResyncOccurred(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.FrameReadyEventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:add_frameReady(value) end
--[[
	@value CS.UnityEngine.Video.VideoPlayer.FrameReadyEventHandler
--]]
function CS.UnityEngine.Video.VideoPlayer:remove_frameReady(value) end

--@SuperType [luaIde#CS.System.Object]
CS.UnityEngine.Microphone = {}
--[[
	@return: [luaIde#CS.UnityEngine.Microphone]
]]
function CS.UnityEngine.Microphone() end
--[[
	CS.System.String<>
	 Get 
--]]
CS.UnityEngine.Microphone.devices = nil
--[[
	@deviceName CS.System.String
	@loop CS.System.Boolean
	@lengthSec CS.System.Int32
	@frequency CS.System.Int32
	@return: [luaIde#CS.UnityEngine.AudioClip]
--]]
function CS.UnityEngine.Microphone:Start(deviceName,loop,lengthSec,frequency) end
--[[
	@deviceName CS.System.String
--]]
function CS.UnityEngine.Microphone:End(deviceName) end
--[[
	@deviceName CS.System.String
	@return: CS.System.Boolean
--]]
function CS.UnityEngine.Microphone:IsRecording(deviceName) end
--[[
	@deviceName CS.System.String
	@return: CS.System.Int32
--]]
function CS.UnityEngine.Microphone:GetPosition(deviceName) end
--[[
	@deviceName CS.System.String
	@minFreq CS.System.Int32&
	@maxFreq CS.System.Int32&
--]]
function CS.UnityEngine.Microphone:GetDeviceCaps(deviceName,minFreq,maxFreq) end

--@SuperType [luaIde#CS.UnityEngine.UI.MaskableGraphic]
CS.UIPolygonBuilder = {}
--[[
	@return: [luaIde#CS.UIPolygonBuilder]
]]
function CS.UIPolygonBuilder() end
--[[
	CS.UnityEngine.Texture
	 Get 
--]]
CS.UIPolygonBuilder.mainTexture = nil
--[[
	CS.System.Boolean
	 Get 	 Set 
--]]
CS.UIPolygonBuilder.fill = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UIPolygonBuilder.thickness = nil
--[[
	CS.System.Single
	 Get 	 Set 
--]]
CS.UIPolygonBuilder.rotation = nil
--[[
	CS.System.Single<>
	 Get 	 Set 
--]]
CS.UIPolygonBuilder.VerticesDistances = nil
--[[
	@RefType [luaIde#CS.UnityEngine.Vector2<>]
	 Get 	 Set 
--]]
CS.UIPolygonBuilder.topPoint = nil
--[[
	@_VerticesDistances CS.System.Single<>
--]]
function CS.UIPolygonBuilder:DrawPolygon(_VerticesDistances) end
--[[
	@_VerticesDistances CS.System.Single<>
	@_rotation CS.System.Single
--]]
function CS.UIPolygonBuilder:DrawPolygon(_VerticesDistances,_rotation) end
--[[
	@_VerticesDistances CS.System.Single<>
--]]
function CS.UIPolygonBuilder:SetPoint(_VerticesDistances) end
function CS.UIPolygonBuilder:GetTopPoint() end

