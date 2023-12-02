using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using StuctsCom;

public class GameMgr : BaseManager<GameMgr>
{
    /// <summary>
    /// player data;
    /// </summary>
    public SPlayerData playerInfo;
    public Sprite[] obj_sprite = null;
    GameObject _obj = null;
    //random id
    public int rewardIndex = 0;
    //select id
    public int selectIndex = 0;

    public bool drawReward = false;
    public void init()
    {
        ResMgr resMgr = ResMgr.Getinstance();
        GameDate gameDate = GameDate.Getinstance();
        MusicMgr mgr = MusicMgr.Getinstance();

        resMgr.ResourcesLoad();
        this.obj_sprite = resMgr.LoadAll<Sprite>(gameDate.resMainUrl);

        mgr.PreLoadRes();

        playerInfo.name = gameDate.playerName;
        playerInfo.playerScore = gameDate.playerScore; 
    }

    public  void initPoolDic()
    {
        PoolMgr poolMgr = PoolMgr.Getinstance();
        GameDate gameDate = GameDate.Getinstance();
        for (int i = 0; i < 3; i++)
        {
            poolMgr.GetObj(gameDate.preName, gameDate.preUrl, (gameObject) =>{
                poolMgr.PushObj(gameDate.preName, gameObject);
            });
        }

    }

    public T GetRes<T>(string resName,T[] resArr ) where T : Object
    {
        T _res = default(T);
        for (int i = 0; i < resArr.Length; i++)
        {
            if(resArr[i].name== resName)
            {
                _res = resArr[i];
            }
        }
        return _res;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="itemCount"></param>
    /// <param name="parentObj"></param>
    /// <param name="itemData"></param>
    public void ApplyItemInObj(GameObject parentObj, SItemData itemData)
    {
        PoolMgr poolMgr = PoolMgr.Getinstance();
        ResMgr resMgr = ResMgr.Getinstance();
        GameDate gameData = GameDate.Getinstance();

        for (int i = 0; i < gameData.proCount; i++)
        {
            int indexI = i + 1;

            poolMgr.GetObj(gameData.preName, gameData.preUrl, (obj) =>
            {
                if (!obj) return;
                _obj = obj;
                itemData.index = indexI;
                _obj.transform.GetComponent<ItemProp>().ChangeData(itemData);
                _obj.transform.SetParent(parentObj.transform);
                _obj.transform.SetLocalPositionAndRotation(locationItem(indexI - 1, parentObj, _obj), new Quaternion(0, 0, 0, 0));
            });
        }
    }

    private Vector3 locationItem(int i, GameObject parentObj, GameObject _obj)
    {
        RectTransform parentRect = parentObj.GetComponent<RectTransform>();
        RectTransform _objRect = _obj.GetComponent<RectTransform>();
        float x1 = parentObj.transform.localPosition.x - parentRect.rect.width / 2 + _objRect.rect.width / 2+35;
        float x2 = x1 + 3 * parentRect.rect.width/4 -25;
        float y1 = 254;
        float y2 = y1 - 3 * parentRect.rect.height / 4+25;
        Vector3 _vv3 = new Vector3();
        _vv3.x = i < 4 ? (x1 + _objRect.rect.width * i) : i < 6 ? x2 : i < 8 ? (x2 - _objRect.rect.width * (i - 5)) : x1;
        _vv3.y = i < 4 ? y1 : i == 4 ? 0 : i >= 5 && i < 9 ? -251 : 0;
        return _vv3;
    }

}
