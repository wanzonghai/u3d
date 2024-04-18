using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PanelTip: PanelBase
{
    private Text textStr;
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
    }

    private void InintView()
    {
        textStr = transform.Find("text")?.GetComponent<Text>();
    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
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
    public override void InitializePanel(Dictionary<string, object> parameters)
    {
        // Handle parameter initialization for this specific panel

        textStr.text = parameters["tips"].ToString();

        // 开启协程延迟一定时间后回收面板
        StartCoroutine(RecyclePanelAfterDelay(1.5f));
    }
    // Start is called before the first frame update
    void Start()
    {
        //initialize
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

    // 协程：延迟一定时间后回收面板
    private IEnumerator RecyclePanelAfterDelay(float delay)
    {
        // 等待一定时间
        yield return new WaitForSeconds(delay);

        // 回收面板
        App.PanelMgr.HidePanel(gameObject);
        // 你需要根据你的具体情况来实现回收面板的逻辑
        // 这可能涉及到将面板隐藏、销毁或者将其放回对象池等操作
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
