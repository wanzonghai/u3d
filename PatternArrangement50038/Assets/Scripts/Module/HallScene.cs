using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class HallScene : MonoBehaviour
{
    public Text text_score = null;
    public Text text_time = null;
    public GameObject Pop_result = null;
    public GameObject btn_start = null;
    public Sprite[] spriteArr;
    public Image[] icon_pro;
    public Image[] icon_li;
    TimerMgr timer_game;
    GameData gameData = GameData.Getinstance();
    private AudioSource audio = null;
    private float gameTimer = 10.0f;

    private int TimerID_game;

    private float currentScore = 0;

    private bool boolStartTime = false;
/*
    private int curShowLi = 0;
    private int curShowSprite= 0;*/

    private bool isMoving = false;

    private int selecPro = 0;
    private int selecLi = 0;

    private bool isCheckAndroidMessage = true;
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
        gameTimer = gameData.gameTimer;
        UpdateTime();
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
        timer_game = TimerMgr.Getinstance();
    }

    // Update is called once per frame
    void Update()
    {
        if (boolStartTime)
        {
            UpdateDeltaTime();
        }
        PdResult();

        if (!string.IsNullOrEmpty(gameData.AndroidMessage) &&isCheckAndroidMessage)
        {
            gameData.AnalyseAjust();
            isCheckAndroidMessage = false;
        }
    }

    private void UpdateView()
    {
        /*        for (int i = 0; i < spriteArr.Length; i++)
                {
                    // 使用索引作为键，也可以根据需要使用不同的字符串键
                    gameData.pokers[i] = spriteArr[i];
                    // 使用索引作为键，也可以根据需要使用不同的字符串键
                    gameData.pokers[i] = new Sprite(); // 实例化Sprite对象
                    gameData.pokers[i].name = spriteArr[i].name;
                    gameData.pokers[i].texture = spriteArr[i].texture;
                }*/

    }

    private IEnumerator ShowStartObj()
    {
        yield return new WaitForSeconds(1.5f);

        yield return new WaitForSeconds(0.5f);
    }

    public void OnBtnClick()
    {
        GameObject btnObj = EventSystem.current.currentSelectedGameObject;
        string btnName = btnObj.name;
        Debug.Log(btnName);
        switch (btnName)
        {
            case "btn_music":
                gameData.boolPlay = !gameData.boolPlay;
                audio.volume = gameData.boolPlay ? 1 : 0;
                break;
            case "btn_return":
            case "btn_next":
                Pop_result.SetActive(false);

                SceneManager.LoadScene("LoadScene");
                break;
            case "btn_start":
                GameStart();
                break;
            default:
                break;
        }
    }

    public void OnBtnProClick()
    {
        GameObject btnObj = EventSystem.current.currentSelectedGameObject;
        string btnName = btnObj.name;
        switch (btnName)
        {
            case "1":
            case "2":
            case "3":
                Prohandel(btnObj);
                break;
            default:
                break;
        }
    }
    public void OnBtnLiClick()
    {
        GameObject btnObj = EventSystem.current.currentSelectedGameObject;
        string btnName = btnObj.name;
        switch (btnName)
        {
            case "1":
            case "2":
            case "3":
            case "4":
                Lihandel(btnName);
                break;
            default:
                break;
        }
    }
    private void Prohandel(GameObject btnObj)
    {
        gameData.boolClick = !gameData.boolClick;
        string indexPro = btnObj.GetComponent<Image>().sprite.name;
        selecPro = int.Parse(indexPro);

    }
    private void Lihandel(string btnName)
    {
        if (!gameData.boolClick) return;
        gameData.boolClick = false;
        selecLi = int.Parse(btnName);

        icon_li[selecLi - 1].sprite = spriteArr[selecPro - 1];
        icon_li[selecLi - 1].SetNativeSize();

    }
    private void UpdateDeltaTime()
    {
        if (!boolStartTime) return;
        if (gameTimer > 0)
        {
            gameTimer -= Time.deltaTime;
            if (gameTimer <= 0)
            {
                gameTimer = 0;
                gameData.boolFail = true;
                boolStartTime = false;
                SceneManager.LoadScene("LoadScene");
            }
            UpdateTime();
        }
    }

    private void UpdateTime()
    {
        if (!text_time) return;
        int minutes = Mathf.FloorToInt(gameTimer / 60);
        int seconds = Mathf.FloorToInt(gameTimer % 60);
        text_time.text = "Time:" + string.Format("{0:00}:{1:00}", minutes, seconds);
    }
    private void UpdateScore()
    {
        if (!text_score) return;
        gameData.currentScore++;
        boolStartTime = false;
        currentScore =gameData.currentScore ;
        text_score.text = currentScore.ToString();

    }

    private void GameStart()
    {
        boolStartTime = true;
        btn_start.SetActive(false);
        //li
       // curShowLi=   Random.Range(0, 4);
        //sprite
/*        curShowSprite = Random.Range(0, 4);
        icon_li[curShowLi].sprite = spriteArr[curShowSprite];
        icon_li[curShowLi].SetNativeSize();*/
        UpdateRegPro();
    }
    private void UpdateRegPro() {
        List<int> numbers = new List<int>();

        int specificNumber = 1;

        while (numbers.Count < 3) // 生成5个随机数
        {
            int randomNumber = Random.Range(0, 4);

            // 检查是否已经包含特定数字
            if (randomNumber != 0 && !numbers.Contains(randomNumber))
            {
                numbers.Add(randomNumber);
            }
        }
        for (int i = 0; i < 3; i++)
        {
            icon_pro[i].sprite = spriteArr[numbers[i]];
            icon_pro[i].SetNativeSize();
        }
    }
    private void GameOver()
    {
   
      
    }

    private void PdResult()
    {
        if (!boolStartTime) return;
        for (int i = 0; i < icon_li.Length; i++)
        {

            string indexSprite = icon_li[i].sprite.name;
            if (indexSprite != (i + 1).ToString())
            {
                return;
            }
        }
        Pop_result.SetActive(true);
        btn_start.SetActive(true);

        UpdateScore();
    }

    private int getSpriteIndex(GameObject objSprite)
    {
        string indexPro = objSprite.GetComponent<Image>().sprite.name;
       int indexSprite = int.Parse(indexPro);
        return indexSprite;
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
