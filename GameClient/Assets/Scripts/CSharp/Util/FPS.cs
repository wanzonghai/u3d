using System.Collections.Generic;
using UnityEngine;

public class FPS : MonoBehaviour
{
    //属性
    private const float updateInterval = 0.5F;
    private float lastInterval;
	private int frames;
    private float fps;
    private readonly GUIStyle style = new GUIStyle();
    private List<string> _content = new List<string>();
    private string _contentStr;
    public float Fps { get { return fps; } }

    //活动
    void Start()
    {
        lastInterval = Time.realtimeSinceStartup;
		frames = 0;
        style.fontSize = 30;
        style.normal.textColor = Color.red;
    }
    void Update()
	{
		++frames;

		var timeNow = Time.realtimeSinceStartup;
	    if (timeNow <= lastInterval + updateInterval)
            return;

        fps = frames / (timeNow - lastInterval);
	    frames = 0;
        lastInterval = timeNow;
	}
    void OnGUI()
    {
        //屏幕log
        if (IsScreenLog)
        {
            var sLog = "";
            for (var i = _sLogs.Count - 1; i >= 0; i--)
                sLog += _sLogs[i] + "\n";
            GUI.Label(new Rect(10, 10, Screen.width, Screen.height), sLog, style);
            return;
        }

        if (AssetDataPath.IsFps)
        {
            var s = "fps:" + Fps.ToString("#0.00");
            GUI.Label(new Rect(10, 10, 120, 45), s, style);
            GUI.Label(new Rect(10, 40, Screen.width - 10, Screen.height - 40), _contentStr, style);
        }
    }
    public void AddContent(string content)
    {
        //屏幕log,与服端log重复显示了
        if (IsScreenLog)
			return;
			
        if (_content.Count > 25) _content.RemoveAt(0);
        _content.Add(content);
        _contentStr = string.Join("\n", _content.ToArray());
    }


    //屏幕log属性
    /// <summary>是否屏幕log</summary>
    public static bool IsScreenLog = false;
    /// <summary>运行时间</summary>
    private static float _fT;
    /// <summary>屏幕log</summary>
    private static List<string> _sLogs = new List<string>();

    //屏幕log活动
    /// <summary>屏幕log</summary>
    public static void Log(string s)
    {
        if (!IsScreenLog)
            return;
        var obj=GameObject.Find("FPS");
        if (obj == null)
        {
            obj = new GameObject("FPS");
            obj.AddComponent<FPS>();
        }

        //运行时间
        var fT=(int)(Time.realtimeSinceStartup * 10)/10f;
        s += ","+ fT + "差"+(fT- _fT);
        _fT = fT;

        _sLogs.Add(s);
        if (_sLogs.Count > 100)
            _sLogs.RemoveAt(0);
    }
}