using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class GameDate : BaseManager<GameDate>
{
    /// <summary>
    /// player name
    /// </summary>
    public string playerName = "MAXMIT";
    public bool playBK = false;
    /// <summary>
    /// player score
    /// </summary>
    public int playerScore = 0;
    public int addScore = 10;
    /// <summary>
    /// game time
    /// </summary>
    public int gameTimer = 90;
    /// <summary>
    /// Atlas url path
    /// </summary>
    public string resMainUrl = "Texture/res_main";
    public string resResultUrl = "Texture/res_result";
    public string resStartUrl = "Texture/start";
    public string soundUrl = "AudioSound/";
    /// <summary>
    /// pre url path
    /// </summary>
    public string preUrl = "Prefab/ItemProp";
    public string preName = "ItemProp";
    public string preBtnUrl = "Prefab/btn_";
    public string preBtnName = "btn_";
    /// <summary>
    /// pro num
    /// </summary>
    public int proCount = 16;
    public int proBtnCount = 6;
    public int coinNum = 999999;
    public float progerss_Value = 0;

    public int gameover = 100;
    public int drawReward = 101;
    public int getReward = 102;
    public int StartGame = 103;

    public int[,] PosArr = {
        {-616, 222}, {-410, 222},{-204, 222}, {0, 222},{204, 222},{410, 222},{616, 222},
        {616, 10},
         {-616, -202}, {-410, -202},{-204, -202}, {0, -202},{204, -202},{410, -202},{616, -202},
        {-616, 10}
    };
};
