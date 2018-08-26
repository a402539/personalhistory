// Action script...

// [Initial MovieClip Action of sprite 148]
#initclip 44
class com.fbpublisher.basicskin.viewclasses.SimpleButton
{
    var _clip, __set__alpha, __get__alpha, __get__width, __get__height, __get__x, __get__y, __get__useHandCursor, __get__visible, __set__width, __set__height, __get__clip, __set__useHandCursor, __set__visible, __set__x, __set__y;
    function SimpleButton(parentClip)
    {
        var _loc2 = parentClip.getNextHighestDepth();
        _clip = parentClip.createEmptyMovieClip("button" + _loc2, _loc2);
        mx.events.EventDispatcher.initialize(this);
        _clip.onRollOver = mx.utils.Delegate.create(this, onRollOver);
        _clip.onRollOut = mx.utils.Delegate.create(this, onRollOut);
        _clip.onPress = mx.utils.Delegate.create(this, onPress);
        _clip.onRelease = mx.utils.Delegate.create(this, onRelease);
        _clip.onReleaseOutside = mx.utils.Delegate.create(this, onReleaseOutside);
        this.drawButton();
        this.__set__alpha(0);
        _clip.useHandCursor = _useHandCursor;
    } // End of the function
    function get alpha()
    {
        return (_clip._alpha);
    } // End of the function
    function set alpha(newAlpha)
    {
        _clip._alpha = newAlpha;
        //return (this.alpha());
        null;
    } // End of the function
    function get clip()
    {
        return (_clip);
    } // End of the function
    function get width()
    {
        return (_width);
    } // End of the function
    function set width(newWidth)
    {
        _width = newWidth;
        _clip._width = _width;
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
        _clip._height = _height;
        //return (this.height());
        null;
    } // End of the function
    function get x()
    {
        return (_x);
    } // End of the function
    function set x(newX)
    {
        _x = newX;
        _clip._x = _x;
        //return (this.x());
        null;
    } // End of the function
    function get y()
    {
        return (_y);
    } // End of the function
    function set y(newY)
    {
        _y = newY;
        _clip._y = _y;
        //return (this.y());
        null;
    } // End of the function
    function get useHandCursor()
    {
        return (_useHandCursor);
    } // End of the function
    function set useHandCursor(use)
    {
        _useHandCursor = use;
        _clip.useHandCursor = _useHandCursor;
        //return (this.useHandCursor());
        null;
    } // End of the function
    function get visible()
    {
        return (_clip._visible);
    } // End of the function
    function set visible(isVisible)
    {
        _clip._visible = isVisible;
        //return (this.visible());
        null;
    } // End of the function
    function setSize(w, h)
    {
        this.__set__width(w);
        this.__set__height(h);
    } // End of the function
    function drawButton()
    {
        _clip.lineStyle(0, 0, 0);
        _clip.moveTo(0, 0);
        _clip.beginFill(0, 100);
        _clip.lineTo(_width, 0);
        _clip.lineTo(_width, _height);
        _clip.lineTo(0, _height);
        _clip.lineTo(0, 0);
        _clip.endFill();
    } // End of the function
    function onRollOver()
    {
        this.dispatchEvent({type: "onRollOver"});
    } // End of the function
    function onRollOut()
    {
        this.dispatchEvent({type: "onRollOut"});
    } // End of the function
    function onPress()
    {
        this.dispatchEvent({type: "onPress"});
    } // End of the function
    function onRelease()
    {
        this.dispatchEvent({type: "onRelease"});
    } // End of the function
    function onReleaseOutside()
    {
        this.dispatchEvent({type: "onReleaseOutside"});
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
    var _width = 100;
    var _height = 100;
    var _x = 0;
    var _y = 0;
    var _useHandCursor = true;
} // End of Class
#endinitclip
