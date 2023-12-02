using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class StartScene : MonoBehaviour
{
    private GameObject Pop_Load = null;
    private GameObject Pop_Start = null;
    private Button btn_startGame = null;


    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
        Pop_Start.SetActive(false);
        Pop_Load.SetActive(true);
        StartCoroutine(loadTx());
    }
        private void InintView()
    {
        Pop_Load = GameObject.Find("Canvas/Layer_top/Pop_Load");
        Pop_Start = GameObject.Find("Canvas/Layer_top/Pop_Start");
        btn_startGame = Pop_Start.transform.Find("btn_startGame")?.GetComponent<Button>();
    }
    private IEnumerator loadTx()
    {
        yield return new WaitForSeconds(1.5f);
        Pop_Load.SetActive(false);
        Pop_Start.SetActive(true);
    }

    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        // 异步加载主游戏场景
        UpdateView();
        btn_startGame.onClick.AddListener(OnBtnClick);
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
    }

    private void UpdateView()
    {
    }

    private void OnBtnClick()
    {
        SceneManager.LoadScene("MainScene");
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
        btn_startGame.onClick.RemoveListener(OnBtnClick);
    }
    //monobehaviour is destroyed
    void OnDestroy() {
    }
}
