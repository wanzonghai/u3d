using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

public class EventManager : Singleton<EventManager>
{
    // 声明通用的事件委托
    public delegate void EventHandler(params object[] args);
    public event EventHandler OnEventLoadPanel;

    // 触发事件的方法
    public void TriggerEventLoadPanel()
    {
        OnEventLoadPanel?.Invoke();
    }
}
