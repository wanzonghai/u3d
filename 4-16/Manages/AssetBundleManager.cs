using UnityEngine;
using System.Collections;
using System.IO;
using UnityEngine.Networking;
using System;
using System.Collections.Generic;

public class AssetBundleManager : Singleton<AssetBundleManager>
{
    public bool isLocalFile = true;
    // 存储已加载的 AssetBundle
    private Dictionary<string, AssetBundle> loadedAssetBundles = new Dictionary<string, AssetBundle>();

    // 加载 AssetBundle
    public void LoadAssetBundle(string bundlePath, Action<AssetBundle> onComplete)
    {
        string bundleName = Path.GetFileName(bundlePath);
        if (loadedAssetBundles.ContainsKey(bundleName))
        {
            Debug.LogWarning("AssetBundle " + bundleName + " is already loaded.");
            onComplete?.Invoke(loadedAssetBundles[bundleName]);
            return;
        }

        StartCoroutine(LoadAssetBundleCoroutine(bundlePath, onComplete));
    }
    private IEnumerator LoadAssetBundleCoroutine(string bundleURL, Action<AssetBundle> onComplete)
    {
        string url;
        if (isLocalFile)
        {
            string filePath = Path.Combine(Application.streamingAssetsPath, bundleURL);
            url = "file://" + filePath;
        }
        else
        {
            // 如果不是本地文件，则直接使用提供的URL
            url = bundleURL;
        }
        // 使用UnityWebRequest加载AssetBundle文件
        using (UnityWebRequest request = UnityWebRequestAssetBundle.GetAssetBundle(url))
        {
            yield return request.SendWebRequest();

            if (request.result == UnityWebRequest.Result.Success)
            {
                // 从下载处理器中获取AssetBundle
                AssetBundle assetBundle = DownloadHandlerAssetBundle.GetContent(request);
                // 打印所有加载的资源名称
                foreach (var name in assetBundle.GetAllAssetNames())
                {
                   string  asset_name = Path.GetFileNameWithoutExtension(name);
                    Debug.Log("Loaded asset name: " + asset_name);
                }
                string bundleName = Path.GetFileName(url);
                if (!loadedAssetBundles.ContainsKey(bundleName))
                {
                    loadedAssetBundles.Add(bundleName, assetBundle);
                }
                else
                {
                    Debug.LogWarning("AssetBundle " + bundleName + " is already loaded."); // 重复加载的警告
                }
                onComplete?.Invoke(assetBundle);
            }
            else
            {
                Debug.LogError("Failed to load AssetBundle: " + request.error);
                onComplete?.Invoke(null);
            }
        }
    }

    // 加载资源
    public void LoadAsset<T>(string assetName, Action<T> onAssetLoaded) where T : UnityEngine.Object
    {
        LoadAssetBundle(assetName, (assetBundle) =>
        {
            if (assetBundle != null)
            {
                LoadAssetFromBundle<T>(assetBundle, assetName, onAssetLoaded);
            }
            else
            {
                Debug.LogError("Failed to load AssetBundle: " + assetName);
                onAssetLoaded?.Invoke(null);
            }
        });
    }
    // 从 AssetBundle 中加载资源
    private void LoadAssetFromBundle<T>(AssetBundle assetBundle, string assetName, Action<T> onAssetLoaded) where T : UnityEngine.Object
    {
        assetBundle.LoadAssetAsync<T>(assetName).completed += operation =>
        {
            T asset = (operation as AssetBundleRequest).asset as T;
            if (asset != null)
            {
                onAssetLoaded?.Invoke(asset);
            }
            else
            {
                Debug.LogError("Failed to load asset from AssetBundle: " + assetName);
                onAssetLoaded?.Invoke(null);
            }
        };
    }
    // 卸载 AssetBundle
    public void UnloadAssetBundle(string assetName, bool unloadAllLoadedObjects = false)
    {
        if (loadedAssetBundles.ContainsKey(assetName))
        {
            loadedAssetBundles[assetName].Unload(unloadAllLoadedObjects);
            loadedAssetBundles.Remove(assetName);
        }
        else
        {
            Debug.LogWarning("AssetBundle " + assetName + " is not loaded.");
        }
    }
    // 卸载所有已加载的 AssetBundle
    public void UnloadAllAssetBundles(bool unloadAllLoadedObjects = false)
    {
        foreach (var kvp in loadedAssetBundles)
        {
            kvp.Value.Unload(unloadAllLoadedObjects);
        }
        loadedAssetBundles.Clear();
    }
}
