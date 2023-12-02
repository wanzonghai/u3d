using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
/// <summary>
/// ��������  �����е�һ������
/// </summary>
public class PoolData
{
    //������ ������صĸ��ڵ�
    public GameObject fatherObj;
    //���������
    public List<GameObject> poolList;

    public PoolData(GameObject obj, GameObject poolObj)
    {
        //�����ǵĳ��� ����һ�������� ���Ұ�����Ϊ����pool(�¹�)�����������
        fatherObj = new GameObject(obj.name);
        fatherObj.transform.parent = poolObj.transform;
        poolList = new List<GameObject>() { };
        PushObj(obj);
    }
    /// <summary>
    /// ���������� ѹ������
    /// </summary>
    /// <param name="obj"></param>
    public void PushObj(GameObject obj)
    {
        //ʧ�� ��������
        obj.SetActive(false);
        //������
        poolList.Add(obj);
        //���ø�����
        obj.transform.SetParent(fatherObj.transform);
    }
    /// <summary>
    /// �ӳ������� ȡ����
    /// </summary>
    /// <returns></returns>
    public GameObject GetObj()
    {
        GameObject obj = null;
        //ȡ����һ��
        obj = poolList[0];
        poolList.RemoveAt(0);
        //���� ������ʾ
        obj.SetActive(true);
        //�Ͽ��˸��ӹ�ϵ
        obj.transform.parent = null;
        return obj;
    }
}
/// <summary>
/// �����ģ��
/// 1.Dictionary List
/// 2.GameObject �� Resources �����������е� API 
/// </summary>
public class PoolMgr : BaseManager<PoolMgr>
{
    //��������� ���¹�
    public Dictionary<string, PoolData> poolDic = new Dictionary<string, PoolData>();
    private GameObject poolObj;
    /// <summary>
    /// �����ö���
    /// </summary>
    /// <param name="name"></param>
    /// <returns></returns>
    public void GetObj(string name,string path, UnityAction<GameObject> callBack)
    {
        //�г��� ���ҳ������ж���
        if (poolDic.ContainsKey(name) && poolDic[name].poolList.Count > 0)
        {
            callBack(poolDic[name].GetObj());
        }
        else
        {
            //ͨ���첽������Դ ����������ⲿ��
            ResMgr.Getinstance().LoadAsync<GameObject>(path, (o) =>
            {
                o.name = name;
                callBack(o);
            });
            //obj = GameObject.Instantiate(Resources.Load<GameObject>(name));
            //�Ѷ������ָĵĺͳ�������һ��
            //obj.name = name;
        }
    }
    /// <summary>
    /// ����ʱ���õĶ�������
    /// </summary>
    public void PushObj(string name, GameObject obj)
    {
        if (poolObj == null)
            poolObj = new GameObject("Pool");
        // 隐藏对象
        obj.SetActive(false);
        //�����г���
        if (poolDic.ContainsKey(name))
        {
            poolDic[name].PushObj(obj);
        }
        //����û�г���
        else
        {
            poolDic.Add(name, new PoolData(obj, poolObj));
        }
    }
    /// <summary>
    /// ��ջ���صķ��� 
    /// ��Ҫ���� �����л�ʱ
    /// </summary>
    public void Clear()
    {
        poolDic.Clear();
        poolObj = null;
    }
}
