using DG.Tweening;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// 扩展类，扩展常用类的方法
/// </summary>
public static class ExtensionMethod
{
    // 因为可能经常会用到，为避免反复GetComponent或AddComponent，所以用一个字典存起来，方便多次使用
    private static readonly Dictionary<int, CanvasGroup> CanvasGroupDict = new Dictionary<int, CanvasGroup>();

    /// <summary>
    /// 缓动透明度 第一个参数Transform前加this关键字表示我们对Transform组件进行了扩展
    /// </summary>
    /// <param name="target">缓动目标</param>
    /// <param name="endValue">目标Alpha值</param>
    /// <param name="duration">持续时间</param>
    public static Tweener DOAlpha(this Transform target, float endValue, float duration)
    {
        return GetCanvasGroup(target).DOFade(endValue, duration);
    }

    public static void SetAlpha(this Transform target, float value)
    {
        GetCanvasGroup(target).alpha = value;
    }

    private static CanvasGroup GetCanvasGroup(Transform target)
    {
        CanvasGroup canvasGroup;
        // GetInstanceID()是获取该组件的唯一标识，通常拿来当做唯一性的ID
        int instanceId = target.GetInstanceID();
        if (CanvasGroupDict.ContainsKey(instanceId))
        {
            canvasGroup = CanvasGroupDict[instanceId];
        }
        else
        {
            canvasGroup = target.GetComponent<CanvasGroup>();
            if (canvasGroup == null) canvasGroup = target.gameObject.AddComponent<CanvasGroup>();
            CanvasGroupDict.Add(instanceId, canvasGroup);
        }
        return canvasGroup;
    }

    public static T RandomItem<T>(this List<T> list)
    {
        int randomIndex = Random.Range(0, list.Count);
        return list[randomIndex];
    }

    public static T RandomItem<T>(this T[] arr)
    {
        int randomIndex = Random.Range(0, arr.Length);
        return arr[randomIndex];
    }

	public static int ToInt(this object value)
	{
		return int.Parse(value.ToString());
	}

	public static float ToFloat(this object value)
	{
		return float.Parse(value.ToString());
	}
}