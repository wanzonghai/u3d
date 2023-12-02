using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using StuctsCom;
using UnityEngine.UI;

public class GameMgr : BaseManager<GameMgr>
{
    /// <summary>
    /// player data;
    /// </summary>
    public SPlayerData playerInfo;
    public Sprite[] obj_sprite = null;
    public Sprite[] res_result = null;
    GameObject _obj = null;

    PoolMgr poolMgr = PoolMgr.Getinstance();
    ResMgr resMgr = ResMgr.Getinstance();
    GameDate gameDate = GameDate.Getinstance();
    //random id
    public int rewardIndex = 0;
    //select id
    public int selectIndex = 0;

    public bool drawReward = false;
    public void init()
    {
        ResMgr resMgr = ResMgr.Getinstance();
        GameDate gameDate = GameDate.Getinstance();

        resMgr.ResourcesLoad();
        this.obj_sprite = resMgr.LoadAll<Sprite>(gameDate.resMainUrl);
        res_result = resMgr.LoadAll<Sprite>(gameDate.resResultUrl);

        playerInfo.name = gameDate.playerName;
        playerInfo.playerScore = gameDate.playerScore; 
    }

    public  void initPoolDic()
    {
        PoolMgr poolMgr = PoolMgr.Getinstance();
        GameDate gameDate = GameDate.Getinstance();
        string preName = gameDate.preUrl.Split("/")[1];
        string preBtnName = gameDate.preBtnUrl.Split("/")[1];
        string preIconName = gameDate.preIconUrl.Split("/")[1];
        poolMgr.GetObj(preName, gameDate.preUrl, (gameObject) => {
            poolMgr.PushObj(preName, gameObject);
        });
        poolMgr.GetObj(preBtnName, gameDate.preBtnUrl, (gameObject) => {
            poolMgr.PushObj(preBtnName, gameObject);
        });
        poolMgr.GetObj(preIconName, gameDate.preIconUrl, (gameObject) => {
            poolMgr.PushObj(preIconName, gameObject);
        });

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
        string preName = gameDate.preUrl.Split("/")[1];
        for (int i = 0; i < gameDate.proCount; i++)
        {
            int indexI = i + 1;

            poolMgr.GetObj(preName, gameDate.preUrl, (obj) =>
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
        Vector3 _vv3 = new Vector3();
        RectTransform parentRect = parentObj.GetComponent<RectTransform>();
        RectTransform _objRect = _obj.GetComponent<RectTransform>();

        float x1 = parentObj.transform.localPosition.x - parentRect.rect.width / 2 + _objRect.rect.width / 2+ 12;
        float x2 = x1 + 2f * (_objRect.rect.width +6);
        
        float y1 = parentObj.transform.localPosition.y + parentRect.rect.height / 2 - _objRect.rect.height / 2 - 54;
        float y2 = y1 - 2f * (_objRect.rect.height + 6);
       
        _vv3.x = i < 3 ? (x1 + (_objRect.rect.width + 6) * i) : i < 5 ? x2 : i < 7 ? (x2 - (_objRect.rect.width + 6) * (i - 4)) : x1;
        _vv3.y = i < 3 ? y1 : i < 5 ? y1 - (_objRect.rect.height+6) * (i - 2) : i < 7 ? y2: (y2 + (_objRect.rect.height + 6) * (i - 6));
        return _vv3;
    }

    public void  ApplyBtnItemInObj(GameObject parentObj)
    {
        string preBtnName = gameDate.preUrl.Split("/")[1];
        for (int i = 0; i < gameDate.proBtnCount; i++)
        {
            int indexI = i + 1;

            poolMgr.GetObj(preBtnName, gameDate.preBtnUrl, (obj) =>
            {
                if (!obj) return;
                _obj = obj;
                _obj.gameObject.name += indexI;
                _obj.transform.SetParent(parentObj.transform);
                Image objSprite = _obj.transform.GetChild(0)?.GetComponent<Image>();
                objSprite.sprite = GetRes<Sprite>(_obj.gameObject.name, this.obj_sprite);
            });
        }
    }

    public void ApplyIconItemInObj(GameObject parentObj)
    {
        string preIconName = gameDate.preIconUrl.Split("/")[1];
        for (int i = 0; i < gameDate.proIconCount; i++)
        {
            poolMgr.GetObj(preIconName, gameDate.preIconUrl, (obj) =>
            {
                if (!obj) return;
                _obj = obj;
                _obj.transform.SetParent(parentObj.transform);
            });
        }
    }

}
