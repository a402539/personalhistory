// Action script...

// [Initial MovieClip Action of sprite 147]
#initclip 43
class com.fbpublisher.basicskin.viewclasses.BitmapIcon
{
    var _clip, __set__icon, __get__x, __get__y, __get__alpha, canvas, __get__icon, __set__alpha, __get__height, __get__width, __set__x, __set__y;
    function BitmapIcon(clip, iconSymbolId)
    {
        _clip = clip;
        this.__set__icon(iconSymbolId);
    } // End of the function
    function get width()
    {
        return (_clip._width);
    } // End of the function
    function get height()
    {
        return (_clip._height);
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
    function show()
    {
        _clip._visible = true;
    } // End of the function
    function hide()
    {
        _clip._visible = false;
    } // End of the function
    function set icon(iconSymbolId)
    {
        var _loc3 = _clip.getDepth();
        var _loc2 = flash.display.BitmapData.loadBitmap(iconSymbolId);
        canvas.removeMovieClip();
        canvas = _clip.createEmptyMovieClip("canvas", _clip.getNextHighestDepth());
        if (_loc2)
        {
            canvas.attachBitmap(_loc2, _loc3);
        }
        else
        {
            canvas = _clip.attachMovie(iconSymbolId, "canvas", _clip.getNextHighestDepth());
        } // end else if
        //return (this.icon());
        null;
    } // End of the function
} // End of Class
#endinitclip
