using System.Collections.Generic;
using UnityEngine;

public class GameData:BaseManager<GameData>
{
    public Dictionary<string, Sprite> pokers;
    public bool boolPlay = true;

    public string AndroidMessage="";
    public bool getMessge = false;
}
