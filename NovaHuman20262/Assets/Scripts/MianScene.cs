using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using Random = System.Random;

public class MianScene : MonoBehaviour
{
    public GameObject Pop_help;
    public GameObject Pop_Start;
    public GameObject Pop_result;
    public Button btn_back;
    public Button btn_help ;
    public Button btn_close;
    public Button btn_start;
    public Button btn_return;
    public Button btn_play;
    public GameObject lose;
    public GameObject win;
    public GameObject coinPrefab;
    public GameObject obj_coin;
    public int numberOfCoins = 3;
    public float spawnRadius = 5f;




    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        Pop_Start.SetActive(true);
        InintView();
    }

    private void InintView()
    {
       
    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        btn_back?.onClick.AddListener(this.OnBtnClick);
        btn_help?.onClick.AddListener(this.OnBtnClick);
        btn_close?.onClick.AddListener(this.OnBtnClick);
        btn_start?.onClick.AddListener(this.OnBtnClick);
        btn_return?.onClick.AddListener(this.OnBtnClick);
        btn_play?.onClick.AddListener(this.OnBtnClick);
        EventDispatcher.Getinstance().Regist(100, OnGameOveHandel);
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
        GameData.Getinstance().StartGame = false;
    }

    // Update is called once per frame
    void Update()
    {
       
    }

    void FixedUpdate()
    {

    }

    private void UpdateView()
    {
    }

    private void OnBtnClick()
    {
        GameObject btnObj = EventSystem.current.currentSelectedGameObject;
        string btnName = btnObj.name;
        string[] _btnName = btnName.Split("_");

        switch (btnName)
        {
            case "btn_back":
                Pop_Start.SetActive(true);
                break;
            case "btn_help":
                Pop_help.SetActive(true);
                break;
            case "btn_close":
                Pop_help.SetActive(false);
                break;
            case "btn_return":
                Pop_result.SetActive(false);
                break;
            case "btn_start":
               GameData.Getinstance(). coinnum = 0;
                Pop_Start.SetActive(false);
                btn_play.gameObject.SetActive(true);
                SpawnCoins();
                break;
            case "btn_play":
                GameData.Getinstance().StartGame = true;
                btn_play.gameObject.SetActive(false);
                break;
               
            default:
                break;
        }
    }
    private void SpawnCoins()
    {
        ClearChildren(obj_coin.transform);
        RectTransform objCoinTransform = obj_coin.GetComponent<RectTransform>(); // 获取 obj_coin 的 RectTransform
        for (int i = 0; i < numberOfCoins; i++)
        {
           int randRom_dif = (int)Math.Floor((double)GetRandomInt(1, 12));
            Vector2 randomPosition = GetRandomPositionWithinBounds(randRom_dif);
            GameObject objcoin = Instantiate(coinPrefab, objCoinTransform);
            objcoin.GetComponent<RectTransform>().anchoredPosition = randomPosition; // 设置金币的位置
        }
    }
    private void ClearChildren(Transform parent)
    {
        // 遍历所有子对象
        for (int i = parent.childCount - 1; i >= 0; i--)
        {
            Transform child = parent.GetChild(i);
            // 销毁子对象
            Destroy(child.gameObject);
        }
    }
    private Vector2 GetRandomPositionWithinBounds(int t)
    {
        int[,] PosArr = {
    {-728, 397}, {-578, 347}, {-273, 398}, {33, 398}, {158, 398}, {279, 398},
    {344, 36}, {343, -92}, {-197, -268}, {90, -168},{-73, -168},{-730, 37}};
        return new Vector2(PosArr[t, 0], PosArr[t, 1]);
    }
    public int GetRandomInt(int minNum, int maxNum)
    {
        Random ran = new Random();
        return ran.Next(minNum, maxNum);
    }
    // 碰撞检测函数,进入的时候执行

   private void OnGameOveHandel()
    {
        Pop_result.SetActive(true);
        Pop_Start.SetActive(true);
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
