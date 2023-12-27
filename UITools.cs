// UITools 类实现了 IPointerDownHandler、IDragHandler 和 IPointerUpHandler 接口，用于处理指针按下、拖拽和指针抬起事件。通过这些事件，你可以实现拖拽 UI 元素的功能。

// 你可以将这个脚本附加到任何包含 RectTransform 的 UI 元素上，并根据需要扩展它以支持其他功能。
// 例如，你可以添加滑动功能，通过监听 Scroll 事件来实现。
// 同样，你也可以添加缩放功能，通过监听缩放手势事件来实现。
// minScale 和 maxScale 变量定义了允许UI元素的最小和最大缩放。

using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class UITools : MonoBehaviour, IPointerDownHandler, IDragHandler, IPointerUpHandler
{
    private RectTransform rectTransform;
    private Canvas canvas;

    private bool isDragging = false;
    private Vector2 originalPosition;

    void Start()
    {
        rectTransform = GetComponent<RectTransform>();
        canvas = GetComponentInParent<Canvas>();
    }

    public void OnPointerDown(PointerEventData eventData)
    {
        isDragging = true;
        originalPosition = rectTransform.anchoredPosition;
    }

    public void OnDrag(PointerEventData eventData)
    {
        if (isDragging)
        {
            Vector2 localPointerPosition;
            RectTransformUtility.ScreenPointToLocalPointInRectangle(canvas.transform as RectTransform, eventData.position, canvas.worldCamera, out localPointerPosition);
            rectTransform.localPosition = localPointerPosition;
        }
    }

    public void OnPointerUp(PointerEventData eventData)
    {
        isDragging = false;
    }
    public void OnScroll(PointerEventData eventData)
    {
        // Simple scaling based on scroll delta  根据滚动增量进行简单的缩放
        float scaleFactor = 1.0f + eventData.scrollDelta.y * 0.1f;
        rectTransform.localScale = Vector3.ClampMagnitude(rectTransform.localScale * scaleFactor, maxScale);

        // Optionally, you can add code to adjust other properties based on the scale, if needed
    }
    // 可以根据需要添加滑动、缩放等功能的实现
}
