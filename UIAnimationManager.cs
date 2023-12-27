using System.Collections;
using UnityEngine;
using UnityEngine.UI;

public class UIAnimationManager : MonoBehaviour
{
    public enum AnimationType
    {
        FadeIn,
        FadeOut,
        ScaleIn,
        ScaleOut,
        MoveIn,
        MoveOut
        // 可以根据需要添加更多动画类型
    }

    public float animationDuration = 0.5f;
    public AnimationCurve animationCurve = AnimationCurve.Linear;

    public void PlayAnimation(AnimationType animationType, GameObject targetObject, System.Action onAnimationComplete = null)
    {
        StartCoroutine(AnimateUI(animationType, targetObject, onAnimationComplete));
    }

    IEnumerator AnimateUI(AnimationType animationType, GameObject targetObject, System.Action onAnimationComplete)
    {
        RectTransform rectTransform = targetObject.GetComponent<RectTransform>();
        Vector3 originalPosition = rectTransform.localPosition;
        Vector3 originalScale = rectTransform.localScale;
        Color originalColor = targetObject.GetComponent<Graphic>().color;

        float elapsedTime = 0f;

        while (elapsedTime < animationDuration)
        {
            float normalizedTime = elapsedTime / animationDuration;
            float curveValue = animationCurve.Evaluate(normalizedTime);

            switch (animationType)
            {
                case AnimationType.FadeIn:
                    targetObject.GetComponent<Graphic>().color = new Color(originalColor.r, originalColor.g, originalColor.b, curveValue);
                    break;

                case AnimationType.FadeOut:
                    targetObject.GetComponent<Graphic>().color = new Color(originalColor.r, originalColor.g, originalColor.b, 1 - curveValue);
                    break;

                case AnimationType.ScaleIn:
                    rectTransform.localScale = originalScale * curveValue;
                    break;

                case AnimationType.ScaleOut:
                    rectTransform.localScale = originalScale * (1 - curveValue);
                    break;

                case AnimationType.MoveIn:
                    rectTransform.localPosition = originalPosition + Vector3.up * curveValue * 100f; // 100 is just an example, adjust as needed
                    break;

                case AnimationType.MoveOut:
                    rectTransform.localPosition = originalPosition + Vector3.down * curveValue * 100f;
                    break;

                // 可以根据需要添加更多动画类型

                default:
                    break;
            }

            elapsedTime += Time.deltaTime;
            yield return null;
        }

        // Ensure the final state
        switch (animationType)
        {
            case AnimationType.FadeIn:
                targetObject.GetComponent<Graphic>().color = new Color(originalColor.r, originalColor.g, originalColor.b, 1f);
                break;

            case AnimationType.FadeOut:
                targetObject.GetComponent<Graphic>().color = new Color(originalColor.r, originalColor.g, originalColor.b, 0f);
                break;

            case AnimationType.ScaleIn:
                rectTransform.localScale = originalScale;
                break;

            case AnimationType.ScaleOut:
                rectTransform.localScale = Vector3.zero;
                break;

            case AnimationType.MoveIn:
                rectTransform.localPosition = originalPosition;
                break;

            case AnimationType.MoveOut:
                rectTransform.localPosition = originalPosition;
                break;

            // 可以根据需要添加更多动画类型

            default:
                break;
        }

        onAnimationComplete?.Invoke();
    }
}
