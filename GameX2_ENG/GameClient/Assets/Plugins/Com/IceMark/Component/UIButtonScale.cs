using System;
using DG.Tweening;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

namespace IceMark.UI
{

    public class UIButtonScale : UIBehaviour, IPointerUpHandler, IPointerDownHandler, IPointerClickHandler
    {
        [Serializable]
        public class ButtonScaleDelayEvent : UnityEvent { }

        [SerializeField]
        private readonly ButtonScaleDelayEvent _onDelayClick = new ButtonScaleDelayEvent();

        public ButtonScaleDelayEvent onDelayClick { get { return _onDelayClick; } }

        public Transform tweenTarget;

        public bool showPressed = false;
        public Vector3 pressed = new Vector3(0.97f, 0.97f, 0.97f);
        public float pressedDuration = 0.2f;

        public bool showDiverge = false;
        public Vector3 diverge = new Vector3(1.15f, 1.4f, 1.1f);
        public float divergeDuration = 0.2f;

        private Vector3 _mScale;
        private bool _mStarted;

        private bool _isUp;
        private bool _inMin;
        private Tweener _tweener;
        private bool _enabled;
        private int _currentType;

      
        protected override void Start()
        {
            base.Start();
            if (_mStarted) return;
            _mStarted = true;
            if (tweenTarget == null) tweenTarget = GetComponent<RectTransform>();
            _mScale = tweenTarget.localScale;
        }

        public void OnPointerDown(PointerEventData eventData)
        {
            OnPressEvent(true);
        }

        public void OnPointerUp(PointerEventData eventData)
        {
            OnPressEvent(false);
        }

        private void OnPressEvent(bool isPressed)
        {
            if (enabled && showPressed)
            {
                if (!_mStarted) Start();
                _isUp = !isPressed;
                if (isPressed)
                {
                    if (_tweener != null && _tweener.IsPlaying()) _tweener.Kill();
                    _tweener = tweenTarget.transform.DOScale(pressed, pressedDuration);
                    _tweener.OnComplete(() => { _inMin = true; if (_isUp) { TweenUp(); } });
                }
                else if (_inMin) TweenUp();
            }
        }

        private void TweenUp()
        {
            _inMin = false;
            tweenTarget.transform.DOScale(_mScale, pressedDuration);
        }

        public void OnPointerClick(PointerEventData eventData)
        {
            if (showDiverge)
            {
                GameObject go = IceMarkTools.AddChild(tweenTarget.parent.gameObject, tweenTarget.gameObject);
                if (go.GetComponent<UIButtonScale>() != null) IceMarkTools.Destroy(go.GetComponent<UIButtonScale>());
                go.transform.localPosition = tweenTarget.localPosition;
                go.transform.DOAlpha(0, divergeDuration * 4);
                go.transform.DOScale(diverge, divergeDuration * 4).OnComplete(() => { _onDelayClick.Invoke(); });
                Destroy(go, divergeDuration * 4);
            }
        }

        public void SetEnabled(bool value)
        {
            _enabled = value;
            //if (_currentType > 0)
            //{
            //    if (_buttonSprite) _buttonSprite.spriteName = "ButtonType" + (value ? _currentType : 5);
            //    if (_lightSprite) _lightSprite.spriteName = "LightType" + (value ? _currentType : 5);
            //    if (_buttonLabel)
            //    {
            //        _buttonLabel.color = value ? _buttonColor : new Color(0.8f, 0.8f, 0.8f, 1);
            //        _buttonLabel.effectColor = value ? _effectColor : new Color(0.1f, 0.1f, 0.1f, 1);
            //    }
            //}
        }

        public bool Enabled { get { return _enabled; } }
    }
}