using System.IO;
using System.Linq;
using System.Text;
using UnityEngine;

public class ExcelUtils
{
    /// <summary>
    /// 表名位置-行
    /// </summary>
    public const int NameRow = 3;
    /// <summary>
    /// 表名位置-列
    /// </summary>
    public const int NameColumn = 1;

    /// <summary>
    /// 表标题位置-行
    /// </summary>
    public const int TabelRow = 3;
    /// <summary>
    /// 表标题位置-列
    /// </summary>
    public const int TabelColumn = 3;

    /// <summary>
    /// 表类型位置-行
    /// </summary>
    public const int TypeRow = 5;
    /// <summary>
    /// 表类型位置-列
    /// </summary>
    public const int TypeColumn = 3;

    /// <summary>
    /// 表内容位置-行
    /// </summary>
    public const int ValueRow = 7;
    /// <summary>
    /// 表内容位置-列
    /// </summary>
    public const int ValueColumn = 3;

    /// <summary>
    /// Key的数量位置-行
    /// </summary>
    public const int KeyRow = 5;

    /// <summary>
    /// Key的数量位置-列
    /// </summary>
    public const int KeyColumn = 1;


    public static string DataPath = Application.dataPath.Replace("GameClient/Assets", "LoadDataDir/");
    public static string Tabel1Path = Application.dataPath + "/Script/Config/";
    public static string Tabel2Path = Application.dataPath.Replace("GameClient/Assets", "server_config/" + LanguageType + "/");
    public static string ExcelWriteTimeFilePath = DataPath + "Assets/ExcelWriteTimeFile";
    public static string XMLWriteTimeFilePath = DataPath + "Assets/XMLWriteTimeFile";
    public static string ExcelByNamePath = DataPath + "Assets/ExcelByName";
    public static string LanguageTypePath = DataPath + "Assets/LanguageType.xlsx";

    //private static string _languageType = "";

    public static string LanguageType
    {
        get
        {
            //if (string.IsNullOrEmpty(_languageType))
            //{
            //    _languageType = Encoding.UTF8.GetString(File.ReadAllBytes(Application.dataPath.Replace("Assets", "TextruePacker/Language")));
            //}
            return "cn";
        }
    }

    public static void DeleteAllFile(string path)
    {
        Directory.GetFiles(path).ToList().ForEach(File.Delete);
    }

    public static string ReadStr(string s)
    {
        // 转换特殊回车
        s = s.Replace("\r\n", "\\n");
        s = s.Replace("\n\r", "\\n");
        s = s.Replace("\n", "\\n");
        s = s.Replace("\r", "");

        // 转换特殊字符
        s = s.Replace("\"", "\\\"");
        //s = s.Replace("\\", "\\\\");
        return s;
    }

    //public static string ReadHalf(string input)
    //{
    //    char[] array = input.ToCharArray();
    //    for (int i = 0; i < array.Length; i++)
    //    {
    //        if (array[i] == 12288)
    //        {
    //            array[i] = (char)32;
    //            continue;
    //        }
    //        if (array[i] > 65280 && array[i] < 65375)
    //        {
    //            array[i] = (char)(array[i] - 65248);
    //        }
    //    }
    //    return new string(array);
    //}

    public static string ReadHalf(string s)
    {
        string op = "";
        int len = s.Length;
        for (int i = 0; i < len; i++)
        {
            char c = s[i];
            // 分隔符号
            if (c == '，')
                c = ',';
            else if (c == '；')
                c = ';';
            else if (c == '。')
                c = '.';
            else if (c == '：')
                c = ':';
            else if (c == '、')
                c = '/';

            //算符号
            else if (c == '—')
                c = '-';

            //成对符号
            else if (c == '（')
                c = '(';
            else if (c == '）')
                c = ')';
            else if (c == '“' ||
                c == '”')
                c = '"';
            else if (c == '【')
                c = '[';
            else if (c == '】')
                c = ']';

            op += c;
        }

        return op;
    }
}
