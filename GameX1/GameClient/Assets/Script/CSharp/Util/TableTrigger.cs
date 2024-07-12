using UnityEngine;

public class TableTrigger : MonoBehaviour
{
    public EventUtils.EventPhysical EnterEvent = delegate (TablePhysical t) { };
    public EventUtils.EventPhysical ExitEvent = delegate (TablePhysical t) { };

    private SphereCollider _sphereCollider;
    private BoxCollider _boxCollider;
    //private Transform _myTransform;
    private bool _isDestroy;

    void Awake()
    {
        gameObject.layer = LayerMask.NameToLayer("Trigger");
    }

    void FixedUpdate()
    {
        if(_isDestroy) GameObject.Destroy(gameObject);
    }

    void OnTriggerEnter(Collider other)
    {
        var t = other.gameObject.GetComponent<TablePhysical>();
        if (t == null) return;

        EnterEvent(t);
    }

    void OnTriggerExit(Collider other)
    {
        var t = other.gameObject.GetComponent<TablePhysical>();
        if (t == null) return;

        ExitEvent(t);
    }

    public float Radius
    {
        set
        {
            if (_boxCollider != null) return;
            if (_sphereCollider == null)
            {
                _sphereCollider = transform.gameObject.AddComponent<SphereCollider>();
                _sphereCollider.isTrigger = true;
                var rigidbody = transform.gameObject.AddComponent<Rigidbody>();
                rigidbody.useGravity = false;
                rigidbody.isKinematic = false;
            }
            _sphereCollider.radius = value;
        }
    }

    public void Rect(float x, float y, float z)
    {
        if (_sphereCollider != null) return;
        if (_boxCollider == null)
        {
            _boxCollider = transform.gameObject.AddComponent<BoxCollider>();
            _boxCollider.isTrigger = true;
            var rigidbody = transform.gameObject.AddComponent<Rigidbody>();
            rigidbody.useGravity = false;
            rigidbody.isKinematic = false;
        }
        _boxCollider.size = new Vector3(x, y, z);
    }

    public void Destroy()
    {
        if (_isDestroy) return;
        _isDestroy = true;
    }
}
