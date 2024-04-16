using System;
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
    public void QuitGame()
    {
        // 退出游戏
        Application.Quit();
    }
}