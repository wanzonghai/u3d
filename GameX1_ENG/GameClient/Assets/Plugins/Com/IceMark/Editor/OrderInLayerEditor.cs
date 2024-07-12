using UnityEngine;
using UnityEditor;

[CanEditMultipleObjects]
[CustomEditor(typeof(OrderInLayer))]
class OrderInLayerEditor : Editor
{

    SerializedProperty _mPanelProperty;
    void OnEnable()
    {
        _mPanelProperty = serializedObject.FindProperty("mPanel");
    }

    public override void OnInspectorGUI()
    {


        serializedObject.Update();

        GUILayout.Space(3f);

        DrawLegacyFields();
    }




    protected virtual void DrawLegacyFields()
    {
        OrderInLayer hb = target as OrderInLayer;

        GUILayout.BeginHorizontal();
        {
            GUILayout.Label("Above or below the panel", GUILayout.MinWidth(150f));
            LayoutType layout = (LayoutType)EditorGUILayout.EnumPopup("", hb.layoutType);
            if (hb.layoutType != layout)
            {
                hb.layoutType = layout;
                EditorUtility.SetDirty(hb);
            }
        }
        GUILayout.EndHorizontal();
        GUILayout.Space(3f);
        switch (hb.layoutType)
        {
            case LayoutType.Depth:
                GUILayout.BeginHorizontal();
                {
                    EditorGUILayout.PrefixLabel("Depth");
                    if (GUILayout.Button("Back", GUILayout.MinWidth(46f))) hb.SetIndex(-1);
                    EditorGUILayout.TextField(hb.mIndex.ToString());
                    if (GUILayout.Button("Forward", GUILayout.MinWidth(60f))) hb.SetIndex(+1);
                }
                GUILayout.EndHorizontal();
                break;
            case LayoutType.Above:
                EditorGUILayout.PropertyField(_mPanelProperty, new GUIContent("Above Panel"));
                break;
            case LayoutType.Below:
                EditorGUILayout.PropertyField(_mPanelProperty, new GUIContent("Below Panel"));
                break;
        }
        serializedObject.ApplyModifiedProperties();
    }
}