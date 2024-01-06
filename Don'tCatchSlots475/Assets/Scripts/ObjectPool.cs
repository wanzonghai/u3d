using UnityEngine;
using System.Collections.Generic;

public class ObjectPool
{
    private List<GameObject> objectPool;
    private GameObject prefab;
    private Transform parentTransform;

    public ObjectPool(GameObject prefab, Transform parentTransform, int initialSize)
    {
        this.prefab = prefab;
        this.parentTransform = parentTransform;
        objectPool = new List<GameObject>();

        InitializePool(initialSize);
    }

    private void InitializePool(int initialSize)
    {
        for (int i = 0; i < initialSize; i++)
        {
            GameObject obj = Object.Instantiate(prefab, parentTransform);
            obj.SetActive(false);
            objectPool.Add(obj);
        }
    }

    public GameObject GetObject()
    {
        foreach (GameObject obj in objectPool)
        {
            if (!obj.activeInHierarchy)
            {
                obj.SetActive(true);
                return obj;
            }
        }

        // If no inactive object found, create a new one
        GameObject newObj = Object.Instantiate(prefab, parentTransform);
        objectPool.Add(newObj);
        return newObj;
    }

    public void ReturnObject(GameObject obj)
    {
        obj.SetActive(false);
        obj.transform.SetParent(null); // 将对象从父对象中移除
    }
}
