#if UNITY_EDITOR
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEditor;
using UnityEngine;

public class ExcelLanguage
{
    [MenuItem("MyEditor/导表工具/语言导出")]
    public static void ExportLanguage()
    {
        List<ExcelReader> excels = new List<ExcelReader>();
        List<ReadExcelNode> nodes = new List<ReadExcelNode>();
        var xlsxs = Directory.GetFiles(ExcelUtils.DataPath + "Excel/", "*.xlsx").Where(s => !s.Contains("~$"));
        foreach (var x in xlsxs)
        {
            excels.Add(new ExcelReader(x, true, true));
        }
        foreach (var e in excels)
        {
            var n1 = e.Nodes1;
            foreach (var n in n1)
            {
                nodes.Add(n);
            }
        }
        foreach(var node in nodes)
        {
            var ids = node.Ids;
            var tabels = node.Tables;
            int idLength = ids.Length;
            int tabelLength = tabels.Length;
            if (idLength < 1) continue;
            if (tabelLength < 1) continue;
            for (var i = 0; i < tabelLength; i++)
            {
                var v = node.GetValue(ids[0], tabels[i]);
                string[] types = v.Type;
                if (!types.Contains("L")) continue;
                for (var j = 0; j < idLength; j++)
                {
                    var value = node.GetValue(ids[j], tabels[i]);
                    if (!string.IsNullOrEmpty(value.Value))
                    {
                        string str = value.Value;
                        value.Clear();
                        value.SetValue(str);
                    }
                    var valueCN = node.GetValueCN(ids[j], tabels[i]);
                    if (!string.IsNullOrEmpty(valueCN.Value))
                    {
                        string str = valueCN.Value;
                        valueCN.Clear();
                        valueCN.SetValue(str);
                    }
                }
            }
        }
        foreach (var excel in excels)
        {
            excel.SaveAs(excel.Path.Replace("LoadDataDir/", "LoadDataDir/语言导入/Exporter/"));
        }
        excels.Clear();
        nodes.Clear();
        xlsxs = Directory.GetFiles(ExcelUtils.DataPath + "Excel/", "*.xlsx").Where(s => !s.Contains("~$"));
        foreach (var x in xlsxs)
        {
            excels.Add(new ExcelReader(x, false, true));
        }
        foreach (var e in excels)
        {
            var n1 = e.Nodes1;
            foreach (var n in n1)
            {
                nodes.Add(n);
            }
        }
        Dictionary<string, LanguageValue> hash = new Dictionary<string, LanguageValue>();
        foreach (var node in nodes)
        {
            var ids = node.Ids;
            var tabels = node.Tables;
            int idLength = ids.Length;
            int tabelLength = tabels.Length;
            if (idLength < 1) continue;
            if (tabelLength < 1) continue;
            for (var i = 0; i < tabelLength; i++)
            {
                var v = node.GetValue(ids[0], tabels[i]);
                string[] types = v.Type;
                if (!types.Contains("L")) continue;
                for (var j = 0; j < idLength; j++)
                {
                    var value = node.GetValue(ids[j], tabels[i]);
                    if (string.IsNullOrEmpty(value.Value)) continue;
                    if (!hash.ContainsKey(value.Value)) hash.Add(value.Value, new LanguageValue());
                    hash[value.Value].Path.Add(node.Name);
                    hash[value.Value].ValueCN = node.GetValueCN(ids[j], tabels[i]).Value;
                }
            }
        }
        var writer = new ExcelWriter(ExcelUtils.DataPath + "语言导入/Exporter/语言导出.xlsx");
        var nodeScene = writer.SheetNode("Language", "Language");
        nodeScene.WriteTabel("key", "key", "str");
        nodeScene.WriteTabel("value", "value", "str");
        nodeScene.WriteTabel("valueCN", "valueCN", "str");
        nodeScene.WriteTabel("path", "path", "str");
        foreach(var key in hash.Keys)
        {
            var lv = hash[key];
            nodeScene.SetValue1(key, "valueCN", lv.ValueCN);
            string name = "";
            foreach(var h in lv.Path)
                name = name + h;
            nodeScene.SetValue1(key, "path", name);
        }
        writer.Save();
        Debug.Log("导出成功");
    }

    [MenuItem("MyEditor/导表工具/语言导入")]
    public static void ImportLanguage()
    {
        var url = ExcelUtils.DataPath + "/语言导入/Importer/语言导出.xlsx";
        if(!File.Exists(url))
        {
            Debug.LogError("缺少语言导入表");
            return;
        }
		var nodeL = new ExcelReader(url, true).SheetNode1("Language");
        var idsL = nodeL.Ids;
        int idLengthL = idsL.Length;
        Dictionary<string, string> LanguageDict = new Dictionary<string, string>();
        for (var i = 0; i < idLengthL; i++)
        {
            if (string.IsNullOrEmpty(idsL[i])) continue;
            var value = nodeL.GetValue(idsL[i], "value");
            if (string.IsNullOrEmpty(value.Value)) Debug.LogError(idsL[i] + "     没有做本地化翻译");
            if (!LanguageDict.ContainsKey(idsL[i])) LanguageDict.Add(idsL[i], value.Value);
        }
        List<ExcelReader> excels = new List<ExcelReader>();
        List<ReadExcelNode> nodes = new List<ReadExcelNode>();
        var xlsxs = Directory.GetFiles(ExcelUtils.DataPath + "语言导入/Exporter/Excel/", "*.xlsx").Where(s => !s.Contains("~$"));
        foreach (var x in xlsxs)
        {
            excels.Add(new ExcelReader(x, true));
        }
        foreach (var e in excels)
        {
            var n1 = e.Nodes1;
            foreach (var n in n1)
            {
                nodes.Add(n);
            }
        }
        foreach (var node in nodes)
        {
            var ids = node.Ids;
            var tabels = node.Tables;
            int idLength = ids.Length;
            int tabelLength = tabels.Length;
            if (idLength < 1) continue;
            if (tabelLength < 1) continue;
            for (var i = 0; i < tabelLength; i++)
            {
                var v = node.GetValue(ids[0], tabels[i]);
                string[] types = v.Type;
                if (!types.Contains("L")) continue;
                for (var j = 0; j < idLength; j++)
                {
                    var value = node.GetValue(ids[j], tabels[i]);
					if (string.IsNullOrEmpty (value.Value)) continue;
                    if (LanguageDict.ContainsKey(value.Value))
                    {
                        value.Clear();
                        value.SetValue(LanguageDict[value.Value]);
                    }
                    else
                    {
                        
                        Debug.LogError("表地址" + node.Path + " 表头" + node.Name + " 缺少文字[" + value.Value + "]的本地化语言");
                    }
                }
            }
        }
        foreach (var excel in excels)
        {
            try
            {
                excel.SaveAs(excel.Path.Replace("Exporter/", "Importer/"));
            }
            catch(Exception exc)
            {
                Debug.LogError("请检查表" + excel.Path + "是否有使用过骚操作 " + exc.Message);
            }
        }
        Debug.Log("导入结束");
    }
}


public class LanguageValue
{
    public HashSet<string> Path = new HashSet<string>();
    public string ValueCN;
}
#endif