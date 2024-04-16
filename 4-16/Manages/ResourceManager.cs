using System.Collections.Generic;
using UnityEngine;

public class ResourceManager : Singleton<ResourceManager>
{
    // 存储已加载的资源
    private Dictionary<string, Object> loadedResources = new Dictionary<string, Object>();

    // 加载资源
    public T LoadResource<T>(string resourcePath) where T : Object
    {
        // 验证资源路径的有效性
        if (string.IsNullOrEmpty(resourcePath))
        {
            Debug.LogWarning("Failed to load resource: invalid resource path");
            return null;
        }
        // 从资源路径中获取资源名称
        string resourceName = GetResourceName(resourcePath);
        try
        {
            if (loadedResources.ContainsKey(resourceName))
            {
                return loadedResources[resourceName] as T;
            }
            T resource = Resources.Load<T>(resourcePath);
            if (resource != null)
            {
                loadedResources.Add(resourceName, resource);
            }
            return resource;
        }
        catch (System.Exception e)
        {
            Debug.LogError("Failed to load resource: " + e.Message);
            return null;
        }
    }
    // 加载目录中的所有资源
    public T[] LoadAllResources<T>(string folderPath) where T : Object
    {
        T[] resources = Resources.LoadAll<T>(folderPath);
        foreach (T resource in resources)
        {
            if (!loadedResources.ContainsKey(resource.name))
            {
                loadedResources.Add(resource.name, resource);
            }
        }
        return resources;
    }
    // 卸载资源（如果需要）
    public void UnLoadResource(string resourceName)
    {
        if (string.IsNullOrEmpty(resourceName))
        {
            Debug.LogWarning("Failed to unload resource: invalid resource name");
            return;
        }
        if (loadedResources.ContainsKey(resourceName))
        {
            Object resource = loadedResources[resourceName];
            Resources.UnloadAsset(resource);
            loadedResources.Remove(resourceName);
        }
        else
        {
            Debug.LogWarning("Failed to unload resource: resource not found");
        }
    }
    // 卸载所有资源
    public void UnloadAllResources()
    {
        foreach (var kvp in loadedResources)
        {
            Resources.UnloadAsset(kvp.Value);
        }
        loadedResources.Clear();
    }

    // 获取资源路径中的最后一个名称
    public string GetResourceName(string resourcePath)
    {
        string[] pathParts = resourcePath.Split('/');
        return pathParts[pathParts.Length - 1];
    }
}