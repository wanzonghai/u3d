using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class UIEventListener : UnityEngine.EventSystems.EventTrigger
{
    public delegate void VoidDelegate(GameObject go);
    public delegate void VectorDelegate(GameObject go, PointerEventData data);

    public VoidDelegate onClick;
    public VoidDelegate onDoubleClick;
    public VectorDelegate onDown;
    public VoidDelegate onEnter;
    public VoidDelegate onExit;
    public VectorDelegate onUp;
    public VoidDelegate onSelect;
    public VoidDelegate onUpdateSelect;
    public VoidDelegate onDeSelect;
    public VectorDelegate onDrag;
    public VectorDelegate onDragEnd;
    public VoidDelegate onDrop;
    public VectorDelegate onScroll;
    public VoidDelegate onMove;
    public VectorDelegate onDragStart;
    public bool IsPassEvent;
    public bool IsPassDragEvent;

    static public UIEventListener Get(GameObject go)
    {
        UIEventListener listener = go.GetComponent<UIEventListener>();
        if (listener == null) listener = go.AddComponent<UIEventListener>();
        return listener;
    }
    public override void OnPointerClick(PointerEventData eventData)
    {
        if (onClick != null) onClick(gameObject);
        if (eventData.clickCount == 2 && onDoubleClick != null) onDoubleClick(gameObject);

        if (IsPassEvent)
        {
            PassEvent(eventData, ExecuteEvents.submitHandler);
            PassEvent(eventData, ExecuteEvents.pointerClickHandler);
        }
    }
    public override void OnPointerDown(PointerEventData eventData)
    {
        if (onDown != null) onDown(gameObject, eventData);
        if (IsPassEvent) PassEvent(eventData, ExecuteEvents.pointerDownHandler);
    }

    public override void OnPointerEnter(PointerEventData eventData)
    {
        if (onEnter != null) onEnter(gameObject);
    }
    public override void OnPointerExit(PointerEventData eventData)
    {
        if (onExit != null) onExit(gameObject);
    }
    public override void OnPointerUp(PointerEventData eventData)
    {
        if (onUp != null) onUp(gameObject, eventData);
        if (IsPassEvent) PassEvent(eventData, ExecuteEvents.pointerUpHandler);
    }
    public override void OnSelect(BaseEventData eventData)
    {
        if (onSelect != null) onSelect(gameObject);
    }
    public override void OnUpdateSelected(BaseEventData eventData)
    {
        if (onUpdateSelect != null) onUpdateSelect(gameObject);
    }

    public void PassEvent<T>(PointerEventData data, ExecuteEvents.EventFunction<T> function)
        where T : IEventSystemHandler
    {
        List<RaycastResult> results = new List<RaycastResult>();
        EventSystem.current.RaycastAll(data, results);
        for (int i = 0; i < results.Count; i++)
        {
            UIEventListener eventListener = results[i].gameObject.GetComponent<UIEventListener>();
            if (eventListener && eventListener.IsPassEvent) continue;
            ExecuteEvents.Execute(results[i].gameObject, data, function);
            break;
        }
    }

    public override void OnBeginDrag(PointerEventData eventData)
    {
        if (onDragStart != null)
            onDragStart(gameObject, eventData);
        if (IsPassDragEvent)
        {
            PassEvent(eventData, ExecuteEvents.beginDragHandler);
        }
    }

    public override void OnDeselect(BaseEventData eventData) { if (onDeSelect != null) onDeSelect(gameObject); }
    public override void OnDrag(PointerEventData eventData)
    {
        if (onDrag != null)
            onDrag(gameObject, eventData);
        if (IsPassDragEvent)
        {
            PassEvent(eventData, ExecuteEvents.dragHandler);
        }
    }
    public override void OnEndDrag(PointerEventData eventData) { if (onDragEnd != null) onDragEnd(gameObject, eventData); }
    public override void OnDrop(PointerEventData eventData) { if (onDrop != null) onDrop(gameObject); }
    public override void OnScroll(PointerEventData eventData) { if (onScroll != null) onScroll(gameObject, eventData); }
    public override void OnMove(AxisEventData eventData) { if (onMove != null) onMove(gameObject); }

}
