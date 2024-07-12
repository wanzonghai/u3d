#if UNITY_EDITOR
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEditor;
using UnityEngine;

public class ExcelExport
{
    private static Encoding Encoding = new UTF8Encoding(false);
    public static Dictionary<string, List<ReadExcelNode>> Nodes1 = new Dictionary<string, List<ReadExcelNode>>();
    public static Dictionary<string, List<ReadExcelNode>> Nodes2 = new Dictionary<string, List<ReadExcelNode>>();
    [MenuItem("MyEditor/导表工具/全部导表")]
    public static void ExportByAll()
    {
        ExportConfig(false);
    }
    [MenuItem("MyEditor/导表工具/增量导表")]
    public static void ExportIncrement()
    {
        ExportConfig(true);
    }
    private static void ExportConfig(bool increment)
    {
        //if(!increment) ExcelUtils.DeleteAllFile(ExcelUtils.Tabel2Path);

        Nodes1.Clear();
        Nodes2.Clear();

        ExcelExports(increment);
        XMLExports(increment);
        TXTExports();

        AssetDatabase.Refresh();
        Debug.Log("导表完成");
    }

    private static void ExcelExports(bool increment)
    {
        List<ExcelReader> excels = new List<ExcelReader>();

        var xlsxs = Directory.GetFiles(ExcelUtils.DataPath + "Excel/", "*.xlsx").Where(s => !s.Contains("~$"));
        var incrementFiles = new Dictionary<string, string>();
        if (increment)
        {
            if (File.Exists(ExcelUtils.ExcelWriteTimeFilePath))
            {
                string content = Encoding.UTF8.GetString(File.ReadAllBytes(ExcelUtils.ExcelWriteTimeFilePath));
                if (string.IsNullOrEmpty(content)) return;
                string[] items = content.Split(new char[] { '\n' });
                foreach (string item in items)
                {
                    if (string.IsNullOrEmpty(item)) continue;
                    var s = item.Split(',');
                    incrementFiles.Add(ExcelUtils.DataPath + s[0], s[1]);
                }
            }
        }
        foreach (var x in xlsxs)
        {
            bool export = true;
            var md5 = Utils.GetMD5HashFromFile(x);
            if (incrementFiles.ContainsKey(x))
            {
                if (md5 == incrementFiles[x]) export = false;
                else incrementFiles[x] = md5;
            }
            else incrementFiles.Add(x, md5);
            if (export) excels.Add(new ExcelReader(x, true));
        }
        StringBuilder byNameBuilder = new StringBuilder();
        foreach (var e in excels)
        {
            var n1 = e.Nodes1;
            foreach(var n in n1)
            {
                if (!Nodes1.ContainsKey(n.Name)) Nodes1.Add(n.Name, new List<ReadExcelNode>());
                Nodes1[n.Name].Add(n);
                byNameBuilder.Append(n.Name).Append(",  ").Append(e.Path).Append("\n");
            }
            var n2 = e.Nodes2;
            foreach (var n in n2)
            {
                if (!Nodes2.ContainsKey(n.Name)) Nodes2.Add(n.Name, new List<ReadExcelNode>());
                Nodes2[n.Name].Add(n);
            }
        }
        ExcelLuaExport.ExcelExports(Nodes1, ExcelUtils.Tabel1Path, ".bytes", true);
        ExcelLuaExport.ExcelExports(Nodes2, ExcelUtils.Tabel2Path, ".lua", false);
        
        StringBuilder incrementBuilder = new StringBuilder();
        foreach(var key in incrementFiles.Keys)
        {
            var p = key.Replace(ExcelUtils.DataPath, "");
            incrementBuilder.Append(p).Append(",").Append(incrementFiles[key]).Append("\n");
        }
        WriteData(ExcelUtils.ExcelWriteTimeFilePath, incrementBuilder.ToString());
        if(!increment) WriteData(ExcelUtils.ExcelByNamePath, byNameBuilder.ToString());
    }
    private static void XMLExports(bool increment)
    {
        var dirs = Directory.GetDirectories(ExcelUtils.DataPath + "XML/");
        var incrementFiles = new Dictionary<string, string>();
        if (increment)
        {
            if (File.Exists(ExcelUtils.XMLWriteTimeFilePath))
            {
                string content = Encoding.UTF8.GetString(File.ReadAllBytes(ExcelUtils.XMLWriteTimeFilePath));
                if (!string.IsNullOrEmpty(content))
                {
                    string[] items = content.Split(new char[] { '\n' });
                    foreach (string item in items)
                    {
                        if (string.IsNullOrEmpty(item)) continue;
                        var s = item.Split(',');
                        incrementFiles.Add(ExcelUtils.DataPath + s[0], s[1]);
                    }
                }
            }
        }
        foreach (var dir in dirs)
        {
            var xlsxs = Directory.GetFiles(dir, "*.xlsx").Where(s => !s.Contains("~$"));
            bool export = false;
            foreach (var x in xlsxs)
            {
                var md5 = Utils.GetMD5HashFromFile(x);
                if (incrementFiles.ContainsKey(x))
                {
                    if (md5 != incrementFiles[x])
                    {
                        incrementFiles[x] = md5;
                        export = true;
                    }
                }
                else
                {
                    incrementFiles.Add(x, md5);
                    export = true;
                }
            }
            if(export)
            {
                List<ExcelReader> xmls = new List<ExcelReader>();
                foreach (var x in xlsxs)
                {
                    xmls.Add(new ExcelReader(x));
                }
                ExcelLuaExport.XmlExportsOneShot(xmls, ExcelUtils.Tabel1Path, ".bytes");
                ExcelLuaExport.XmlExportsOneShot(xmls, ExcelUtils.Tabel2Path, ".lua");
            }
        }
        StringBuilder incrementBuilder = new StringBuilder();
        foreach (var key in incrementFiles.Keys)
        {
            var p = key.Replace(ExcelUtils.DataPath, "");
            incrementBuilder.Append(p).Append(",").Append(incrementFiles[key]).Append("\n");
        }
        WriteData(ExcelUtils.XMLWriteTimeFilePath, incrementBuilder.ToString());
    }
    private static void TXTExports()
    {
        var dirs = Directory.GetDirectories(ExcelUtils.DataPath + "TXT/");
        foreach (var dir in dirs)
        {
            var txtds = Directory.GetFiles(dir, "*.*", SearchOption.AllDirectories).Where(s => s.EndsWith(".txt") || s.EndsWith(".json"));
            string dirName = Path.GetFileNameWithoutExtension(dir);
            List<string> fileNames = new List<string>();
            List<string> files = new List<string>();
            foreach (var t in txtds)
            {
                fileNames.Add(Path.GetFileNameWithoutExtension(t));
                files.Add(File.ReadAllText(t, Encoding));
            }
            ExcelLuaExport.TXTExportsOneShot(dirName, fileNames.ToArray(), files.ToArray(), ExcelUtils.Tabel2Path, ".lua");
        }
    }

    private static void WriteData(string path, string dataStr)
    {
        FileStream fs = new FileStream(path, FileMode.Create);
        byte[] data = new UTF8Encoding().GetBytes(dataStr);
        fs.Write(data, 0, data.Length);
        fs.Flush();
        fs.Close();
    }
}
#endif