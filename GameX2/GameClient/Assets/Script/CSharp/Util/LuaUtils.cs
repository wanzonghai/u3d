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

    public static void SetMeshRendererColor(Transform obj,string key,Color color)
    {
        if(obj == null) return;
        MeshRenderer mr ;
        obj.TryGetComponent<MeshRenderer>(out mr);
        if(mr == null) return;
        mr.material.SetColor(key,color);
    }
}