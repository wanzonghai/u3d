using StuctsCom;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ItemProp : MonoBehaviour
{
    private Image Image_head = null;
    private GameObject obj_tag = null;
    private Image Image_tag = null;
    private GameMgr gameMgr = null;
    private GameDate gamedata = null;
    private ResMgr resManage = null;
    private PoolMgr poolMgr = null;
    private Tools tools = null;
    private EventDispatcher eventDispatcher = null;
    private MusicMgr mgr = null;

    private GameObject game_object = null;

    private SItemData infoData;

    private Sprite[] obj_sprite = null;


    // Display state time --> Control ring rotation speed
    private float rewardTime = 0.8f;
    private float rewardTiming = 0;

    private int randRom_dif = 0;
    // curIndex
    private int haloIndex = 0;
    // randomNumIndex
    private int rewardIndex = 0;
    // drawing
    private bool drawing = false;

    // drawing
    private bool isOnClickPlaying = false;

    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        this.gameMgr = GameMgr.Getinstance();
        this.gamedata = GameDate.Getinstance();
        this.resManage = ResMgr.Getinstance();
        this.eventDispatcher = EventDispatcher.Getinstance();
        this.poolMgr = PoolMgr.Getinstance();
        this.tools = Tools.Getinstance();
        this.game_object = gameObject;
        mgr = MusicMgr.Getinstance();
        this.InintView();
    }

    private void InintView()
    {
        this.Image_head = gameObject.transform.Find("Image_head")?.GetComponent<Image>();
        this.obj_tag = gameObject.transform.Find("obj_tag")?.gameObject;
        this.Image_tag = this.obj_tag.transform.Find("Image_tag")?.GetComponent<Image>();
    }

    public void ChangeData(SItemData itemData)
    {

        infoData = itemData;
        this.obj_sprite = this.gameMgr.obj_sprite;
        this.InitEvent();
        this.UpdateView();
        this.obj_tag.SetActive((this.infoData.index - 1) == haloIndex);
    }

    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        haloIndex = 0;
        rewardIndex = 0;
        isOnClickPlaying = false;
    }
    private void InitEvent()
    {
        EventDispatcher.Getinstance().Regist(GameDate.Getinstance().drawReward, OnListenerHandel);
    }

    //Called when a new level is loaded after all scenarios have been loaded
    /*   private void OnLevelWasLoaded(int level)
       {

       }*/
    //Editor level, non-play mode script mount or active call reset to default
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
        if (!isOnClickPlaying) return;
        // 抽奖展示
        rewardTiming += Time.deltaTime;
        if (rewardTiming < rewardTime) return;
        rewardTiming = 0;
        haloIndex++;
        if (haloIndex > gamedata.proCount)
        {
            haloIndex = 0;
        }
        drawResult(haloIndex);
    }

    private void drawResult(int haloIndex)
    {
        this.obj_tag.SetActive((this.infoData.index - 1) == haloIndex);
        mgr.PlaySound("button-11", false,true);
        if (!drawing || haloIndex != rewardIndex) return;
        isOnClickPlaying = false;
        if (rewardIndex != (this.infoData.index - 1)) return;
        showPanel(gameMgr.selectIndex == randRom_dif);
        EventDispatcher.Getinstance().DispatchEvent(GameDate.Getinstance().gameover);
    }
    private void showPanel(bool isResult)
    {
        UIManager UIMgr = UIManager.Getinstance();
        int EvenType = isResult ? GameDate.Getinstance().getReward : GameDate.Getinstance().gameover;
        gameMgr.drawReward = isResult;
        UIMgr.ShowPanel<panel_win>("panel_win", E_UI_Layer.Top, (panel_win _panelWin) =>
        {
            if (isResult)
            {
                this.gameMgr.playerInfo.playerScore += this.gamedata.addScore;
                gamedata.coinNum += 300;
                gamedata.progerss_Value++;
                if (gamedata.progerss_Value > 10f) gamedata.progerss_Value = 0f;
            }
           
            EventDispatcher.Getinstance().DispatchEvent(EvenType);
        });
    }

    private void UpdateView()
    {

        randRom_dif = (int)Math.Floor((double)this.tools.GetRandomInt(1, 7));
        string bg_name = "" + randRom_dif;
        Sprite headSprite= this.gameMgr.GetRes<Sprite>(bg_name, this.obj_sprite);
        SetDeltaOriginalSize(headSprite);
        this.Image_head.sprite = headSprite;
        string tag_name = "btn_bg";
        this.Image_tag.sprite = this.gameMgr.GetRes<Sprite>(tag_name, this.obj_sprite);
        /* int index_i = this.infoData.index - 1;
         int rotationZ = index_i < 4 ? 0 : index_i < 6 ? 270 : index_i <8 ? 180: 90;
         this.obj_tag.transform.rotation = Quaternion.Euler(0, 0, rotationZ);*/
    }
    private void SetDeltaOriginalSize(Sprite headSprite)
    {
        float imageSizeScale = 1;
        this.Image_head.rectTransform.sizeDelta = new Vector2(headSprite.rect.width * imageSizeScale, headSprite.rect.height * imageSizeScale);
    }
    private void OnListenerHandel()
    {
        rewardIndex = gameMgr.rewardIndex;
        OnClickDrawFun();
    }

    // 点击抽奖按钮
    void OnClickDrawFun()
    {
        if (isOnClickPlaying) return;

        isOnClickPlaying = true;
        drawing = false;

        StartCoroutine(StartDrawAni());
    }

    /// <summary>
    /// 开始抽奖动画
    /// 先快后慢 -- 根据需求调整时间
    /// </summary>
    /// <returns></returns>
    IEnumerator StartDrawAni()
    {
        rewardTime = 0.3f;
        // 加速
        for (int i = 0; i < 7; i++)
        {
            yield return new WaitForSeconds(0.1f);
            rewardTime -= 0.1f;
        }

        yield return new WaitForSeconds(2f);
        // 减速
        for (int i = 0; i < 5; i++)
        {
            yield return new WaitForSeconds(0.1f);
            rewardTime += 0.1f;
        }

        yield return new WaitForSeconds(1f);
        drawing = true;
    }
    ///fixed update
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
        EventDispatcher.Getinstance().UnRegist(GameDate.Getinstance().drawReward, OnListenerHandel);

        StopAllCoroutines();
        rewardTime = 0.8f;
        rewardTiming = 0;
        // curIndex
        haloIndex = 0;
        // randomNumIndex
        rewardIndex = 0;
        // drawing
        drawing = false;
        isOnClickPlaying = false;
    }

}