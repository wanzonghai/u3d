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
    private Button btn_spin = null;

    private GameObject region_coin = null;
    private Text label_coin = null;

    private GameMgr gameMgr = null;
    private GameDate gameDate = null;
    private PoolMgr poolManage = null;
    private ResMgr resManage = null;
    private Tools tools = null;
    private MusicMgr mgr = null;

    TimerMgr timer_game;


    private int TimerID_game;

    private SItemData itemData;

    private bool isFinishGame = false;

    private bool isFirst = true;

    public int propNum = 10;


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
        btn_spin = Mid.transform.Find("btn_spin")?.GetComponent<Button>();
        region_coin = Mid.transform.Find("region_coin") ?.gameObject;
        label_coin = region_coin.transform.Find("label_coin") ? .GetComponent<Text>();

        mgr.init(Bot);
        mgr.soundObj = gameObject.transform.Find("System")?.gameObject;
    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        UIManager UIMgr = UIManager.Getinstance();
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
        this.btn_spin?.onClick.AddListener(this.OnBtnClick);
        for (int i = 0; i < layout_btn.transform.childCount; i++)
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
            this.mgr.PlayBkMusic(gameDate.channel_id + "");
            return;
        }
        this.mgr.PauseBKMusic();

    }
    private void UpdateView()
    {
        label_coin.text = gameDate.coinNum + "";
    }

    private void UpdateNuclear()
    {
        this.gameMgr.ApplyItemInObj(this.layout_nuclear, itemData);
    }

    private void OnBtnClick()
    {
        GameObject btnObj = EventSystem.current.currentSelectedGameObject;
        string btnName = btnObj.name;
        string[] _btnName = btnName.Split("_");
        string eff_name = Regn(_btnName[1]) != "" ? "eff1" : "eff2";
        if (btnName == "btn_1"|| btnName == "btn_2" || btnName == "btn_3" || btnName == "btn_4")
        {
            gameMgr.selectIndex =int.Parse(btnName.Split("_")[1]);
            BtnStatusPet(false);
            OnClickDrawFun();
        }
        switch (btnName)
        {
            case "btn_music":
                gameDate.playBK = !gameDate.playBK;
                UpdateBK();
                break;
            case "btn_spin":
                UpdateNuclear();
                btn_spin.gameObject.SetActive(false);
                BtnStatusPet(true);
                break;
            default:
                break;
        }
        this.mgr.PlaySound(eff_name, false);
    }
    private string Regn(string input)
    {
        Regex reg = new Regex("^[1-9]\\d*$");
        return reg.Match(input).Value;//返回值可以是bool,可以用isMatch.

    }
    private void OnClickHandel()
    {
        this.isFirst = false;
        int randRom_dif = (int)Math.Floor((double)this.tools.GetRandomInt(1, 3));
        int randRom = 0;
        while (randRom_dif == randRom || randRom == 0)
        {
            randRom = (int)Math.Floor((double)this.tools.GetRandomInt(1, 3));
        }
        this.itemData.randDif = randRom_dif;
        this.itemData.rand = randRom;
        for (int i = 0; i < 3; i++)
        {
            int indexI = i + 1;
            GameObject _obj = null;
            this.poolManage.GetObj(this.gameDate.preName, this.gameDate.preUrl, (obj) =>
            {
                _obj = obj;
                /*  _obj.transform.SetParent(this.region_hall.transform);*/
                this.itemData.index = indexI;
                _obj.transform.GetComponent<ItemProp>().ChangeData(this.itemData);
                int _x = (indexI - 2) * 600;
                int _y = (indexI - 1) == 1 ? 0 : 60;
                _obj.transform.SetLocalPositionAndRotation(new Vector3(_x, _y, 0), new Quaternion(0, 0, 0, 0));
            });


        }
        this.StartSchedul();
    }

    private IEnumerator OnStartCoroutine()
    {

        yield return new WaitForSeconds(0.3f);

        OnGameReset();
        this.StartSchedul();
    }

    private void StartSchedul()
    {
        OnGameReset();
    }
    private void OnGameReset()
    {
        BtnStatusPet(true);
        UpdateView();
    }

    private void PushPool()
    {
        Transform[] transArr = layout_nuclear.transform.GetComponentsInChildren<Transform>(true);

        foreach (Transform item in transArr)
        {
            if (item.name == this.gameDate.preName)
            {
                this.poolManage.PushObj(item.name, item.gameObject);

            }
        }
    }

    private void BtnStatus(bool _isShow)
    {
        /* this.btn_start.interactable = _isShow;
         this.btn_start.gameObject.SetActive(_isShow);*/

    }
    private void BtnStatusPet(bool statueInter)
    {
        for (int i = 0; i < layout_btn.transform.childCount; i++)
        {
            layout_btn.transform.GetChild(i).gameObject.SetActive(statueInter);
        }

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
        this.RemoveEvent();

    }
    //monobe_haviour is destroyed
    void OnDestroy()
    {
        this.RemoveEvent();
    }

    private void RemoveEvent()
    {
        this.btn_music?.onClick.RemoveListener(this.OnBtnClick);
        this.btn_spin?.onClick.RemoveListener(this.OnBtnClick);
        for (int i = 0; i < layout_btn.transform.childCount; i++)
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
