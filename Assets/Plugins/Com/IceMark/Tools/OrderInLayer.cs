using UnityEngine;

[ExecuteInEditMode]
[AddComponentMenu("IceMark/OrderInLayer")]
public enum LayoutType { Depth, Above, Below }

public class OrderInLayer : MonoBehaviour
{
	[SerializeField]public int mIndex;
    [SerializeField]public Canvas mPanel;
	[SerializeField]private LayoutType mLayoutType;
	private Renderer[] _renders;

	public LayoutType layoutType
	{
		get { return mLayoutType; }
		set
		{
			mLayoutType = value;
			OnChangeLayoutType();
		}
	}

	void Awake()
	{
		_renders = GetComponentsInChildren<Renderer>();
	}

	void Start()
    { 
        OnChangeLayoutType();
    }

	private void OnChangeLayoutType()
	{
		int index = mIndex;
        switch (mLayoutType)
        {
            case LayoutType.Above:
                if (mPanel != null)
                {
                    index = mPanel.sortingOrder + 1;
                }
                break;
            case LayoutType.Below:
                if (mPanel != null)
                {
                    index = mPanel.sortingOrder - 1;
                }
                break;
        }
		UpdateSortingOrder(index);
	}

	public void SetIndex(int value)
	{
		if (Application.isPlaying)
		{
			UpdateSortingOrder(mIndex + value);
		}
		else
		{
			mIndex += value;
		}
	}

	private void OnPanelChange(int value)
	{
		switch (mLayoutType)
		{
			case LayoutType.Above:
				value++;
				break;
			case LayoutType.Below:
				value--;
				break;
		}
		UpdateSortingOrder(value);
	}

	private void UpdateSortingOrder(int value)
	{
		mIndex = value;
		foreach (Renderer render in _renders)
		{
			render.sortingOrder = mIndex;
		}
	}
}