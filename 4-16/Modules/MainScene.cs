using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class MainScene: MonoBehaviour
{
    private Transform Layer_top;
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
    }

    private void InintView()
    {
        Layer_top = transform.parent.Find("Layer_top");
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
        OnLoadAssetBundle();
    }
    private void OnLoadAssetBundle()
    {

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
            case "btn_home":
                App.GameMgr.LoadScene("FirstScene");
                break;
            case "btn_help":
                App.GameMgr.ShowPanel( ResPath.Panel_help, Layer_top);
                break;
            case "btn_effect":
                App.GameMgr.QuitGame();
                break;
            case "btn_music":
                App.GameMgr.ShowPanel(ResPath.Panel_privacy, Layer_top);
                break;
            case "btn_play":
                App.GameMgr.QuitGame();
                break;
            default:
                break;
        }
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
