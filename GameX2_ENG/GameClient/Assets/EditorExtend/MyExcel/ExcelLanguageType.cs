#if UNITY_EDITOR
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEditor;
using UnityEngine;
using OfficeOpenXml;
using System;
using System.Diagnostics;

public class ExcelLanguageType
{
    [MenuItem("MyEditor/导表工具/导出语言类型")]
    public static void ExcelType()
    {
        var xlsxs = Directory.GetFiles(ExcelUtils.DataPath + "Excel/", "*.xlsx").Where(s => !s.Contains("~$"));

        List<ExcelLanguageTypeStruct> typeData1 = new List<ExcelLanguageTypeStruct>();
        List<ExcelLanguageTypeStruct> typeData2 = new List<ExcelLanguageTypeStruct>();
        List<string> tsp = new List<string>();
        foreach(var path in xlsxs)
        {
            FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
            ExcelPackage package = new ExcelPackage(fs);
            ExcelWorksheets sheets = package.Workbook.Worksheets;
            foreach (var sheet in sheets)
            {
                var obj = sheet.GetValue(ExcelUtils.NameRow - 1, ExcelUtils.NameColumn);
                
                Dictionary<string, int> cellType = new Dictionary<string, int>();
                if (obj == null)
                {
                    var tName = GetSheetName(sheet);
                    if (!string.IsNullOrEmpty(tName))
                    {
                        for (int i = ExcelUtils.TabelColumn; ; i++)
                        {
                            var t = sheet.GetValue(ExcelUtils.TypeRow, i);
                            if (t == null) break;
                            else
                            {
                                var languageType = GetLanguageType(t.ToString());
                                if (!string.IsNullOrEmpty(languageType))
                                {
                                    if (!cellType.ContainsKey(languageType)) cellType.Add(languageType, 1);
                                    else cellType[languageType] += 1;
                                    if (!tsp.Contains(languageType)) tsp.Add(languageType);
                                }
                            }
                        }
                        if(cellType.Count > 0)
                        {
                            ExcelLanguageTypeStruct ts = new ExcelLanguageTypeStruct();
                            ts.name = tName;
                            ts.cellType = cellType;
                            typeData1.Add(ts);
                        }
                    }
                }
                else
                {
                    string name = obj.ToString();
                    if (!string.IsNullOrEmpty(name))
                    {
                        var tName = GetSheetName(sheet);
                        if (!string.IsNullOrEmpty(tName))
                        {
                            ExcelLanguageTypeStruct ts = new ExcelLanguageTypeStruct();
                            ts.name = tName;
                            ts.type = name;
                            typeData2.Add(ts);
                        }
                    }
                }
            }
        }
        var writer = new ExcelWriter(ExcelUtils.LanguageTypePath);
        var node = writer.SheetNode("LanguageType", "LanguageType");
        node.WriteTabel("id", "id", "str");
        node.WriteTabel("name", "name", "str");
        node.WriteTabel("xlsType", "xlsType", "string");
        foreach(var t in tsp)
        {
            node.WriteTabel(t, t, "str");
        }
        var id = 0;
        foreach (var t in typeData2)
        {
            id += 1;
            node.SetValue1(id.ToString(), "name", t.name);
            node.SetValue1(id.ToString(), "xlsType", t.type);
        }
        foreach (var t in typeData1)
        {
            id += 1;
            node.SetValue1(id.ToString(), "name", t.name);
            foreach(var key in t.cellType.Keys)
            {
                node.SetValue1(id.ToString(), key, t.cellType[key].ToString());
            }
        }
        writer.Save();
        UnityEngine.Debug.Log("语言类型导出完成");
    }

    public static string GetLanguageType(string str)
    {
        string[] types = str.ToString().Split('|');
        foreach (var type in types)
        {
            if (type.StartsWith("F:")) return type;
        }
        return null;
    }

    public static string GetSheetName(ExcelWorksheet sheet)
    {
        var obj1 = sheet.GetValue(ExcelUtils.NameRow, ExcelUtils.NameColumn);
        if (obj1 != null)
        {
            string name1 = obj1.ToString();
            if (!string.IsNullOrEmpty(name1)) return name1;
        }
        var obj2 = sheet.GetValue(ExcelUtils.NameRow + 1, ExcelUtils.NameColumn);
        if (obj2 != null)
        {
            string name2 = obj2.ToString();
            if (!string.IsNullOrEmpty(name2)) return name2;
        }
        return null;
    }
}

public class ExcelLanguageTypeStruct
{
    public string name;
    public string type;
    public Dictionary<string, int> cellType = new Dictionary<string, int>();
}
#endif
