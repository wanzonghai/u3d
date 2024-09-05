using System;
using System.Collections.Generic;

public class FrameManager
{
    private static FrameManager _instance;
    public FrameManager()
    {
        if (_instance != null)
            throw new Exception("单件实例错误");
        _instance = this;
    }

    public static FrameManager GetInstance()
    {
        if (_instance != null)
        {
            return _instance;
        }
        return new FrameManager();
    }
    private List<FrameTick> _frames = new List<FrameTick>();

    public void Update()
    {
        var frames = _frames.ToArray();
        for (int i = 0; i < frames.Length; i++)
        {
            frames[i].Update();
        }
    }

    public void AddTimer(FrameTick frames)
    {
        _frames.Add(frames);
    }

    public void RemoveTimer(FrameTick frames)
    {
        _frames.Remove(frames);
    }

    public void Dispose()
    {
        _frames.Clear();
    }
}

public class FrameTick
{
    private int _frame;
    private EventUtils.Event _tickFun;
    private bool _isDestroy;

    public FrameTick(int frame, EventUtils.Event tickFun)
    {
        if (frame <= 0)
        {
            _isDestroy = true;
            tickFun();
            return;
        }
        _frame = frame;
        _tickFun = tickFun;
        FrameManager.GetInstance().AddTimer(this);
    }

    internal void Update()
    {
        _frame--;
        if (_frame <= 0)
        {
            _tickFun();
            Destroy();
        }
    }

    public void Destroy()
    {
        if (_isDestroy) return;
        _isDestroy = true;
        FrameManager.GetInstance().RemoveTimer(this);
    }
}
