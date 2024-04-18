using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;

public class PanelManager : Singleton<PanelManager>
{
    private GameObject panel;
    private Transform parent;
    // 加载并显示面板
    public void ShowPanel(string bundlePath, string panelName, Transform parentObject = null, Action<GameObject> onPanelLoaded = null, Dictionary<string, object> parameters = null)
    {
        // 在显示新面板之前，先隐藏并回收所有隐藏的面板
        //RecycleHiddenPanels(parentObject);
        // 实例化面板
        parent = parentObject;
        PanelObjectPool.Instance.InstantiatePanel(bundlePath, panelName, parent, (panelObject) =>
        {
            panel = panelObject;
            if (panel != null && parent != null)
            {
                // 检查是否有激活的面板实例存在
                // 将面板设置为激活状态并放置在指定的父对象下
                panel.SetActive(true);
                panel.transform.SetParent(parent);

                // Get the panel component attached to the panel object
                PanelBase panelComponent = panelObject.GetComponent<PanelBase>();
                // Call the InitializePanel method with the provided parameters
                panelComponent?.InitializePanel(parameters);

            }
            else
            {
                Debug.LogWarning("Failed to show panel at path");
            }

            // 调用传递的回调函数，在面板加载完成后执行后续操作
            onPanelLoaded?.Invoke(panel);
        });
    }
    public void RecycleHiddenPanels(Transform parent)
    {
        if (parent == null)
        {
            return;
        }

        // 遍历父对象下所有子对象
        foreach (Transform child in parent)
        {
            // 检查子对象是否被添加到对象池中
            if (App.panelPool.IsInPanelPool(child.gameObject))
            {
                // 检查子对象是否真正隐藏
                if (child.gameObject.activeSelf == false)
                {
                    // 回收到对象池中
                    HidePanel(child.gameObject);
                }
            }
        }
    }
  
    private void onPanelInstantiated(GameObject panelObject)
    {
        panel = panelObject;
        if (panel != null && parent != null)
        {
            // 设置面板的父级对象
            panel.transform.SetParent(parent);
            // 显示面板
            panel.SetActive(true);
        }
        else
        {
            Debug.LogWarning("Failed to show panel at path");
        }
    }
    // 示例方法，用于隐藏并放回对象池中的面板
    public void HidePanel(GameObject panel)
    {
        if (panel == null)
        {
            Debug.LogWarning("Failed to hide panel: panel is null");
            return;
        }
        // 将面板从父对象中移除
        panel.transform.SetParent(null);
        // 将面板放回对象池中
        PanelObjectPool.Instance.RecyclePanel(panel,0.3f);
    }
    // 示例方法，用于销毁对象池中的面板
    public void CheckAndCleanPool()
    {
        PanelObjectPool.Instance.CheckAndCleanPool();
    }
    // 示例方法，用于销毁对象池中的所有面板
    public void DestroyAllPanels()
    {
        PanelObjectPool.Instance.CleanPoolAll();
    }
}