using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SocialPlatforms;

public class ScreenAdapter : MonoBehaviour
{
    void Start()
    {
        float targetWidth = 1080;
        float targetHeight = 1920;
        if(targetWidth*Screen.height > targetHeight*Screen.width)
        {
            targetHeight = targetWidth*Screen.height/Screen.width;
        }
        Camera.main.fieldOfView*=(targetHeight/1920f);
    }
}
