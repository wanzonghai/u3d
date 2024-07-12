using DG.Tweening;
using UnityEngine;
using XLua;

public static class LuaUIUtils
{
    public static Tweener DoMove(Transform target, Vector3 vector3, float duration) { return target.DOMove(vector3, duration); }
    public static Tweener DoMove2(Transform target, Vector2 vector2, float duration) { return target.DOMove(vector2, duration); }
    public static Tweener DoMoveX(Transform target, float endValue, float duration) { return target.DOMoveX(endValue, duration); }
    public static Tweener DoMoveY(Transform target, float endValue, float duration) { return target.DOMoveY(endValue, duration); }
    public static Tweener DoMoveZ(Transform target, float endValue, float duration) { return target.DOMoveZ(endValue, duration); }
    public static Tweener DoLocalMove(Transform target, Vector3 vector3, float duration) { return target.DOLocalMove(vector3, duration); }
    public static Tweener DoLocalMove(Transform target, Vector2 vector2, float duration) { return target.DOLocalMove(vector2, duration); }
    public static Tweener DoLocalMoveX(Transform target, float endValue, float duration) { return target.DOLocalMoveX(endValue, duration); }
    public static Tweener DoLocalMoveY(Transform target, float endValue, float duration) { return target.DOLocalMoveY(endValue, duration); }
    public static Tweener DoLocalMoveZ(Transform target, float endValue, float duration) { return target.DOLocalMoveZ(endValue, duration); }
    public static Tweener DoScale(Transform target, Vector3 vector3, float duration) { return target.DOScale(vector3, duration); }
    public static Tweener DoScale(Transform target, Vector2 vector2, float duration) { return target.DOScale(vector2, duration); }
    public static Tweener DoScaleX(Transform target, float endValue, float duration) { return target.DOScaleX(endValue, duration); }
    public static Tweener DoScaleY(Transform target, float endValue, float duration) { return target.DOScaleY(endValue, duration); }
    public static Tweener DoScaleZ(Transform target, float endValue, float duration) { return target.DOScaleZ(endValue, duration); }
    public static Tweener DoRotate(Transform target, Vector3 vector3, float duration) { return target.DORotate(vector3, duration); }
    public static Tweener DoRotate(Transform target, Vector2 vector2, float duration) { return target.DORotate(vector2, duration); }
    public static Tweener DoLocalRotate(Transform target, Vector3 vector3, float duration) { return target.DOLocalRotate(vector3, duration); }
    public static Tweener DoLocalRotate(Transform target, Vector2 vector2, float duration) { return target.DOLocalRotate(vector2, duration); }
    public static Tweener DoFloat(float from, float to, float duration, LuaFunction onUpdate) { return DOTween.To(() => from, x => from = x, to, duration).OnUpdate(() => { onUpdate.Call(from); }); }
    public static Tweener SetEase(Tweener tweener, Ease ease) { return tweener.SetEase(ease); }
    public static Tweener SetDelay(Tweener tweener, float delay) { return tweener.SetDelay(delay); }
    public static Tweener SetRelative(Tweener tweener) { return tweener.SetRelative(); }
    public static Tweener OnStart(Tweener tweener, LuaFunction onStart) { return tweener.OnStart(() => { onStart.Call(); }); }
    public static Tweener OnUpdate(Tweener tweener, LuaFunction onUpdate) { return tweener.OnUpdate(() => { onUpdate.Call(); }); }
    public static Tweener OnComplete(Tweener tweener, LuaFunction onComplete) { return tweener.OnComplete(() => { onComplete.Call(); }); }
    public static void Kill(Tweener tweener, bool complete) { tweener.Kill(complete); }
}
