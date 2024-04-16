using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class FirstScene: MonoBehaviour
{
    private Transform Layer_top;
    private Toggle privacyToggle;
    private GameObject loadingPanel;
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
    }

    private void InintView()
    {
        Layer_top = transform.parent.Find("Layer_top");
        //privacyToggle = transform.parent.Find("Layer_mid/Toggle_privacy")?.GetComponent<Toggle>();
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
    // Start is called before the first frame update
    void Start()
    {
        //initialize
        App.EventMgr.OnEventLoadPanel += OnEventLoadHanel;
    }

    // Update is called once per frame
    void Update()
    {
    }

    private void UpdateView()
    {
    }

    public void OnBtnClick()
    {
        // 检查是否有 EventSystem
        if (EventSystem.current == null) return;

        // 检查是否有按下的按钮
        GameObject clickedObject = EventSystem.current.currentSelectedGameObject;
        if (clickedObject == null) return;
        string btn_name = clickedObject.name;
        switch (btn_name)
        {
            case "btn_start":
                if (privacyToggle != null && privacyToggle.isOn)
                {
                    ShowLoadPanelAsync();
                }
                ShowLoadPanelAsync();
                break;
            case "btn_help":
                App.PanelMgr.ShowPanel(ResPath.BundleURL, ResPath.Panel_help, Layer_top);
                break;
            case "btn_exit":
                App.GameMgr.QuitGame();
                break;
            case "btn_privacy":
                App.PanelMgr.ShowPanel(ResPath.BundleURL, ResPath.Panel_privacy, Layer_top);
                break;
            default:
                break;
        }
    }

    private  void ShowLoadPanelAsync()
    {
        App.PanelMgr.ShowPanel(ResPath.BundleURL, ResPath.Panel_load,Layer_top);

        //GameManager.Instance.LoadScene("NextScene");
    }
    private void OnEventLoadHanel(params object[] args)
    {
        App.GameMgr.LoadScene("MainScene");
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
        if (App.EventMgr != null)
        {
            App.EventMgr.OnEventLoadPanel -= OnEventLoadHanel;
        }
    }
}
