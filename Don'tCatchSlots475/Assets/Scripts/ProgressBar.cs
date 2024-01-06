using UnityEngine;
using UnityEngine.UI;

public class ProgressBar : MonoBehaviour
{
    public float fillSpeed = 0.5f; // 进度条填充速度

    public Slider slider;
    private float targetProgress = 0f;

    void Start()
    {
        slider = transform.GetComponent<Slider>();
        SetProgress(0f); // 初始进度为0
    }

    void Update()
    {
        // 在Update中更新进度条的显示
        if (slider.value < targetProgress)
        {
            slider.value += fillSpeed * Time.deltaTime;
        }
        else if (slider.value > targetProgress)
        {
            slider.value = targetProgress;
        }
    }

    // 设置目标进度
    public void SetProgress(float progress)
    {
        targetProgress = Mathf.Clamp01(progress);
    }
}
