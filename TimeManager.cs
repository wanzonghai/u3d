using System;
using System.Collections;
using UnityEngine;

public class TimeManager : MonoBehaviour
{
    private static TimeManager instance;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }

    // 延迟执行任务
    public static void DelayAction(Action action, float delayInSeconds)
    {
        instance.StartCoroutine(DelayCoroutine(action, delayInSeconds));
    }

    // 定时器
    public static void StartTimer(Action onTimerTick, float intervalInSeconds, int repeatCount = 0)
    {
        instance.StartCoroutine(TimerCoroutine(onTimerTick, intervalInSeconds, repeatCount));
    }

    // Coroutine 用于延迟执行
    private static IEnumerator DelayCoroutine(Action action, float delayInSeconds)
    {
        yield return new WaitForSeconds(delayInSeconds);
        action?.Invoke();
    }

    // Coroutine 用于定时器
    private static IEnumerator TimerCoroutine(Action onTimerTick, float intervalInSeconds, int repeatCount)
    {
        int count = 0;

        while (repeatCount == 0 || count < repeatCount)
        {
            yield return new WaitForSeconds(intervalInSeconds);
            onTimerTick?.Invoke();
            count++;
        }
    }
}
>>>>>>>>>>>>>>>>>>>>>>
using UnityEngine;

public class Example : MonoBehaviour
{
    private void Start()
    {
        // 延迟执行示例
        TimeManager.DelayAction(() => Debug.Log("Delayed action"), 2f);

        // 定时器示例，每隔1秒执行一次，重复3次
        TimeManager.StartTimer(() => Debug.Log("Timer tick"), 1f, 3);
    }
}
