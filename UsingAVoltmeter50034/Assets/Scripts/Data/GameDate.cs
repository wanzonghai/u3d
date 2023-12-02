using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class GameDate:BaseManager<GameDate>
{
    public int currentScore = 0;
    public bool boolStart = false;
    public bool boolFail = false;

    public int correctlyEvent = 1;

    public bool boolPlayMusic = true;
}
