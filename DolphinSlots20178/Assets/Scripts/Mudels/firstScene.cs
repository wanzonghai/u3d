using StuctsCom;
using System;
using System.Collections;
using System.Text.RegularExpressions;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class firstScene : MonoBehaviour
{
    private GameObject Bot = null;
    private GameObject Mid = null;
    private GameObject Top = null;
    private GameObject layout_nuclear = null;
    private GameObject layout_btn = null;
    private Button btn_music = null;
    private Button btn_back = null;
    private Button btn_spin = null;

    private GameObject region_coin = null;
    private Text label_coin = null;
    private Image progerss = null;

    private GameMgr gameMgr = null;
    private GameDate gameDate = null;
    private PoolMgr poolManage = null;
    private ResMgr resManage = null;
    private Tools tools = null;
    private MusicMgr mgr = null;
    private UIManager UIMgr = null;
    TimerMgr timer_game;


    private int TimerID_game;

    private SItemData itemData;

    private bool isFinishGame = false;

    private bool isFirst = true;


    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        this.gameMgr = GameMgr.Getinstance();
        this.gameDate = GameDate.Getinstance();
        this.poolManage = PoolMgr.Getinstance();
        this.resManage = ResMgr.Getinstance();
        this.tools = Tools.Getinstance();
        this.mgr = MusicMgr.Getinstance();
        this.gameMgr?.init();
        this.gameMgr?.initPoolDic();
        this.InintView();
    }

    private void InintView()
    {
        Bot = gameObject.transform.Find("Bot")?.gameObject;
        Mid = gameObject.transform.Find("Mid")?.gameObject;
        Top = gameObject.transform.Find("Top")?.gameObject;
        layout_nuclear = Mid.transform.Find("layout_nuclear")?.gameObject;
        layout_btn = Mid.transform.Find("layout_btn")?.gameObject;
        btn_music = Mid.transform.Find("btn_music")?.GetComponent<Button>();
        btn_back = Mid.transform.Find("btn_back")?.GetComponent<Button>();
        btn_spin = Mid.transform.Find("btn_spin")?.GetComponent<Button>();
        region_coin = Mid.transform.Find("region_coin")?.gameObject;
        label_coin = region_coin.transform.Find("label_coin")?.GetComponent<Text>();
        progerss = region_coin.transform.Find("progerss")?.GetComponent<Image>();

        mgr.init(Bot);
        mgr.soundObj = gameObject.transform.Find("System")?.gameObject;
    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        UIMgr = UIManager.Getinstance();
        UIMgr.ShowPanel<panel_start>("panel_start", E_UI_Layer.Top, (panel_start _panelStart) =>
        {
            Mid.SetActive(false);
        });
        this.InitEvent();
        BtnStatusPet(false);
        this.UpdateView();
    }

    private void InitEvent()
    {
        this.btn_music?.onClick.AddListener(this.OnBtnClick);
        this.btn_back?.onClick.AddListener(this.OnBtnClick);
        this.btn_spin?.onClick.AddListener(this.OnBtnClick);
        for (int i = 0; i < layout_btn.transform?.childCount; i++)
        {
            GameObject childObject = layout_btn.transform.GetChild(i)?.gameObject;
            Button childBtn = childObject?.GetComponent<Button>();
            childBtn?.onClick.AddListener(this.OnBtnClick);
        }
        EventDispatcher.Getinstance().Regist(GameDate.Getinstance().gameover, OnGameOveHandel);
        EventDispatcher.Getinstance().Regist(GameDate.Getinstance().getReward, UpdateView);
        EventDispatcher.Getinstance().Regist(GameDate.Getinstance().StartGame, GameStart);
    }
    //Called when a new level is loaded after all scenarios have been loaded
    /*  private void OnLevelWasLoaded(int level)
      {

      }*/
    //Editor level, non play_mode script mount or active call reset to default
    private void Reset()
    {

    }
    // Start is called before the first frame update
    void Start()
    {
        //initialize
        timer_game = TimerMgr.Getinstance();
        
    }

    // Update is called once per frame
    void Update()
    {
    }
    private void GameStart()
    {
        Mid.SetActive(true);
        btn_spin.gameObject.SetActive(true);
        BtnStatusPet(false);
        gameDate.playBK = true;
        UpdateBK();
    }
    private void UpdateBK()
    {
        if (gameDate.playBK)
        {
            this.mgr.PlayBkMusic( "bgm");
            return;
        }
        this.mgr.StopBKMusic();

    }
    private void UpdateView()
    {
        label_coin.text = "" + gameDate.coinNum;
        progerss.fillAmount = gameDate.progerss_Value / 10;
    }
    private void UpdateNuclear()
    {
        BtnStatusPet(true);
        btn_spin.gameObject.SetActive(false);
        this.gameMgr.ApplyItemInObj(this.layout_nuclear, itemData);
    }
    private string Regn(string input)
    {
        Regex reg = new Regex("^[1-9]\\d*$");
        return reg.Match(input).Value;//返回值可以是bool,可以用isMatch.

    }
    private void OnBtnClick()
    {
        GameObject btnObj = EventSystem.current.currentSelectedGameObject;
        string btnName = btnObj.name;
        string[] _btnName = btnName.Split("_");
        string eff_name = Regn(_btnName[1]) != "" ? "button-3" : "button-6";
        if (Regn(_btnName[1]) != "")
        {
            gameMgr.selectIndex = int.Parse(_btnName[1]);
            BtnStatusPet(false);
            OnClickDrawFun();
            
        }
        switch (btnName)
        {
            case "btn_music":
                gameDate.playBK = !gameDate.playBK;
                UpdateBK();
                break;
            case "btn_back":
                OnBackStartPanel();
                break;
            case "btn_spin":
                UpdateNuclear();
                break;
            default:
                break;
        }
        this.mgr.PlaySound(eff_name, false);
    }

    private void OnBackStartPanel()
    {
        PoolMgr poolMgr = PoolMgr.Getinstance();
        for (int i = this.layout_nuclear.transform.childCount-1; i >=0 ; i--)
        {
            GameObject nuclearObj = this.layout_nuclear.transform.GetChild(i).gameObject;
            poolMgr.PushObj(nuclearObj.name, nuclearObj);
        }
        UIMgr.ShowPanel<panel_start>("panel_start", E_UI_Layer.Top, (panel_start _panelStart) =>
        {
            Mid.SetActive(false);
        });
    }
    private void OnGameReset()
    {
        BtnStatusPet(true);

        UpdateView();
    }

    private void BtnStatusPet(bool statueInter)
    {
        layout_btn.SetActive(statueInter);
    }
    private void OnGameOveHandel()
    {
        this.gameDate.coinNum -= 100;
        this.gameMgr.playerInfo.playerScore += this.gameDate.addScore;
      
        this.OnGameReset();
    }
    private void OnClickDrawFun()
    {
        // 随机抽中ID
        gameMgr.rewardIndex = UnityEngine.Random.Range(0, gameDate.proCount);
        
        EventDispatcher.Getinstance().DispatchEvent(GameDate.Getinstance().drawReward);

    }

    ///fixedupdate
    /// <summary>
    /// 退出/销毁
    /// </summary>
    //Sends all objects before the program exits
    void OnApplicationQuit()
    {
    }
    //Disabled or inactive
    void OnDisable()
    {
    

    }
    //monobe_haviour is destroyed
    void OnDestroy()
    {
        this.RemoveEvent();
    }

    private void RemoveEvent()
    {
        this.btn_music?.onClick.RemoveListener(this.OnBtnClick);
        this.btn_back?.onClick.RemoveListener(this.OnBtnClick);
        this.btn_spin?.onClick.RemoveListener(this.OnBtnClick);
        for (int i = 0; i < layout_btn.transform?.childCount; i++)
        {
            GameObject childObject = layout_btn.transform.GetChild(i)?.gameObject;
            Button childBtn = childObject?.GetComponent<Button>();
            childBtn?.onClick.RemoveListener(this.OnBtnClick);
        }
        EventDispatcher.Getinstance().UnRegist(GameDate.Getinstance().gameover, OnGameOveHandel);
        EventDispatcher.Getinstance().UnRegist(GameDate.Getinstance().getReward, UpdateView);
        EventDispatcher.Getinstance().UnRegist(GameDate.Getinstance().StartGame, GameStart);
    }
}
