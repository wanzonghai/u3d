using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class LoadScene: MonoBehaviour
{
    public GameObject btn_obj;
    public Text text_load;

    private bool boolClickLogin = false;
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
    }

    // Update is called once per frame
    void Update()
    {
        if (text_load.gameObject&&text_load.gameObject.activeSelf)
        {
            StartCoroutine(ShowStartObj());
        }
    }

    private void UpdateView()
    {
    }

    private IEnumerator ShowStartObj()
    {
        yield return new WaitForSeconds(1.5f);
        text_load.text = "GAME START !";
        yield return new WaitForSeconds(0.5f);
        ChangeStatueLoad(true);
        yield return new WaitForSeconds(2.5f);
        LoadSceneHall();
    }

    public void OnBtnClick()
    {
        GameObject btnObj = EventSystem.current.currentSelectedGameObject;
        string btnName = btnObj.name;
        switch (btnName)
        {
            case "btn_1":
            case "btn_2":
                LoadSceneHall();
                break;
            case "btn_3":
                ChangeStatueLoad(false);
                break;
            default:
                break;
        }
    }
    private void LoadSceneHall()
    {
        GameData.Getinstance().gameTimer = Random.Range(5, 26);
        SceneManager.LoadScene("HallScene");
    }
    private void ChangeStatueLoad(bool statues)
    {
        btn_obj.SetActive(statues);
        text_load.gameObject.SetActive(!statues);
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
