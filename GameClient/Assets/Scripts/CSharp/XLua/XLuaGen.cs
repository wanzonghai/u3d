using System;
using System.Collections.Generic;
using UnityEngine;
using XLua;
using IceMark.UI;
using DG.Tweening;
using UnityEngine.AI;
using UnityEngine.UI.Extensions;
using UnityEngine.U2D;
using UnityEngine.UI;
using System.Security;
//using ShaderStudio;
using UnityEngine.EventSystems;
using UnityEngine.Profiling;
using UnityEngine.Networking;
//using ShaderStudio.ImageEffect;
using System.IO;
using System.Security.AccessControl;
using UnityEngine.Rendering.Universal;
using TMPro;
using UnityEngine.Video;

public static class XLuaGen
{
    [LuaCallCSharp]
    public static List<Type> LuaCallCSharpList = new List<Type>()
    {
		typeof(Screen),
        typeof(System.Object),
        typeof(UnityEngine.Object),
        typeof(Vector2),
        typeof(Vector3),
        typeof(Vector4),
        typeof(Quaternion),
        typeof(Color),
        typeof(Ray),
        typeof(Time),
        typeof(GameObject),
        typeof(Component),
        typeof(Behaviour),
        typeof(Transform),
        typeof(Resources),
        typeof(TextAsset),
        typeof(MonoBehaviour),
        typeof(ParticleSystem),
        typeof(ParticleSystem.MinMaxCurve),
        typeof(ParticleSystem.MainModule),
        typeof(ParticleSystem.ShapeModule),
        typeof(ParticleSystem.EmissionModule),
        typeof(SkinnedMeshRenderer),
        typeof(Renderer),
        typeof(UnityWebRequest),
        typeof(UnityWebRequest.Result),
        typeof(List<int>),
        typeof(List<float>),
        typeof(List<string>),
        typeof(Action<string>),
        typeof(UnityEngine.Debug),
        typeof(Animation),
        typeof(Animator),
        typeof(AnimatorStateInfo),
        typeof(Camera),
        typeof(RaycastHit),
        typeof(Physics),
        typeof(BoxCollider),
        typeof(AudioSource),
        typeof(AudioClip),
        typeof(AudioListener),
        typeof(UIEventListener),
        typeof(AssetDataPath),
        typeof(TotalManager),
        typeof(HotFixManager),
        typeof(NetworkManager),
        typeof(HTTPManager),
        typeof(OperatingSystem),
        typeof(LuaUtils),
        typeof(LuaUIUtils),
        typeof(ABDLManager),
        typeof(DownLoader),
        typeof(ABDownLoader),
        typeof(DownLoaderState),
        typeof(WrapMode),
        typeof(UnityEngine.SceneManagement.LoadSceneMode),
        typeof(UnityEngine.SceneManagement.SceneManager),
        typeof(IceMarkTools),
        typeof(IceButton),
        typeof(Tweener),
        typeof(Mathf),
        typeof(Rigidbody),
        typeof(RectTransform),
        typeof(Ease),
        typeof(Rect),
        typeof(RectTransformUtility),
        typeof(SystemInfo),
        typeof(CameraClearFlags),
        typeof(Image),
        typeof(Button),
        typeof(Canvas),
        typeof(Input),
        typeof(Application),
        typeof(Text),
        typeof(KeyCode),
        typeof(ParticleSystemRenderer),
        typeof(EventSystem),
        typeof(StandaloneInputModule),
        typeof(GameUtils),
        typeof(GC),
        typeof(FPS),
        typeof(Directory),
        typeof(FileInfo),
        typeof(CameraRenderType),
        typeof(TextMesh),
        //typeof(GooglePlay),
    };

    [CSharpCallLua]
    public static List<Type> CSharpCallLuaList = new List<Type>()
    {
        typeof(Action),
        typeof(Func<double, double, double>),
        typeof(Action<string>),
        typeof(Action<double>),
        typeof(UnityEngine.Events.UnityAction<bool>),
        typeof(UnityEngine.Events.UnityAction),
        typeof(System.Collections.IEnumerator),
        typeof(EventUtils.Event),
        typeof(EventUtils.EventWithByte),
        typeof(EventUtils.EventWithFloat),
        typeof(EventUtils.EventWithBool),
        typeof(EventUtils.SocketDispatchEvent),
        typeof(EventUtils.EventWithInt),
        typeof(EventUtils.LinkTexthEvent),
        typeof(EventUtils.ImageTexthEvent),
        typeof(EventUtils.EventWithVector2),
        typeof(UnityEngine.Events.UnityAction<GameObject>),
        typeof(UnityEngine.Events.UnityAction<IceButton>),
        typeof(UnityEngine.Events.UnityAction<Vector2>),
        typeof(UIEventListener.VoidDelegate),
        typeof(UIEventListener.VectorDelegate),
        typeof(DG.Tweening.TweenCallback),
        typeof(DG.Tweening.Core.DOSetter<int>),
        typeof(DG.Tweening.Core.DOGetter<int>),
        typeof(DG.Tweening.Core.TweenerCore<Quaternion, Vector3, DG.Tweening.Plugins.Options.QuaternionOptions>),
    };

    //一个C#纯值类型（注：指的是一个只包含值类型的struct，可以嵌套其它只包含值类型的struct）或者C#枚举值加上了这个配置
    [GCOptimize]
    public static List<Type> GCOptimizeList = new List<Type>()
    {
        typeof(byte),
        typeof(sbyte),
        typeof(short),
        typeof(ushort),
        typeof(int),
        typeof(uint),
        typeof(long),
        typeof(ulong),
        typeof(float),
        typeof(double),
        typeof(Keyframe),
        typeof(WrapMode),
        typeof(UnityEngine.SceneManagement.LoadSceneMode),
        typeof(Ease),
        typeof(OperatingSystem),
        typeof(RenderMode),
        typeof(CameraClearFlags),
        typeof(NavMeshPathStatus),
        typeof(ParticleSystemCurveMode),
        typeof(Mathf),
        typeof(KeyCode),
        typeof(DownLoaderState),
        typeof(UnityWebRequest.Result),
        typeof(CameraRenderType),
        typeof(SpriteMaskInteraction),
        typeof(AnimatorStateInfo),
    };

    //黑名单
    [BlackList]
    public static List<List<string>> BlackList = new List<List<string>>()
    {
        new List<string>(){"System.Text.StringBuilder", "Chars"},
        new List<string>(){"UnityEngine.Texture2D", "alphaIsTransparency"},
        new List<string>(){"UnityEngine.Security", "GetChainOfTrustValue"},
        new List<string>(){"UnityEngine.CanvasRenderer", "onRequestRebuild"},
        new List<string>(){"UnityEngine.Light", "areaSize"},
        new List<string>(){"UnityEngine.AnimatorOverrideController", "PerformOverrideClipListCleanup"},
#if !UNITY_WEBPLAYER
        new List<string>(){"UnityEngine.Application", "ExternalEval"},
#endif
        new List<string>(){"UnityEngine.Input", "IsJoystickPreconfigured", "System.String"},
        new List<string>(){"UnityEngine.UI.Graphic", "OnRebuildRequested"},
        new List<string>(){"UnityEngine.UI.Text", "OnRebuildRequested"},
        new List<string>(){"UnityEngine.GameObject", "networkView"}, //4.6.2 not support
        new List<string>(){"UnityEngine.Component", "networkView"},  //4.6.2 not support
        new List<string>(){"System.IO.FileInfo", "GetAccessControl"},
        new List<string>(){"System.IO.FileInfo", "GetAccessControl", "System.Security.AccessControl.AccessControlSections"},
        new List<string>(){"System.IO.FileInfo", "SetAccessControl", "System.Security.AccessControl.FileSecurity"},
        new List<string>(){"System.IO.DirectoryInfo", "GetAccessControl", "System.Security.AccessControl.AccessControlSections"},
        new List<string>(){"System.IO.DirectoryInfo", "SetAccessControl", "System.Security.AccessControl.DirectorySecurity"},
        new List<string>(){"System.IO.DirectoryInfo", "CreateSubdirectory", "System.String", "System.Security.AccessControl.DirectorySecurity"},
        new List<string>(){"System.IO.DirectoryInfo", "Create", "System.Security.AccessControl.DirectorySecurity"},
        new List<string>(){"UnityEngine.MonoBehaviour", "runInEditMode"},
        new List<string>(){"System.IO.Directory", "CreateDirectory", "System.String", "System.Security.AccessControl.DirectorySecurity"},
        new List<string>(){"System.IO.Directory", "SetAccessControl", "System.String", "System.Security.AccessControl.DirectorySecurity"},
        new List<string>(){"System.IO.Directory", "GetAccessControl" , "System.String"},
        new List<string>(){"System.IO.Directory", "GetAccessControl" , "System.String", "System.Security.AccessControl.AccessControlSections"},
        new List<string>(){"UnityEngine.ParticleSystemRenderer", "supportsMeshInstancing"},
        new List<string>(){"UnityEngine.AudioSource", "gamepadSpeakerOutputType"},
        new List<string>(){"UnityEngine.AudioSource", "PlayOnGamepad", "System.Int32"},
        new List<string>(){"UnityEngine.AudioSource", "DisableGamepadOutput"},
        new List<string>(){"UnityEngine.AudioSource", "SetGamepadSpeakerMixLevel", "System.Int32", "System.Int32"},
        new List<string>(){"UnityEngine.AudioSource", "SetGamepadSpeakerMixLevelDefault", "System.Int32"},
        new List<string>(){"UnityEngine.AudioSource", "SetGamepadSpeakerRestrictedAudio", "System.Int32", "System.Boolean"},
        new List<string>(){"UnityEngine.AudioSource", "GamepadSpeakerSupportsOutputType", "UnityEngine.GamepadSpeakerOutputType"},
    };
}
