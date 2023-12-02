using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class LoadScene: MonoBehaviour
{
    public GameObject Layer_Mid;
    public GameObject PopLoad;
    public GameObject PopSP;

    public Toggle toggle_servicePrivacy;


    private bool boolDatenschutz = true;


    private GameMgr gameMgr = GameMgr.Getinstance();

    private ComSetData comSetData = new ComSetData();


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
        InitEvent();
        GetPlayerPrefsData();
        gameMgr.InitGameData();


    }
    //Disabled or inactive
    void OnDisable()
    {
        RemoveEvent();
    }
    private void InitEvent()
    {
        // 监听Toggle状态变化事件
        toggle_servicePrivacy.onValueChanged.AddListener(ToggleValueChanged);
    }
    private void RemoveEvent()
    {
        // 监听Toggle状态变化事件
        toggle_servicePrivacy.onValueChanged.RemoveListener(ToggleValueChanged);
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
        if (PopLoad && PopLoad.activeSelf)
        {
            StartCoroutine(ShowStartObj());
        }
    }

    private void UpdateView()
    {
        toggle_servicePrivacy.isOn = boolDatenschutz;
    }

    private IEnumerator ShowStartObj()
    {
 
        yield return new WaitForSeconds(1.5f);
        ChangeStatueLoad(true);

    }


    public void OnBtnClick()
    {
        GameObject btnObj = EventSystem.current.currentSelectedGameObject;
        string btnName = btnObj.name;
        switch (btnName)
        {
            case "btn_login":
                if (boolDatenschutz)
                {
                   GameData.Getinstance() .gameTimer = Random.Range(0,3600);
                    SceneManager.LoadScene("HallScene");
                    SetPlayerPrefsData();
                }
                break;
            case "btn_exit":
                ChangeStatueLoad(false);
                break;
            case "btn_close":
                PopSP.SetActive(false);
                break;
                
            default:
                break;
        }
    }
    private void GetPlayerPrefsData()
    {
        bool keyExists = GameMgr.KeyExists("comSetData");
       
        comSetData = keyExists ? GameMgr.GetPlayerPrefsValue<ComSetData>("comSetData") : null;

        boolDatenschutz = comSetData!=null ? comSetData.IsAgree ? comSetData.IsAgree : false : false;
        Debug.Log("boolDatenschutz"+boolDatenschutz);
        UpdateView();
    }
    private void SetPlayerPrefsData()
    {
        comSetData.IsAgree = boolDatenschutz;
        GameMgr.SetPlayerPrefsValue("comSetData", comSetData);
    }
    private void ToggleValueChanged(bool isOn)
    {
        boolDatenschutz = isOn;
    }

    private void ChangeStatueLoad(bool statues)
    {
        Layer_Mid.SetActive(statues);
        PopLoad.SetActive(!statues);
    }
    public void ShowAgreementPanel()
    {
        // 点击协议文字来显示或隐藏协议页面
        PopSP.SetActive(true);
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
