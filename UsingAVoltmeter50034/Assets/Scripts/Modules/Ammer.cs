using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public class Ammer: MonoBehaviour
{
    private Button btn_zero = null;
    private Button btn_three = null;
    private Button btn_fifteen = null;
    private Button btn_ok = null;
    private Text text_vlue = null;
    private GameObject icon_zz = null;
    private GameObject icon_line1 = null;
    private GameObject icon_line2 = null;
    private GameObject icon_line3 = null;

    private float startRote = -100;
    private float vlueVol = 0;
    private int curNum = 0;

    private bool booOk = false;
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
    }

    private void InintView()
    {
        btn_zero = transform.Find("btn_zero")?.GetComponent<Button>();
        btn_three = transform.Find("btn_three")?.GetComponent<Button>();
        btn_fifteen = transform.Find("btn_fifteen")?.GetComponent<Button>();
        btn_ok = transform.Find("btn_ok")?.GetComponent<Button>();
        text_vlue = transform.Find("text_vlue")?.GetComponent<Text>();
        icon_zz = transform.Find("icon_zz").gameObject;
        icon_line1 = transform.Find("icon_line1").gameObject;
        icon_line2 = transform.Find("icon_line2").gameObject;
        icon_line3 = transform.Find("icon_line3").gameObject;
    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        icon_line1.SetActive(false);
        icon_line2.SetActive(false);
        icon_line3.SetActive(false);
        booOk = false;
        vlueVol = Random.Range(0.1f, 16.0f);
        InitEvent();
        UpdateView();

    }

    private void InitEvent()
    {
        btn_zero.onClick.AddListener(OnButtonClickHandle);
        btn_three.onClick.AddListener(OnButtonClickHandle);
        btn_fifteen.onClick.AddListener(OnButtonClickHandle);
        btn_ok.onClick.AddListener(OnButtonClickHandle);
    }
    //Disabled or inactive
    void OnDisable()
    {
        RemoveEvent();
    }
    private void RemoveEvent()
    {
        btn_zero.onClick.RemoveListener(OnButtonClickHandle);
        btn_three.onClick.RemoveListener(OnButtonClickHandle);
        btn_fifteen.onClick.RemoveListener(OnButtonClickHandle);
        btn_ok.onClick.RemoveListener(OnButtonClickHandle);
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
        btn_ok.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
    }
    public void OnButtonClickHandle()
    {

        if (!GameDate.Getinstance().boolStart||booOk ) return;
        GameObject clickedObject = EventSystem.current.currentSelectedGameObject;
        string buttonName = clickedObject.name;
        Debug.Log(buttonName);
        switch (buttonName)
        {
            case "btn_zero":
                icon_line1.SetActive(true);
                curNum++;
                break;
            case "btn_three":
                if (icon_line3.activeSelf) return;
                icon_line2.SetActive(true);
                curNum++;
                if (curNum >= 2)
                {
                    curNum = 0;
                    btn_ok.gameObject.SetActive(true);
                }
                break;
            case "btn_fifteen":
                if (icon_line2.activeSelf) return;
                icon_line3.SetActive(true);
                curNum++;
                if (curNum >= 2)
                {
                    curNum = 0;
                    btn_ok.gameObject.SetActive(true);
                }
                break;
            case "btn_ok":
                booOk = true;
                clickedObject.SetActive(false);
                OnOkHandel();
                break;
            default:
                break;
        }
    }
    private void OnOkHandel()
    {
        Vector3 currentRotation = icon_zz.transform.eulerAngles;
        float vcrz = icon_line2.activeSelf ? vlueVol / 3 * 180 : vlueVol / 15 * 180;
        currentRotation.z += vcrz;
        icon_zz.transform.eulerAngles = currentRotation;
        GameDate.Getinstance().boolFail = icon_line1.activeSelf && vlueVol <= 3 ? icon_line2.activeSelf : icon_line3.activeSelf;
        if (GameDate.Getinstance().boolFail)
        {
            GameDate.Getinstance().currentScore++;
            EventDispatcher.Getinstance().DispatchEvent(GameDate.Getinstance().correctlyEvent);
        }
        else
        {
            SceneManager.LoadScene("StartScene");
        }
      
    }

    private void UpdateView()
    {
        text_vlue.text = vlueVol.ToString();
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
