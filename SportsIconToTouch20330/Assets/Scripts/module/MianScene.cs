using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class MianScene: MonoBehaviour
{
    public GameObject layout_mid;

    public Button btn_break;
    public Button btn_help;
    public Button btn_pause;
    public Button btn_music;

    public GameObject PopService;
    public GameObject PopPass;
    public GameObject PopHelp;
    public GameObject PopResult;
    public GameObject girds;
    public GameObject balls;

    public Sprite[] sprites;
    public GameObject girdPrefab;
    public GameObject ballPrefab;
    private int rows = 8;
    private int cols = 8;
    private float spacing = 10.0f;
    private float spacing2 = 15.0f;

    private AudioSource audioSource;

    public Sprite[] pauseSprites;

    public Text[] ballsNum;
    public Text[] HallTextsNum;
    private float countdownTime = 60f;  // 设置初始倒计时时间
    private float currentTime;
    private bool isPause = false;
    private bool isPlyerMusic = true;

    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
    }

    private void InintView()
    {
        audioSource = GetComponent<AudioSource>();
    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
       // ShowPopService();
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
        ShowPopService();
        UpdateMusic();
        UpdateLabelTime();
        UpdateLabelScore();
        UpdateLabelLevel();
        GenerateGrid();
        PopPass.SetActive(true);
        layout_mid.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
    }

    private void UpdateView()
    {
    }
    void GenerateGrid()
    {

        RectTransform rectTransform = girds.GetComponent<RectTransform>();
        float parentWidth = rectTransform.rect.width;
        float parentHeight = rectTransform.rect.height;

        RectTransform itemRectTransform = girdPrefab.GetComponent<RectTransform>();
        float itemWidth = itemRectTransform.rect.width;
        float itemHeight = itemRectTransform.rect.height;

        // 计算第一个格子的位置
        float startX = -(parentWidth- itemWidth) / 2.0f+35;
        float startY = (parentHeight - itemHeight) / 2.0f-32;
        GameData.cols = cols; // 记录列数
        GameData.rows = rows; // 记录行数

        for (int row = 0; row < rows; row++)
        {
            for (int col = 0; col < cols; col++)
            {
                GameObject item = Instantiate(girdPrefab);
                RectTransform itemRect = item.GetComponent<RectTransform>();

                itemRect.SetParent(girds.transform, false);

                float posX = startX + col * (itemWidth + spacing);
                float posY = startY - row * (itemHeight + spacing2);

                itemRect.anchoredPosition = new Vector2(posX, posY);
            }
        }
    }
    public void OnPassClickHandel()
    {
        GameObject clickedObject = EventSystem.current.currentSelectedGameObject;
        string buttonName = clickedObject.name;
        if (buttonName == "btn_pass1")
        {
            GameData.level = 1;
        }
        else if (buttonName == "btn_pass2")
        {
            GameData.level = 2;
        }
        else
        {
            GameData.level = 3;
        }
        UpdateLabelLevel();
        PopPass.SetActive(false);
        layout_mid.SetActive(true);
    }

    void ClearBalls()
    {
        // Iterate through the existing balls and destroy them
        foreach (Transform ballTransform in balls.transform)
        {
            Destroy(ballTransform.gameObject);
        }

        // Clear the ball matrix and types arrays
        GameData.ballMatrix = new GameObject[rows, cols];
        GameData.ballTypes = new int[rows, cols];
    }
    void GenerateSports()
    {
        RectTransform rectTransform = balls.GetComponent<RectTransform>();
        float parentWidth = rectTransform.rect.width;
        float parentHeight = rectTransform.rect.height;

        RectTransform itemRectTransform = ballPrefab.GetComponent<RectTransform>();
        float itemWidth = itemRectTransform.rect.width;
        float itemHeight = itemRectTransform.rect.height;

        // 计算第一个格子的位置
        float startX = -(parentWidth - itemWidth) / 2.0f + 35;
        float startY = (parentHeight - itemHeight) / 2.0f - 32;

        GameData.ballMatrix = new GameObject[rows, cols]; // 初始化二维数组
        GameData.ballTypes = new int[rows, cols]; // 初始化存储类型的二维数组

        for (int row = 0; row < rows; row++)
        {
            for (int col = 0; col < cols; col++)
            {
                GameObject item = Instantiate(ballPrefab);
                RectTransform itemRect = item.GetComponent<RectTransform>();
                itemRect.SetParent(balls.transform, false);
                // ...设置球体外观和位置...
                Image ballImage = item.GetComponent<Image>();
                if (sprites.Length > 0)
                {
                    // 随机设置球体的类型（这里假设类型为0、1、2,3）
                    int randType = Random.Range(0, 4);
                    // 将球体对象和类型存入数组
                    GameData.ballMatrix[row, col] = item;
                    GameData.ballTypes[row, col] = randType;
                    // Set GridPosition for the ball
                    Ball ballScript = item.GetComponent<Ball>();
                    ballScript.ballMatrix = item;
                    ballScript.ballType = randType;
                    ballImage.sprite = sprites[randType];

                    switch (randType)
                    {
                        case 0:
                            GameData.ball1++;
                            break;
                        case 1:
                            GameData.ball2++;
                            break;
                        case 2:
                            GameData.ball3++;
                            break;
                        case 3:
                            GameData.ball4++;
                            break;
                    }
                }
                float posX = startX + col * (itemWidth + spacing);
                float posY = startY - row * (itemHeight + spacing2);
                itemRect.anchoredPosition = new Vector2(posX, posY);
   
            }
        }
        UpdateBallsNum();
    }
    // 交换两个球体位置的方法
/*    void SwapBalls(Vector2Int firstBall, Vector2Int secondBall)
    {
        GameObject tempBall = ballMatrix[firstBall.x, firstBall.y];
        ballMatrix[firstBall.x, firstBall.y] = ballMatrix[secondBall.x, secondBall.y];
        ballMatrix[secondBall.x, secondBall.y] = tempBall;

        int tempType = ballTypes[firstBall.x, firstBall.y];
        ballTypes[firstBall.x, firstBall.y] = ballTypes[secondBall.x, secondBall.y];
        ballTypes[secondBall.x, secondBall.y] = tempType;

        // TODO: 更新球体的位置显示
    }*/
    public void OnBtnClick()
    {
        GameObject clickedObject = EventSystem.current.currentSelectedGameObject;
        string buttonName = clickedObject.name;
        switch (buttonName)
        {
            case "btn_close":
                PopService.SetActive(false);
                GameData.isFirst = false;
                break;
            case "btn_break":
                SceneManager.LoadScene("LoadScene");
                break;
            case "btn_music":
                isPlyerMusic = !isPlyerMusic;
                clickedObject.transform.GetComponent<Image>().sprite = isPlyerMusic ? pauseSprites[2] : pauseSprites[3];
                UpdateMusic();
                break;
            case "btn_help":
                PopHelp.SetActive(true);
                break;
            case "btn_close_help":
                PopHelp.SetActive(false);
                break;
            case "btn_start":
                StartGame(clickedObject);
                break;
            case "btn_pause":
                isPause = !isPause;
                clickedObject.transform.GetComponent<Image>().sprite = isPause ? pauseSprites[0] : pauseSprites[1];
                PopPass.SetActive(true);
                layout_mid.SetActive(false);
                break;
            case "btn_close_Result":
                PopResult.SetActive(false);
                break;
            default:
                break;
        }

    }
    private void StartGame(GameObject btnStart)
    {
        btnStart.SetActive(false);
        // 生成一个随机的初始时间（例如，从30到90秒之间）
        countdownTime = Random.Range(30f, 90f);
        currentTime = countdownTime;
        UpdateLabelTime();
        StartCoroutine(StartCountdown());

        ClearBalls(); // Clear existing balls
        GenerateSports(); // Generate new balls
    }
    private IEnumerator StartCountdown()
    {
        while (currentTime > 0)
        {
            yield return new WaitForSeconds(1f);
            currentTime -= 1f;
            UpdateLabelTime();
        }

        // 倒计时结束，执行你想要的操作
        TimerFinished();
    }
    private void TimerFinished()
    {
        // 在倒计时结束时执行的操作
        PopResult.SetActive(true);
    }

    private void UpdateLabelTime()
    {
        HallTextsNum[0].text = string.Format("{0}:{1:00}", Mathf.FloorToInt(currentTime / 60), Mathf.FloorToInt(currentTime % 60));
    }
    private void UpdateLabelScore()
    {
        HallTextsNum[1].text = GameData.score.ToString();
    }
    private void UpdateLabelLevel()
    {
        HallTextsNum[2].text = GameData.level.ToString(); ;
    }
    private void UpdateMusic()
    {
        if (isPlyerMusic) audioSource.Play();
        else audioSource.Stop();
    }
    private void UpdateBallsNum()
    {
        for (int i = 0; i <ballsNum.Length; i++)
        {
            int ballNumStr = 0;
            switch (i)
            {
                case 0:
                    ballNumStr= GameData.ball1;
                    break;
                case 1:
                    ballNumStr = GameData.ball2; 
                    break;
                case 2:
                    ballNumStr = GameData.ball3;
                    break;
                case 3:
                    ballNumStr = GameData.ball4; 
                    break;
            }
            ballsNum[i].text = ballNumStr.ToString();
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

    private void ShowPopService()
    {
        if (!GameData.isFirst) return;
        PopService.SetActive(true);
    }
}
