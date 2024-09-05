using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.IO;
using System.Text;
using UnityEngine.Networking;

public delegate void DownLoaderComplete(DownLoader downLoader);
public class DownLoader
{
    private TotalManager _totalManager;

    /// <summary>
    /// 是否使用bundle资源
    /// </summary>
    private bool _isBundle = true;

    /// <summary>
    /// 资源的相对路径
    /// </summary>
    private string _path;

    /// <summary>
    /// 资源路径的md5码版本
    /// </summary>
    private string _md5Path;

    /// <summary>
    /// 对应的bundle路径（目前资源路径用MD5简单加密，加载bundle的时候是用的绝对路径）
    /// </summary>
    private string _bundlePath;

    private AssetBundle _assetBundle;
    private Dictionary<string, List<DownLoaderComplete>> _completes = new Dictionary<string, List<DownLoaderComplete>>();

    /// <summary>
    /// 资源被引用标记的列表，列表长度为0时，该资源未被使用
    /// </summary>
    /// <typeparam name="string"></typeparam>
    /// <returns></returns>
    private List<string> _sign = new List<string>();

    /// <summary>
    /// 加载器的状态
    /// </summary> <summary>
    private DownLoaderState _state = DownLoaderState.None;

    /// <summary>
    /// 是否是关卡
    /// </summary>
    private bool _isLevel;

    /// <summary>
    /// 是否同步加载,框架层允许业务层自己决定使用同步还是异步方式加载资源，不过底层留一个处理，防止后面有需要忽略异步的地方，目前暂定动态图集里强制同步加载
    /// </summary>
    private bool _synchro;


    private bool _isLoadAll;
    private bool _unload = true;

    //根据资源类型，决定要不要加载MainAsset
    public static List<string> mainAssetExtensions = new List<string>(new string[] { ".prefab", ".anim" });
    public static List<string> mainAssetDirectories = new List<string>(new string[] { "sound/" });
    private bool _isLoadMainAsset = false;

    private Object _mainAsset;
    private Object[] _allAssets;
    private HotFixManager _hotFixManager;
    public DownLoader(string path)
    {
        _path = path;
        _md5Path = GetStringByMd5(_path);
        _totalManager = TotalManager.GetInstance();
        _hotFixManager = HotFixManager.GetInstance();

        string extension = System.IO.Path.GetExtension(path);
        if (extension.Equals(".unity"))
            _isLevel = true;
        else if (path.StartsWith("atlas/dynamic/"))
        {
            _synchro = true;
            _isLoadAll = true;
        }
        else
            this.CheckLoadMainAsset(extension);

        if (!AssetDataPath.IsAssetBundle) _isBundle = false;
    }
    /// <summary>
    /// 添加引用标签
    /// </summary>
    /// <param name="sign"></param>
    public void AddSign(string sign)
    {
        if (!_sign.Contains(sign)) _sign.Add(sign);
    }

    public void Load(DownLoaderComplete complete, bool async, string sign)
    {
        async = true;
        if (!_completes.ContainsKey(sign)) _completes.Add(sign, new List<DownLoaderComplete>());
        AddSign(sign);
        _unload = false;
        switch (_state)
        {
            case DownLoaderState.None:
                _completes[sign].Add(complete);

                _state = DownLoaderState.Running;
                if (async) _totalManager.StartCoroutine(AsyncDownLoader());
                else DownLoad();
                break;
            case DownLoaderState.Running:
                _completes[sign].Add(complete);
                break;
            case DownLoaderState.Complete:
                complete(this);
                break;
        }
    }

    private void DownLoad()
    {
        if (_isBundle)
        {
            try
            {
                _assetBundle = AssetBundle.LoadFromFile(BundlePath, 0, 7);
                if (_assetBundle && !_isLevel)
                {
                    if (_isLoadAll)
                    {
                        _allAssets = _assetBundle.LoadAllAssets();
                        _mainAsset = _allAssets[0];
                    }
                    else if (_isLoadMainAsset)
                    {
                        _mainAsset = _assetBundle.LoadAsset(_assetBundle.GetAllAssetNames()[0]);
                    }
                }
            }
            catch { }
        }
        else
        {
            if (_isLoadAll)
            {
                _allAssets = Resources.LoadAll(_path.Remove(_path.IndexOf('.')));
                if (!_isLevel && _allAssets.Length > 0) _mainAsset = _allAssets[0];
            }
            else _mainAsset = Resources.Load(_path.Remove(_path.IndexOf('.')));
        }
        Completes();
    }

    private IEnumerator AsyncDownLoader()
    {
        if (_isBundle)
        {
            UnityWebRequest request = UnityWebRequestAssetBundle.GetAssetBundle(BundlePath);
            yield return request.SendWebRequest();
            // 加载本地的 AssetBundle
            _assetBundle = AssetBundle.LoadFromFile(BundlePath);
            if (request.result == UnityWebRequest.Result.ProtocolError)
            {
                Debug.LogError(GetType() + "Error:" + request.error);
            }
            else
            {
                _assetBundle = (request.downloadHandler as DownloadHandlerAssetBundle).assetBundle;
                if (_assetBundle && !_isLevel)
                {
                    if (_isLoadAll)
                    {
                        var req = _assetBundle.LoadAllAssetsAsync();

                        yield return req;

                        _allAssets = req.allAssets;
                        _mainAsset = _allAssets[0];
                    }
                    else if (_isLoadMainAsset)
                    {
                        var req = _assetBundle.LoadAssetAsync(_assetBundle.GetAllAssetNames()[0]);

                        yield return req;

                        _mainAsset = req.asset;
                    }
                }
            }
        }
        else
        {
            if (_isLoadAll)
            {
                _allAssets = Resources.LoadAll(_path.Remove(_path.IndexOf('.')));
                if (!_isLevel && _allAssets.Length > 0) _mainAsset = _allAssets[0];
            }
            else
            {
                ResourceRequest request = Resources.LoadAsync<Object>(_path.Remove(_path.IndexOf('.')));
                yield return request;
                _mainAsset = request.asset;
            }
        }
        Completes();
    }

    public void UnLoad(string[] sign)
    {
        if (_state == DownLoaderState.None) return;
        for (int i = 0; i < sign.Length; i++)
        {
            _sign.Remove(sign[i]);
            _completes.Remove(sign[i]);
        }
        if (_sign.Count > 0 || _state == DownLoaderState.None) return;
        UnLoad();
    }

    public void UnLoad(string sign)
    {
        _sign.Remove(sign);
        _completes.Remove(sign);
        if (_sign.Count > 0 || _state == DownLoaderState.None) return;
        UnLoad();
    }

    public void UnLoadUnnecessary(string[] sign, string keepStartsWith)
    {
        if (_state == DownLoaderState.None) return;
        List<string> ls = new List<string>();
        for (int i = 0; i < _sign.Count; i++)
        {
            if (sign.Contains(_sign[i]) || _sign[i].StartsWith(keepStartsWith)) ls.Add(_sign[i]);
            else _completes.Remove(_sign[i]);
        }
        _sign = ls;
        if (ls.Count <= 0) UnLoad();
    }

    public void Dispose()
    {
        _sign.Clear();
        UnLoad();
    }

    private void UnLoad()
    {
        _completes.Clear();

        _unload = true;
        if (_state == DownLoaderState.Complete) UnLoadAssetBundle();
    }

    private void UnLoadAssetBundle()
    {
        L.Log("UnLoad: " + _path);
        _state = DownLoaderState.None;
        if (_assetBundle != null) _assetBundle.Unload(true);
        _assetBundle = null;
        _mainAsset = null;
        _allAssets = null;
        _assetByName = null;
    }

    private IEnumerator HttpWebDownLoadBytes(byte[] bytes)
    {
        AssetBundleCreateRequest request = AssetBundle.LoadFromMemoryAsync(bytes);
        yield return request;
        _assetBundle = request.assetBundle;
        if (_assetBundle && !_isLevel)
        {
            AssetBundleRequest req = _assetBundle.LoadAssetAsync(_assetBundle.GetAllAssetNames()[0]);
            yield return req;
            _mainAsset = req.asset;
        }
        Completes();
    }

    private List<DownLoaderComplete> _dlFunc = new List<DownLoaderComplete>();
    private void Completes()
    {
        if (_mainAsset == null && _isLoadMainAsset)
            L.LogError("DownLoaderError:" + _path);
        else
            L.Log("DownLoader: " + _path);

        _state = DownLoaderState.Complete;
        if (_unload)
        {
            UnLoad();
            return;
        }

        foreach (var cs in _completes.Values)
        {
            for (int i = 0; i < cs.Count; i++)
            {
                if (cs[i] != null) _dlFunc.Add(cs[i]);
            }
        }
        _completes.Clear();
        for (int i = 0; i < _dlFunc.Count; i++)
        {
            _dlFunc[i](this);
        }
        _dlFunc.Clear();
    }

    private Dictionary<string, Object> _assetByName;

    public Object AssetByName(string name)
    {
        if (_allAssets == null) return null;
        if (_assetByName == null)
        {
            _assetByName = new Dictionary<string, Object>();
            foreach (var i in _allAssets)
            {
                if (_assetByName.ContainsKey(i.name)) continue;
                _assetByName.Add(i.name, i);
            }
        }
        if (!_assetByName.ContainsKey(name)) return null;
        return _assetByName[name];
    }

    public Object MainAsset
    {
        get
        {
            if (_mainAsset == null && _assetBundle != null)
            {
                _mainAsset = _assetBundle.LoadAsset(_assetBundle.GetAllAssetNames()[0]);
            }

            return _mainAsset;
        }
    }

    public string Path
    {
        get { return _path; }
    }

    public DownLoaderState State
    {
        get { return _state; }
    }

    public AssetBundle AssetBundle
    {
        get { return _assetBundle; }
    }

    public bool IsLoadAll
    {
        set { _isLoadAll = value; }
    }

    public string BundlePath
    {
        get
        {
            //确定本地存在该资源以后判断资源地址
            if (string.IsNullOrEmpty(_bundlePath))
            {
                _bundlePath = Application.persistentDataPath + "/" + _md5Path;
                if (!File.Exists(_bundlePath))
                    _bundlePath = AssetDataPath.SandPath + "/" + _md5Path;//c中文文件夹下读文件失败bug
            }
            return _bundlePath;
        }
    }

    static MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
    private string GetStringByMd5(string str)
    {
        byte[] hash = md5.ComputeHash(Encoding.UTF8.GetBytes(str));
        string result = "";
        for (int i = 0; i < hash.Length; i++)
        {
            result += hash[i].ToString("x2");
        }
        return result + ".bytes";
    }


    private void CheckLoadMainAsset(string extension)
    {
        int count = mainAssetExtensions.Count;
        for (int i = 0; i < count; i++)
        {
            if (extension.Equals(mainAssetExtensions[i]))
            {
                _isLoadMainAsset = true;
                return;
            }
        }

        count = mainAssetDirectories.Count;
        for (int i = 0; i < count; i++)
        {
            if (_path.StartsWith(mainAssetDirectories[i]))
            {
                _isLoadMainAsset = true;
                return;
            }
        }
    }
}

public enum DownLoaderState
{
    Running,
    Complete,
    None
}
