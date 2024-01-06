using System;
using System.Collections.Generic;

public class EventMgr
{
    // 定义泛型事件委托
    public delegate void EventHandler<T>(T eventData);

    // 存储不同事件的泛型委托字典
    private static Dictionary<string, Delegate> eventDictionary = new Dictionary<string, Delegate>();

    // 订阅事件
    public static void SubscribeToEvent<T>(string eventName, EventHandler<T> handler)
    {
        if (!eventDictionary.ContainsKey(eventName))
        {
            eventDictionary[eventName] = null;
        }

        eventDictionary[eventName] = (EventHandler<T>)eventDictionary[eventName] + handler;
    }

    // 取消订阅事件
    public static void UnsubscribeFromEvent<T>(string eventName, EventHandler<T> handler)
    {
        if (eventDictionary.ContainsKey(eventName))
        {
            eventDictionary[eventName] = (EventHandler<T>)eventDictionary[eventName] - handler;
        }
    }

    // 触发事件
    public static void TriggerEvent<T>(string eventName, T eventData)
    {
        if (eventDictionary.ContainsKey(eventName))
        {
            ((EventHandler<T>)eventDictionary[eventName])?.Invoke(eventData);
        }
    }
}
