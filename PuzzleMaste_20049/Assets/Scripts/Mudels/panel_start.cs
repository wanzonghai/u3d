using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class panel_start: BasePanel
{
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
       
    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        UpdateView();

    }
    public override void ShowMe()
    {
        base.ShowMe();

    }
    public override void HideMe()
    {
        base.HideMe();

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
    }

    protected override void OnClick(string btnName)
    {
        switch (btnName)
        {
            case "btn_start":
                uIManager.HidePanel(this.gameObject.name.Replace("(Clone)", ""));
                EventDispatcher.Getinstance().DispatchEvent(GameDate.Getinstance().StartGame);
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
        this.removeEvent();
       
    }
    //monobehaviour is destroyed
    void OnDestroy() {
        this.removeEvent();
    }
    private void removeEvent()
    {
       
    }
}