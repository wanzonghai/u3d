using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;
using System;
using StuctsCom;
using UnityEngine.EventSystems;

public class firstScene : MonoBehaviour
{
    protected Transform Mid = null;

    protected Button btn_music = null;
    protected Button btn_repeat = null;
    protected Button btn_spin = null;

    protected Button btn_minus = null;
    protected Button btn_add = null;

    protected Text text_icon = null;
    protected Text text_mul = null;
    protected Text text_win = null;

    private Transform thisTransform = null;

    public int selfCoin=9999999;
    public int curCoin=0;
    public int curMul=1;
    public int curWin = 0;

    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {

        
        this.InitView();
    }

    private void InitView()
    {
        thisTransform = gameObject.transform;
        Mid = thisTransform.Find("Mid");

        btn_music = Mid.Find("btn_music").GetComponent<Button>();
        btn_repeat = Mid.Find("btn_repeat").GetComponent<Button>();
        btn_spin = Mid.Find("btn_spin").GetComponent<Button>();
        btn_minus = Mid.Find("region_mul/btn_minus").GetComponent<Button>();
        btn_add = Mid.Find("region_mul/btn_add").GetComponent<Button>();

        text_icon = Mid.Find("region_coin/text_icon").GetComponent<Text>();
        text_mul = Mid.Find("region_mul/text_mul").GetComponent<Text>();
        text_win = Mid.Find("region_win/text_win").GetComponent<Text>();

    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        this.InitEvent();
      
        this.UpdateView();

    }
    private void InitEvent()
    {
        btn_music .onClick.AddListener(delegate() { OnClickHandel(btn_music.gameObject); } );
        btn_repeat.onClick.AddListener(delegate () { OnClickHandel(btn_repeat.gameObject); });
        btn_spin.onClick.AddListener(delegate () { OnClickHandel(btn_spin.gameObject); });
        btn_minus.onClick.AddListener(delegate () { OnClickHandel(btn_minus.gameObject); });
        btn_add.onClick.AddListener(delegate () { OnClickHandel(btn_add.gameObject); });

        EventDispatcher.Getinstance().Regist(GameDate.Getinstance().gameover, OnGameOveHandel);
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
       
    }

    // Update is called once per frame
    void Update()
    {
       
    }

    private void UpdateText()
    {
        text_icon.text = selfCoin+"";
 text_mul.text = curMul + "";
        text_win.text = curWin + "";

    }

    private void UpdateView()
    {
        this.UpdateText();
    }

    private void OnBtnClick()
    {
        
    }

    private void OnClickHandel(GameObject button)
    {
        Debug.Log(button.name);
        switch (button.name)
        {
            case "btn_music":
                break;
            case "btn_repeat":
                break;
            case "btn_spin":
                break;
            case "btn_minus":
                break;
            case "btn_add":
                break;
            default:
                break;
        }
    }

    private IEnumerator OnStartCoroutine()
    {

        yield return new WaitForSeconds(0.3f);

        /*this.OnClickHandel();*/
    }

    private void StartSchedul()
    {
        //启动定时器
       
    }
    private void OnGameReset()
    {
       
        
    }

    private void PushPool()
    {

        /*Transform[] transArr = region_hall.transform.GetComponentsInChildren<Transform>(true);
        
        foreach (Transform item in transArr)
        {
            if(item.name==this.gamedata.preName)
            {
                this.poolManage.PushObj(item.name, item.gameObject);
               
            }
        }*/
        /* for (int i = 0; i < len; i++)
         {
             this.poolManage.PushObj(transArr[i].name, transArr[i].gameObject);
             //Destroy(transArr[i].gameObject);
         }*/
    }

    private void BtnStatus(bool _isShow)
    {
        

    }
    private void OnGameOveHandel()
    {
       
        this.OnGameReset();
    }
    ///fixedupdate
    /// <summary>
    /// Exit/destroy
    /// </summary>
    //Sends all objects before the program exits
    void OnApplicationQuit() { 
    }
    //Disabled or inactive
    void OnDisable() {
        this.RemoveEvent();
       
    }
    //monobe_haviour is destroyed
    void OnDestroy() {
        this.RemoveEvent();
    }

    private void RemoveEvent()
    {
        btn_music.onClick.RemoveListener(delegate () { OnClickHandel(btn_music.gameObject); });
        btn_repeat.onClick.RemoveListener(delegate () { OnClickHandel(btn_music.gameObject); });
        btn_spin.onClick.RemoveListener(delegate () { OnClickHandel(btn_music.gameObject); });
        btn_minus.onClick.RemoveListener(delegate () { OnClickHandel(btn_music.gameObject); });
        btn_add.onClick.RemoveListener(delegate () { OnClickHandel(btn_music.gameObject); });
    }
}
