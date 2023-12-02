using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UIElements;

public class Player : MonoBehaviour
{
    public float moveSpeed = 5.0f;
    private Vector2 touchStartPos;
    private Vector2 touchEndPos;
    private Vector2 touchDelta;

    private Rigidbody2D rb;

    public RectTransform rectTransform;
    private Vector2 initialPosition;
    private Vector2 dragOffset;

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
        rb = GetComponent<Rigidbody2D>();
        // 获取UI元素的RectTransform
        rectTransform = GetComponent<RectTransform>();
        // 记录初始位置
        initialPosition = rectTransform.anchoredPosition;
    }

    // Update is called once per frame
    void Update()
    {
        if (!GameData.Getinstance().StartGame) return;
        /*  if (Input.touchCount > 0)
          {
              Debug.Log("Touch detected");
              Touch touch = Input.GetTouch(0);

              if (touch.phase == TouchPhase.Began)
              {
                  // 记录触摸起始位置
                  touchStartPos = touch.position;
              }
              else if (touch.phase == TouchPhase.Moved)
              {
                  // 计算触摸滑动距离
                  touchEndPos = touch.position;
                  touchDelta = touchEndPos - touchStartPos;

                  // 计算移动向量
                  Vector2 movement = touchDelta.normalized * moveSpeed * Time.deltaTime;

                  // 移动玩家
                  rb.velocity = movement;
              }
              else if (touch.phase == TouchPhase.Ended)
              {
                  // 清除速度，停止移动
                  rb.velocity = Vector2.zero;
              }
          }*/
        // 触摸输入处理
        if (Input.touchCount > 0)
        {
            Touch touch = Input.GetTouch(0);

            if (touch.phase == TouchPhase.Began)
            {
                // 记录触摸起始位置
                touchStartPos = touch.position;
            }
            else if (touch.phase == TouchPhase.Moved)
            {
                // 计算触摸滑动距离
                touchEndPos = touch.position;
                touchDelta = touchEndPos - touchStartPos;

                // 计算移动向量
                Vector2 movement = new Vector2(touchDelta.x, touchDelta.y) * moveSpeed * Time.deltaTime;

                // 移动玩家对象
                transform.Translate(movement);

                // 更新触摸起始位置
                touchStartPos = touchEndPos;
            }
        }
        else
        {
            float horizontalInput = Input.GetAxis("Horizontal");
            float verticalInput = Input.GetAxis("Vertical");

            Vector2 movement = new Vector2(horizontalInput, verticalInput).normalized;
            rb.velocity = movement * moveSpeed;
        }
    }

    void FixedUpdate()
    {
        /* // 获取触摸点的位置
         if (Input.touchCount > 0)
         {
             Touch touch = Input.GetTouch(0);
             Vector3 touchPosition = Camera.main.ScreenToWorldPoint(touch.position);

             // 计算方向
             Vector3 direction = (touchPosition - transform.position).normalized;

             // 应用移动
             rb.velocity = new Vector2(direction.x * speed, direction.y * speed);
         }
         else
         {
             // 如果没有触摸输入，停止移动
             rb.velocity = Vector2.zero;
         }*/

      

    }
    private void UpdateView()
    {
    }

    private void OnBtnClick()
    {
       
    }

  
    // 碰撞检测函数,进入的时候执行
    void OnTriggerEnter2D(Collider2D collider)
    {
       
/*        Debug.Log("撞到啦...");
        Debug.Log(collider.gameObject.tag);*/
        if (collider.CompareTag("Obstacle"))
        {
            // 遇到障碍物，无法通过

            rb.velocity = Vector2.zero; // 停止移动
            // 在这里可以添加你的障碍物处理代码

        }
        else if (collider.CompareTag("Coin"))
        {
            // 遇到金币，可以拾取
            // 在这里可以添加你的金币拾取代码
            GameData.Getinstance().coinnum ++;
            if (GameData.Getinstance().coinnum >= 3)
            {
                EventDispatcher.Getinstance().DispatchEvent(100);
            }
            Destroy(collider.gameObject);
        }
        else if (collider.CompareTag("Water"))
        {
            // 遇到水，减速
            // 在这里可以添加你的减速效果代码
            moveSpeed *= 0.5f; // 这里是一个简单的减速示例，你可以根据需要调整
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("Water"))
        {
            // 离开水，恢复正常速度
            moveSpeed = 5f; // 恢复正常速度，你可以根据需要调整
        }
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
