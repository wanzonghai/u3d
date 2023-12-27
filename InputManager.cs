// 我们创建了一个 InputManager 类，使用单例模式确保只有一个实例存在。
//它定义了一个点击事件 OnClick，并在 Update 方法中检测鼠标左键的点击事件。
//当检测到点击时，通过射线检测获取点击位置，并触发 OnClick 事件。
using UnityEngine;

public class InputManager : MonoBehaviour
{
    // 单例模式
    private static InputManager instance;
    public static InputManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = FindObjectOfType<InputManager>();
                if (instance == null)
                {
                    GameObject obj = new GameObject("InputManager");
                    instance = obj.AddComponent<InputManager>();
                }
            }
            return instance;
        }
    }

    // 定义输入事件
    public delegate void OnClickAction(Vector3 position);
    public event OnClickAction OnClick;

    // Update is called once per frame
    void Update()
    {
        // 处理点击事件
        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            if (Physics.Raycast(ray, out hit))
            {
                Vector3 clickPosition = hit.point;
                // 触发点击事件
                OnClick?.Invoke(clickPosition);
            }
        }
    }
}
