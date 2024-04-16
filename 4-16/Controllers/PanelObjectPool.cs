using UnityEngine;
using System.Collections.Generic;
using System.Collections;
using System.IO;
using System;

public class PanelObjectPool : Singleton<PanelObjectPool>
{
    // 用于存放面板的对象池
    private Dictionary<string, Queue<GameObject>> panelPools = new Dictionary<string, Queue<GameObject>>();

    // 最大对象池容量限制
    private int maxPoolSize = 100;
    // 公共属性用于访问最大对象池容量限制
    public int MaxPoolSize { get { return maxPoolSize; } }

    // 每次触发清理时要删除的对象数量
    public int objectsToRemove = 10;
    // 实例化面板并返回实例化后的 GameObject
    public void InstantiatePanel(string bundlePath, string panelName, Transform parent = null, Action<GameObject> onPanelInstantiated = null)
    {
        // 验证资源路径的有效性
        if (string.IsNullOrEmpty(panelName))
        {
            Debug.LogWarning("Failed to instantiate panel: invalid resource path");
            return ;
        }

        // 检查对象池中是否有可用的实例
        if (panelPools.ContainsKey(panelName) && panelPools[panelName].Count > 0)
        {
            // 检查是否有激活的面板实例存在
            GameObject existingPanel = panelPools[panelName].Peek();
            if (existingPanel.activeSelf)
            {
                Debug.LogWarning("An active panel instance already exists. Reusing existing instance.");
                onPanelInstantiated?.Invoke(existingPanel);
                return;
            }
            //GameObject instance = panelPools[panelName].Dequeue();
            //instance.SetActive(true);
            //if (parent != null)
            //{
            //    instance.transform.SetParent(parent);
            //}
            // 如果有回调函数，执行回调函数并传入实例化的面板
            onPanelInstantiated?.Invoke(existingPanel);
        }
        else
        {
            // 如果没有可用实例，需要加载新的面板
            LoadPanelFromAssetBundle(bundlePath, panelName, parent, (panelPrefab) =>
             {
                 if (panelPrefab != null)
                 {
                     // 实例化加载后的面板对象
                     GameObject instance = Instantiate(panelPrefab, parent);

                     // 将实例化后的面板对象放入对象池中
                     AddPanelToPool(panelName, instance);

                     // 如果有回调函数，执行回调函数并传入实例化的面板
                     onPanelInstantiated?.Invoke(instance);
                 }
                 else
                 {
                     Debug.LogError("Failed to load panel from AssetBundle: " + panelName);
                     onPanelInstantiated?.Invoke(null);
                 }
             });
            //LoadPanelResources(panelName, onPanelInstantiated);
        }
    }
    // 将实例化后的面板对象放入对象池中
    private void AddPanelToPool(string panelName, GameObject panelInstance)
    {
        if (!panelPools.ContainsKey(panelName))
        {
            panelPools[panelName] = new Queue<GameObject>();
        }
        panelInstance.SetActive(false); // 设置为不活跃状态
        panelPools[panelName].Enqueue(panelInstance);
    }
    // 加载面板预制体
    private void LoadPanel(string bundlePath, string panelName, Action<GameObject> onPanelLoaded)
    {
        // 在实际项目中，根据面板名称从 AssetBundle 中加载面板预制体
        // 调用 AssetBundleManager 加载面板
        App.ABMgr.LoadAsset<GameObject>(panelName, onPanelLoaded);
    }
    // 加载面板预制体
    private void LoadPanelResources(string panelName, Action<GameObject> onPanelLoaded)
    {
        // 从 Resources 文件夹中加载面板预制体
        string path = "Prefabs/" + panelName; // 假设面板预制体存放在 "Resources/Prefabs/" 文件夹下
        GameObject panelPrefab = Resources.Load<GameObject>(path);

        if (panelPrefab != null)
        {
            // 实例化面板预制体
            GameObject panelInstance = Instantiate(panelPrefab);
            AddPanelToPool(panelName, panelInstance);
            // 调用回调函数并传递实例化后的面板对象
            onPanelLoaded?.Invoke(panelInstance);
        }
        else
        {
            Debug.LogError("Failed to load panel from Resources: " + panelName);
            onPanelLoaded?.Invoke(null);
        }
    }
    private void LoadPanelFromAssetBundle(string bundlePath, string panelName, Transform parent=null, Action<GameObject> onPanelInstantiated = null)
    {
        // 从 AssetBundle 中加载面板
        App.ABMgr.LoadAssetBundle(bundlePath, (assetBundle) =>
        {
            if (assetBundle != null)
            {
                assetBundle.LoadAssetAsync<GameObject>(panelName).completed += operation =>
                {
                    GameObject panelPrefab = (operation as AssetBundleRequest).asset as GameObject;
                    if (panelPrefab != null)
                    {
                        // 实例化加载后的面板对象，并执行回调
                        GameObject instance = Instantiate(panelPrefab, parent);
                        AddPanelToPool(panelName, instance);
                        onPanelInstantiated?.Invoke(instance);
                    }
                    else
                    {
                        Debug.LogError("Failed to load panel from AssetBundle: " + panelName);
                        onPanelInstantiated?.Invoke(null);
                    }
                };
            }
            else
            {
                Debug.LogError("Failed to load AssetBundle: " + bundlePath);
                onPanelInstantiated?.Invoke(null);
            }
        });
    }


    // 从资源管理器中加载面板预制体
    private void LoadPanelFromResourceManager(string bundlePath, string panelName, Action<GameObject> onPanelLoaded)
    {
        // 从资源管理器中加载面板
      //  App.ResMgr.LoadAsset<GameObject>(bundlePath, panelName, onPanelLoaded);
    }

    // 回收面板对象到对象池中
    public void RecyclePanel(GameObject panel, float delay = 0.3f)
    {
        if (panel == null)
        {
            Debug.LogWarning("Failed to recycle panel: panel is null");
            return;
        }
        StartCoroutine(ExecutePut(panel, delay));
    }
    private IEnumerator ExecutePut(GameObject panel, float delay)
    {
        yield return new WaitForSeconds(delay);

        if (panel == null)
        {
            yield break; // 提前结束协程
        }

        panel.SetActive(false);

        // 将面板对象放回对象池中
        string panelName = panel.name; // 这里简单地使用面板对象的名称作为标识符

        if (!panelPools.ContainsKey(panelName))
        {
            panelPools[panelName] = new Queue<GameObject>();
        }

        // 将面板从父对象中移除
        panel.transform.SetParent(null);

        // 如果对象池的数量超过了最大限制，则移除队列首部的对象
        if (panelPools[panelName].Count >= maxPoolSize)
        {
            GameObject oldPanel = panelPools[panelName].Dequeue();
            Destroy(oldPanel);
        }

        panelPools[panelName].Enqueue(panel);
    }

    // 检查面板是否已经被添加到对象池中
    public bool IsInPanelPool(GameObject panel)
    {
        foreach (var pair in panelPools)
        {
            if (pair.Value.Contains(panel))
            {
                return true;
            }
        }
        return false;
    }

    // 检查是否需要清理对象池，并在需要时进行清理
    public void CheckAndCleanPool()
    {
        int totalObjects = 0;

        foreach (var pair in panelPools)
        {
            totalObjects += pair.Value.Count;
        }

        if (totalObjects >= maxPoolSize)
        {
            CleanPool(objectsToRemove);
        }
    }
    // 清理对象池，仅移除指定数量的对象
    public void CleanPool(int countToRemove)
    {
        foreach (var pair in panelPools)
        {
            Queue<GameObject> panelQueue = pair.Value;
            for (int i = 0; i < countToRemove && panelQueue.Count > 0; i++)
            {
                GameObject panel = panelQueue.Dequeue();
                Destroy(panel);
            }
        }
    }
    // 清理对象池，移除过期的对象
    public void CleanPoolAll()
    {
        foreach (var pair in panelPools)
        {
            Queue<GameObject> panelQueue = pair.Value;
            while (panelQueue.Count > 0 && !panelQueue.Peek().activeSelf)
            {
                GameObject panel = panelQueue.Dequeue();
                Destroy(panel);
            }
        }
    }
}
