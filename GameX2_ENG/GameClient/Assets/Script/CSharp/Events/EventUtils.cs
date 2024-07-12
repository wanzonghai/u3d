using UnityEngine.UI;
using UnityEngine;

public static class EventUtils
{
    public delegate void Event();                               //通用事件
    public delegate void EventWithFloat(float f);               //通用事件
    public delegate void EventWithInt(int i);                   //通用事件
    public delegate void EventWithByte(byte[] bytes);           //通用事件
    public delegate void EventWithParam(object obj);            //通用事件
    public delegate void EventWithString(string str);           //通用事件
    public delegate void EventWithBool(bool b);                 //通用事件
    public delegate void EventWithVector2(Vector2 v2);          //通用事件
    public delegate void SocketDispatchEvent(long ul, int protoId, byte[] bytes);
    public delegate string LinkTexthEvent(string data);
    public delegate void ImageTexthEvent(Image image, string id);
}
