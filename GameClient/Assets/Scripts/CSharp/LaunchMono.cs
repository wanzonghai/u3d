using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.Networking;
using System;

public class LaunchMono : MonoBehaviour
{
    //����
    /// <summary>�Ƿ�������Ϸ</summary>
    private static bool LaunchGame = true;
    // Start is called before the first frame update
    //�
    /// <summary>����</summary>
    IEnumerator Start()
    {
        if (!LaunchGame)
            yield break;
        LaunchGame = false;

        //��ʼ�����л���
        AssetDataPath.GetInstance();

        Debug.Log("��ʼ����ȸ�");
        HotFixManager.GetInstance();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
