using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class ItemPro: MonoBehaviour
{
    private int row; // 道具所在的行
    private int col; // 道具所在的列

    private int valueItem;
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
    }

    private void InintView()
    {
       
    }
   public void SetValue(int _valueItem)
    {
        valueItem = _valueItem;
    }
    public int GetValue()
    {
        return valueItem;
    }

    // 设置道具的位置信息
    public void SetPosition(int row, int col)
    {
        this.row = row;
        this.col = col;
    }

    // 获取道具的位置信息
    public int[] GetPosition()
    {
        return new int[] { row, col };
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
