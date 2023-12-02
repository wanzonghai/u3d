using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class ItemBanana : MonoBehaviour, IPointerClickHandler
{
    private GameObject childImage;
    private void Start()
    {
        childImage = transform.Find("image").gameObject;
       childImage.SetActive(false);
    }

/*    private void OnMouseDown()
    {
        // 切换子物体的显示/隐藏状态
        if (childImage.activeSelf) return;
        childImage.SetActive(true);
    }*/

    public void OnPointerClick(PointerEventData eventData)
    {
        if (childImage.activeSelf) return;
        childImage.SetActive(true);
        // 触发自定义事件并传递子物体的状态
        // 触发自定义事件并传递子物体的状态
        EventDispatcher.Getinstance().DispatchEvent(100);
    }
}
