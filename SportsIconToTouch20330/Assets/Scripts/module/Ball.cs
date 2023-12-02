using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class Ball : MonoBehaviour, IPointerClickHandler
{
    private RectTransform rectTransform;
    private bool isSelected = false;
    public int ballType { get; set; }
    public GameObject ballMatrix { get; set; }
    private Vector3 originalScale;

    private static Ball firstSelectedBall = null;
    private void Awake()
    {
        rectTransform = GetComponent<RectTransform>();
        originalScale = rectTransform.localScale;
        

    }
     void Start()
    {
    }
    public void OnPointerClick(PointerEventData eventData)
    {
        if (firstSelectedBall == null)
        {
            firstSelectedBall = this;
            if (!isSelected)
            {
                isSelected = true;
                SelectBall();
            }
        }
        else
        {
            if (firstSelectedBall != this)
            {
              
                SwapWithSelectedBall(firstSelectedBall);
                firstSelectedBall.isSelected = false;
                firstSelectedBall.rectTransform.localScale = firstSelectedBall.originalScale;
                firstSelectedBall = null;

            }
            else
            {
                isSelected = false;
                rectTransform.localScale = originalScale;
                firstSelectedBall = null;
            }
        }
     
     
    }

    private void SelectBall()
    {
        // 球体选中状态
        rectTransform.localScale *= 1.2f; // 放大选中的球体
    }
    private void CheckMatches(Ball ball)
    {
        // 检查匹配的球
        List<Ball> horizontalMatches = CheckHorizontalMatches(ball);
        List<Ball> verticalMatches = CheckVerticalMatches(ball);

        // 用于存储需要销毁的球体
        List<GameObject> ballsToDestroy = new List<GameObject>();

        // 打印匹配的球数量
        Debug.Log("Horizontal Matches Count: " + horizontalMatches.Count);
        Debug.Log("Vertical Matches Count: " + verticalMatches.Count);

        if (horizontalMatches.Count >= 3)
        {
            foreach (Ball matchedBall in horizontalMatches)
            {
                // 存储需要销毁的球体
                ballsToDestroy.Add(matchedBall.gameObject);
                // 也可以在此处处理分数或其他游戏逻辑
            }
        }
        if (verticalMatches.Count >= 3)
        {
            foreach (Ball matchedBall in verticalMatches)
            {
                // 存储需要销毁的球体
                ballsToDestroy.Add(matchedBall.gameObject);
                // 也可以在此处处理分数或其他游戏逻辑
            }
        }
        // 销毁存储的球体
        foreach (GameObject ballToDestroy in ballsToDestroy)
        {
            Destroy(ballToDestroy);
        }
    }

    private void SwapWithSelectedBall(Ball otherBall)
    {
        // 检查球体是否相邻
        if (!AreNeighbours(this, otherBall)) return;
        // 交换位置逻辑
        int tempType = otherBall.ballType;
        otherBall.ballType = ballType;
        ballType = tempType;

        // 更新球体位置
        Vector2 tempAnchoredPosition = otherBall.rectTransform.anchoredPosition;
        otherBall.rectTransform.anchoredPosition = rectTransform.anchoredPosition;
        rectTransform.anchoredPosition = tempAnchoredPosition;

        // 更新二维数组中的球体信息
        Vector2Int pos1 = GetGridPosition(this);
        Vector2Int pos2 = GetGridPosition(otherBall);
        GameData.ballMatrix[pos1.x, pos1.y] = otherBall.gameObject;
        GameData.ballMatrix[pos2.x, pos2.y] = gameObject;

        // 更新类型信息
        GameData.ballTypes[pos1.x, pos1.y] = otherBall.ballType;
        GameData.ballTypes[pos2.x, pos2.y] = ballType;

        // 立即进行匹配检测
        // 推迟到下一帧执行匹配检测
        StartCoroutine(DelayedMatchCheck());

    }
    private IEnumerator DelayedMatchCheck()
    {
        // 等待到下一帧
        yield return null;

        // 立即进行匹配检测
        CheckMatches(this);
    }
    // 检查两个球体是否相邻的方法
    private bool AreNeighbours(Ball ball1, Ball ball2)
    {
        // 获取球体在二维数组中的位置
        Vector2Int pos1 = GetGridPosition(ball1);
        Vector2Int pos2 = GetGridPosition(ball2);

        // 判断两个球体的位置是否相邻（比如上下左右相邻）
        bool isAdjacentRow = Mathf.Abs(pos1.x - pos2.x) == 1 && pos1.y == pos2.y;
        bool isAdjacentCol = Mathf.Abs(pos1.y - pos2.y) == 1 && pos1.x == pos2.x;

        return isAdjacentRow || isAdjacentCol;
    }

    // 获取球体在二维数组中的位置
    private Vector2Int GetGridPosition(Ball ball)
    {
        int rows = GameData.ballMatrix.GetLength(0);
        int cols = GameData.ballMatrix.GetLength(1);

        for (int row = 0; row < rows; row++)
        {
            for (int col = 0; col < cols; col++)
            {
                if (GameData.ballMatrix[row, col] == ball.gameObject)
                {
                    return new Vector2Int(row, col);
                }
            }
        }
        return Vector2Int.zero; // 如果未找到位置，返回零向量
    }
    private bool AreTypesEqual(float type1, float type2)
    {
        // 使用很小的阈值来检查类型是否相等
        float epsilon = 0.001f;
        return Mathf.Abs(type1 - type2) < epsilon;
    }
    // 检查是否存在横向匹配的球体
    private List<Ball> CheckHorizontalMatches(Ball ball)
    {
        List<Ball> horizontalMatches = new List<Ball>();

        Vector2Int pos = GetGridPosition(ball);
      
        int row = pos.x;
        int col = pos.y;
        int type = ball.ballType;
       
        // 向左检查匹配
        int left = col - 1;
        Debug.Log("Grid Position - Row: " + pos.x + ", Col: " + pos.y+GameData.ballTypes[row, left]);
        while (left >= 0 && AreTypesEqual(GameData.ballTypes[row, left], type))
        {
            horizontalMatches.Add(GetBallAtPosition(row, left));
            left--;
        }

        // 向右检查匹配
        int right = col + 1;
        while (right < GameData.cols && AreTypesEqual(GameData.ballTypes[row, right], type))
        {
            horizontalMatches.Add(GetBallAtPosition(row, right));
            right++;
        }

        // 至少三个及以上才算匹配
        if (horizontalMatches.Count >= 3)
        {
            horizontalMatches.Add(ball);
        }
        else
        {
            horizontalMatches.Clear(); // 如果不匹配，重新初始化列表
        }

        return horizontalMatches;
    }

    // 检查是否存在纵向匹配的球体
    private List<Ball> CheckVerticalMatches(Ball ball)
    {
        List<Ball> verticalMatches = new List<Ball>();

        Vector2Int pos = GetGridPosition(ball);
        int row = pos.x;
        int col = pos.y;
        int type = ball.ballType;

        // 向上检查匹配
        int up = row - 1;
        while (up >= 0 && AreTypesEqual(GameData.ballTypes[up, col], type))
        {
            verticalMatches.Add(GetBallAtPosition(up, col));
            up--;
        }

        // 向下检查匹配
        int down = row + 1;
        while (down < GameData.rows && AreTypesEqual(GameData.ballTypes[down, col], type))
        {
            verticalMatches.Add(GetBallAtPosition(down, col));
            down++;
        }

        // 至少三个及以上才算匹配
        if (verticalMatches.Count >= 3)
        {
            verticalMatches.Add(ball);
        }
        else
        {
            verticalMatches.Clear(); // 如果不匹配，重新初始化列表
        }

        return verticalMatches;
    }



    // 根据行列获取球体对象
    private Ball GetBallAtPosition(int row, int col)
    {
        return GameData.ballMatrix[row, col].GetComponent<Ball>();
    }

}
