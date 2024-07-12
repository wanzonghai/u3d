
using UnityEngine;
using UnityEditor;
using System.Text;
using System.IO;

public class SceneDependencyAnalyzer : Editor
{
    [MenuItem("MyEditor/Analyze Scene Dependencies")]
    public static void AnalyzeSceneDependencies()
    {
        Object[] objs = Selection.objects;
        if(objs == null || objs.Length == 0) 
        {
            Debug.LogError("没有选中资源！");
            return;
        }
        if(objs.Length != 1) 
        {
            Debug.LogError("一次性只能分析一个资源，请勿多选！");
            return;
        }
        string path = AssetDatabase.GetAssetPath(objs[0]);

        string[] dependencies = AssetDatabase.GetDependencies(path);
        StringBuilder sb = new StringBuilder();
        foreach(var str in dependencies)
        {
            if(str != path)
            {
                sb.Append(str);
                sb.Append("\n");
            }
        }
        sb.Append("\n");
        sb.Append("资源分析来自场景：" + path);
        string outPutPath = Application.dataPath.Replace("Assets","SceneDependencies");
        if(!File.Exists(outPutPath))
        {
            Directory.CreateDirectory(outPutPath);
        }
        File.WriteAllText(outPutPath + "/" + Path.GetFileName(path) + ".txt",sb.ToString());
    }
}