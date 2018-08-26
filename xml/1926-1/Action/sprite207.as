// Action script...

// [Initial MovieClip Action of sprite 207]
#initclip 103
class com.fbpublisher.basicskin.viewclasses.NavigationButton
{
    var _clip, _direction, __get__width, __get__height, __get__x, __get__y, _backgroundShape, __get__skinColor, _button, _icon, __set__height, __set__skinColor, __set__width, __set__x, __set__y;
    function NavigationButton(clip, direction)
    {
        _clip = clip;
        _direction = direction;
        this._create();
        mx.events.EventDispatcher.initialize(this);
    } // End of the function
    function addEventListener()
    {
    } // End of the function
    function removeEventListener()
    {
    } // End of the function
    function dispatchEvent()
    {
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function get width()
    {
        return (_width);
    } // End of the function
    function set width(newWidth)
    {
        _width = newWidth;
        this._arrangeElements();
        //return (this.width());
        null;
    } // End of the function
    function get height()
    {
        return (_height);
    } // End of the function
    function set height(newHeight)
    {
        _height = newHeight;
        this._arrangeElements();
        //return (this.height());
        null;
    } // End of the function
    function get x()
    {
        return (_clip._x);
    } // End of the function
    function set x(newX)
    {
        _clip._x = newX;
        //return (this.x());
        null;
    } // End of the function
    function get y()
    {
        return (_clip._y);
    } // End of the function
    function set y(newY)
    {
        _clip._y = newY;
        //return (this.y());
        null;
    } // End of the function
    function setCustomCornerRadius(newRadius, cornerPosition)
    {
        _backgroundShape.setCustomCornerRadius(newRadius, cornerPosition);
    } // End of the function
    function show(needToShow)
    {
        var _loc2 = _direction == "forward" ? (1) : (-1);
        if (!needToShow)
        {
            _clip._visible = false;
            _hidden = true;
        }
        else if (_hidden)
        {
            _hidden = false;
            _clip._visible = true;
            _clip._x = _clip._x - _width * _loc2;
            new com.timwalling.TweenDelay(_clip, "_x", mx.transitions.easing.Regular.easeOut, _clip._x, _clip._x + _width * _loc2, 0.150000, 0, true);
            _backgroundShape.__set__opacity(25);
        } // end else if
    } // End of the function
    function set skinColor(newColor)
    {
        _backgroundShape.__set__color(newColor);
        //return (this.skinColor());
        null;
    } // End of the function
    function _create()
    {
        this._createButton();
        this._createBackground();
        this._createIcon();
        this._arrangeElements();
    } // End of the function
    function _createButton()
    {
        _button = new com.fbpublisher.basicskin.viewclasses.SimpleButton(_clip);
        _button.addEventListener("onRelease", this);
        _button.addEventListener("onRollOver", this);
        _button.addEventListener("onRollOut", this);
        _button.addEventListener("onPress", this);
        _button.addEventListener("onReleaseOutside", this);
    } // End of the function
    function _createBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("background", _clip.getNextHighestDepth());
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, _width, _height);
        _backgroundShape.__set__opacity(25);
    } // End of the function
    function _createIcon()
    {
        var _loc3 = _clip.createEmptyMovieClip("icon", _clip.getNextHighestDepth());
        var _loc2 = _direction == "forward" ? ("forwardArrowIcon") : ("backArrowIcon");
        _icon = new com.fbpublisher.basicskin.viewclasses.BitmapIcon(_loc3, _loc2);
    } // End of the function
    function _arrangeElements()
    {
        _backgroundShape.setSize(_width, _height);
        _icon.__set__x(_width / 2 - _icon.__get__width() / 2);
        _icon.__set__y(_height / 2 - _icon.__get__height() / 2);
        _button.setSize(_width, _height);
    } // End of the function
    function onRelease()
    {
        this.dispatchEvent({type: "onRelease"});
    } // End of the function
    function onRollOver()
    {
        if (!_hidden)
        {
            this._animateOver();
        } // end if
    } // End of the function
    function onRollOut()
    {
        if (!_hidden)
        {
            this._animateOut();
        } // end if
    } // End of the function
    function onReleaseOutside()
    {
        if (!_hidden)
        {
            this._animateOut();
        } // end if
    } // End of the function
    function _animateOver()
    {
        _backgroundShape.opacityTo(41, 200);
    } // End of the function
    function _animateOut()
    {
        _backgroundShape.opacityTo(25, 200);
    } // End of the function
    var _width = 100;
    var _height = 100;
    var _hidden = false;
} // End of Class
#endinitclip
