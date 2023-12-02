using UnityEngine;

public class GameData
{
    public static int[,] ballTypes;// 存储球体的类型（可根据实际需要扩展其他信息）
    public static GameObject[,] ballMatrix; // 用于存储球体对象的二维数组

    public static int score=0;
    public static int level=1;
    public static bool isFirst=false;
    public static int cols ; // 记录列数
    public static int rows ; // 记录行数
    public static int ball1; 
    public static int ball2;
    public static int ball3;
    public static int ball4;
}
