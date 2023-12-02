using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using static GameData;

public class HallScene : MonoBehaviour
{
    public Text text_score = null;
    public Text text_time = null;
    public GameObject Pop_result = null;
    public GameObject reg_win = null;
    public GameObject reg_lose = null;
    public GameObject Pop_help = null;
    public GameObject btn_start = null;

    GameData gameData = GameData.Getinstance();
    ProManager proManager = ProManager.Getinstance();
    private AudioSource audio = null;
    private float gameTimer = 10.0f;
    private float currentScore = 0;

    private bool boolStartTime = false;
/*
    private int curShowLi = 0;
    private int curShowSprite= 0;*/

    private bool isMoving = false;

    private int selecPro = 0;
    private int selecLi = 0;

    /// <summary>
    ///     puzzlePiece
    /// </summary>
    public GameObject puzzlePiece;
    public GameObject piecePr;
    public ScrollRect scrollView;
 
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
        gameData.initialPositions = new Dictionary<Transform, Vector3>();
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
        LoadResAsync();
    }

    // Update is called once per frame
    void Update()
    {
        if (boolStartTime)
        {
            UpdateDeltaTime();
           
        }
  
    }
    private void LateUpdate()
    {
        if (CheckGameCompletion())
        {
            GameOver();
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
        currentScore = gameData.currentScore;
        text_score.text = "Score : " + currentScore;
    }
    private void LoadResAsync()
    {
        Dictionary<string, Sprite> tempPictures1 = proManager.LoadProSprites("Textures/play1");
        gameData.pictures1 = proManager.SortDictionary(tempPictures1);

        Dictionary<string, Sprite> tempPictures2 = proManager.LoadProSprites("Textures/play2");
        gameData.pictures2 = proManager.SortDictionary(tempPictures2);
        LoadpuzzlePiece(gameData.gameType);
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
                SceneManager.LoadScene("LoadScene");
                break;
            case "btn_next":
                Pop_result.SetActive(false);
                gameData.gameType = 2;
                SceneManager.LoadScene("LoadScene");
                break;
            case "btn_start":
                GameStart();
                break;
            case "btn_help":
                Pop_help.SetActive(true);
                break;
            case "btn_close":
                if (Pop_help.activeSelf)
                {
                    Pop_help.SetActive(false);
                }
                  else if (Pop_result.activeSelf)
                {
                    Pop_result.SetActive(false);
                    SceneManager.LoadScene("LoadScene");
                }
                break;
            default:
                break;
        }
    }
    private void UpdateDeltaTime()
    {
        if (!boolStartTime) return;
        if (gameTimer > 0)
        {
            gameTimer -= Time.deltaTime;
            if (gameTimer <= 0)
            {
                PdResult();

            }
            UpdateTime();
        }
    }

    private void UpdateTime()
    {
        if (!text_time) return;
        int hours = Mathf.FloorToInt(gameTimer / 3600);
        int minutes = Mathf.FloorToInt(gameTimer / 60);
        int seconds = Mathf.FloorToInt(gameTimer % 60);
        text_time.text = string.Format("{0:00}:{1:00}:{2:00}", hours, minutes, seconds);
    }
    private void UpdateScore()
    {
        if (!text_score) return;
        gameData.currentScore++;
        boolStartTime = false;
        currentScore =gameData.currentScore ;
        text_score.text = "Score : " + currentScore;

    }

    private void GameStart()
    {
        gameData.isGameStart = true;
        boolStartTime = true;
        btn_start.SetActive(false);

    }

    private void GameOver()
    {
        gameData.isGameStart = false;

    }

    private void PdResult()
    {
        GameOver();
        Pop_result.SetActive(true);
        btn_start.SetActive(true);
        reg_win.SetActive(CheckGameCompletion());
        reg_lose.SetActive(!CheckGameCompletion());
       UpdateScore();

        gameTimer = 0;
        gameData.boolFail = true;
        boolStartTime = false;
      //  SceneManager.LoadScene("LoadScene");
    }
    private void LoadpuzzlePiece(int gameMode)
    {
        Dictionary<string, Sprite> puzzlePiecesDictionary;

        switch (gameMode)
        {
            case 1:
                puzzlePiecesDictionary = gameData.pictures1 ?? new Dictionary<string, Sprite>();
                break;
            case 2:
                puzzlePiecesDictionary = gameData.pictures2 ?? new Dictionary<string, Sprite>();
                break;
            default:
                puzzlePiecesDictionary = new Dictionary<string, Sprite>(); // 默认情况下，使用空字典
                break;
        }
        Transform contentTransform = scrollView.content;
        RectTransform contentRectTransform = contentTransform.GetComponent<RectTransform>();

        // 储存初始位置
        foreach (Transform child in piecePr.transform)
        {
            gameData.initialPositions[child] = child.localPosition;
        }
        UpdatePiecePr(puzzlePiecesDictionary);
        float totalWidth = contentRectTransform.sizeDelta.x; // 初始总宽度为scrollView.content的宽度
        foreach (var puzzlePieceEntry in puzzlePiecesDictionary)
        {
            GameObject picturesObj = Instantiate(puzzlePiece);
            Image imageComponent = picturesObj.GetComponent<Image>();
 /*            picturesObj.AddComponent<PicturesC>();*/
           
            if (imageComponent != null)
            {
                imageComponent.SetNativeSize();
                imageComponent.sprite = puzzlePieceEntry.Value; // 使用字典中的 Sprite
                picturesObj.transform.SetParent(scrollView.content); // 使用transform.SetParent来设置父对象


                // 获取并累加picturesObj的宽度
                float childWidth = imageComponent.rectTransform.rect.width;
                totalWidth += childWidth;
            }
            else
            {
                Debug.LogError("Image component not found on the instantiated GameObject.");
            }
        }
        contentRectTransform.SetSizeWithCurrentAnchors(RectTransform.Axis.Horizontal, totalWidth);
    }

    private void UpdatePiecePr(Dictionary<string, Sprite> puzzlePiecesDictionary)
    {
        Transform piecePrTransform = piecePr.transform;
        List<Transform> originalTransforms = new List<Transform>();

        // 存储所有子对象的Transform
        foreach (Transform child in piecePrTransform)
        {
            child.gameObject.AddComponent<PicturesC>(); 
            originalTransforms.Add(child);

        }
        float minX = piecePrTransform.localPosition.x - piecePrTransform.localScale.x * 0.5f;
        float maxX = piecePrTransform.localPosition.x + piecePrTransform.localScale.x * 0.5f;
        float minY = piecePrTransform.localPosition.y - piecePrTransform.localScale.y * 0.5f;
        float maxY = piecePrTransform.localPosition.y + piecePrTransform.localScale.y * 0.5f;
        // 随机打乱位置和更新Sprite
        for (int i = 0; i < originalTransforms.Count; i++)
        {
            // 随机生成位置
            float randomX = Random.Range(minX, maxX);
            float randomY = Random.Range(minY, maxY);

            // 限定位置在piecePr范围内
            randomX = Mathf.Clamp(randomX, minX, maxX);
            randomY = Mathf.Clamp(randomY, minY, maxY);

            // 更新Sprite
            Image imageComponent = originalTransforms[i].GetComponent<Image>();
            string key = (i + 1).ToString();

            if (puzzlePiecesDictionary.ContainsKey(key))
            {
                imageComponent.sprite = puzzlePiecesDictionary[key];
            }
            // 设置新的位置
            Vector3 newPosition = new Vector3(randomX, randomY, originalTransforms[i].localPosition.z);
            originalTransforms[i].localPosition = newPosition;


        }
    }

    private bool IsCloseEnough(Vector3 position1, Vector3 position2, float tolerance = 0.1f)
    {
        return Vector3.Distance(position1, position2) < tolerance;
    }

    private bool CheckGameCompletion()
    {
        foreach (var pair in gameData. initialPositions)
        {
            Transform child = pair.Key;
            Vector3 initialPosition = pair.Value;
            Vector3 currentPosition = child.localPosition;

            // 检查当前位置是否在初始位置附近，如果不在附近则返回false
            if (!IsCloseEnough(currentPosition, initialPosition))
            {
                return false;
            }
        }

        // 所有子对象都在初始位置附近，游戏结束
        return true;
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
