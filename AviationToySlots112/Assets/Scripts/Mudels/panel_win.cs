using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class panel_win: BasePanel
{
    private GameObject icon_win = null;
    private GameObject icon_lose = null;
    private GameObject btn_next = null;
    private GameObject btn_close = null;
    UIManager uIManager = null;
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    protected override void Awake()
    {
        base.Awake();
        uIManager = UIManager.Getinstance();
        InintView();

    }

    private void InintView()
    {
        icon_win = gameObject.transform.Find("icon_win").gameObject;
        icon_lose = gameObject.transform.Find("icon_lose").gameObject;
        btn_next = gameObject.transform.Find("btn_next").gameObject;
        btn_close = btn_next.transform.Find("Image").gameObject;
    }

    public override void ShowMe()
    {
        base.ShowMe();
    }

    public override void HideMe()
    {
        base.HideMe();
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
    }

    // Update is called once per frame
    void Update()
    {
    }

    private void UpdateView()
    {
        GameMgr gameMgr = GameMgr.Getinstance();
        icon_lose.SetActive(!gameMgr.drawReward);
        icon_win.SetActive(gameMgr.drawReward);
        btn_close.SetActive(!gameMgr.drawReward);
    }

    protected override void OnClick(string btnName)
    {
        switch (btnName)
        {
            case "btn_next":
            case "btn_close":
                uIManager.HidePanel(this.gameObject.name.Replace("(Clone)",""));
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
