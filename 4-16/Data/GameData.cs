using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

public class GameData
{
    public static float scores = 0;
    public static Dictionary<string, Sprite> btnsSprites = new Dictionary<string, Sprite>();
    public static Dictionary<string, Sprite> proSprites = new Dictionary<string, Sprite>();
    public static string[] spriteNames = { "1", "2", "3", "4", "5", "6" };
    public static string[] clipsNames = { "bgClip", "effClip", "effClip2" };
    public static bool isSoundEnble = true;
    public static bool isEffectEnble = true;
    public static bool isWin = false;
    public static int ROWS = 6;
    public static int COLS = 5;
    public static GameObject[,] itemGrid; // 用于记录道具的格子数组
}
