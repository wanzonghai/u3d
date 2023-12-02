using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class panel_win: BasePanel
{
    private Image icon;

    UIManager uIManager = null;
    GameMgr gameMgr = null;
    GameDate gameDate = null;
    
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    protected override void Awake()
    {
        base.Awake();
        uIManager = UIManager.Getinstance();
        gameMgr = GameMgr.Getinstance();
        gameDate = GameDate.Getinstance();
        InintView();

    }

    private void InintView()
    {
        icon = gameObject.transform.Find("icon").gameObject.GetComponent<Image>();
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
        string icon_name = gameDate.isWin ? "bg_win" : "bg_lose";
        icon.sprite= gameMgr.GetRes<Sprite>(icon_name, gameMgr.res_result);
    }

    protected override void OnClick(string btnName)
    {
        switch (btnName)
        {
            case "btn_next":
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
