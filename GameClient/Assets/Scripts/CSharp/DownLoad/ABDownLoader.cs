using System.Collections.Generic;
using System.Diagnostics;

public class ABDownLoader
{
    private ABDLManager _ABDLManager;
    private string[] _loadPath;
    private string _sign;
    private List<DownLoader> _downLoader = new List<DownLoader>();
    private List<EventUtils.Event> _completes = new List<EventUtils.Event>();
    private List<EventUtils.EventWithFloat> _progress = new List<EventUtils.EventWithFloat>();
    private DownLoaderState _state = DownLoaderState.None;

    private bool _async;
    private bool _addSign = false;
    public int FpsNum = 0;

    public ABDownLoader(string path, string sign, bool async = false)
    {
        Initialize(new string[] { path }, sign, async);
    }

    public ABDownLoader(string[] path, string sign, bool async = false)
    {
        Initialize(path, sign, async);
    }

     private void Initialize(string[] path, string sign, bool async)
    {
        _ABDLManager = ABDLManager.GetInstance();
        _sign = sign;
        _async = async;

        _loadPath = _ABDLManager.GetDependencies(path, true).ToArray();
        for (int i = 0; i < _loadPath.Length; i++)
        {
            _downLoader.Add(_ABDLManager.DownLoader(_loadPath[i]));
        }
    }

    public void AddSign()
    {
        if (_addSign) return;
        _addSign = true;
        for (int i = 0; i < _downLoader.Count; i++)
        {
            _downLoader[i].AddSign(_sign);
        }
    }

    public void Load(EventUtils.Event complete = null, EventUtils.EventWithFloat progress = null)
    {
        switch (_state)
        {
            case DownLoaderState.None:
                if (complete != null) _completes.Add(complete);
                if (progress != null) _progress.Add(progress);

                AddSign();
                StartDownLoader();
                break;
            case DownLoaderState.Running:
                if (complete != null) _completes.Add(complete);
                if (progress != null) _progress.Add(progress);
                break;
            case DownLoaderState.Complete:
                if (progress != null) progress(1f);
                if (complete != null) complete();
                break;
        }
    }

    public float Progress
    {
        get
        {
            switch (_state)
            {
                case DownLoaderState.None:
                    return 0f;
                case DownLoaderState.Running:
                    float length = _loadPath.Length;
                    float curr = _completeCount;
                    return curr / length;
                case DownLoaderState.Complete:
                    return 1f;
            }
            return 0f;
        }
    }

    private void StartDownLoader()
    {
        _state = DownLoaderState.Running;
        DownLoader();
    }

    private int _completeCount;
    private int _loadIndex;
    private int _nowFpsNum;
    private FrameTick _frameTick;
    private void DownLoader(DownLoader downLoader = null)
    {
        if (downLoader != null)
        {
            _completeCount++;
            for (int i = 0; i < _progress.Count; i++)
            {
                _progress[i](Progress);
            }
            if (_completeCount == _loadPath.Length)
            {
                Completes();
                return;
            }
        }
        if (_loadIndex < _loadPath.Length)
        {
            if (!_async && FpsNum > 0 && _nowFpsNum >= FpsNum)
            {
                _nowFpsNum = 0;
                _frameTick = new FrameTick(1, delegate () { NextDownLoader(); });
            }
            else NextDownLoader();
        }
    }
    private void NextDownLoader()
    {
        _loadIndex++;
        var dl = _downLoader[_loadIndex - 1];
        if (dl.State != DownLoaderState.Complete) _nowFpsNum++;
        dl.Load(DownLoader, _async, _sign);
    }

    private void Completes()
    {
        _state = DownLoaderState.Complete;
        for (int i = 0; i < _completes.Count; i++)
        {
            _completes[i]();
        }
        _completes.Clear();
        _progress.Clear();
    }

    public void UnLoad()
    {
        if (_state == DownLoaderState.None) return;
        _completeCount = _loadIndex = 0;
        _completes.Clear();
        _progress.Clear();
        if (_frameTick != null) _frameTick.Destroy();
        _state = DownLoaderState.None;

        _addSign = false;
        for (int i = 0; i < _downLoader.Count; i++)
        {
            _downLoader[i].UnLoad(_sign);
        }
    }

    public DownLoaderState State
    {
        get { return _state; }
    }

    public string Sign
    {
        get { return _sign; }
    }
}
