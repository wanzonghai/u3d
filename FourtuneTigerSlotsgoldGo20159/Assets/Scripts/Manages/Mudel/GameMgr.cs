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
        poolMgr.GetObj(gameDate.preName, gameDate.preUrl, (gameObject) => {
            poolMgr.PushObj(gameDate.preName, gameObject);
        });
        poolMgr.GetObj(gameDate.preBtnName, gameDate.preBtnUrl, (gameObject) => {
            poolMgr.PushObj(gameDate.preBtnName, gameObject);
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
        Vector3 _vv3 = new Vector3();
        RectTransform parentRect = parentObj.GetComponent<RectTransform>();
        RectTransform _objRect = _obj.GetComponent<RectTransform>();

        float x1 = parentObj.transform.localPosition.x - _objRect.rect.width-2;
        float x2 = x1 + _objRect.rect.width * 2;

        float y1 = parentObj.transform.localPosition.y + _objRect.rect.height*3/4 ;
        float y2 = y1 - _objRect.rect.height * 2;
  
        _vv3.x = i < 3 ? (x1 + _objRect.rect.width * i) : i < 5 ? x2 : i < 7 ? (x2 - _objRect.rect.width * (i - 4)) : x1;
        _vv3.y = i < 3 ? y1 : i < 5 ? y1 - _objRect.rect.height * (i - 2) : i < 7 ? y2 : (y2 + _objRect.rect.height * (i - 6));
        return _vv3;
    }

    public void  ApplyBtnItemInObj(GameObject parentObj)
    {
        PoolMgr poolMgr = PoolMgr.Getinstance();
        ResMgr resMgr = ResMgr.Getinstance();
        GameDate gameData = GameDate.Getinstance();

        for (int i = 0; i < gameData.proBtnCount; i++)
        {
            int indexI = i + 1;

            poolMgr.GetObj(gameData.preBtnName, gameData.preBtnUrl, (obj) =>
            {
                if (!obj) return;
                _obj = obj;
                _obj.gameObject.name += indexI;
                _obj.transform.SetParent(parentObj.transform);
                Image objSprite = _obj.transform?.GetComponent<Image>();
                objSprite.sprite = GetRes<Sprite>(_obj.gameObject.name, this.obj_sprite);
            });
        }
    }

}
