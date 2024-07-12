using UnityEditor;

namespace IceMark.UI
{
    public class IceMarkSettings
    {
        public static bool minimalisticLook
        {
            get { return GetBool("IceMark Minimalistic", false); }
            set { SetBool("IceMark Minimalistic", value); }
        }

        public static bool GetBool(string name, bool defaultValue) { return EditorPrefs.GetBool(name, defaultValue); }

        public static void SetBool(string name, bool val) { EditorPrefs.SetBool(name, val); }
    }
}
