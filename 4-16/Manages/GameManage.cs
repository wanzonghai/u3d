using System;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : Singleton<GameManager>
{
    public void LoadScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }
    public void ShowPanel(string panelName, Transform parentObject = null, Action<GameObject> onPanelLoaded = null)
    {
        App.PanelMgr.ShowPanel(ResPath.BundleURL_panel, panelName, parentObject, onPanelLoaded);
    }

    public void LoadResFromAssetBundle<T>(string bundlePath, Dictionary<string, T> resDic=null, Action<Dictionary<string,T>> onAllResourcesLoaded = null) where T : UnityEngine.Object
    {
        // 从 AssetBundle 中加载面板
        App.ABMgr.LoadAssetBundle(bundlePath, (assetBundle) =>
        {
            if (assetBundle != null)
            {
                string[] assetNames = assetBundle.GetAllAssetNames();
                foreach (string assetName in assetNames)
                {
                    // 异步加载资源
                    assetBundle.LoadAssetAsync<T>(assetName).completed += operation =>
                    {
                        T resourceInstance = (operation as AssetBundleRequest).asset as T;
                        if (resourceInstance != null)
                        {
                            // 将加载后的资源放入字典中
                            string fileName = Path.GetFileNameWithoutExtension(assetName);
                            resDic[fileName] = resourceInstance;
                        }
                        else
                        {
                            Debug.LogError("Failed to load resource from AssetBundle: " + assetName);
                        }

                        // 检查是否已经加载完所有资源，如果是则调用回调函数
                        if (resDic.Count == assetNames.Length)
                        {
                            onAllResourcesLoaded?.Invoke(resDic);
                        }
                    };
                }
            }
            else
            {
                Debug.LogError("Failed to load AssetBundle: " + bundlePath);
                onAllResourcesLoaded?.Invoke(null);
            }
        });
    }
    // 将资源放入对应的字典
    public void AddResToDictionary<T>(Dictionary<string, Queue<T>> ResDic, string resName, T resInstance)
    {
        if (!ResDic.ContainsKey(resName))
        {
            ResDic[resName] = new Queue<T>();
        }
        ResDic[resName].Enqueue(resInstance);
    }


    public void QuitGame()
    {
        // 退出游戏
        Application.Quit();
    }


}