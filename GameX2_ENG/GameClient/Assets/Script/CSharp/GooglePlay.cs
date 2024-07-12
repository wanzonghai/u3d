using XLua;
using GoogleMobileAds.Api;
using UnityEngine;
using GoogleMobileAds.Api.AdManager;

public class GooglePlay:MonoBehaviour
{
    private static GooglePlay _instance;
    public static GooglePlay GetInstance()
    {
        if(_instance == null)
        {
            GameObject go = new GameObject("GooglePlay");
            _instance = go.AddComponent<GooglePlay>();
            DontDestroyOnLoad(go);
        }
        return _instance;
    }
    private bool initing = false;
    private LuaFunction func;

    public bool playing = false;

    private string _adUnitId = "ca-app-pub-4947796803467708/7419082485";

    private RewardedAd _rewardedAd;

    void Start()
    {
        Init();
    }

    //谷歌广告初始化
    public void Init()
    {
        if(initing) return;
        initing = true;
        MobileAds.Initialize((InitializationStatus status) => 
        {
            LoadRewardedAd();
        });
    }

    /// <summary>
    /// Loads the rewarded ad.
    /// </summary>
    public void LoadRewardedAd()
    {
        if (_rewardedAd != null)
        {
            _rewardedAd.Destroy();
            _rewardedAd = null;
        }

        Debug.Log("Loading the rewarded ad.");

        var adRequest = new AdManagerAdRequest();

        RewardedAd.Load(_adUnitId, adRequest,
            (RewardedAd ad, LoadAdError error) =>
            {
                if (error != null || ad == null)
                {
                    Debug.LogError("Rewarded ad failed to load an ad " +
                                    "with error : " + error);
                    return;
                }

                Debug.Log("Rewarded ad loaded with response : "
                            + ad.GetResponseInfo());

                _rewardedAd = ad;
                RegisterReloadHandler(ad);
            });
    }

     /// <summary>
    /// 预加载RewardedAd
    /// </summary>
    /// <param name="ad"></param>
    private void RegisterReloadHandler(RewardedAd ad)
    {
        ad.OnAdFullScreenContentClosed += () =>
        {
            LoadRewardedAd();
        };
        ad.OnAdFullScreenContentFailed += (AdError error) =>
        {
            LoadRewardedAd();
        };
    }

    
    public void Play(LuaFunction func)
    {
        this.func = func;
        if(playing) return;
        if(_rewardedAd == null) return;
        ShowRewardedAd();
    }

    public void ShowRewardedAd()
    {
        if (_rewardedAd != null && _rewardedAd.CanShowAd())
        {
            playing = true;
            TotalManager.GetInstance().LuaCommand.Call("Advertisement",true);
            _rewardedAd.Show((Reward reward) =>
            {  
                if(this.func != null)
                {
                    this.func.Call();
                    this.func = null;
                }
                playing = false;
                TotalManager.GetInstance().LuaCommand.Call("Advertisement",false);
            });
        }
    }

    void Update()
    {
        if(this.func != null && !playing)
        {
            ShowRewardedAd();
        }
    }

    void OnDestroy()
    {
        if (_rewardedAd != null)
        {
            _rewardedAd.Destroy();
            _rewardedAd = null;
        }
    }
}
