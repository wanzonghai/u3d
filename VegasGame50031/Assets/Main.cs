using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class Main: MonoBehaviour
{

    public GameObject layer_mid = null;
    public GameObject s_view_load = null;
    public RectTransform s_view_load_rectTransform= null;

    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {

        InintView();
        layer_mid.SetActive(false);
        s_view_load.SetActive(true);
        if (s_view_load.activeSelf)
        {
            // 启动自转协程
            StartCoroutine(S_view_load_rectTransformRotateCoroutine());
        }
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
        // 启动定时器协程
        StartCoroutine(ShowLoad());
    }

    // Update is called once per frame
    void Update()
    {
    }
    private IEnumerator S_view_load_rectTransformRotateCoroutine()
    {
        while (true)
        {
            // 在协程中不断旋转UI元素

            s_view_load_rectTransform.Rotate(new Vector3(0, 300.0f * Time.deltaTime, 0));
            yield return null;
        }
 
    }
    private IEnumerator ShowLoad()
    {
        // 等待一定时间后再继续执行，模拟定时器间隔
        yield return new WaitForSeconds(3.0f);
        // 在这里执行您想要的操作
        layer_mid.SetActive(true);
        s_view_load.SetActive(false);

    }
    private void UpdateView()
    {
    }

    public void OnBtnClick()
    {
       var curBtn= UnityEngine.EventSystems.EventSystem.current.currentSelectedGameObject;
        switch (curBtn.name)
        {
            case "card1":

                break;
            case "card2":
                break;
            case "card3":
                break;
            default:
                break;
        }
        // 启动自转协程
        StartCoroutine(curBtnRotateCoroutine(curBtn));
       
    }

    private IEnumerator curBtnRotateCoroutine(GameObject curBtn)
    {
        bool boolFinsh = true;
        while (boolFinsh)
        {
            // 在协程中不断旋转UI元素

            curBtn.GetComponent<RectTransform>().Rotate(new Vector3(0, 300.0f * Time.deltaTime, 0));
        }
        yield return new WaitForSeconds(1.5f);
        boolFinsh = false;

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
