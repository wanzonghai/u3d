using UnityEditor;
using System.IO;
public class AssetBuldle : Editor
{
    [MenuItem("Tools/CreatAssetBundle for Android")]

    static void CreatAssetBundle()
    {

        string path = "Assets/StreamingAssets";
        if (!Directory.Exists(path))
        {
            Directory.CreateDirectory(path);
        }
        BuildPipeline.BuildAssetBundles(path, BuildAssetBundleOptions.UncompressedAssetBundle, BuildTarget.Android);
        UnityEngine.Debug.Log("Android Finish!");
    }

    [MenuItem("Tools/CreatAssetBundle for IOS")]
    static void BuildAllAssetBundlesForIOS()
    {
        string dirName = "AssetBundles/IOS";
        if (!Directory.Exists(dirName))
        {
            Directory.CreateDirectory(dirName);
        }
        BuildPipeline.BuildAssetBundles(dirName, BuildAssetBundleOptions.CompleteAssets, BuildTarget.iOS);
        UnityEngine.Debug.Log("IOS Finish!");

    }


    [MenuItem("Tools/CreatAssetBundle for Win")]
    static void CreatPCAssetBundleForwINDOWS()
    {
        string path = "AB";
        if (!Directory.Exists(path))
        {
            Directory.CreateDirectory(path);
        }
        BuildPipeline.BuildAssetBundles(path, BuildAssetBundleOptions.None, BuildTarget.StandaloneWindows64);
        UnityEngine.Debug.Log("Windows Finish!");
    }
}
