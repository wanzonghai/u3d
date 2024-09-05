#if UNITY_EDITOR
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;
using System.IO;
using System;
using System.Text;
using System.Collections.Generic;

public struct PrefabData
{
    public string winname;
    public string path;
    public string content;
}


public class ExcelPrefabExport
{
    [MenuItem("MyEditor/导表工具/UI语言导出")]
    public static void ExportPrefabText()
    {
        string genPath = Application.dataPath + "/Resources/Windows";
        string[] filesPath = Directory.GetFiles(genPath, "*.prefab", SearchOption.AllDirectories);
        HashSet<PrefabData> hash = new HashSet<PrefabData>();
        //Dictionary<string, string> labelList = new Dictionary<string, string>();
        for (int i = 0; i < filesPath.Length; i++)
        {
            filesPath[i] = filesPath[i].Substring(filesPath[i].IndexOf("Assets"));

            GameObject _prefab = AssetDatabase.LoadAssetAtPath(filesPath[i], typeof(GameObject)) as GameObject;

            Text[] labels = _prefab.GetComponentsInChildren<Text>(true);
            for (int j = 0; j < labels.Length; j++)
            {
                string text = labels[j].text;
                if (!string.IsNullOrEmpty(text))
                {
                    string path = string.Empty;
                    Transform temp = labels[j].transform;
                    if (temp.transform.parent != null)
                    {
                        while (temp.transform.parent)
                        {
                            path = temp.transform.parent.name + "/" + path;
                            temp = temp.transform.parent;
                        }
                    }
                    else
                    {
                        path += "/";
                    }
                    path = path.Substring(0, path.Length - 1);
                    path = path + "/" + labels[j].name;
                    PrefabData date;
                    date.content = text;
                    date.winname = _prefab.transform.name;
                    date.path = path.Substring(_prefab.transform.name.Length + 1, path.Length - _prefab.transform.name.Length - 1);
                    hash.Add(date);
                }
            }
        }
        var writer = new ExcelWriter(ExcelUtils.DataPath + "/语言导入/Exporter/UI语言导出.xlsx");
        var nodeScene = writer.SheetNode("Language", "Language");
        nodeScene.WriteTabel("id", "id", "int");
        nodeScene.WriteTabel("content", "", "str|L|F:cn");
        nodeScene.WriteTabel("winName", "", "str");
        nodeScene.WriteTabel("path", "", "str");
        int id = 0;
        foreach (var l in hash)
        {
            id++;
            nodeScene.SetValue1(id.ToString(), "content", l.content);
            nodeScene.SetValue1(id.ToString(), "winName", l.winname);
            nodeScene.SetValue1(id.ToString(), "path", l.path);
        }
        writer.Save();
        Debug.Log("导出成功");
    }
    [MenuItem("MyEditor/导表工具/导出WindowsUI语言")]
    public static void ExportPrefabText2()
    {
        string genPath = Application.dataPath + "/Resources/Prefabs/Windows/";
        string[] filesPath = Directory.GetFiles(genPath, "*.prefab", SearchOption.AllDirectories);
        List<string[]> lists = new List<string[]>();
        int startIndex;
        int lastIndex;
        int id = 0;
        int index = 0;
        string path = "";
        string pathNext = "";
        for (int i = 0; i < filesPath.Length; i++)
        {
            filesPath[i] = filesPath[i].Substring(filesPath[i].IndexOf("Assets"));
            startIndex = filesPath[i].LastIndexOf("/");
            lastIndex = filesPath[i].LastIndexOf("\\");
            path = filesPath[i].Substring(startIndex + 1, lastIndex - startIndex - 1);
            if (!path.Equals(pathNext))
            {
                pathNext = path;
                index += 1;
                id = index * 1000;
            }
            L.LogError(filesPath[i]);
            GameObject _prefab = AssetDatabase.LoadAssetAtPath(filesPath[i], typeof(GameObject)) as GameObject;
            Text[] labels = _prefab.GetComponentsInChildren<Text>(true);
            for (int j = 0; j < labels.Length; j++)
            {
                if (!string.IsNullOrEmpty(labels[j].text))
                {
                    id += 1;
                    string transPath = labels[j].transform.name;
                    Transform parentTran = labels[j].transform.parent;
                    while (parentTran != null)
                    {
                        if (parentTran.parent != null)
                            transPath = parentTran.name + "/" + transPath;
                        parentTran = parentTran.parent;
                    }
                    lists.Add(new string[] { _prefab.name, labels[j].text, id.ToString(), transPath });
                }
            }
        }
        var writer = new ExcelWriter(ExcelUtils.DataPath + "/Excel/Y_windows语言.xlsx");
        var nodeScene = writer.SheetNode("Language_Prefab", null);
        nodeScene.WriteTabel("key", null, "str");
        nodeScene.WriteTabel("content", null, "str");
        for (int i = 0; i < lists.Count; i++)
        {
            nodeScene.SetValue1(lists[i][0] + "|" + lists[i][3], "content", lists[i][1]);
        }
        writer.Save();
        lists.Clear();
        Debug.Log("导出成功");
    }

    [MenuItem("MyEditor/导表工具/导出 WindowsPrfabs语言")]
    public static void ExportWindowsPrfabsText()
    {
        string url = ExcelUtils.DataPath.Replace("/", "\\") + "a.txt";
        if (!File.Exists(url))
        {
            Debug.LogError("不存在指定文件 path:" + url);
            return;
        }
        string genPath = "Assets/Resources/";
        List<string> listPath = new List<string>();
        string[] allLines = File.ReadAllLines(url);
        for (int i = 0; i < allLines.Length; i++)
        {
            allLines[i] = allLines[i].Replace("\\", "/");
            if (allLines[i].EndsWith(".prefab"))
            {
                listPath.Add(genPath + allLines[i].Substring(allLines[i].IndexOf("Prefabs/Windows/")));
            }
        }
        ExportPrefabPathText(listPath.ToArray());
    }
    [MenuItem("MyEditor/导表工具/导出All WindowsPrfabs语言")]
    public static void ExportAllWindowsPrfabsText()
    {
        string genPath = Application.dataPath + "/Resources/Prefabs/Windows/";
        string[] filesPath = Directory.GetFiles(genPath, "*.prefab", SearchOption.AllDirectories);
        //string[] pathList = new string[filesPath.Length];
        for (int i = 0; i < filesPath.Length; i++)
        {
            filesPath[i] = filesPath[i].Substring(filesPath[i].IndexOf("Assets"));
        }
        ExportPrefabPathText(filesPath);
    }
    public static void ExportPrefabPathText(string[] filesPath)
    {
        List<string[]> lists = new List<string[]>();
        GameObject prefab;
        Text[] labels;
        for (int i = 0; i < filesPath.Length; i++)
        {
            prefab = AssetDatabase.LoadAssetAtPath(filesPath[i], typeof(GameObject)) as GameObject;
            if (prefab == null)
            {
                Debug.LogError("未找到预制体  path:" + filesPath[i]);
                continue;
            }
            string transPath;
            Transform parentTF;
            labels = prefab.GetComponentsInChildren<Text>(true);
            for (int j = 0; j < labels.Length; j++)
            {
                if (!string.IsNullOrEmpty(labels[j].text))
                {
                    transPath = labels[j].transform.name;
                    parentTF = labels[j].transform.parent;
                    while (null != parentTF)
                    {
                        if (null != parentTF.parent)
                            transPath = parentTF.name + "/" + transPath;
                        parentTF = parentTF.parent;
                    }
                    lists.Add(new string[] { filesPath[i], transPath, labels[j].text, });
                }
            }
        }
        ExcelWriter writer = new ExcelWriter(ExcelUtils.DataPath + "/Y_windows语言.xlsx");
        WriteExcelNode nodeScene = writer.SheetNode("Language_Prefab", null);
        nodeScene.WriteTabel("key", null, "str");
        nodeScene.WriteTabel("content", null, "str");
        nodeScene.WriteTabel("content2", null, "str");
        for (int i = 0; i < lists.Count; i++)
        {
            nodeScene.SetValue1(lists[i][0] + "|" + lists[i][1], "content", lists[i][2]);
        }
        writer.Save();
        lists.Clear();
        Debug.Log("导出成功");
    }
    [MenuItem("MyEditor/导表工具/导入WindowsPrfabs语言")]
    public static void ImportPrefabLanguage()
    {
        var url = ExcelUtils.DataPath + "/Y_windows语言.xlsx";
        if (!File.Exists(url))
        {
            Debug.LogError("缺少 Y_windows语言 导入表");
            return;
        }
        Dictionary<string, Dictionary<string, string>> LanguageDict = new Dictionary<string, Dictionary<string, string>>();
        ReadExcelNode nodeExcelReader = new ExcelReader(url, true).SheetNode1("Language_Prefab");
        SheetValue contentSheetValue;
        string[] key;
        string prefabPath, textPath;
        foreach (string id in nodeExcelReader.Ids)
        {
            contentSheetValue = nodeExcelReader.GetValue(id, "content2");
            if (string.IsNullOrEmpty(contentSheetValue.Value))
            {
                Debug.LogError(id + "     没有做本地化翻译");
                continue;
            }
            key = id.Split('|');
            prefabPath = key[0];
            textPath = key[1];
            if (!LanguageDict.ContainsKey(prefabPath)) LanguageDict.Add(prefabPath, new Dictionary<string, string>());
            LanguageDict[prefabPath].Add(textPath, contentSheetValue.Value);
        }
        SetPrefabsText(LanguageDict);
        LanguageDict.Clear();
        Debug.Log("语言导入预制体完成");
    }

    public static void SetPrefabsText(Dictionary<string, Dictionary<string, string>> LanguageDict)
    {
        Transform prefabListTF = new GameObject("PrefabListTF").transform;
        GameObject prefab, gameObject;
        Dictionary<string, string> prefabContentDic;
        foreach (string prefabPath in LanguageDict.Keys)
        {
            Text label;
            prefabContentDic = LanguageDict[prefabPath];
            prefab = AssetDatabase.LoadAssetAtPath(prefabPath, typeof(GameObject)) as GameObject;
            gameObject = GameObject.Instantiate(prefab) as GameObject;
            gameObject.transform.parent = prefabListTF;
            foreach (string assetPath in prefabContentDic.Keys)
            {
                label = gameObject.transform.Find(assetPath).GetComponent<Text>();
                if (null == label)
                {
                    Debug.LogError("此路径出现重名,非Text 控件   path:" + assetPath);
                    return;
                }
                label.text = prefabContentDic[assetPath];
            }
            PrefabUtility.ReplacePrefab(gameObject, prefab, ReplacePrefabOptions.Default);
        }

        AssetDatabase.SaveAssets();
        AssetDatabase.Refresh();
        MonoBehaviour.DestroyImmediate(prefabListTF.gameObject);
    }
}
#endif