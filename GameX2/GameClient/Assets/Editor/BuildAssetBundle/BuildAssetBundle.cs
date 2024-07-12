using UnityEngine;
using UnityEditor;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Security.Cryptography;
using System;

public class BuildAssetBundle
{
    /// <summary>
    /// 是否需要切分包
    /// </summary>
    private static bool needLocal = false;
    private static HashSet<string> BuilderPaths = new HashSet<string>();
    private static Dictionary<string, int> LocalRes = new Dictionary<string, int>();
    private static string BuildPipelinePath = Application.dataPath.Replace("GameClient/Assets", "GameClient/AssetBundle/") + "StreamingAssets/";


[MenuItem("MyEditor/AssetBundle/获取配置表和lua代码MD5名字")]
    public static void GetMd5PathName()
    {
        Debug.LogError(GetMd5ByString("script/lua.bytes"));
        Debug.LogError(GetMd5ByString("script/config.bytes"));
    }
    [MenuItem("MyEditor/AssetBundle/BuildAssetBundle", false, 4)]
    public static void AssetBundleBuilder()
    {
        AnalyzeAssetBundle.AssetBundleAnalyze();
        BuilderPaths.Clear();
        LocalRes.Clear();
        AssetDatabase.Refresh();
        if (Directory.Exists(BuildPipelinePath)) Directory.Delete(BuildPipelinePath, true);
        Directory.CreateDirectory(BuildPipelinePath);
        List<AssetBundleBuild> builds = new List<AssetBundleBuild>();

        //打包lua代码和配置表，不需要压缩
        builds.Add(CreateAssetBundlesBuild("script/lua.bytes", "Assets/Script/Lua", new string[] { "*.bytes" }));
        builds.Add(CreateAssetBundlesBuild("script/config.bytes", "Assets/Script/Config", new string[] { "*.bytes" }));
        var options = BuildAssetBundleOptions.DeterministicAssetBundle | BuildAssetBundleOptions.ChunkBasedCompression;
        BuildPipeline.BuildAssetBundles(BuildPipelinePath, builds.ToArray(), options, EditorUserBuildSettings.activeBuildTarget);

        options = BuildAssetBundleOptions.DisableWriteTypeTree | BuildAssetBundleOptions.ChunkBasedCompression |  BuildAssetBundleOptions.None;
        builds.Clear();
        ReadDependencies(builds);
        builds.Add(CreateAssetBundlesBuild("script/shaders.bytes", "Assets/Resources/Base/", new string[] { "*.shader", "*.jpg", "*.png", "*.psd", "*.cubemap", "*.fbx", "*.mat", "*.prefab", "*.shadervariants" }));
        //builds.AddRange(CreateAssetBundleBuilds("Assets/Resources/Atlas/AsyncDynamic/", new string[] { "*.png" }));
        builds.AddRange(CreateAssetBundleBuilds("Assets/Resources/Atlas/", new string[] { "*.png" }));
        builds.AddRange(CreateAssetBundleBuilds("Assets/Resources/AnimClip/", new string[] { "*.anim" }));
        builds.AddRange(CreateAssetBundleBuilds("Assets/Resources/Effect/", new string[] { "*.prefab" }));
        builds.AddRange(CreateAssetBundleBuilds("Assets/Resources/Environments/Level/", new string[] { "*.unity", "*.prefab" }));
        //builds.AddRange(CreateAssetBundleBuilds("Assets/Resources/GameObject/", new string[] { "*.prefab" }));
        //builds.AddRange(CreateAssetBundleBuilds("Assets/Resources/Role/", new string[] { "*.prefab" }));
        builds.AddRange(CreateAssetBundleBuilds("Assets/Resources/Sound/", new string[] { "*.wav", "*.mp3", "*.ogg" }));
        builds.AddRange(CreateAssetBundleBuilds("Assets/Resources/Windows/", new string[] { "*.prefab" }));
        builds.AddRange(CreateAssetBundleBuilds("Assets/Resources/Slot/",new string[]{"*.prefab"}));

        BuildPipeline.BuildAssetBundles(BuildPipelinePath, builds.ToArray(), options, EditorUserBuildSettings.activeBuildTarget);
        ExportAssetBundle();
        AssetDatabase.Refresh();
        Debug.Log("打包完成");
    }

    private static void ReadDependencies(List<AssetBundleBuild> builds)
    {
        string content = Encoding.UTF8.GetString(File.ReadAllBytes("Assets/Editor/Asset/BundleBuilder.txt"));
        if (string.IsNullOrEmpty(content)) return;
        string[] items = content.Split(new char[] { '\n' });
        foreach (string item in items)
        {
            if (string.IsNullOrEmpty(item)) continue;
            var s = item.Split(',');

            var bp = BuilderPath(s[0]);

            //如果有被依赖的资源，则打包
            if (int.Parse(s[1]) > 1)
            {
                AssetBundleBuild build = new AssetBundleBuild();
                BuilderPaths.Add(bp);
                build.assetBundleName = bp;
                build.assetNames = new string[] { s[0] };
                builds.Add(build);
            }

            //如果State > 0(2代表首包内容，1代表启动用)
            if (int.Parse(s[2]) > 0) AddLocalRes(bp, int.Parse(s[2]));
        }
    }

    private static AssetBundleBuild CreateAssetBundlesBuild(string name, string path, string[] fomat)
    {
        string[] files = ParseDirectory(path, fomat);
        for (int i = 0; i < files.Length; i++)
        {
            files[i] = files[i].Replace('\\', '/');
        }
        AssetBundleBuild build = new AssetBundleBuild();
        var bp = BuilderPath(name);
        BuilderPaths.Add(bp);
        build.assetBundleName = bp;
        build.assetNames = files;
        return build;
    }

    private static AssetBundleBuild[] CreateAssetBundleBuilds(string path, string[] fomat)
    {
        List<AssetBundleBuild> builds = new List<AssetBundleBuild>();
        string[] files = ParseDirectory(path, fomat);
        for (int i = 0; i < files.Length; i++)
        {
            files[i] = files[i].Replace('\\', '/');
            var bp = BuilderPath(files[i]);
            if (BuilderPaths.Contains(bp)) continue;
            BuilderPaths.Add(bp);
            AssetBundleBuild build = new AssetBundleBuild();
            build.assetBundleName = bp;
            build.assetNames = new string[] { files[i] };
            builds.Add(build);
        }
        return builds.ToArray();
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

    /// <summary>
    /// 去掉Assets/Resources/前缀
    /// </summary>
    private static string BuilderPath(string path)
    {
        path = path.Replace("Assets/Resources/", "");
        return path;
    }

    private static void ExportAssetBundle()
    {
        AddLocalRes("script/lua.bytes", 2);
        AddLocalRes("script/config.bytes", 2);
        AddLocalRes("script/shaders.bytes", 2);

        string dataPath = Application.dataPath.Replace("GameClient/Assets", "GameClient/AssetBundle/");

        string local = dataPath + "Local/";
        if(needLocal)
        {
            if (Directory.Exists(local)) Directory.Delete(local, true);
            Directory.CreateDirectory(local);
        }


        string all = dataPath + "All/";
        if (Directory.Exists(all)) Directory.Delete(all, true);
        Directory.CreateDirectory(all);
        AssetDatabase.Refresh();

        StringBuilder md5Name = new StringBuilder();
        AddLocalRes("StreamingAssets", 2);
        md5Name.Append("StreamingAssets").Append(",").Append(GetMd5ByString("StreamingAssets")).Append("\n");
        foreach (var path in BuilderPaths)
        {
            string md5 = GetMd5ByString(path);
            EncryptHander(BuildPipelinePath + path, all + md5, true, false);
            if (needLocal && LocalRes.ContainsKey(path) && LocalRes[path] == 2) File.Copy(all + md5, local + md5);
            md5Name.Append(path).Append(",").Append(md5).Append("\n");
        }
        EncryptHander(BuildPipelinePath + "StreamingAssets", all + GetMd5ByString("StreamingAssets"), true, false);

        string md5N = GetMd5ByString("script/lua.bytes");
        if(needLocal)
        {
            File.Copy(all + GetMd5ByString("StreamingAssets"), local + GetMd5ByString("StreamingAssets"));
              EncryptHander(local + md5N, local + md5N, false, true);
        }
        EncryptHander(all + md5N, all + md5N, false, true);
        md5N = GetMd5ByString("script/config.bytes");
        if(needLocal)
        {
            EncryptHander(local + md5N, local + md5N, false, true);
            ExportVersion(local, false);
        }
        EncryptHander(all + md5N, all + md5N, false, true);
        ExportVersion(all, true);

        md5Name.Append("Version").Append(",").Append(GetMd5ByString("Version")).Append("\n");
        WriteData("Assets/Editor/Asset/MD5Name.txt", md5Name.ToString());
    }

    private static void ExportVersion(string dirPath, bool full)
    {
        StringBuilder fileInfoes = new StringBuilder();
        //fileInfoes.Append(AssetDataPath.ResVersion).Append(",").Append(full.ToString()).Append("\n");
        String[] fileNames = Directory.GetFiles(dirPath, "*", SearchOption.AllDirectories);
        string path = "";
        string versionName = GetMd5ByString("Version");
        var localRes = new HashSet<string>();
        if (full)
        {
            foreach (var res in LocalRes.Keys)
                localRes.Add(GetMd5ByString(res));
        }
        foreach (String fileName in fileNames)
        {
            if (fileName.EndsWith(".meta")) continue;
            if (fileName.EndsWith(versionName)) continue;
            path = fileName.Replace("\\", "/");
            string size = GetFileSize(path).ToString();
            string md5 = GetMD5HashFromFile(fileName);
            string name = Path.GetFileName(fileName);
            fileInfoes.Append(name).Append(",").Append(md5).Append(",").Append(size).Append(",").Append(localRes.Contains(name).ToString()).Append("\n");
        }
        FileStream fs = new FileStream(dirPath + versionName, FileMode.Create);
        byte[] bytes = new UTF8Encoding().GetBytes(fileInfoes.ToString());
        fs.Write(bytes, 0, bytes.Length);
        fs.Flush();
        fs.Close();
    }

    public static string GetMD5HashFromFile(string fileName)
    {
        using (FileStream file = new FileStream(fileName, FileMode.Open))
        {
            System.Security.Cryptography.MD5 md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] hash = md5.ComputeHash(file);

            StringBuilder result = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                result.Append(hash[i].ToString("x2"));
            }
            return result.ToString();
        }
    }

    private static long GetFileSize(string dirPath)
    {
        FileInfo fileInfo = new FileInfo(dirPath);
        return fileInfo.Length;
    }

    public static string GetMd5ByString(string str)
    {
        str = str.ToLower();
        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
        byte[] hash = md5.ComputeHash(Encoding.UTF8.GetBytes(str));
        string result = "";
        for (int i = 0; i < hash.Length; i++)
        {
            result += hash[i].ToString("x2");
        }
        return result + ".bytes";
    }

    private static void WriteData(string path, string dataStr)
    {
        FileStream fs = new FileStream(path, FileMode.Create);
        byte[] data = new UTF8Encoding().GetBytes(dataStr);
        fs.Write(data, 0, data.Length);
        fs.Flush();
        fs.Close();
    }

    private static void EncryptHander(string path, string newPath, bool e1, bool e2)
    {
        FileStream fs = new FileStream(path, FileMode.Open, FileAccess.ReadWrite);
        var len = (int)fs.Length;
        byte[] buff = new byte[len];
        fs.Read(buff, 0, len);
        //buff = ABEncrypt(buff, e1, e2);
        fs.Close();
        FileStream cfs = new FileStream(newPath, FileMode.Create);
        cfs.Write(buff, 0, buff.Length);
        buff = null;
        cfs.Close();
    }

    private static byte[] ABEncrypt(byte[] bt, bool e1, bool e2)
    {
        /*if (e1)
        {
            var len = bt.Length;
            List<byte> bs = new List<byte>();
            for (int i = 0; i < 7; i++)
            {
                bs.Add(bt[len - 7 + i]);
            }
            bs.AddRange(bt);
            bt = bs.ToArray();
        }*/
        if (e2)
        {
            string key = "abcdefg67257dfgsf2828gfdgdfrr5343";
            byte[] keyByte = System.Text.Encoding.ASCII.GetBytes(key);
            int lenKey = keyByte.Length;
            var len = bt.Length;
            byte[] bytes = new byte[len];
            for (int i = 0; i < len; i++)
                bytes[i] = (byte)(bt[i] ^ keyByte[i % lenKey]);
            bt = bytes;
        }
        return bt;
    }

    private static void AddLocalRes(string path, int state)
    {
        if (!LocalRes.ContainsKey(path)) LocalRes.Add(path, state);
        else if (LocalRes[path] < state) LocalRes[path] = state;
    }
}