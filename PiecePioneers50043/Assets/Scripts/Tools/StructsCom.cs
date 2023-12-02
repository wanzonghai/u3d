using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StuctsCom
{
    /// <summary>
    /// player data;
    /// </summary>
    public struct SPlayerData
    {
        public string name;
        public int playerScore;
    }
    public struct SItemData
    {
        public int index;
        public int rand;
        public int randDif;
    }

    [System.Serializable] // 用于让 Unity 的序列化系统识别这个类
    public struct UserData
    {
        public string Username;
        public int Score;
    }


}
