using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class PlayerC: MonoBehaviour
{
    public float moveSpeed = 5.0f;

    Vector2 lastPos;//鼠标上次位置
    Vector2 currPos;//鼠标当前位置
    Vector2 offset;//两次位置的偏移值

    private bool gameStarted = false;
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
        EventMgr.SubscribeToEvent<bool>("OnGameStarted", HandleGameStarted);
    }

    private void HandleGameStarted(bool eventData)
    {
        gameStarted = eventData; // 设置游戏开始

        Debug.Log("游戏开始");
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
        if (gameStarted)
        {
            InPutMouseButton();
        }
        
    }

    private void InPutMouseButton()
    {
        if (Input.GetMouseButtonDown(0))
        {
            lastPos = Input.mousePosition;
        }

        if (Input.GetMouseButtonUp(0))
        {
            currPos = Input.mousePosition;
            offset = currPos - lastPos;
            DoMatch(offset);

        }
    }
   private void DoMatch(Vector2 _offset)
    {
        //水平移动
        if (Mathf.Abs(offset.x) > Mathf.Abs(offset.y))
        {
            if (offset.x > 0)
            {
                Debug.Log("右");
                MovePlayer(Vector3.right * offset.magnitude);
            }
            else
            {
                Debug.Log("左");
                MovePlayer(Vector3.left * offset.magnitude);
            }
        }
        /* else//垂直移动
         {
             if (offset.y > 0)
             {
                 Debug.Log("上");
             }
             else
             {
                 Debug.Log("下");
             }
         }*/
    }

    void MovePlayer(Vector3 direction)
    {
        // 移动玩家对象到目标位置，乘以 Time.deltaTime 来平衡移动速度
        Vector3 targetPosition = transform.position + direction * moveSpeed * Time.deltaTime;
        // 限制目标位置不超过父节点的最大和最小X值

        Transform parentTransform = transform.parent;
        RectTransform parentRectTransform = parentTransform.GetComponent<RectTransform>();
        float minX = parentTransform.position.x - parentRectTransform.rect.width * 0.5f;
        float maxX = parentTransform.position.x + parentRectTransform.rect.width * 0.5f;
        targetPosition.x = Mathf.Clamp(targetPosition.x, minX, maxX);
        // 移动玩家对象到目标位置
        transform.position = Vector3.Lerp(transform.position, targetPosition, 0.5f);
        Debug.Log("玩家对象位置" + transform.position);
    }

    private void UpdateView()
    {
    }

    private void OnBtnClick()
    {
       
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
