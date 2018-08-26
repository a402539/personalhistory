// Action script...

// [Initial MovieClip Action of sprite 108]
#initclip 4
class com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _componentClipName, _clip, _settings, __get__x, __get__y, __get__visible, __get__skinColor, __get__clip, __get__height, __set__skinColor, __set__visible, __get__width, __set__x, __set__y;
    function VisualComponent(parentClip, settings)
    {
        this._updateWindowClipName(parentClip);
        _clip = parentClip.createEmptyMovieClip(_componentClipName, parentClip.getNextHighestDepth());
        _settings = settings;
    } // End of the function
    function get clip()
    {
        return (_clip);
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
    function show()
    {
        _clip._visible = true;
    } // End of the function
    function hide()
    {
        _clip._visible = false;
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
    function set skinColor(newColor)
    {
        //return (this.skinColor());
        null;
    } // End of the function
    function create()
    {
    } // End of the function
    function setSize(width, height)
    {
    } // End of the function
    function get width()
    {
    } // End of the function
    function get height()
    {
    } // End of the function
    function updateSkinColor()
    {
    } // End of the function
    function updateCornerRadius()
    {
    } // End of the function
    function _updateWindowClipName(parentClip)
    {
        _componentClipName = _componentClipName + "-" + parentClip.getNextHighestDepth();
    } // End of the function
    var _x = 0;
    var _y = 0;
    var _width = 100;
    var _height = 100;
} // End of Class
#endinitclip
