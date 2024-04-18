using System.Collections.Generic;
using UnityEngine;

public class PanelBase : MonoBehaviour
{
    public virtual void InitializePanel(Dictionary<string, object> parameters)
    {
        // Override this method in derived classes to handle parameter initialization
    }
}