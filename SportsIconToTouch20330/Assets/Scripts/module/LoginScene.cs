using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class LoginScene: MonoBehaviour
{
    public Button btnLogin ;
    public GameObject PopLoad ;
    public Slider loadSlider;
    public Text loadSliderText;

    private int curValue = 0;
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
        GameData.isFirst = true;
    }

    private void InintView()
    {
       
    }
    // Start is called before the first frame update
    void Start()
    {
        //initialize
        PopLoad.SetActive(false);
        btnLogin.gameObject.SetActive(true);
        loadSlider.value = 0;
    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        UpdateView();

        //SceneManager.LoadSceneAsync("MainScene", LoadSceneMode.Additive);
    }
    //Called when a new level is loaded after all scenarios have been loaded
    //private void OnLevelWasLoaded(int level)
    //{
   // }
    //Editor level, non play_modescript mount or active call reset to default
    private void Reset()
    {
        
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
        btnLogin.gameObject.SetActive(false);
        PopLoad.SetActive(true);
        LoadProcess();
    }
    private void LoadProcess()
    {
        StartCoroutine(UpdateProgressBar());
    }

    private IEnumerator UpdateProgressBar()
    {
        while (curValue < 100)
        {
            yield return new WaitForSeconds(0.1f); // Adjust the time delay as needed
            // 逐渐增加curValue
            curValue = Mathf.Min(curValue + Random.Range(1, 10), 100);
            loadSliderText.text = "loading......" + curValue + "%";
            loadSlider.value = curValue / 100f;
            if (curValue >= 100)
            {
                SceneManager.LoadScene("MainScene");
            }
        }
       
        // Load process complete, handle any additional logic here

        // For example, hide the loading UI
        PopLoad.SetActive(false);

        // Reactivate the button
        btnLogin.gameObject.SetActive(true);
    }
/*        StartCoroutine(LoadSceneAsync());
    }
    private IEnumerator LoadSceneAsync()
    {
        AsyncOperation asyncLoad = SceneManager.LoadSceneAsync("MainScene");

        // 等待加载完成
        while (!asyncLoad.isDone)
        {
            // 在此处可以更新加载进度条
            float progress = Mathf.Clamp01(asyncLoad.progress / 0.9f);
            Debug.Log("Loading progress: " + (progress * 100f) + "%");
            loadSliderText.text = "loading......" + (progress * 100f) + "%";
            // 更新加载进度条
            loadSlider.value = progress;

            // 等待一小段时间
            yield return new WaitForSeconds(0.1f);
        }

    }*/
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
