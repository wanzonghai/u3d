using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PanelLoad: MonoBehaviour
{
    private Image progressbar;
    private Text loadText;
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
    }

    private void InintView()
    {
        progressbar = transform.Find("progress/bar")?.GetComponent<Image>();
        loadText = transform.Find("text")?.GetComponent<Text>();
    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        progressbar.fillAmount = 0f;
        UpdateView();

    }
    //Called when a new level is loaded after all scenarios have been loaded
    //private void OnLevelWasLoaded(int level)
    //{
   // }
    //Editor level, non play_modescript mount or active call reset to default
    private void Reset()
    {
        
    }
    // Start is called before the first frame update
    void Start()
    {
        //initialize
        // 启动资源加载
        StartCoroutine(LoadAssets());
    }
    IEnumerator LoadAssets()
    {
        float startTime = Time.time;
        float elapsedTime = 0f;
        // 在1.5秒内更新进度条
        while (elapsedTime < 1.5f)
        {
            // 计算当前进度
            float progress = elapsedTime / 1.5f;

            // 更新进度条的显示
            if (progressbar != null)
            {
                progressbar.fillAmount = progress;
                loadText.text = "LOADING...." + Mathf.RoundToInt(progress * 100) + "%";
            }

            // 更新经过的时间
            elapsedTime = Time.time - startTime;

            yield return null;
        }
        // 确保进度条填满
        progressbar.fillAmount = 1.0f;
        loadText.text = "LOADING...." +  100 + "%";

        // 触发事件
        EventManager.Instance.TriggerEventLoadPanel();
        App.PanelMgr.HidePanel(gameObject);
    }
    // Update is called once per frame
    void Update()
    {
    }

    private void UpdateView()
    {
    }

        private void OnBtnClick()
    {
       
    }
    ///fixedupdate
    /// <summary>
    /// 退出/销毁
    /// </summary>
    //Sends all objects before the program exits
    void OnApplicationQuit() { 
    }
    //Disabled or inactive
    void OnDisable() {
       
    }
    //monobehaviour is destroyed
    void OnDestroy() {
    }
}
