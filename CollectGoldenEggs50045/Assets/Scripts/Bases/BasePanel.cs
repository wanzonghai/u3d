using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

/// <summary>
/// ������ 
/// ��������ͨ��������ٵ��ҵ����е��ӿؼ�
/// ���������������д����߼� 
/// ��Լ�ҿؼ��Ĺ�����
/// </summary>
public class BasePanel : MonoBehaviour
{
    //ͨ����ʽת��ԭ�� ���洢���еĿؼ�
    private Dictionary<string, List<UIBehaviour>> controlDic = new Dictionary<string, List<UIBehaviour>>();

    // Use this for initialization
    protected virtual void Awake()
    {
        FindChildrenControl<Button>();
        FindChildrenControl<Image>();
        FindChildrenControl<Text>();
        FindChildrenControl<Toggle>();
        FindChildrenControl<Slider>();
        FindChildrenControl<ScrollRect>();
        FindChildrenControl<InputField>();
    }

    /// <summary>
    /// ��ʾ�Լ�
    /// </summary>
    public virtual void ShowMe()
    {

    }

    /// <summary>
    /// �����Լ�
    /// </summary>
    public virtual void HideMe()
    {

    }

    protected virtual void OnClick(string btnName)
    {

    }

    protected virtual void OnValueChanged(string toggleName, bool value)
    {

    }

    /// <summary>
    /// �õ���Ӧ���ֵĶ�Ӧ�ؼ��ű�
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="controlName"></param>
    /// <returns></returns>
    protected T GetControl<T>(string controlName) where T : UIBehaviour
    {
        if (controlDic.ContainsKey(controlName))
        {
            for (int i = 0; i < controlDic[controlName].Count; ++i)
            {
                if (controlDic[controlName][i] is T)
                    return controlDic[controlName][i] as T;
            }
        }

        return null;
    }

    /// <summary>
    /// �ҵ��Ӷ���Ķ�Ӧ�ؼ�
    /// </summary>
    /// <typeparam name="T"></typeparam>
    private void FindChildrenControl<T>() where T : UIBehaviour
    {
        T[] controls = this.GetComponentsInChildren<T>();
        for (int i = 0; i < controls.Length; ++i)
        {
            string objName = controls[i].gameObject.name;
            if (controlDic.ContainsKey(objName))
                controlDic[objName].Add(controls[i]);
            else
                controlDic.Add(objName, new List<UIBehaviour>() { controls[i] });
            //����ǰ�ť�ؼ�
            if (controls[i] is Button)
            {
                (controls[i] as Button).onClick.AddListener(() =>
                {
                    OnClick(objName);
                });
            }
            //����ǵ�ѡ����߶�ѡ��
            else if (controls[i] is Toggle)
            {
                (controls[i] as Toggle).onValueChanged.AddListener((value) =>
                {
                    OnValueChanged(objName, value);
                });
            }
        }
    }
}
