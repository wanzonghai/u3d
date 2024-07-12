using UnityEngine;

namespace IceMark.UI
{
    public class IceMarkTools
    {
        public static GameObject AddChild(GameObject parent, GameObject prefab)
        {
            GameObject go = Object.Instantiate(prefab);
#if UNITY_EDITOR
            UnityEditor.Undo.RegisterCreatedObjectUndo(go, "Create Object");
#endif
            if (go == null || parent == null) return go;
            Transform t = go.transform;
            t.SetParent(parent.transform);
            t.localPosition = Vector3.zero;
            t.localRotation = Quaternion.identity;
            t.localScale = Vector3.one;
            go.layer = parent.layer;
            return go;
        }

        public static void Destroy(Object obj)
        {
            if (obj)
            {
                if (obj is Transform)
                {
                    Transform t = (obj as Transform);
                    GameObject go = t.gameObject;

                    if (Application.isPlaying)
                    {
                        t.SetParent(null);
                        Object.Destroy(go);
                    }
                    else Object.DestroyImmediate(go);
                }
                else if (obj is GameObject)
                {
                    GameObject go = obj as GameObject;
                    Transform t = go.transform;

                    if (Application.isPlaying)
                    {
                        t.SetParent(null);
                        Object.Destroy(go);
                    }
                    else Object.DestroyImmediate(go);
                }
                else if (Application.isPlaying) Object.Destroy(obj);
                else Object.DestroyImmediate(obj);
            }
        }
    }
}
