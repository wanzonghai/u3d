using DG.Tweening;
using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

namespace IceMark.UI
{
    public class IceButton : UIBehaviour, IPointerClickHandler, IPointerDownHandler, IPointerUpHandler
    {
        [Serializable]
        public class IceButtonEvent : UnityEvent<IceButton> { }
        [SerializeField]
        public bool isActive = true;
        [SerializeField]
        private RectTransform _tweenTarget;
        [SerializeField]
        private bool _showPressed = false;
        [SerializeField]
        private Vector3 _pressed = new Vector3(0.9f, 0.9f, 0.9f);
        [SerializeField]
        private float _pressedDuration = 0.2f;
        [SerializeField]
        private bool _showDiverge = false;
        [SerializeField]
        private Vector3 _diverge = new Vector3(1.15f, 1.4f, 1.1f);
        [SerializeField]
        private float _divergeDuration = 0.2f;
        [SerializeField]
        private float _clickDelay = 0.5f;
        [SerializeField]
        private IceButtonEvent _onClick = new IceButtonEvent();
        [SerializeField]
        private IceButtonEvent _onDoubleClick = new IceButtonEvent();
        [SerializeField]
        private IceButtonEvent _onDelay = new IceButtonEvent();

        private Vector3 _mScale;
        private bool _mStarted;
        private bool _isUp;
        private bool _inMin;
        private Tweener _tweener;
        private bool _canClick = true;

        protected override void Start()
        {
            base.Start();
            if (_mStarted) return;
            _mStarted = true;
            if (_tweenTarget == null) _tweenTarget = GetComponent<RectTransform>();
            _mScale = _tweenTarget.localScale;
        }

        protected override void OnEnable()
        {
            base.OnEnable();
            if (!_canClick) _canClick = true;
        }

        public void OnPointerClick(PointerEventData eventData)
        {
            if (!isActive) return;
            if (_showDiverge)
            {
                GameObject go = IceMarkTools.AddChild(_tweenTarget.parent.gameObject, _tweenTarget.gameObject);
                if (go.GetComponent<IceButton>() != null) IceMarkTools.Destroy(go.GetComponent<IceButton>());
                go.transform.localPosition = _tweenTarget.localPosition;
                go.transform.DOAlpha(0, _divergeDuration * 4);
                go.transform.DOScale(_diverge, _divergeDuration * 4);
                Destroy(go, _divergeDuration * 4);
                StartCoroutine(DelayIEnumerator());
            }
            if (_canClick) StartCoroutine(ClickIEnumerator());
            if (eventData.clickCount == 2) _onDoubleClick.Invoke(this);
        }

        public IceButtonEvent OnClick { get { return _onClick; } set { _onClick = value; } }

        public IceButtonEvent OnDoubleClick { get { return _onDoubleClick; } set { _onDoubleClick = value; } }

        public IceButtonEvent OnDelay { get { return _onDelay; } set { _onDelay = value; } }

        public void OnPointerDown(PointerEventData eventData)
        {
            OnPressEvent(true);
        }

        public void OnPointerUp(PointerEventData eventData)
        {
            OnPressEvent(false);
        }

        public void RemoveAllListeners()
        {
            _onClick.RemoveAllListeners();
            _onDoubleClick.RemoveAllListeners();
            _onDelay.RemoveAllListeners();
        }

        private void OnPressEvent(bool isPressed)
        {
            if (enabled && _showPressed && isActive)
            {
                if (!_mStarted) Start();
                _isUp = !isPressed;
                if (isPressed)
                {
                    if (_tweener != null && _tweener.IsPlaying()) _tweener.Kill();
                    _tweener = _tweenTarget.transform.DOScale(_pressed, _pressedDuration);
                    _tweener.OnComplete(() => { _inMin = true; if (_isUp) { TweenUp(); } });
                }
                else if (_inMin) TweenUp();
            }
        }

        private void TweenUp()
        {
            _inMin = false;
            _tweenTarget.transform.DOScale(_mScale, _pressedDuration);
        }

        private IEnumerator DelayIEnumerator()
        {
            yield return new WaitForSeconds(_divergeDuration * 4);
            _onDelay.Invoke(this);
        }

        private IEnumerator ClickIEnumerator()
        {
            _canClick = false;
            _onClick.Invoke(this);
            yield return new WaitForSeconds(_clickDelay);
            _canClick = true;
        }
    }
}