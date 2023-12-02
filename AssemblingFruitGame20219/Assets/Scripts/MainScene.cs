using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MainScene : MonoBehaviour
{
    public GameObject Mid;
    public GameObject prefabToInstantiate;
    public Transform layerMid;
    public Text text_coin;
    public Text text_time;
    public Vector3[] spawnPositions;

    public GameObject layer_start;


    public GameObject layer_loading;
    public GameObject loading_image;
    private bool isloading = false;

    public GameObject layer_result;
    public GameObject Image_lose;
    public GameObject Image_win;

    private EventDispatcher eventDispatcher = new EventDispatcher();

    private int score = 0; // 积分
    private int curScore = 0; // 积分
    private float timer = 60.0f; // 计时器，初始时间为60秒
    private bool isGameActive = false; // 游戏是否激活

    private int winNum = 5;

    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {

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
        
        layer_loading.SetActive(true);
        isloading = true;
        StartCoroutine(StartTimer());
        EventDispatcher.Getinstance().Regist(100, HandleToggleStateChanged);
        //initialize
        // 循环实例化并放置每个预制体
        for (int i = 0; i < spawnPositions.Length; i++)
        {
            InstantiatePrefabObject(i);
        }
    }

    private void HandleToggleStateChanged()
    {
        curScore++;
        score += curScore;
        // 更新积分UI文本
        text_coin.text = score.ToString();
        // 执行其他操作...
        if (curScore >= winNum)
        {
            ShowResult(true);
        }
    }

    private void ShowResult(bool iswinP)
    {
        layer_result.SetActive(true);
        Image_lose.SetActive(!iswinP);
        Image_win.SetActive(iswinP);
        ResterGame();
    }

    // Update is called once per frame
    void Update()
    {
        UpdateTimeFun();
        loadMud();

    }
    private IEnumerator StartTimer()
    {
        yield return new WaitForSeconds(1.5f);

        // 定时器时间到达后执行的操作
        layer_loading.SetActive(false);
        isloading = false;
        layer_start.SetActive(true);
    }
    private void loadMud()
    {
        if (!isloading) return;
        // 以Y轴旋转
        loading_image.transform.Rotate(Vector3.forward* 50 * Time.deltaTime);
    }
    private void UpdateTimeFun()
    {
        // 更新计时器
        if (isGameActive)
        {
            timer -= Time.deltaTime;
            // 将剩余时间转换为分钟和秒钟格式
            int minutes = Mathf.FloorToInt(timer / 60);
            int seconds = Mathf.FloorToInt(timer % 60);
            // 更新计时器UI文本
            text_time.text = string.Format("Time: {0:00}:{1:00}", minutes, seconds);

            if (timer <= 0)
            {
                timer = 0;
                isGameActive = false;
                ShowResult(false);
            }
        }

      
    
    }

    void InstantiatePrefabObject(int index)
    {
        // 实例化预制体
        GameObject instantiatedPrefab = Instantiate(prefabToInstantiate);
        instantiatedPrefab.transform.SetParent(layerMid);
        // 设置实例化后的预制体的位置
        instantiatedPrefab.transform.SetLocalPositionAndRotation(spawnPositions[index], Quaternion.identity);
       

    }

    private void UpdateView()
    {
    }

    public void OnBtnStartClick()
    {
        layer_start.SetActive(false);
        Mid.SetActive(true);
        isGameActive = true;
        timer = UnityEngine.Random.Range(8, 50);
        winNum = UnityEngine.Random.Range(1, 8);
    }
    public void OnBtnFinishClick()
    {
        layer_start.SetActive(false);
        ShowLoading();
    }
    private void ShowLoading()
    {
        layer_loading.SetActive(true);
        isloading = true;
        StartCoroutine(StartTimer());
    }

    public void OnBtnClose()
    {
        layer_result.SetActive(false);
        Mid.SetActive(false);
        ShowLoading();

    }

    private void ResterGame()
    {
        curScore = 0;
        isGameActive = false;
        for (int i = 0; i < layerMid.childCount; i++)
        {
            layerMid.GetChild(i).GetChild(0).gameObject.SetActive(false);
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
