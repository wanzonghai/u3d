#if UNITY_EDITOR
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using UnityEngine;

public class ExcelLuaExport
{
    private static Encoding Encoding = new UTF8Encoding(false);
    public static void ExcelExports(Dictionary<string, List<ReadExcelNode>> nodes, string path, string format, bool isCompression)
    {
        if (File.Exists(path))Directory.Delete(path.Substring(0, path.Length - 1), true);
        Directory.CreateDirectory(path);

        foreach (var node in nodes.Values)
        {
            ExcelNodeOneShot(node, path, format, isCompression);
        }
    }
    private static Dictionary<string, string> DefaultValues = new Dictionary<string, string>();
    private static bool IsDefaultValues = false;
    private static void ExcelNodeOneShot(List<ReadExcelNode> nodes, string path, string format, bool isCompression)
    {
        DefaultValues.Clear();
        IsDefaultValues = false;
        StringBuilder sb = new StringBuilder();
        sb.Append("--" + Path.GetFileName(nodes[0].Path));
        sb.Append("\nlocal team = {}");
        string _default_values = "";
        if (isCompression && nodes[0].KeyCount == 1)
        {
            _default_values = "\nlocal _default_values =";
            _default_values += "\n{";
            foreach (var node in nodes)
            {
                for (int i = 0; i < node.Tables.Length; i++)
                {
                    if (!node.Tables[i].Contains("|") && !DefaultValues.ContainsKey(node.Tables[i]))
                    {
                        string value = LuaData("", node.GetType(node.Tables[i]));
                        DefaultValues.Add(node.Tables[i], value);
                        _default_values += "\n\t" + node.Tables[i] + " = " + value + ",";
                    }
                }
            }
            _default_values += "\n}";
        }
        sb.Append("\nlocal config = ");
        sb.Append("\n{");
        foreach (var node in nodes)
        {
            try { sb.Append(LuaStruct(node)); }
            catch (Exception e)
            {
                throw new Exception("表地址" + node.Path + " 表头" + node.Name + " 导出错误:" +e.Message);
            }
        }
        sb.Append("\n}");
        if (IsDefaultValues)
        {
            _default_values += "\nlocal base = { __index = _default_values }";
            _default_values += "\nfor _, v in pairs(config) do";
            _default_values += "\n\tsetmetatable( v, base )";
            _default_values += "\nend";
            sb.Append(_default_values);
            DefaultValues.Clear();
            sb.Append("\nreturn config, _default_values");
        }
        else sb.Append("\nreturn config");
        Debug.Log(path + nodes[0].Name + format);
        File.WriteAllText(path + nodes[0].Name + format, sb.ToString(), Encoding);
    }

    public static void XmlExportsOneShot(List<ExcelReader> xmls, string path, string format)
    {
        string name = "";
        StringBuilder sb = new StringBuilder();
        sb.Append("local team = {}");
        sb.Append("\nreturn");
        sb.Append("\n{");
        foreach (var excel in xmls)
        {
            //单个excel
            var nodes = excel.Nodes1;
            int i = 0;
            foreach (var node in nodes)
            {
                //单个node
                var ids = node.Ids;
                var tabels = node.Tables;
                int tabelLength = tabels.Length;
                if (i == 0)
                {
                    name = node.Name;
                    sb.Append("\n\t[" + LuaData(node.GetValue(ids[i], tabels[0])) + "] =");
                    sb.Append("\n\t{");
                    for (var j = 0; j < tabelLength; j++)
                    {
                        sb.Append("\n\t\t" + tabels[j] + " = " + LuaData(node.GetValue(ids[i], tabels[j])) + ",");
                    }
                }
                else
                {
                    sb.Append("\n\t\t" + node.Name + " =");
                    sb.Append("\n\t\t{");
                    sb.Append(LuaStruct(node, 3));
                    sb.Append("\n\t\t},");
                }
                i++;
            }
            sb.Append("\n\t},");
        }
        sb.Append("\n}");
        File.WriteAllText(path + name + format, sb.ToString(), Encoding);
    }

    public static void TXTExportsOneShot(string dir, string[] file, string[] s, string path, string format)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("return");
        sb.Append("\n{");
        for(int i = 0; i < file.Length; i++)
        {
            sb.Append("\n\t[\"" + file[i] + "\"] = \"" + ExcelUtils.ReadStr(s[i]) + "\",");
        }
        sb.Append("\n}");
        File.WriteAllText(path + dir + format, sb.ToString(), Encoding);
    }

    //tNum 缩进数
    private static string LuaStruct(ReadExcelNode node, int tNum = 1)
    {
        StringBuilder sb = new StringBuilder();
        var ids = node.Ids;
        var tabels = node.Tables;
        int idLength = ids.Length;
        Dictionary<string, ExcelKeyExport> KeyExport = new Dictionary<string, ExcelKeyExport>();
        for (var i = 0; i < idLength; i++)
        {
            var sheetValue = node.GetValue(ids[i], tabels[0]);
            var keys = ids[i].Split('|');
            var keyExport = KeyExport;
            for (var j = 0; j < keys.Length; j++)
            {
                if (!keyExport.ContainsKey(keys[j])) keyExport.Add(keys[j], new ExcelKeyExport(sheetValue.Id, sheetValue.Type, keys[j]));
                keyExport = keyExport[keys[j]].KeyExport;
            }
        }
        LuaStructOneShot(node, tabels, sb, tNum, false, KeyExport);

        return sb.ToString();
    }

    private static string LuaStructOneShot(ReadExcelNode node, string[] tabels, StringBuilder sb, int tNum, bool toNumber, Dictionary<string, ExcelKeyExport> keyExport)
    {
        string t = "";
        for (int i = 0; i < tNum; i++)
        {
            t += "\t";
        }
        foreach (var key in keyExport.Values)
        {
            sb.Append("\n" + t + "[" + LuaData(key.Key, key.Type) + "] =");
            sb.Append("\n" + t + "{");
            if (key.KeyExport.Count > 0) LuaStructOneShot(node, tabels, sb, tNum + 1, true, key.KeyExport);
            else
            {
                int tabelLength = tabels.Length;
                for (var j = 0; j < tabelLength; j++)
                {
                    string value = LuaData(node.GetValue(key.ID, tabels[j]));
                    if (!toNumber)
                    {
                        if (DefaultValues.ContainsKey(tabels[j]) && DefaultValues[tabels[j]] == value)
                        {
                            IsDefaultValues = true;
                        }
                        else sb.Append("\n\t" + t + tabels[j] + " = " + LuaData(node.GetValue(key.ID, tabels[j])) + ",");
                    }
                    else sb.Append("\n\t" + t + tabels[j] + " = " + LuaData(node.GetValue(key.ID, tabels[j])) + ",");
                }
            }
            sb.Append("\n" + t + "},");
        }
        return "";
    }

    private static string LuaData(SheetValue value)
    {
        string[] types = value.Type;
        string v = value.Value;
        for (int i = 0; i < types.Length; i++)
        {
            v = LuaDataOneShot(v, types[i]);
        }
        if(v == "NaN") Debug.LogError("表" + value.Name + "导出NaN");
        return v;
    }

    private static string LuaData(string v, string[] types)
    {
        for (int i = 0; i < types.Length; i++)
        {
            v = LuaDataOneShot(v, types[i]);
        }
        return v;
    }

    private static string LuaDataOneShot(string data, string type)
    {
        switch (type)
        {
            case "str":
                if (string.IsNullOrEmpty(data)) return "\"\"";
                data = ExcelUtils.ReadStr(data);
                return "\"" + data + "\"";
            case "float":
            case "int":
                if (string.IsNullOrEmpty(data)) return "0";
                return data.ToString();
            case "bool":
                if (string.IsNullOrEmpty(data)) return "false";
                return bool.Parse(data) ? "true" : "false";
            case "vector3":
                if (string.IsNullOrEmpty(data)) return "{x = 0, y = 0, z = 0}";
                string[] vector3 = data.Split(',');
                return "{ x = " + vector3[0] + ", y = " + vector3[1] + ", z = " + vector3[2] + " }";
            case "list_int":
            case "list_float":
                if (string.IsNullOrEmpty(data)) return "team";
                string[] list_int = data.Split(',');
                StringBuilder list_float_sb = new StringBuilder();
                list_float_sb.Append("{");
                int intLength = list_int.Length;
                for (int i = 0; i < intLength; i++)
                {
                    if (intLength == i + 1) list_float_sb.Append(list_int[i]);
                    else list_float_sb.Append(list_int[i] + ",");
                }
                list_float_sb.Append("}");
                return list_float_sb.ToString();
            case "list_str":
                if (string.IsNullOrEmpty(data)) return "team";
                data = ExcelUtils.ReadStr(data);
                string[] list_str = data.Split('|');
                StringBuilder list_str_sb = new StringBuilder();
                list_str_sb.Append("{");
                int strLength = list_str.Length;
                for (int i = 0; i < strLength; i++)
                {
                    string str = "\"" + list_str[i] + "\"";
                    if (strLength == i + 1) list_str_sb.Append(str);
                    else list_str_sb.Append(str + ",");
                }
                list_str_sb.Append("}");
                return list_str_sb.ToString();
            case "half":
                return ExcelUtils.ReadHalf(data);
            case "team":
                if (string.IsNullOrEmpty(data)) return "team";
                if (data == "{}") return "team";
                return data;
			case "L":
                return data;
        }
        if (type.StartsWith("F:")) return data;
        //if (type.StartsWith("switch:"))
        //{
        //    StringBuilder list_str_sb = new StringBuilder();
        //    list_str_sb.Append("{");
        //    string[] list_data = data.Split(',');
        //    int dataLength = list_data.Length;
        //    type = type.Replace("switch:", "");
        //    string[] list_int = type.Split(',');
        //    for (int n = 0; n < dataLength; n++)
        //    {
        //        for (int i = 0; i < list_int.Length; i += 4)
        //        {
        //            SheetValue value = GetSheetValue(list_int[i], list_int[i + 2], list_data[n]);
        //            if (value != null)
        //            {
        //                list_str_sb.Append("\"");
        //                list_str_sb.Append(list_int[i + 1]);
        //                list_str_sb.Append("\", \"");
        //                list_str_sb.Append(value.Node.GetValue(value.Id, list_int[i + 3]).Value);
        //                if (dataLength == n + 1) list_str_sb.Append("\"");
        //                else list_str_sb.Append("\", ");
        //                break;
        //            }
        //        }
        //    }
        //    list_str_sb.Append("}");
        //    return list_str_sb.ToString();
        //}

        Debug.LogError("导表无类型 " + type);
        return "";
    }

    private static SheetValue GetSheetValue(string name, string tabel, string value)
    {
        if (!ExcelExport.Nodes1.ContainsKey(name)) Debug.LogError("导表头为 " + name +" 不存在");
        var nodes = ExcelExport.Nodes1[name];
        foreach(var node in nodes)
        {
            var ids = node.Ids;
            foreach (var id in ids)
            {
                var v = node.GetValue(id, tabel);
                if (v.Value == value) return v;
            }
        }
        return null;
    }
}

public class ExcelKeyExport
{
    public Dictionary<string, ExcelKeyExport> KeyExport = new Dictionary<string, ExcelKeyExport>();
    public string ID;
    public string[] Type;
    public string Key;
    public ExcelKeyExport(string id, string[] type, string key)
    {
        ID = id;
        Type = type;
        Key = key;
    }
}
#endif