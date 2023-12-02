using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class MainScene : MonoBehaviour
{
    private GameObject Layer_mid = null;
    private Text text_score = null;
    private Text text_time = null;
    private Button btn_start = null;
    private Button btn_next= null;
    private Button btn_music = null;
    private Button btn_back = null;
    private GameObject Pop_Result = null;

    private AudioSource audioSource = null;

    public float countdownDuration = 60.0f; // 倒计时持续时间（秒）
    private float currentTime = 3;
    private float currentScore = 0;
    private float maxScore = 3;

    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
    }


    private void InintView()
    {
        Layer_mid = GameObject.Find("Canvas/Layer_mid");
        text_score = Layer_mid.transform.Find("text_score")?.GetComponent<Text>();
        text_time = Layer_mid.transform.Find("text_time") ? .GetComponent<Text>();
        btn_start = Layer_mid.transform.Find("btn_start")?.GetComponent<Button>();
        btn_music = Layer_mid.transform.Find("btn_music")?.GetComponent<Button>();
        btn_back = Layer_mid.transform.Find("btn_back")?.GetComponent<Button>();
        audioSource = transform.GetComponent<AudioSource>();
        Pop_Result = GameObject.Find("Canvas/Layer_top/Pop_Result");
        btn_next= Pop_Result.transform.Find("btn_next")?.GetComponent<Button>();

    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        audioSource.volume = 1;

        GameDate.Getinstance().boolStart = false;
        GameDate.Getinstance().currentScore = 0;
        currentTime=Random.Range(5,26);
        InitEvent();
        UpdateView();

    }
    private void InitEvent()
    {

        btn_start.onClick.AddListener(OnButtonClickHandle);
        btn_music.onClick.AddListener(OnButtonClickHandle);
        btn_back.onClick.AddListener(OnButtonClickHandle);
        btn_next.onClick.AddListener(OnButtonClickHandle);
        EventDispatcher.Getinstance().Regist(GameDate.Getinstance().correctlyEvent, UpdateScore);
    }
    //Disabled or inactive
    void OnDisable()
    {
        RemoveEvent();
    }
    private void RemoveEvent()
    {
        btn_start.onClick.RemoveListener(OnButtonClickHandle);
        btn_music.onClick.RemoveListener(OnButtonClickHandle);
        btn_back.onClick.RemoveListener(OnButtonClickHandle);
        btn_next.onClick.RemoveListener(OnButtonClickHandle);
        EventDispatcher.Getinstance().UnRegist(GameDate.Getinstance().correctlyEvent, UpdateScore);
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
        UpdateDeltaTime();
  
    }

    private void UpdateView()
    {
        UpdateTime();
        UpdateScore();
    }

    private void UpdateDeltaTime()
    {
        if (!GameDate.Getinstance().boolStart) return;
        if (currentTime > 0)
        {
            currentTime -= Time.deltaTime;
            if (currentTime <= 0)
            {
                currentTime = 0;
                GameDate.Getinstance().boolFail = GameDate.Getinstance().currentScore < 3;
    
                if (GameDate.Getinstance().boolFail)
                {
                    SceneManager.LoadScene("StartScene");
                }
            }
            UpdateTime();
        }
    }


    private void UpdateTime()
    {
        if (!text_time) return;
        int minutes = Mathf.FloorToInt(currentTime / 60);
        int seconds = Mathf.FloorToInt(currentTime % 60);
        text_time.text = "Time:" + string.Format("{0:00}:{1:00}", minutes, seconds);
    }
    private void UpdateScore()
    {
        if (!text_score) return;
        currentScore = GameDate.Getinstance().currentScore;
        text_score.text = string.Format("{0:0}/{1:0}", currentScore, maxScore);
        if (currentScore >= 3)
        {
           Pop_Result.SetActive(true);
        }
    }
    public void OnButtonClickHandle()
    {
        GameObject clickedObject = EventSystem.current.currentSelectedGameObject;
        string buttonName = clickedObject.name;
        Debug.Log(buttonName);
        switch (buttonName)
        {
            
           case "btn_music":
                GameDate.Getinstance().boolPlayMusic = !GameDate.Getinstance().boolPlayMusic;
                audioSource.volume = GameDate.Getinstance().boolPlayMusic? 1:0;
                break;
            case "btn_back":
                SceneManager.LoadScene("StartScene");
                break;
            case "btn_start":
                GameDate.Getinstance().boolStart = true;
                btn_start.gameObject.SetActive(false);
                break;
            case "btn_next":
                SceneManager.LoadScene("StartScene");
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
  
    //monobehaviour is destroyed
    void OnDestroy() {
    }
}
