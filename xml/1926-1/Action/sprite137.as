// Action script...

// [Initial MovieClip Action of sprite 137]
#initclip 33
class com.fbpublisher.basicskin.viewclasses.LayoutItem extends com.fbpublisher.utils.EventDispatcher
{
    var _clip, __get___x, __get___y, __get___visible, height, width, __get___height, __get___width, __get__Fixed, __set__Fixed, __set___height, __set___visible, __set___width, __set___x, __set___y, __get__clip;
    function LayoutItem(clip)
    {
        super();
        _clip = clip;
    } // End of the function
    function set _x(value)
    {
        _clip._x = value;
        //return (this._x());
        null;
    } // End of the function
    function set _y(value)
    {
        _clip._y = value;
        //return (this._y());
        null;
    } // End of the function
    function get _x()
    {
        return (_clip._x);
    } // End of the function
    function get _y()
    {
        return (_clip._y);
    } // End of the function
    function set _visible(value)
    {
        _clip._visible = value;
        //return (this._visible());
        null;
    } // End of the function
    function get _visible()
    {
        return (_clip._visible);
    } // End of the function
    function get clip()
    {
        return (_clip);
    } // End of the function
    function get _height()
    {
        return (height);
    } // End of the function
    function set _height(value)
    {
        this.setSize(width, value);
        //return (this._height());
        null;
    } // End of the function
    function get _width()
    {
        return (width);
    } // End of the function
    function set _width(value)
    {
        this.setSize(value, height);
        //return (this._width());
        null;
    } // End of the function
    function set Fixed(value)
    {
        _fixedSize = value;
        //return (this.Fixed());
        null;
    } // End of the function
    function get Fixed()
    {
        return (_fixedSize);
    } // End of the function
    function arangeItems()
    {
        this.setSize(width, height);
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        width = newWidth;
        height = newHeight;
    } // End of the function
    var _fixedSize = true;
} // End of Class
#endinitclip
