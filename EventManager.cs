public class EventManager
{
    private static Dictionary<string, UnityEvent> eventDictionary = new Dictionary<string, UnityEvent>();

    public static void AddListener(string eventName, UnityAction listener)
    {
        if (!eventDictionary.ContainsKey(eventName))
            eventDictionary[eventName] = new UnityEvent();

        eventDictionary[eventName].AddListener(listener);
    }

    public static void RemoveListener(string eventName, UnityAction listener)
    {
        if (eventDictionary.ContainsKey(eventName))
            eventDictionary[eventName].RemoveListener(listener);
    }

    public static void TriggerEvent(string eventName)
    {
        if (eventDictionary.ContainsKey(eventName))
            eventDictionary[eventName].Invoke();
    }
}
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
            ((EventHandler<T>)eventDictionary[eventName])?.Invoke(eventName, eventData);
        }
    }
}



private void OnEnable()
{
    UpdateView();
    EventMgr.SubscribeToEvent<bool>("OnGameStarted", HandleGameStarted);        
}

private void HandleGameStarted(bool eventData)
{
    // 在这里处理游戏开始的逻辑
    gameStarted = eventData;
    Debug.Log("游戏开始");
}


>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
using UnityEngine;

public class Subscriber : MonoBehaviour
{
    private void Start()
    {
        // 订阅事件
        EventSystem.SubscribeToEvent(HandleEvent);
    }

    private void OnDestroy()
    {
        // 取消订阅事件
        EventSystem.UnsubscribeFromEvent(HandleEvent);
    }

    private void HandleEvent()
    {
        Debug.Log("Event handled by Subscriber");
    }
}

public class Publisher : MonoBehaviour
{
    private void Update()
    {
        // 在某个条件下触发事件
        if (Input.GetKeyDown(KeyCode.Space))
        {
            EventSystem.TriggerEvent();
        }
    }
}
