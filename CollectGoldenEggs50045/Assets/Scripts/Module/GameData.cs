using System.Collections.Generic;
using UnityEngine;

public class GameData:BaseManager<GameData>
{
    public Dictionary<string, Sprite> pictures1 = new Dictionary<string, Sprite>();
    public Dictionary<string, Sprite> pictures2 = new Dictionary<string, Sprite>();
    public Dictionary<Transform, Vector3> initialPositions;
    public bool boolPlay = true;
    public bool boolClick = false;
    public bool isGameStart = false;
    public int currentScore = 0;
    public float gameTimer = 10;
    public bool boolFail = false;
    public int gameType = 1;
}
