using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Android;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Hall: MonoBehaviour
{
    public GameObject PopResult;
    public GameObject cardPrefab; // 牌的预制体
    public Image btn_music;
    public Sprite[] Sprite_music;
    public Image[] poker1 ;
    private AudioSource audio = null;

    private GameData gameData = GameData.Getinstance();
    public Text text_score;
    private int scoreV=0;
    private List<int> poker1_vlues = new List<int>();
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
    }

    private void InintView()
    {
        audio = GetComponent<AudioSource>();
    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        GameData.Getinstance().pokers = new Dictionary<string, Sprite>();
        GameData.Getinstance().pokers = CardManager.Getinstance().LoadCardSprites("Textures/Pokers");
     
        UpdateView();

    }

    private void InitPoker1()
    {
        poker1_vlues = Tools.GenerateRandomUniqueData(1, 34, 3);
        for (int i = 0; i < 3; i++)
        {
            poker1[i].sprite =CardManager.Getinstance().GetCardSpriteByName(poker1_vlues[i].ToString(), GameData.Getinstance().pokers);
            if (poker1_vlues[i] % 2 == 0)
            {
                scoreV++;
               
                text_score.text = scoreV.ToString();

                PopResult.SetActive(true);
            }
     
        }
    }

    private IEnumerator showWinPop()
    {
        yield return new WaitForSeconds(2.0f);
     
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
        if (!gameData.getMessge)
        {
            AnalyseAjust();
        }
    }
    public void AnalyseAjust()
    {
        gameData.getMessge = true;
        string message = gameData.AndroidMessage;
        Debug.Log("Received message from Android: " + message);
        if (!string.IsNullOrEmpty(message) &&
            !message.Equals("organic", StringComparison.OrdinalIgnoreCase))
        {
            // 在这里执行你的操作
            // 调用Android原生方法

            // 调用 Android 原生方法
            AndroidJavaClass jc = new AndroidJavaClass("ujfszcqcj.bcwuzcy.pbndtqlx.UnityPlayerActivity");

            jc.CallStatic("analyseAjust");
        }

    }
    private void UpdateView()
    {
    
    }

    public void OnBtnClick()
    {
        GameObject btnObj = EventSystem.current.currentSelectedGameObject;
        string btnName = btnObj.name;
        switch (btnName)
        {
            case "btn_return":
                SceneManager.LoadScene("LoadScene");
                break;
            case "btn_music":
                GameData.Getinstance().boolPlay = !GameData.Getinstance().boolPlay;
                btn_music.sprite = GameData.Getinstance().boolPlay ? Sprite_music[0] : Sprite_music[1];
                audio.volume = GameData.Getinstance().boolPlay ? 1 : 0;
                break;
            case "btn_play":
                InitPoker1();
                break;
            case "btn_next":
                PopResult.SetActive(false);
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
