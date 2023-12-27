// 这个通用对象池系统支持任何继承自 MonoBehaviour 的对象，并且你可以为对象池设置初始大小。
// 在需要对象时，使用 GetObject 方法从池中获取对象，使用 ReturnObject 方法将对象放回池中。
// 这样可以有效地重复使用对象，减少对象创建和销毁的开销。

using UnityEngine;
using System.Collections.Generic;

public class ObjectPool<T> where T : Component
{
    private List<T> objectPool;
    private T prefab;
    private Transform parentTransform;

    public ObjectPool(T prefab, Transform parentTransform, int initialSize)
    {
        this.prefab = prefab;
        this.parentTransform = parentTransform;
        objectPool = new List<T>();

        InitializePool(initialSize);
    }
    private void InitializePool(int initialSize)
    {
        for (int i = 0; i < initialSize; i++)
        {
            T obj = Object.Instantiate(prefab, parentTransform);
            obj.gameObject.SetActive(false);
            objectPool.Add(obj);
        }
    }

    public T GetObject()
    {
        foreach (T obj in objectPool)
        {
            if (!obj.gameObject.activeInHierarchy)
            {
                obj.gameObject.SetActive(true);
                return obj;
            }
        }

        // If no inactive object found, create a new one
        T newObj = Object.Instantiate(prefab, parentTransform);
        objectPool.Add(newObj);
        return newObj;
    }

    public void ReturnObject(T obj)
    {
        obj.gameObject.SetActive(false);
    }
}





>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// �� ClickAndDestroyGame ��������һ�� ObjectPool ����
private ObjectPool<GameObject> targetObjectPool;

// �� Start �����г�ʼ�������
private void Start()
{
    // ���� targetPrefab �����Ŀ��Ԥ����
    targetObjectPool = new ObjectPool<GameObject>(targetPrefab, spawnArea, maxTargets);
    InitView();
    SpawnTargets(maxTargets);
}

// �޸� GetNextAvailableTarget ����
private GameObject GetNextAvailableTarget()
{
    GameObject target = targetObjectPool.GetObject();
    ResetTarget(target);
    return target;
}

// �޸� OnTargetClick ����
private void OnTargetClick(GameObject clickedTarget)
{
    GameObject clickEffect = targetObjectPool.GetObject();
    clickEffect.transform.position = clickedTarget.transform.position;
    clickEffect.SetActive(true);
    Destroy(clickEffect, 1f);

    score += 10;
    scoreText.text = "Marke:" + score;

    if (score % victoryScoreMultiplier == 0)
    {
        if (victoryScreen != null)
        {
            victoryScreen.SetActive(true);
            Invoke("HideVictoryScreen", 1.5f);
        }
    }

    targetObjectPool.ReturnObject(clickedTarget);
    int numberOfTargetsClick = Random.Range(1, Mathf.Min(maxTargets + 1, targetObjectPool.Count + 1));
    SpawnTargets(numberOfTargetsClick);
}


>>>>>>>>>>>>>>>>>
public class ExampleUsage : MonoBehaviour
{
    public Transform spawnPoint;
    public GameObject prefab;

    private ObjectPool<GameObject> objectPool;

    private void Start()
    {
        objectPool = new ObjectPool<GameObject>(prefab, 5, transform);
        SpawnObject();
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            SpawnObject();
        }
    }

    private void SpawnObject()
    {
        GameObject obj = objectPool.GetObject();
        obj.transform.position = spawnPoint.position;
        // 可以添加其他初始化逻辑
    }
}

