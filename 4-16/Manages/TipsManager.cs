using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TipsManager : Singleton<TipsManager>
{
    private Dictionary<string, object> parameters = new Dictionary<string, object>();
    // 方法用于显示提示面板
    public void ShowTipsPanel(Transform parentObject, string key, object value)
    {
        // 合并传入的参数和现有的参数，如果传入的参数不为空
        SetPanelParameter(key, value);

        // 调用 PanelMgr 中的 ShowPanel 方法，并传递参数字典
        App.PanelMgr.ShowPanel(ResPath.BundleURL_panel, ResPath.Panel_tips, parentObject, null, parameters);

       
    }
    // 方法用于获取面板参数
    public Dictionary<string, object> GetPanelParameters()
    {
        return parameters;
    }

    // 方法用于设置面板参数
    public void SetPanelParameter(string key, object value)
    {
        if (parameters.ContainsKey(key))
        {
            parameters[key] = value;
        }
        else
        {
            parameters.Add(key, value);
        }
    }
}