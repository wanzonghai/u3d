using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;
using System;
using StuctsCom;
using UnityEngine.EventSystems;

public class firstScene : MonoBehaviour
{
    private Transform UI_Layer_Mid = null;

    private GameObject region_hall = null;
    private Transform thisTransForm = null;
    private Button btn_start = null;

    private GameMgr gameMgr = null;
    private GameDate gamedata = null;
    private PoolMgr poolManage = null;
    private ResMgr resManage = null;
    private Tools tools = null;


    // 抽奖按钮
    public Button DrowBtn;

    // 奖励图片
    public Image[] ArardImgArr;

    // 转盘速度
    public float AniMoveSpeed = 3f;

    // 进度
    private float[] progress = new[] { 0f, 1f, 2f, 3f, 4f };

    // 转动动画位置
    private Vector3[] AniPosV3 = new[]
          {Vector3.up * 240, Vector3.up * 20, Vector3.zero, Vector3.down * 120, Vector3.down * 240};

    // 自动暂停标识
    private bool isAutoStop;
    // 抽奖结束 停止刷新界面UI
    private bool isStopUpdatePos;


    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {

        this.gameMgr = GameMgr.Getinstance();
        this.gamedata = GameDate.Getinstance();
        this.poolManage = PoolMgr.Getinstance();
        this.resManage = ResMgr.Getinstance();
        this.tools = Tools.Getinstance();
        this.gameMgr?.init();
        this.gameMgr?.initPoolDic();

        this.InintView();
    }

    private void InintView()
    {
        this.thisTransForm = gameObject.transform;
        this.UI_Layer_Mid = this.thisTransForm.Find("Mid");


    }
    //When the scene is loaded, the GameObject is instantiated,
    //and the object is enabled
    private void OnEnable()
    {
        this.InitEvent();
        


        this.UpdateView();
        StartCoroutine(OnUpdateBallHandel(0f));

    }
    private void InitEvent()
    {

        this.btn_start?.onClick.AddListener(this.OnBtnClick);


        

    }
    //Editor level, non play_mode script mount or active call reset to default
    private void Reset()
    {

    }
    // Start is called before the first frame update
    void Start()
    {
        //initialize
        DrowBtn.onClick.AddListener(DrawFun);

        isAutoStop = false;
        isStopUpdatePos = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (isStopUpdatePos) return;

        float t = Time.deltaTime * AniMoveSpeed;
        for (int i = 0; i < ArardImgArr.Length; i++)
        {
            progress[i] += t;
            ArardImgArr[i].transform.localPosition = MovePosition(i);
        }

    }

    // 获取下一个移动到的位置
    Vector3 MovePosition(int i)
    {
        int index = Mathf.FloorToInt(progress[i]);
        if (index > AniPosV3.Length - 2)
        {
            //保留其小数部分，不能直接赋值为0
            progress[i] -= index;
            index = 0;
            // 索引为2的到底了，索引为0的就在正中心
            if (i == 2 && isAutoStop)
            {
                isStopUpdatePos = true;
                Debug.Log("展示奖励界面...");
                // todo...获取奖励数据维护
            }
            return AniPosV3[index];
        }
        else
        {
            return Vector3.Lerp(AniPosV3[index], AniPosV3[index + 1], progress[i] - index);
        }
    }

    /// <summary>
    /// 点击抽奖
    /// </summary>
    void DrawFun()
    {
        isAutoStop = false;
        isStopUpdatePos = false;
        StartCoroutine(SetMoveSpeed(2));
        // DoTween 按钮下拉动画
        // Transform tran = DrowBtn.transform;
        //tran.DOLocalMoveY(-60, 0.2f).OnComplete(() =>
        //{
        //      tran.DOLocalMoveY(50, 0.2f);
        //
        //});
    }

    // 抽奖动画速度控制
    IEnumerator SetMoveSpeed(int time)
    {
        AniMoveSpeed = 10;
        yield return new WaitForSeconds(time);
        AniMoveSpeed = 1;
        yield return new WaitForSeconds(time);
        isAutoStop = true;
    }

    private void UpdateView()
    {
        //if (!this.UI_Layer_Mid.gameObject.activeSelf)
        //{
        //    this.UI_Layer_Mid.gameObject.SetActive(true);
        //}
        //string timeText = this.tools.ToTimeFormat(this.gameTimer, 2);
   

    }

   

    private IEnumerator OnUpdateBallHandel(float _time)
    {
        yield return new WaitForSeconds(_time);
        btn_start.gameObject.SetActive(true);
        PushPool();

    }


    private void OnBtnClick()
    {
        GameObject btnObj = EventSystem.current.currentSelectedGameObject;
        string btnName = btnObj.name;
   
        switch (btnName)
        {
            case "btn_start":
                btn_start.gameObject.SetActive(false);
                StartCoroutine(OnActiveHandel());
                break;
            default:
                break;
        }

    }
    private void OnActiveOfBucket()
    {
       
        int[] point =new int[4] { 1,3,0,2};
        for (int i = 0; i < this.gamedata.proCount; i++)
        {
            Transform item= region_hall.transform.GetChild(i);
            SItemData infoData = item.GetComponent<obj_bucket>().infoData;
           
            Vector3 start = item.position;
            Vector3 end = this.gameMgr.locationItem(point[i], this.region_hall, item.gameObject);
          
            float step = 0.5f * Time.deltaTime;

            StartCoroutine(MoveStartEnd(0.5f, item, start, end));
              /*item.localPosition = Vector3.MoveTowards(start, end, step);*/
            /*item.localPosition = new Vector3(Mathf.Lerp(start.x, end.x, step),Mathf.Lerp(start.y, end.y, step), Mathf.Lerp(start.z, end.z, step));*/
            /* item.Translate(Vector3.Normalize(end - start) *(Vector3.Distance(start, end) / (1f / Time.deltaTime)));*/

        }
    }
    private IEnumerator MoveStartEnd(float moveTime,Transform item, Vector3 start, Vector3 end)
    {
        // Loop for how ever long moveTime is.
        for (float x = 0f; x < 1.0f; x += Time.deltaTime / moveTime)
        {
            // Move to the EndLocation in a SmoothStep fashion.
            item.localPosition = new Vector3(
                Mathf.SmoothStep(start.x, end.x, x),
                Mathf.SmoothStep(start.y, end.y, x),
                Mathf.SmoothStep(start.z, end.z, x));
            yield return null;

        }
    }
    private void MoveToStart(Transform item, Vector3 start)
    {
        // Move back to the start.
        item.position = start;
    }

    private IEnumerator OnActiveHandel()
    {
        OnActiveOfBucket();
        yield return new WaitForSeconds(0.3f);
        OnUpdateHandel();
    }

    private void OnUpdateHandel()
    {
        PushPool();
   

        OnDrawFun();
        StartCoroutine(OnStartCoroutine());

    }

    private IEnumerator OnStartCoroutine()
    {

        yield return new WaitForSeconds(0.3f);
        OnGameReset();
        this.StartSchedul();
    }

    private void StartSchedul()
    {
        //启动定时器
        
    }
    private void OnGameReset()
    {
   
        btn_start.gameObject.SetActive(true);
        this.UpdateView();
    }

    private void PushPool()
    {

        Transform[] transArr = region_hall.transform.GetComponentsInChildren<Transform>();

        foreach (Transform item in transArr)
        {
            if (item.name == this.gamedata.preName)
            {
                this.poolManage.PushObj(item.name, item.gameObject);

            }
        }
    }
    private void OnGameOveHandel()
    {
  

    }

    private void OnDrawFun()
    {
        // 随机抽中ID
        gameMgr.rewardIndex = UnityEngine.Random.Range(0, gamedata.proCount);
        gameMgr.rewardIndex2 = UnityEngine.Random.Range(0, gamedata.proCount);
        while (gameMgr.rewardIndex == gameMgr.rewardIndex2)
        {
            gameMgr.rewardIndex2 = UnityEngine.Random.Range(0, gamedata.proCount);
        }
        EventDispatcher.Getinstance().DispatchEvent(GameDate.Getinstance().drawReward);
    }

    ///fixedUpdate
    /// <summary>
    /// 退出/销毁
    /// </summary>
    //Sends all objects before the program exits
    void OnApplicationQuit() { 
    }
    //Disabled or inactive
    void OnDisable() {
        this.RemoveEvent();
       
    }
    //monobe_haviour is destroyed
    void OnDestroy() {
        this.RemoveEvent();
    }

    private void RemoveEvent()
    {
       
        this.btn_start?.onClick.RemoveListener(this.OnBtnClick);

    }
}
