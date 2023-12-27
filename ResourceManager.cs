using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResourceManager : MonoBehaviour
{
    private static ResourceManager instance;

    public static ResourceManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = FindObjectOfType<ResourceManager>();

                if (instance == null)
                {
                    GameObject managerObject = new GameObject("ResourceManager");
                    instance = managerObject.AddComponent<ResourceManager>();
                }
            }

            return instance;
        }
    }

    private Dictionary<string, Object> loadedResources = new Dictionary<string, Object>();

    public T LoadResource<T>(string resourcePath) where T : Object
    {
        if (loadedResources.ContainsKey(resourcePath))
        {
            return (T)loadedResources[resourcePath];
        }
        else
        {
            T resource = Resources.Load<T>(resourcePath);

            if (resource != null)
            {
                loadedResources.Add(resourcePath, resource);
                return resource;
            }
            else
            {
                Debug.LogError("Resource not found at path: " + resourcePath);
                return null;
            }
        }
    }

    public void UnloadResource(string resourcePath)
    {
        if (loadedResources.ContainsKey(resourcePath))
        {
            Resources.UnloadAsset(loadedResources[resourcePath]);
            loadedResources.Remove(resourcePath);
        }
        else
        {
            Debug.LogWarning("Trying to unload a resource that is not loaded: " + resourcePath);
        }
    }

    public void UnloadAllResources()
    {
        foreach (var resource in loadedResources)
        {
            Resources.UnloadAsset(resource.Value);
        }

        loadedResources.Clear();
    }

    // Other resource management methods can be added as needed
}
