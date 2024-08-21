using UnityEngine;
using System.Collections.Generic;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Linq;
using System.Collections;
using UnityEngine.Networking;

public class ABDLManager
{
    private static ABDLManager _instance;
    public ABDLManager()
    {
        if (_instance != null) throw new System.Exception("单件实例错误");
        _instance = this;
    }

    public static ABDLManager GetInstance()
    {
        if (_instance != null) return _instance;
        return new ABDLManager();
    }

    private Dictionary<string, DownLoader> _downLoader = new Dictionary<string, DownLoader>();
    private Dictionary<string, string[]> _dependencies = new Dictionary<string, string[]>();

    public DownLoader DownLoader(string path)
    {
        path = path.ToLower();
        if (!_downLoader.ContainsKey(path)) _downLoader.Add(path, new DownLoader(path));
        return _downLoader[path];
    }

    public UnityEngine.Object GetAsset(string path, string sign = null)
    {
        var dl = DownLoader(path);
        if (dl.State == DownLoaderState.None)
        {
            ABDownLoader abdl = null;
            if (string.IsNullOrEmpty(sign)) abdl = new ABDownLoader(path, path);
            else abdl = new ABDownLoader(path, sign);
            abdl.Load();
        }
        else
        {
            if (!string.IsNullOrEmpty(sign)) dl.AddSign(sign);
        }
        return dl.MainAsset;
    }

    public UnityEngine.Object GetAssetByName(string path, string name, string sign = null)
    {
        var dl = DownLoader(path);
        if (dl.State == DownLoaderState.None)
        {
            ABDownLoader abdl = null;
            if (string.IsNullOrEmpty(sign)) abdl = new ABDownLoader(path, path);
            else abdl = new ABDownLoader(path, sign);
            abdl.Load();
        }
        else
        {
            if (!string.IsNullOrEmpty(sign)) dl.AddSign(sign);
        }
        return dl.AssetByName(name);
    }

    public DownLoader GetDownLoader(string path, string sign = null)
    {
        var dl = DownLoader(path);
        if (dl.State == DownLoaderState.None)
        {
            ABDownLoader abdl = null;
            if (string.IsNullOrEmpty(sign)) abdl = new ABDownLoader(path, path);
            else abdl = new ABDownLoader(path, sign);
            abdl.Load();
        }
        else
        {
            if (!string.IsNullOrEmpty(sign)) dl.AddSign(sign);
        }
        return dl;
    }

    public void UnLoadAsset(string path, string sign)
    {
        if (DownLoader(path).State == DownLoaderState.None) return;
        string[] dependencies = GetDependencies(path, true);
        for (int i = 0; i < dependencies.Length; i++)
        {
            DownLoader(dependencies[i]).UnLoad(sign);
        }
    }

    public void UnLoadAsset(string[] path, string sign)
    {
        var dependencies = GetDependencies(path, true);
        for (int i = 0; i < dependencies.Count; i++)
        {
            DownLoader(dependencies[i]).UnLoad(sign);
        }
    }

    public void UnLoad(string[] sign)
    {
        foreach (var dl in _downLoader.Values)
        {
            dl.UnLoad(sign);
        }
    }

    public void UnLoadUnnecessary(string[] sign, string keepStartsWith)
    {
        foreach (var dl in _downLoader.Values)
        {
            dl.UnLoadUnnecessary(sign, keepStartsWith);
        }
    }

    public void Dispose()
    {
        foreach (var dl in _downLoader.Values)
        {
            dl.Dispose();
        }
    }

    public List<string> GetDependencies(string[] paths, bool contain = false)
    {
        List<string> result = new List<string>();
        if (contain) result.AddRange(paths);

        int index = 1;
        string current;
        string[] dependencies;
        Dictionary<string, List<string>> dependent = new Dictionary<string, List<string>>();
        while (index < result.Count + 1)
        {
            current = result[result.Count - index];
            dependencies = GetDependencies(current);
            if (dependencies != null)
            {
                for (int i = 0; i < dependencies.Length; i++)
                {
                    var dep = dependencies[i];
                    if (result.Contains(dep))
                    {
                        if (!dependent.ContainsKey(dep)) dependent.Add(dep, new List<string>());
                        if (!dependent[dep].Contains(current)) dependent[dep].Add(current);
                        if (dependent.ContainsKey(current))
                        {
                            if (dependent[current].Contains(dep)) continue;
                        }
                        int depIndex = result.IndexOf(dep);
                        if (depIndex > result.Count - index)
                        {
                            result.Remove(dep);
                            result.Insert(0, dep);
                            index--;
                        }
                    }
                    else
                    {
                        result.Insert(0, dep);
                    }
                }
            }
            index++;
        }
        return result;
    }

    private string[] GetDependencies(string path, bool contain = false)
    {
        path = path.ToLower();
        if (!_dependencies.ContainsKey(path))
            _dependencies.Add(path, new string[] { });

        if (contain)
        {
            List<string> dependencie = new List<string>();
            dependencie.AddRange(_dependencies[path]);
            dependencie.Add(path);
            return dependencie.ToArray();
        }
        return _dependencies[path];
    }

    private bool _isWrite;
    public IEnumerator WriteDependencies()
    {
        if (!_isWrite && AssetDataPath.IsAssetBundle)
        {
            _isWrite = true;

            Dictionary<string, string[]> dependencie = new Dictionary<string, string[]>();
            string path = GetFullPathByMd5("streamingassets");

            UnityWebRequest request = UnityWebRequestAssetBundle.GetAssetBundle(path);
            yield return request.SendWebRequest();
            if(request.result == UnityWebRequest.Result.ProtocolError)
            {
                Debug.LogError(GetType() + "Error:" + request.error);   
            }
            else
            {
                AssetBundle bundle = (request.downloadHandler as DownloadHandlerAssetBundle).assetBundle;
                AssetBundleManifest manifest = (AssetBundleManifest)bundle.LoadAsset("AssetBundleManifest");
                string[] paths = manifest.GetAllAssetBundles();
                foreach(var p in paths)
                {
                    var dep = manifest.GetAllDependencies(p);
                    dependencie.Add(p, dep);
                }
                foreach (var dep in dependencie)
                {
                    _dependencies.Add(dep.Key, GetAllDependencies(dep.Key, dependencie));
                }
                bundle.Unload(true);
            }
            request.Dispose();
        }
    }

    private string[] GetAllDependencies(string pathRoot, Dictionary<string, string[]> dependencie)
    {
        List<string> calculationList = new List<string>();
        calculationList.Add(pathRoot);
        List<string> findList = new List<string>();
        while(calculationList.Count > 0)
        {
            var path = calculationList[0];
            calculationList.RemoveAt(0);
            if(findList.Contains(path)) continue;
            findList.Add(path);
            if (!dependencie.ContainsKey(path)) continue;
            if (dependencie[path].Length == 0) continue;
            calculationList.AddRange(dependencie[path]);
        }
        findList.RemoveAt(0);
        return findList.ToArray();
	}

    public static string GetFullPathByMd5(string path)
    {
        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
        byte[] hash = md5.ComputeHash(Encoding.UTF8.GetBytes(path));
        string result = "";
        for (int i = 0; i < hash.Length; i++)
        {
            result += hash[i].ToString("x2");
        }
        result = result + ".bytes";
        path = Application.persistentDataPath + "/" + result;
        if (!File.Exists(path))
            path= AssetDataPath.SandPath + "/" + result;
        return path;
    }
}
