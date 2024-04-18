using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PanelResult: MonoBehaviour
{
    private Image icon_bg;
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
    }

    private void InintView()
    {
        icon_bg = transform.Find("icon")?.GetComponent<Image>();
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
        App.GameMgr.LoadResFromAssetBundle<Sprite>(ResPath.BundleURL_panel, GameData.panelSprites,(panelSprites)=> {
            icon_bg.sprite = panelSprites[GameData.isWin ? "icon_vivtory" : "icon_failed"];
        });
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
