using UnityEngine;
using UnityEngine.AI;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using UnityEngine.Rendering.Universal;
using System;

public static class LuaUtils
{
    public static AnimationState GetAnimatorState(Animation anim, string name)
    {
        return anim[name];
    }

    public static UniversalAdditionalCameraData GetUniversalAdditionalCameraData(Camera camera)
    {
        return camera.GetUniversalAdditionalCameraData();
    }

    public static void ClickButton(GameObject go)
    {
		ExecuteEvents.Execute<ISubmitHandler> (go, new PointerEventData (EventSystem.current), ExecuteEvents.submitHandler);
		ExecuteEvents.Execute<IPointerClickHandler> (go, new PointerEventData (EventSystem.current), ExecuteEvents.pointerClickHandler);
    }

    public static Vector3 NavMeshSamplePosition(Vector3 position, int layerMask = -1, float maxDistance = 10)
    {
        NavMeshHit hit;
        if(NavMesh.SamplePosition(position, out hit, maxDistance, layerMask))
        {
            position = hit.position;
        }
        return position;
    }

    public static Vector3 NavMeshRaycast(Vector3 position1, Vector3 position2, int layerMask = -1)
    {
        NavMeshHit hit;
        NavMesh.Raycast(position1, position2, out hit, layerMask);
        position1 = hit.position;
        return position1;
    }

    public static RaycastHit RaycastHitRay(Ray ray, float distance, int layerMask)
    {
        RaycastHit hit;
        Physics.Raycast(ray, out hit, distance, layerMask);
        return hit;
    }

    public static RaycastHit RaycastHitRay(Vector3 start, Vector3 direction, int layerMask, float distance)
    {
        RaycastHit hit;
        Physics.Raycast(start, direction, out hit, distance, layerMask);
        return hit;
    }

    public static RaycastHit CameraToRay(Vector3 point,Camera camera,int layerMask,float distance)
    {
        RaycastHit hit;
        Physics.Raycast(camera.ScreenPointToRay(point),out hit,distance,layerMask);
        return hit;
    }

    public static int LeftOperation(params int[] layers)
    {
        int l = 1 << layers[0];
        for (int i = 1; i < layers.Length; i++)
        {
            l = l | 1 << layers[i];
        }
        return l;
    }

    public static Sprite LoadWWWImage(byte[] bytes)
    {
        Texture2D texture2D = new Texture2D(70, 70);
        texture2D.LoadImage(bytes);
        var spriteImg = Sprite.Create(texture2D, new Rect(0, 0, texture2D.width, texture2D.height), Vector2.zero);
        return spriteImg;
    }

    public static int CalculateLengthOfText(string message, Text tex)
    {
        int totalLength = 0;
        Font myFont = tex.font;  //chatText is my Text component
        myFont.RequestCharactersInTexture(message, tex.fontSize, tex.fontStyle);
        CharacterInfo characterInfo = new CharacterInfo();
        char[] arr = message.ToCharArray();
        foreach (char c in arr)
        {
            myFont.GetCharacterInfo(c, out characterInfo, tex.fontSize);
            totalLength += characterInfo.advance;
        }
        return totalLength;
    }

/// <summary>
/// 判断两条线是否相交
/// </summary>
/// <param name="a">线段1起点坐标</param>
/// <param name="b">线段1终点坐标</param>
/// <param name="c">线段2起点坐标</param>
/// <param name="d">线段2终点坐标</param>
/// <param name="intersection">相交点坐标</param>
/// <returns>这里默认返回（0，0，0）点不相交，否则返回交点</returns>
public static Vector3 GetIntersection(Vector3 a, Vector3 b, Vector3 c, Vector3 d)
{
    Vector3 intersection = new Vector3(0,0,0);
   //判断异常
    if (Math.Abs(b.x - a.z) + Math.Abs(b.x - a.x) + Math.Abs(d.z - c.z) + Math.Abs(d.x - c.x) == 0)
    {
        return intersection;
    }
 
   if (Math.Abs(b.z - a.z) + Math.Abs(b.x - a.x) == 0)
    {
        return intersection;
    }
 
     if (Math.Abs(d.z - c.z) + Math.Abs(d.x - c.x) == 0)
    {
        return intersection;
    }
 
 
    if ((b.z - a.z) * (c.x - d.x) - (b.x - a.x) * (c.z - d.z) == 0)
    {
        return intersection;
    }   
 
    intersection.x = ((b.x - a.x) * (c.x - d.x) * (c.z - a.z) - c.x * (b.x - a.x) * (c.z - d.z) + a.x * (b.z - a.z) * (c.x - d.x)) / ((b.z - a.z) * (c.x - d.x) - (b.x - a.x) * (c.z - d.z));
    intersection.z = ((b.z - a.z) * (c.z - d.z) * (c.x - a.x) - c.z * (b.z - a.z) * (c.x - d.x) + a.z * (b.x - a.x) * (c.z - d.z)) / ((b.x - a.x) * (c.z - d.z) - (b.z - a.z) * (c.x - d.x));
    
 
      if ((intersection.x - a.x) * (intersection.x - b.x) <= 0 && (intersection.x - c.x) * (intersection.x - d.x) <= 0 && (intersection.z - a.z) * (intersection.z - b.z) <= 0 && (intersection.z - c.z) * (intersection.z - d.z) <= 0)
    {
        return intersection; //'相交
    }
    else
    {
        return new Vector3(0,0,0); //'相交但不在线段上
    }
}

}