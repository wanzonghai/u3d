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
    public int proCount = 18;
    public int proBtnCount = 6;
    public int coinNum = 999999;
    public int curMul = 0;

    public int gameover = 100;
    public int drawReward = 101;
    public int getReward = 102;
    public int StartGame = 103;

    public int[,] PosArr = {
    {-454, 225},{-304, 225},{-154, 225},{-4, 225},{146, 225},{296, 225},{446, 225},
    {446, 74}, {446, -77},
    {446, -225},{296, -225},{146, -225},{-4, -225},{-154, -225},{-304, -225},{-454, -225},
    {-454, -77},{-454, 74}
    };
};
