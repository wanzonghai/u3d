using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class FirstScene: MonoBehaviour
{
    public GameObject[] PopupsArray;

    public ProgressBar progressBar;
    public float updateInterval = 1.0f; // 更新时间间隔
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
        OnPopupStatus(false) ;
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
            case "btn_start":
                OnPopupStatus(true);
                // 在游戏启动后的一段时间开始更新进度条
                InvokeRepeating("UpdateProgressBar", 2.0f, updateInterval);
                break;
            default:
                break;
        }
    }


    private void OnPopupStatus(bool isActive)
    {
        PopupsArray[0].SetActive(isActive);
        PopupsArray[1].SetActive(!isActive);
    }

    private void UpdateProgressBar()
    {
        // 在这里设置进度条的进度
        progressBar.SetProgress(progressBar.slider.value + 0.33f);

        // 可以在这里添加一些条件判断，例如达到一定进度后停止更新
        if (progressBar.slider.value >= 1.0f)
        {
            CancelInvoke("UpdateProgressBar"); // 停止更新进度条
            ShowScreen();
        }
    }
    private void ShowScreen()
    {
        SceneManager.LoadScene("SecondScenes");
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
