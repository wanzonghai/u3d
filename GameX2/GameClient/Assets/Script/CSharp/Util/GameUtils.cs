using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using UnityEngine;
using UnityEngine.Networking;

public class GameUtils
{
    private static AssetBundle ConfigBundle;
    private static AssetBundle CodeBundle;
    private static List<string> ConfigFileName;
    private static List<string> CodeFileName;
    private static bool HaveBundle;

    public static IEnumerator LoadABBytes()
    {
        HaveBundle = true;
        if (AssetDataPath.IsScriptBundle)
        {
            UnityWebRequest webRequest = UnityWebRequestAssetBundle.GetAssetBundle(GetWWWFullPathByMd5("script/config.bytes"));
            yield return webRequest.SendWebRequest();
            ConfigBundle = (webRequest.downloadHandler as DownloadHandlerAssetBundle).assetBundle;//AssetBundle.LoadFromMemory(ABDecryption(webRequest.downloadHandler.data));
            webRequest.Dispose();
            yield return new WaitForEndOfFrame();
            webRequest = UnityWebRequestAssetBundle.GetAssetBundle(GetWWWFullPathByMd5("script/lua.bytes"));
            yield return webRequest.SendWebRequest();
            CodeBundle = (webRequest.downloadHandler as DownloadHandlerAssetBundle).assetBundle;
            webRequest.Dispose();
            yield return new WaitForEndOfFrame();
        }
        else
        {
            ConfigFileName = new List<string>();
            ConfigFileName.AddRange(Directory.GetFiles("Assets/Script/Config/", "*.bytes", SearchOption.AllDirectories));
            for (int i = 0; i < ConfigFileName.Count; i++)
            {
                ConfigFileName[i] = ConfigFileName[i].Replace("\\", "/");
            }
            CodeFileName = new List<string>();
            CodeFileName.AddRange(Directory.GetFiles("Assets/Script/Lua/", "*.bytes", SearchOption.AllDirectories));
            for (int i = 0; i < CodeFileName.Count; i++)
            {
                CodeFileName[i] = CodeFileName[i].Replace("\\", "/");
            }
        }
    }
    public static void UnLoadABBytes()
    {
        if (ConfigBundle != null) ConfigBundle.Unload(true);
        if (CodeBundle != null) CodeBundle.Unload(true);
        ConfigBundle = null;
        CodeBundle = null;
        ConfigFileName = null;
        CodeFileName = null;
        HaveBundle = false;
    }
    public static byte[] ReadAllBytesByBundle(ref string path)
    {
        if (!HaveBundle) return null;
        if (path.StartsWith("Config/"))
        {
            if (ConfigBundle == null)
            {
                path = "Assets/Script/" + path + ".bytes";
                if (ConfigFileName.Contains(path)) return File.ReadAllBytes(path);
                else throw new Exception("NotFind: " + path);
            }
            else{

                path = "Assets/Script/" + path + ".bytes";
                return ((TextAsset)ConfigBundle.LoadAsset(path)).bytes;
            }
        }
        else
        {
            if (CodeBundle == null)
            {
                path = "Assets/Script/Lua/" + path + ".bytes";
                if (CodeFileName.Contains(path)) return File.ReadAllBytes(path);
                else throw new Exception("NotFind: " + path);
            }
            else
            {
                path = "Assets/Script/Lua/" + path + ".bytes";
                return ((TextAsset)CodeBundle.LoadAsset(path)).bytes;
            }
             
        }
    }
    public static string GetWWWFullPathByMd5(string path)
    {
        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
        byte[] hash = md5.ComputeHash(Encoding.UTF8.GetBytes(path));
        string result = "";
        for (int i = 0; i < hash.Length; i++)
        {
            result += hash[i].ToString("x2");
        }
        result = result + ".bytes";
        if (File.Exists(Application.persistentDataPath + "/" + result))
            path = "file://" + Application.persistentDataPath + "/" + result;
        else
        {
            path = AssetDataPath.StreamingAssetsPath//pc中文文件夹下读文件失败处理
                + result;
        }
        return path;
    }
    
    public static byte[] ABDecryption(byte[] bt)
    {
        /*string key = "abcdefg67257dfgsf2828gfdgdfrr5343";
        byte[] keyByte = System.Text.Encoding.ASCII.GetBytes(key);
        int keyByteLength = keyByte.Length;
        var len = bt.Length;
        byte[] bytes = new byte[len - 7];
        for (int i = 7; i < len; i++)
            bytes[i - 7] = (byte)(bt[i] ^ keyByte[i % keyByteLength]);*/
        return bt;
    }

    public static string GetJson(string sFind, string sJson)
    {
        if (sJson == null) return "";
        sFind = '"' + sFind + "\":\"";
        var iFind = sJson.IndexOf(sFind);
        if (iFind < 0) return "";
        var s = sJson.Substring(iFind + sFind.Length);
        iFind = s.IndexOf('"');
        if (iFind < 0) return "";
        s = s.Substring(0, iFind);
        return s.Replace("\\/", "/");
    }

    //http活动
    ///<summary>读Base64格式文本</summary>
    public static string GetBase64(byte[] bytes) { return Convert.ToBase64String(bytes); }

    ///<summary>读x2格式文本</summary>
    public static string GetStrX2(byte[] bytes)
    {
        var sb = new StringBuilder();
        for (int i = 0; i < bytes.Length; i++)
            sb.Append(bytes[i].ToString("x2"));
        return sb.ToString();
    }

    ///<summary>读文本的bytes[]</summary>
    public static byte[] GetStrByte(string s) { return Encoding.UTF8.GetBytes(s); }

    ///<summary>读SHA256码</summary>
    public static string GetSHA256(string s)
    {
        var bytes = GetStrByte(s);
        var hash = SHA256Managed.Create().ComputeHash(bytes);
        return GetStrX2(hash);
    }

    ///<summary>读HMACSHA256码(bytesS原文,byteKey秘钥)</summary>
    public static byte[] GetHMACSHA256(byte[] bytesS, byte[] byteKey)
    {
        byte[] bytes = null;
        using (var mac = new HMACSHA256(byteKey))
            bytes = mac.ComputeHash(bytesS);
        return bytes;
    }

    public static void SetInt(string key,int value)
    {
        PlayerPrefs.SetInt(key,value);
    }

    public static int GetInt(string key,int value = 0)
    {
        return PlayerPrefs.GetInt(key,value);
    }

    public static void SetFloat(string key,float value)
    {
        PlayerPrefs.SetFloat(key,value);
    }

    public static float GetFloat(string key,float value = 0)
    {
        return PlayerPrefs.GetFloat(key,value);
    }

    /// <summary>20160524  物体是否空
    public static bool IsNull(UnityEngine.Object obj) { return obj==null; }
}