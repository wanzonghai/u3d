using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class GameDate:BaseManager<GameDate>
{
    /// <summary>
    /// player name
    /// </summary>
    public string playerName = "MAXMIT";
    /// <summary>
    /// player score
    /// </summary>
    public int playerScore = 0;
    public int addScore = 10;
    /// <summary>
    /// game time
    /// </summary>
    public int gameTimer=90;
    /// <summary>
    /// Atlas url path
    /// </summary>
    public string resMainUrl = "Texture/res_main";
    public string resResultUrl = "Texture/res_result";
    public string resStartUrl = "Texture/start";
    /// <summary>
    /// pre url path
    /// </summary>
    public string preUrl = "Prefab/ItemProp";
    public string preBtnUrl = "Prefab/btn_";
    public string preIconUrl = "Prefab/IconStar";
    public string tagName = "icon_frame";
    public bool isWin = false;

    public string[] colors = { "#FFFFFF", "#FF0000", "#00FF00", "#0000FF", "#FFFF00", "#FF00FF", "#00FFFF", "#000000" };
    /// <summary>
    /// pro num
    /// </summary>
    public int proCount = 8;
    public int proBtnCount = 8;
    public int proIconCount = 5;
    public int coinNum = 0;

    public int gameover = 100;
    public int drawReward = 101;
    public int getReward = 102;
    public int StartGame = 103;

}
