using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class Balloon: MonoBehaviour
{
    public float fallSpeed = 50f;  // 下落速度
    private ObjectPool balloonObjectPool; // 引用对象池的实例
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
        balloonObjectPool = GameObject.FindWithTag("GameController").GetComponent<SecondScenes>().balloonObjectPool;
    }

    // Update is called once per frame
    void Update()
    {
        MoveBalloon();
    }
    private void MoveBalloon()
    {
        // 从上往下移动
        transform.Translate(Vector2.down * fallSpeed * Time.deltaTime);
    }
    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.tag == "Balloon") return;
        Debug.Log("碰撞到了" + other.tag);
        // 检测与玩家碰撞或边界碰撞
        if (other.CompareTag("Player"))
        {
            // 在这里处理与玩家的碰撞
            BalloonCollisionWithPlayer();
            balloonObjectPool.ReturnObject(gameObject);

        }
        else if (other.CompareTag("Bounds"))
        {
            // 在这里处理与边界的碰撞
            BalloonCollisionWithBounds();

            balloonObjectPool.ReturnObject(gameObject);
        }
    }
    private void BalloonCollisionWithPlayer()
    {
        // 在这里处理与玩家的碰撞逻辑
      
    }

    private void BalloonCollisionWithBounds()
    {
        // 在这里处理与边界的碰撞逻辑
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
