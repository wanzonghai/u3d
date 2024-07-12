using IceMark.UI;
using UnityEditor;
using UnityEngine;

namespace IceMark.Editor
{
    [CustomEditor(typeof(IceButton), true)]
    [CanEditMultipleObjects]
    public class IceButtonEditor : UnityEditor.Editor
    {
        SerializedProperty _isActiveProperty;
        SerializedProperty _tweenTargetProperty;

        SerializedProperty _showPressedProperty;
        SerializedProperty _pressedProperty;
        SerializedProperty _pressedDurationProperty;

        SerializedProperty _showDivergeProperty;
        SerializedProperty _divergeProperty;
        SerializedProperty _divergeDurationProperty;
        SerializedProperty _clickDelayProperty;

        SerializedProperty _onClickProperty;
        SerializedProperty _onDoubleClickProperty;
        SerializedProperty _onDelayProperty;

        void OnEnable()
        {
            _isActiveProperty = serializedObject.FindProperty("isActive");
            _tweenTargetProperty = serializedObject.FindProperty("_tweenTarget");

            _showPressedProperty = serializedObject.FindProperty("_showPressed");
            _pressedProperty = serializedObject.FindProperty("_pressed");
            _pressedDurationProperty = serializedObject.FindProperty("_pressedDuration");

            _showDivergeProperty = serializedObject.FindProperty("_showDiverge");
            _divergeProperty = serializedObject.FindProperty("_diverge");
            _divergeDurationProperty = serializedObject.FindProperty("_divergeDuration");
            _clickDelayProperty = serializedObject.FindProperty("_clickDelay");

            _onClickProperty = serializedObject.FindProperty("_onClick");
            _onDoubleClickProperty = serializedObject.FindProperty("_onDoubleClick");
            _onDelayProperty = serializedObject.FindProperty("_onDelay");
        }

        public override void OnInspectorGUI()
        {
            serializedObject.Update();

            GUILayout.Space(4f);
            EditorGUILayout.PropertyField(_isActiveProperty, new GUIContent("是否可用 isActive"));
            EditorGUILayout.PropertyField(_clickDelayProperty, new GUIContent("点击间隔"));
            EditorGUILayout.PropertyField(_tweenTargetProperty, new GUIContent("缓动目标"));
            DrawPressed();
            DrawDiverge();

            GUILayout.Space(3f);
            EditorGUILayout.PropertyField(_onClickProperty, new GUIContent("点击事件 onClick"));
            EditorGUILayout.PropertyField(_onDoubleClickProperty, new GUIContent("双击事件 onDoubleClick"));
            EditorGUILayout.PropertyField(_onDelayProperty, new GUIContent("延时事件 onDelay"));

            serializedObject.ApplyModifiedProperties();
        }

        private void DrawPressed()
        {
            EditorGUILayout.PropertyField(_showPressedProperty, new GUIContent("缩放动画"));
            if (_showPressedProperty.boolValue)
            {
                if (IceMarkEditorTools.DrawHeader("动画设置"))
                {
                    IceMarkEditorTools.BeginContents();
                    GUILayout.BeginVertical();

                    GUILayout.Space(4f);
                    EditorGUILayout.PropertyField(_pressedProperty, new GUIContent("缩放幅度"));
                    GUILayout.Space(4f);
                    EditorGUILayout.PropertyField(_pressedDurationProperty, new GUIContent("持续时间"));
                    GUILayout.Space(4f);

                    GUILayout.EndVertical();
                    IceMarkEditorTools.EndContents();
                }
            }
        }

        private void DrawDiverge()
        {
            EditorGUILayout.PropertyField(_showDivergeProperty, new GUIContent("点击特效"));
            if (_showDivergeProperty.boolValue)
            {
                if (IceMarkEditorTools.DrawHeader("特效设置"))
                {
                    IceMarkEditorTools.BeginContents();
                    GUILayout.BeginVertical();

                    GUILayout.Space(4f);
                    EditorGUILayout.PropertyField(_divergeProperty, new GUIContent("特效幅度"));
                    GUILayout.Space(4f);
                    EditorGUILayout.PropertyField(_divergeDurationProperty, new GUIContent("持续时间"));
                    GUILayout.Space(4f);

                    GUILayout.EndVertical();
                    IceMarkEditorTools.EndContents();
                }
            }
        }
    }
}