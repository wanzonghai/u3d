using UnityEngine;
using UnityEditor;
using System.Collections.Generic;
using System.IO;
using System.Text;

public class AnalyzeAssetBundle
{
    public static ExcelReader LocalRes
    {
        get { return new ExcelReader(ExcelUtils.DataPath + "Excel/" + ExcelUtils.ResourceXlsxPath); }
    }
    //资源分析，小包用  把首包包含内容+被引用超过两次的资源记录下来   path,dependCount,state 存在Assets/Editor/Asset/BundleBuilder.txt中
    [MenuItem("MyEditor/AssetBundle/AnalyzeAssetBundle", false, 2)]
    public static void AssetBundleAnalyze()
    {
        AssetDatabase.Refresh();
        Dictionary<string, int> localRes = new Dictionary<string, int>();
        var node = LocalRes.SheetNode1("LocalRes");
        var ids = node.Ids;
        foreach (var id in ids)
        {
            var path = "Assets/Resources/" + node.GetValue(id, "path").Value;
            var state = int.Parse(node.GetValue(id, "state").Value);
            if (localRes.ContainsKey(path))
            {
                if (localRes[path] < state) localRes[path] = state;
            }
            else localRes.Add(path, state);
        }

        List<string> dependPath = new List<string>();
        List<string> employPaths = new List<string>();
        Dictionary<string, BundleDependencie> dependNumPaths = new Dictionary<string, BundleDependencie>();

        //资产文件（非序列化）
        dependPath.AddRange(ParseDirectory("Assets/Resources/Font/", new string[] { "*.ttf" }));
        dependPath.AddRange(ParseDirectory("Assets/Resources/Effect/", new string[] { "*.png", "*.tif", "*.jpg", "*.psd", "*.tga", "*.fbx" }));
        dependPath.AddRange(ParseDirectory("Assets/Resources/Environments/Scene/", new string[] { "*.png", "*.tif", "*.jpg", "*.psd", "*.tga", "*.fbx", "*.mat" }));


        //序列化文件
        employPaths.AddRange(ParseDirectory("Assets/Resources/AnimClip/", new string[] { "*.anim" }));
        employPaths.AddRange(ParseDirectory("Assets/Resources/Effect/", new string[] { "*.prefab" }));
        employPaths.AddRange(ParseDirectory("Assets/Resources/Environments/Level/", new string[] { "*.unity", "*.prefab" }));
        employPaths.AddRange(ParseDirectory("Assets/Resources/Prefabs/Windows/", new string[] { "*.prefab" }));

        //employPaths.AddRange(ParseDirectory("Assets/Resources/Slot/", new string[] { "*.prefab" }));

        employPaths.AddRange(ParseDirectory("Assets/Resources/PrefabDependentAssets/Prefabs/", new string[] { "*.prefab" }));

        for (int i = 0; i < employPaths.Count; i++)
        {
            EditorUtility.DisplayCancelableProgressBar("分析进度" + "(" + (i + 1) + "/" + employPaths.Count + ")", "Processing", (float)(i + 1) / (float)employPaths.Count);
            string path = employPaths[i];
            if (!dependNumPaths.ContainsKey(path)) dependNumPaths.Add(path, new BundleDependencie());

            //如果配置表里面有配置，状态按配置表的走
            int localState = 0;
            foreach (var res in localRes)
            {
                if (path.StartsWith(res.Key))
                {
                    localState = res.Value;
                    dependNumPaths[path].State = localState;
                    break;
                }
            }

            //获得所有依赖文件
            Object obj = AssetDatabase.LoadMainAssetAtPath(path);
            Object[] objects = EditorUtility.CollectDependencies(new Object[] { obj });
            List<string> dependencies = new List<string>();
            foreach (var o in objects)
            {
                string pt = AssetDatabase.GetAssetPath(o);
                if (!dependencies.Contains(pt)) dependencies.Add(pt);
            }

            //记录依赖状态
            foreach (var pt in dependencies)
            {
                if (dependPath.Contains(pt))
                {
                    if (!dependNumPaths.ContainsKey(pt)) dependNumPaths.Add(pt, new BundleDependencie());
                    dependNumPaths[pt].DependenciesNum++;

                    //被依赖的文件状态要跟着依赖状态走（最优质）
                    if (localState > dependNumPaths[pt].State) dependNumPaths[pt].State = localState;
                }
            }
            EditorUtility.UnloadUnusedAssetsImmediate();
        }

        List<string> dependList = new List<string>();
        foreach (var dependNumPath in dependNumPaths)
        {
            var bundle = dependNumPath.Value;
            //如果不是首包也不是启动时候用，被依赖
            if (bundle.State == 0 && bundle.DependenciesNum < 2) continue;
            dependList.Add(dependNumPath.Key);

        }
        dependList.Sort();
        StringBuilder bundleBuilder = new StringBuilder();
        for (int i = 0; i < dependList.Count; i++)
        {
            var bundle = dependNumPaths[dependList[i]];
            bundleBuilder.Append(dependList[i]).Append(",").Append(bundle.DependenciesNum).Append(",").Append(bundle.State).Append("\n");
        }
        FileStream fs = new FileStream("Assets/Editor/Asset/BundleBuilder.txt", FileMode.Create);
        byte[] data = new UTF8Encoding().GetBytes(bundleBuilder.ToString());
        fs.Write(data, 0, data.Length);
        fs.Flush();
        fs.Close();
        EditorUtility.ClearProgressBar();
        Debug.Log("分析完成");
    }

    private static string[] ParseDirectory(string path, string[] fomat)
    {
        List<string> paths = new List<string>();
        List<string> files = new List<string>();
        foreach (var ft in fomat)
        {
            files.AddRange(Directory.GetFiles(path, ft));
        }
        foreach (var file in files)
        {
            paths.Add(file);
        }
        var dirs = Directory.GetDirectories(path);
        foreach (var dir in dirs)
        {
            paths.AddRange(ParseDirectory(dir + "/", fomat));
        }
        return paths.ToArray();
    }

    public class BundleDependencie
    {
        public int State = 0;
        public int DependenciesNum;
    }
}
