using StuctsCom;
using System.Text.RegularExpressions;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class firstScene : MonoBehaviour
{
    private GameObject Mid = null;
    private GameObject Top = null;
    private GameObject layout_nuclear = null;
    private GameObject layout_btn = null;
    private Button btn_music = null;
    private Button btn_back = null;
    private Button btn_spin = null;

    private GameObject region_coin = null;


    private GameMgr gameMgr = null;
    private GameDate gameDate = null;
    private PoolMgr poolManage = null;
    private ResMgr resManage = null;
    private UIManager UIMgr = null;
    private Tools tools = null;

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
        this.gameMgr?.init();
        this.gameMgr?.initPoolDic();
        this.UIMgr = UIManager.Getinstance();
        this.InintView();
    }

    private void InintView()
    {
        Mid = gameObject.transform.Find("Mid")?.gameObject;
        Top = gameObject.transform.Find("Top")?.gameObject;
        layout_nuclear = Mid.transform.Find("layout_nuclear")?.gameObject;
        layout_btn = Mid.transform.Find("layout_btn")?.gameObject;
        btn_music = Mid.transform.Find("btn_music")?.GetComponent<Button>();
        btn_back = Mid.transform.Find("btn_back")?.GetComponent<Button>();
        btn_spin = Mid.transform.Find("btn_spin")?.GetComponent<Button>();
        region_coin = Mid.transform.Find("region_coin")?.gameObject;

    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        UIMgr.ShowPanel<panel_start>("panel_start", E_UI_Layer.Top, (panel_start _panelStart) =>
        {
            Mid.SetActive(false);
        });
        this.InitEvent();
        BtnStatusPet(false);
        this.UpdateView();
        UpdateStar();
    }

    private void InitEvent()
    {
        this.btn_music?.onClick.AddListener(this.OnBtnClick);
        this.btn_back?.onClick.AddListener(this.OnBtnClick);
        this.btn_spin?.onClick.AddListener(this.OnBtnClick);
        for (int i = 0; i < layout_btn.transform.childCount; i++)
        {
            GameObject childObject = layout_btn.transform.GetChild(i)?.gameObject;
            Button childBtn = childObject?.GetComponent<Button>();
            childBtn?.onClick.AddListener(this.OnBtnClick);
        }
        EventDispatcher.Getinstance().Regist(GameDate.Getinstance().gameover, OnGameOveHandel);
        EventDispatcher.Getinstance().Regist(GameDate.Getinstance().getReward, UpdateStar);
        EventDispatcher.Getinstance().Regist(GameDate.Getinstance().StartGame, () => { Mid.SetActive(true); });
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

    private void UpdateView()
    {
       
    }
    private void UpdateNuclear()
    {
        this.gameMgr.ApplyItemInObj(this.layout_nuclear, itemData);
        this.gameMgr.ApplyIconItemInObj(this.region_coin);
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

        if (Regn(_btnName[1]) != "")
        {
            gameMgr.selectIndex = int.Parse(_btnName[1]);
            BtnStatusPet(false);
            OnClickDrawFun();
        }
        switch (btnName)
        {
            case "btn_music":
                //MusicMgr.Getinstance().PlayBkMusic("");
                break;
            case "btn_back":
                UIMgr.ShowPanel<panel_start>("panel_start", E_UI_Layer.Top, (panel_start _panelStart) =>
                {
                    Mid.SetActive(false);
                });
                break;
            case "btn_spin":
                UpdateNuclear();
                btn_spin.gameObject.SetActive(false);
                BtnStatusPet(true);
                break;
            default:
                break;
        }
    }

    /* private void OnClickHandel()
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
             this.poolManage.GetObj(this.gamedata.preName, this.gamedata.preUrl, (obj) =>
             {
                 _obj = obj;
                 *//*  _obj.transform.SetParent(this.region_hall.transform);*//*
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
     }*/
    private void OnGameReset()
    {
        BtnStatusPet(true);
        UpdateView();
    }

    private void PushPool()
    {
        Transform[] transArr = layout_nuclear.transform.GetComponentsInChildren<Transform>(true);
        string preName = gameDate.preUrl.Split("/")[1];
        foreach (Transform item in transArr)
        {
            if (item.name == preName)
            {
                this.poolManage.PushObj(item.name, item.gameObject);

            }
        }
    }
    private void BtnStatusPet(bool statueInter)
    {
        for (int i = 0; i < layout_btn.transform.childCount; i++)
        {
            layout_btn.transform.GetChild(i).gameObject.SetActive(statueInter);
        }

    }

    private void UpdateStar()
    {
        int starNum = gameDate.coinNum;
        Debug.Log("starNum" + starNum);
        for (int i = 0; i < region_coin.transform.childCount; i++)
        {
            Transform coinTranformIcon = region_coin.transform.GetChild(i).GetChild(0);
            if (starNum <= 5)
            {
                coinTranformIcon.gameObject.SetActive(starNum >= (i + 1));
            }
            else
            {
                Image coinSprite = coinTranformIcon.GetComponent<Image>();
                int colorIndex = (int)Mathf.Floor((starNum - 1) / 5);
                colorIndex = colorIndex < gameDate.proCount ? colorIndex : colorIndex--;
                string hexValue = gameDate.colors[colorIndex];
                if ((int)Mathf.Floor(starNum % 5) >= i)
                {
                    coinSprite.color = HexToColor(hexValue);
                }
            }
        }

    }
    Color HexToColor(string hex)
    {
        Color color = Color.white;

        if (ColorUtility.TryParseHtmlString(hex, out color))
        {
            return color;
        }
        else
        {
            Debug.LogWarning("Invalid hex color: " + hex);
            return Color.white;
        }
    }
    private void OnGameOveHandel()
    {

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
        this.btn_back?.onClick.RemoveListener(this.OnBtnClick);
        this.btn_spin?.onClick.RemoveListener(this.OnBtnClick);
        for (int i = 0; i < layout_btn.transform.childCount; i++)
        {
            GameObject childObject = layout_btn.transform.GetChild(i)?.gameObject;
            Button childBtn = childObject?.GetComponent<Button>();
            childBtn?.onClick.RemoveListener(this.OnBtnClick);
        }
        EventDispatcher.Getinstance().UnRegist(GameDate.Getinstance().gameover, OnGameOveHandel);
        EventDispatcher.Getinstance().UnRegist(GameDate.Getinstance().getReward, UpdateStar);
        EventDispatcher.Getinstance().UnRegist(GameDate.Getinstance().StartGame, UpdateView);
    }
}
