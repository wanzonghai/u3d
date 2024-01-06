using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SecondScenes : MonoBehaviour
{
    public GameObject balloonParent;
    public GameObject[] PopupsArray;
    public GameObject balloonPrefab;
    public Sprite[] spritesMusic;
    private bool isMusic = true;
    public Text text_time;
    //物体的动画管理器组件
    public Animator catButton_ator;
    public ObjectPool balloonObjectPool;

    private float curTime = 60.0f;
    private int maxTargets = 12;
    private float spawnInterval = 2.0f; // 生成气球的时间间隔

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
        //initialize
        text_time.text = FormatTime(curTime);
        balloonObjectPool = new ObjectPool(balloonPrefab, balloonParent.transform, maxTargets);
        changeMusicStatue();
    }

    // Update is called once per frame
    void Update()
    {
      
    }
   
    private void UpdateView()
    {
    }

    public void OnBtnClick()
    {
        GameObject clickedObjuct = EventSystem.current.currentSelectedGameObject;
        string btnName = clickedObjuct.name;
        switch (btnName)
        {
            case "btn_return":
                ShowScreen();
                break;
            case "btn_help":
                PopupsArray[1].SetActive(true);
                break;
            case "btn_music":
                OnMusicHandel(clickedObjuct);
                break;
            case "btn_start":
                OnStartHandel(clickedObjuct);
                break;
            default:
                break;
        }
    }

    private void OnStartHandel(GameObject clickedObjuct)
    {
        clickedObjuct.SetActive(false);
        OnStartTimerHandel();
        HandleGameStarted();
      

        InvokeRepeating("SpawnBalloon", 0f, spawnInterval); // 每隔一段时间生成一个气球
    }
    private void HandleGameStarted()
    {
        // 处理游戏开始事件
        EventMgr.TriggerEvent("OnGameStarted", true);
    }
    private void SpawnBalloon()
    {
        GameObject newBalloon = balloonObjectPool.GetObject();
        Vector3 randomPosition = GetRandomXPosition();
        newBalloon.transform.position = randomPosition;
        newBalloon.transform.SetParent(balloonParent.transform);
        newBalloon.SetActive(true);
        float randomFallSpeed = Random.Range(40f, 80f); // 随机生成一个速度值（范围可以根据需求调整）
        newBalloon.GetComponent<Balloon>().fallSpeed = randomFallSpeed; // 设置气球的下落速度
    }
    private void OnStartTimerHandel()
    {
        /* Invoke("MethodName", 1f);  // 在 delay 秒后调用一次*/
        // 或者
        InvokeRepeating("MethodName", 0f, 1f);  // 在 initialDelay 秒后开始，每隔 repeatRate 秒调用一次
    }
    void MethodName()
    {
        // 这里写要执行的代码
        curTime--;
        curTime = curTime <= 0 ? curTime = 0 : curTime;
        catButton_ator.SetBool("isPlay", curTime < 10&& curTime>0);
        text_time.text = FormatTime(curTime);
    }
    private void OnMusicHandel(GameObject clickedObjuct)
    {
        Image musicImage = clickedObjuct.transform.GetComponent<Image>();
        isMusic = !isMusic;
        int spritesIndex = isMusic ? 0 : 1;
        musicImage.sprite = spritesMusic[spritesIndex];
        changeMusicStatue();
    }
    private void changeMusicStatue()
    {
        if (isMusic)
        {
            SoundManager.instance.PlaySound("bgm");
        }
        else
        {
            SoundManager.instance.StopSound("bgm");
        }
    }
    public void OnClickClosePopup(GameObject selfObj)
    {
/*        GameObject clickedObjuct = EventSystem.current.currentSelectedGameObject;
        clickedObjuct.transform.parent.gameObject.SetActive(false);*/
        selfObj.SetActive(false);
     
    }

    private void ShowScreen()
    {
        SceneManager.LoadScene("FirstScenes");
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
    public string FormatTime(float seconds)
    {
        float minutes = seconds / 60;
        float remainingSeconds = seconds % 60;

        // 使用 string.Format 或者字符串插值（C# 6.0及更高版本）将时间格式化为 "00:00"
        return string.Format("{0:00}:{1:00}", minutes, remainingSeconds);

        // 或者使用字符串插值
        // return $"{minutes:00}:{remainingSeconds:00}";
    }

    private Vector3 GetRandomXPosition()
    {
        RectTransform balloonParentRT = balloonParent.GetComponent<RectTransform>();
        float minX = balloonParent.transform.position.x - balloonParentRT.rect.width * 0.5f;
        float maxX = balloonParent.transform.position.x + balloonParentRT.rect.width * 0.5f;



        float randomX = Random.Range(minX, maxX);

        // 使用 RectTransform 的高度
        float yPosition = balloonParent.transform.position.y + balloonParentRT.rect.height * 0.5f;

        return new Vector3(randomX, yPosition, 0f);
    }



}
