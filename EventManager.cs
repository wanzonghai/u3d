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

public class EventSystem
{
    // 定义事件委托
    public delegate void EventHandler();

    // 事件
    public static event EventHandler OnEventTriggered;

    // 订阅事件
    public static void SubscribeToEvent(EventHandler handler)
    {
        OnEventTriggered += handler;
    }

    // 取消订阅事件
    public static void UnsubscribeFromEvent(EventHandler handler)
    {
        OnEventTriggered -= handler;
    }

    // 触发事件
    public static void TriggerEvent()
    {
        OnEventTriggered?.Invoke();
    }
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
