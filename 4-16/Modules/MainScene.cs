using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class MainScene: MonoBehaviour
{
    private Transform Layer_top;
    private Transform region_gird;
    private Transform region_pro;
    private Image icon_tip_pro;
    private Text text_score;

    private float cur_score;

    private Image progressbar;
    private Image star25;
    private Image star65;
    private Image star85;
    public List<Image> starIcons = new List<Image>();

    private GameObject btn_play;

    private GameObject selectedItem; // 选中的道具对象
    private GameObject gridPrefab; // 格子的预制体

    private GameObject itemPrefab; // 道具的预制体

    private Vector2 itemSpacing = new Vector2(152f, 1f); // 道具之间的间距
    private Vector2 itemOffset = new Vector2(-326f, 338f); // 第一个道具的偏移量

    private float itemWidth;
    private float itemHeight;
    //If the value is inactive during scenario creation or prefab instantiation,
    //this parameter is invoked when it is active and is executed only once
    private void Awake()
    {
        InintView();
    }

    private void InintView()
    {
        Layer_top = transform.parent.Find("Layer_top");
        region_gird = transform.parent.Find("Layer_mid/region_gird");
        region_pro = transform.parent.Find("Layer_mid/region_pro");
        icon_tip_pro = transform.parent.Find("Layer_mid/icons/icon_pao/icon_tip_pro")?.GetComponent<Image>();
        text_score = transform.parent.Find("Layer_mid/text_score")?.GetComponent<Text>();

        progressbar= transform.parent.Find("Layer_mid/progress/bar")?.GetComponent<Image>();
        progressbar.fillAmount = 0f;
        star25= progressbar.transform.parent.Find("icon_star1")?.GetComponent<Image>();
        star65 = progressbar.transform.parent.Find("icon_star2")?.GetComponent<Image>();
        star85 = progressbar.transform.parent.Find("icon_star3")?.GetComponent<Image>();
        // 初始化格子数组
        GameData.itemGrid = new GameObject[GameData.ROWS, GameData.COLS];
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
    // 
    private void InitializeStarIcons()
    {
        starIcons.Add(star25);
        starIcons.Add(star65);
        starIcons.Add(star85);
    }
    // Start is called before the first frame update
    void Start()
    {
        App.SoundMgr.Initialize();
        InitializeStarIcons();
        
        //initialize
        OnLoadAssetBundle();
        OnBackGroundSound();
    }
    private void OnLoadAssetBundle()
    {
        App.ABMgr.LoadAssetBundle(ResPath.BundleURL_common_btn);
        App.ABMgr.LoadAssetBundle(ResPath.BundleURL_hall);
        App.GameMgr.LoadResFromAssetBundle<Sprite>(ResPath.BundleURL_hall_btn,GameData.btnsSprites);
        App.GameMgr.LoadResFromAssetBundle<Sprite>(ResPath.BundleURL_hall_pro, GameData.proSprites,(proSprites) => {
            UpdateTipProSprite();
        });
        App.GameMgr.LoadResFromAssetBundle<GameObject>(ResPath.BundleURL_hall_prefabs_pro_gird, GameData.proObj,(prosObj) =>
        {
            gridPrefab = prosObj["pro_gird"];
            itemPrefab = prosObj["pro_item"];
            GenerateGrid();
        });

    }
    // Update is called once per frame
    void Update()
    {
    }

    private void UpdateView()
    {
    }
    private void UpdateText()
    {
        if (text_score==null) return;
        text_score.text = "Mark:" + GameData.scores;
        OnUpdatePrassgrabar();
    }

    private void UpdateTipProSprite()
    {
        if (icon_tip_pro == null) return;
        System.Random rand = new System.Random(); // 创建随机数生成器
        int randomName = rand.Next(0, 6) + 1;
        string spriteName = "" + randomName;
        icon_tip_pro.sprite = GameData.proSprites[spriteName];
        GameData.curRanName = randomName;
    }

    private void UpdateStarStatue()
    {
        float fillNum = progressbar.fillAmount;

        for (int i = 0; i < starIcons.Count; i++)
        {
            string spriteName = "icon_star_bg";

            if (i == 0 && fillNum >= 0.25f)
            {
                spriteName = "icon_star";
            }
            else if (i == 1 && fillNum >= 0.65f)
            {
                spriteName = "icon_star";
            }
            else if (fillNum >= 0.85f)
            {
                spriteName = "icon_star";
            }

            ChangeSpriteBtn(spriteName, starIcons[i].transform, GameData.btnsSprites);
        }
    }
    private void OnBackGroundSound()
    {
        if (GameData.isSoundEnble)
        {
            SoundManager.Instance.PlaySound("hall_clip");
        }
        else
        {
            SoundManager.Instance.StopSound();
        }
    }
    private void OnShowResult()
    {
        PanelManager.Instance.ShowPanel(ResPath.BundleURL_panel,ResPath.Panel_result, Layer_top);
    }
    public void OnBtnClick()
    {
        SoundManager.Instance.PlaySFX("btn_effect_clip");
        // 检查是否有 EventSystem
        if (EventSystem.current == null) return;

        // 检查是否有按下的按钮
        GameObject clickedObject = EventSystem.current.currentSelectedGameObject;
        if (clickedObject == null) return;
        string btn_name = clickedObject.name;
        switch (btn_name)
        {
            case "btn_home":
                App.GameMgr.LoadScene("FirstScene");
                break;
            case "btn_help":
                App.GameMgr.ShowPanel( ResPath.Panel_help, Layer_top);
                break;
            case "btn_effect":
                GameData.isEffectEnble = !GameData.isEffectEnble;
                string spriteName_effect = GameData.isEffectEnble ? "btn_effect" : "btn_uneffect";
                ChangeSpriteBtn(spriteName_effect, clickedObject.transform,GameData.btnsSprites);
                App.SoundMgr.sfxEnabled = GameData.isEffectEnble;
                break;
            case "btn_music":
                GameData.isSoundEnble = !GameData.isSoundEnble;
                string spriteName_music = GameData.isSoundEnble ? "btn_music" : "btn_unmusic";
                ChangeSpriteBtn(spriteName_music, clickedObject.transform, GameData.btnsSprites);
                OnBackGroundSound();
                break;
            case "btn_play":
                btn_play = clickedObject;
                btn_play.SetActive(false);
                cur_score = 0;
                // 清空格子数组
                ClearItemGrid();
                
                InstantiateItemsInGrid();
     
                break;
            default:
                break;
        }
    }

    private void ChangeSpriteBtn(string spriteName,Transform targetTransform , Dictionary<string, Sprite> targetDic)
    {
        Image targetSprite = targetTransform.GetComponent<Image>();
        if (targetSprite == null) return;
        targetSprite.sprite = targetDic[spriteName];
    }
    private void OnUpdatePrassgrabar()
    {
        // 每秒更新一次进度条
        float maxFill = GameData.ROWS * GameData.COLS * 100;
        progressbar.fillAmount = (cur_score / maxFill);
        UpdateStarStatue();
        
        // 确保进度条填满
        GameData.isWin = progressbar.fillAmount >= 0.65;
        if (!GameData.isWin) return;
        btn_play.SetActive(true);
        // 清空格子数组
        ClearItemGrid();
        OnShowResult();
    }
    //生成6*6的格子
    private void GenerateGrid()
    {
        RectTransform parentRectTransform = region_gird.GetComponent<RectTransform>();
        float parentWidth = parentRectTransform.rect.width;
        float parentHeight = parentRectTransform.rect.height;

        float itemWidth = parentWidth / GameData.COLS; // 父节点宽度平均分成COLS份
        float itemHeight = parentHeight / GameData.ROWS; // 父节点高度平均分成ROWS份

        for (int row = 0; row < GameData.ROWS; row++)
        {
            for (int col = 0; col < GameData.COLS; col++)
            {
                // 计算格子的位置
                float x = col * itemWidth + itemWidth / 2f - parentWidth / 2f; // 水平方向偏移
                float y = -row * itemHeight - itemHeight / 2f + parentHeight / 2f; // 垂直方向偏移

                // 实例化格子并设置位置
                GameObject newGrid = Instantiate(gridPrefab, region_gird);
                newGrid.transform.localPosition = new Vector3(x, y, 0f);
                
                //// 添加 Button 组件
                //Button buttonComponent = newGrid.AddComponent<Button>();
                //// 添加点击事件监听器
                //buttonComponent.onClick.AddListener(OnGridClick);
            }
        }
    }
    private void InstantiateItemsInGrid()
    {
        RectTransform parentRectTransform = region_pro.GetComponent<RectTransform>();
        float parentWidth = parentRectTransform.rect.width;
        float parentHeight = parentRectTransform.rect.height;

        itemWidth = parentWidth / GameData.COLS; // 父节点宽度平均分成COLS份
        itemHeight = parentHeight / GameData.ROWS; // 父节点高度平均分成ROWS份

        System.Random rand = new System.Random(); // 创建随机数生成器


        HashSet<Vector2Int> usedPositions = new HashSet<Vector2Int>(); // 存储已经使用的位置


        for (int row = 0; row < GameData.ROWS; row++)
        {
            for (int col = 0; col < GameData.COLS; col++)
            {
                //if (row == randomIndexNullRow && col == randomIndexNullCol) continue;
                Vector2Int position = new Vector2Int(col, row);

                // 检查位置是否已经被使用
                if (usedPositions.Contains(position)) continue;

                // 随机选择一个Sprite
                int randomIndex = rand.Next(0, GameData.proSprites.Count);
                Sprite spriteRam = GameData.proSprites.ElementAt(randomIndex).Value;

                // 计算道具的位置
                float x = col * itemWidth + itemWidth / 2f - parentWidth / 2f; // 水平方向偏移
                float y = -row * itemHeight - itemHeight / 2f + parentHeight / 2f; // 垂直方向偏移

                // 实例化道具并设置位置
                GameObject newItem = Instantiate(itemPrefab, region_pro);
                RectTransform itemRectTransform = newItem.GetComponent<RectTransform>();
                itemRectTransform.localPosition = new Vector3(x, y, 0f);

                // 添加 Button 组件
                Button buttonComponent = newItem.AddComponent<Button>();
                // 添加点击事件监听器
                buttonComponent.onClick.AddListener(OnItemClick);

                // 获取道具的Image组件，并设置Sprite
                Image itemImage = newItem.transform.Find("icon")?.GetComponent<Image>();

                if (itemImage != null)
                {
                    ItemPro itemPro = newItem.GetComponent<ItemPro>();
                    itemPro.SetValue(randomIndex + 1);
                    itemPro.SetPosition(row, col);
                    itemImage.sprite = spriteRam;

                    // 更新格子数组
                    GameData.itemGrid[row, col] = newItem;

                    // 将位置添加到已使用位置集合中
                    usedPositions.Add(position);
                }
            }
        }
    }
    // 处理道具点击事件
    public void OnItemClick()
    {
        SoundManager.Instance.PlaySFX("pro_effect_clip");

        // 获取当前点击的游戏对象
        GameObject clickedObject = EventSystem.current.currentSelectedGameObject;
        if (clickedObject == null)
        {
            return;
        }
        if (!clickedObject.CompareTag("Item")) {
            App.tipsMgr.ShowTipsPanel(Layer_top, "hall", "It's not a prop.");
            return;
        }
        ItemPro selectedItemPro = clickedObject.GetComponent<ItemPro>();
        int selectedItemValue = selectedItemPro.GetValue();

        // 如果选中的道具的类型值与当前随机值不匹配，直接返回
        if (selectedItemValue != GameData.curRanName)
        {
            App.tipsMgr.ShowTipsPanel(Layer_top, "tips", "It's not a cue prop.");
            return;
        }
        int[] gridPosition = selectedItemPro.GetPosition(); // 获取道具的位置信息
        if (gridPosition == null) return;
        int row = gridPosition[0];
        int col = gridPosition[1];
        Debug.Log("Clicked Item Position: Row - " + row + ", Col - " + col);
        // 点击道具后的逻辑处理
        // 在这里调用 CheckAdjacentItems() 等方法处理逻辑

        CheckMatching(row, col);

    }
    // 获取目标格子的位置
    private int[] GetGridPosition(Transform targetGrid)
    {
        for (int row = 0; row < GameData.ROWS; row++)
        {
            for (int col = 0; col < GameData.COLS; col++)
            {
                if (region_gird.GetChild(row * GameData.COLS + col) == targetGrid)
                {
                    return new int[] { row, col };
                }
            }
        }
        return null;
    }

    // 获取指定位置道具的类型
    private int GetItemType(int row, int col)
    {
        if (row < 0 || row >= GameData.ROWS || col < 0 || col >= GameData.COLS)
        {
            return -1; // 超出边界
        }

        GameObject item = GameData.itemGrid[row, col];
        if (item == null)
        {
            return -1; // 该位置没有道具
        }

        ItemPro itemPro = item.GetComponent<ItemPro>();
        if (itemPro == null)
        {
            return -1; // 道具没有 ItemPro 组件
        }

        return itemPro.GetValue(); // 返回道具类型
    }
    // 检查指定位置上的匹配情况
    private void CheckMatching(int row, int col)
    {
        // 检查水平方向上的匹配
        CheckMatchInDirection(row, col, 0, 1, 1);
        CheckMatchInDirection(row, col, 0, -1, 1);

        // 检查垂直方向上的匹配
        CheckMatchInDirection(row, col, 1, 0, 1);
        CheckMatchInDirection(row, col, -1, 0, 1);
    }
    // 检查指定方向上的连续匹配
    private void CheckMatchInDirection(int row, int col, int rowOffset, int colOffset, int matchCount)
    {
        // 获取目标道具的类型
        int targetItemType = GetItemType(row, col);
        if (targetItemType == -1) return;

        // 计算下一个位置的行列索引
        int nextRow = row + rowOffset;
        int nextCol = col + colOffset;

        // 检查下一个位置是否超出边界
        if (nextRow < 0 || nextRow >= GameData.ROWS || nextCol < 0 || nextCol >= GameData.COLS)
        {
            // 边界超出，停止匹配
            return;
        }

        // 获取下一个位置的道具类型
        int nextItemType = GetItemType(nextRow, nextCol);

        // 如果下一个位置的道具类型与目标道具类型相同，递归继续匹配
        if (nextItemType == targetItemType)
        {
            // 匹配计数加一
            matchCount++;

            // 执行匹配操作（当匹配数量达到最小匹配数量时才执行匹配操作）
            MatchItems(row, col, row + (matchCount - 1) * rowOffset, col + (matchCount - 1) * colOffset);

            // 继续在同一方向上匹配
            CheckMatchInDirection(nextRow, nextCol, rowOffset, colOffset, matchCount);
        }
        else
        {
            // 如果下一个位置的道具类型与目标道具类型不同，只消除当前道具
            MatchItems(row, col, row, col);
        }
    }

  

    // 处理匹配的道具
    private void MatchItems(int startRow, int startCol, int endRow, int endCol)
    {
        // 在这里执行匹配道具的操作
        // 匹配的道具范围从 (startRow, startCol) 到 (endRow, endCol)

        for (int row = startRow; row <= endRow; row++)
        {
            for (int col = startCol; col <= endCol; col++)
            {
                // 获取当前位置的道具
                GameObject item = GameData.itemGrid[row, col];

                if (item != null)
                {
                    // 执行放大缩小效果并延迟删除
                    StartCoroutine(ScaleAndDestroy(item));

                    // 增加分数
                    GameData.scores += 100; // 假设每次匹配增加100分
                    cur_score += 100;
                    UpdateText(); // 更新分数显示
                    SoundManager.Instance.PlaySFX("btn_effect_clip");
                }
            }
        }
    }

    // 放大缩小效果并延迟删除
    private IEnumerator ScaleAndDestroy(GameObject item)
    {
        if (item != null)
        {
            // 放大效果
            RectTransform itemRectTransform = item.GetComponent<RectTransform>();
            itemRectTransform.localScale = new Vector3(1.2f, 1.2f, 1.0f);

            // 延迟0.2秒
            yield return new WaitForSeconds(0.2f);
            if (itemRectTransform!=null)
            {
                // 缩小效果
                itemRectTransform.localScale = Vector3.one;
            }
         

            // 延迟0.3秒
            yield return new WaitForSeconds(0.3f);

            // 删除道具
            Destroy(item);

            UpdateTipProSprite();
        }
    }
    private void ClearItemGrid()
    {
        for (int row = 0; row < GameData.ROWS; row++)
        {
            for (int col = 0; col < GameData.COLS; col++)
            {
                if (GameData.itemGrid[row, col] != null)
                {
                    Destroy(GameData.itemGrid[row, col]);
                    GameData.itemGrid[row, col] = null;
                }

            }
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
