// Action script...

// [Initial MovieClip Action of sprite 136]
#initclip 32
class com.fbpublisher.basicskin.viewclasses.DynamicBoxLayout
{
    var horizontalOrientation, items, __get___x, __get___y, __get___height, __get___width, __set___height, __get___items, __set___width, __set___x, __set___y, __get__length;
    function DynamicBoxLayout(horizontal)
    {
        horizontalOrientation = horizontal;
        items = new Array();
    } // End of the function
    function insertAt(_obj, _it)
    {
        items.splice(_it, 0, _obj);
        this.arrangeElements();
    } // End of the function
    function removeAt(_it)
    {
        items.splice(_it, 1);
        this.arrangeElements();
    } // End of the function
    function clear()
    {
        items.splice(0, items.length);
        this.arrangeElements();
    } // End of the function
    function push(_item)
    {
        items.push(_item);
        this.arrangeElements();
    } // End of the function
    function pushWithoutRearrange(_item)
    {
        items.push(_item);
    } // End of the function
    function pop()
    {
        items.pop();
        this.arrangeElements();
    } // End of the function
    function arrangeElements()
    {
        if (horizontalOrientation)
        {
            this.arangeElemntsHorizontal();
        }
        else
        {
            this.arangeElemntsVertical();
        } // end else if
    } // End of the function
    function arangeElemntsVertical()
    {
        var _loc6 = x;
        var _loc3 = y;
        var _loc8 = 0;
        var _loc5 = 0;
        var _loc4 = 0;
        for (var _loc2 = 0; _loc2 < items.length; ++_loc2)
        {
            if (items[_loc2]._visible == false)
            {
                continue;
            } // end if
            if (!items[_loc2].Fixed)
            {
                ++_loc4;
                continue;
            } // end if
            _loc5 = _loc5 + items[_loc2]._height;
        } // end of for
        var _loc7 = Math.round((height - _loc5) / _loc4);
        for (var _loc2 = 0; _loc2 < items.length; ++_loc2)
        {
            if (items[_loc2]._visible == false)
            {
                continue;
            } // end if
            items[_loc2]._x = _loc6;
            items[_loc2]._y = _loc3;
            items[_loc2]._width = width;
            if (!items[_loc2].Fixed)
            {
                items[_loc2]._height = _loc7;
            } // end if
            _loc3 = items[_loc2]._y + items[_loc2]._height + spacing;
            height = items[_loc2]._y + items[_loc2]._height;
        } // end of for
    } // End of the function
    function arangeElemntsHorizontal()
    {
        var _loc6 = x;
        var _loc3 = y;
        var _loc8 = 0;
        var _loc5 = 0;
        var _loc4 = 0;
        for (var _loc2 = 0; _loc2 < items.length; ++_loc2)
        {
            if (items[_loc2]._visible == false)
            {
                continue;
            } // end if
            if (!items[_loc2].Fixed)
            {
                ++_loc4;
                continue;
            } // end if
            _loc5 = _loc5 + items[_loc2]._width;
        } // end of for
        var _loc7 = Math.round((width - _loc5) / _loc4);
        for (var _loc2 = 0; _loc2 < items.length; ++_loc2)
        {
            if (items[_loc2]._visible == false)
            {
                continue;
            } // end if
            items[_loc2]._x = _loc6;
            items[_loc2]._y = _loc3;
            items[_loc2]._height = height;
            if (!items[_loc2].Fixed)
            {
                items[_loc2]._width = _loc7;
            } // end if
            _loc3 = items[_loc2]._y + items[_loc2]._width + spacing;
            height = items[_loc2]._y + items[_loc2]._width;
        } // end of for
    } // End of the function
    function get length()
    {
        return (items.length);
    } // End of the function
    function set _x(value)
    {
        x = value;
        this.arrangeElements();
        //return (this._x());
        null;
    } // End of the function
    function set _y(value)
    {
        y = value;
        this.arrangeElements();
        //return (this._y());
        null;
    } // End of the function
    function get _y()
    {
        return (y);
    } // End of the function
    function get _x()
    {
        return (x);
    } // End of the function
    function get _height()
    {
        return (height);
    } // End of the function
    function set _height(value)
    {
        height = value - 2;
        this.arrangeElements();
        //return (this._height());
        null;
    } // End of the function
    function get _width()
    {
        return (width);
    } // End of the function
    function set _width(value)
    {
        width = value;
        this.arrangeElements();
        //return (this._width());
        null;
    } // End of the function
    function get _items()
    {
        return (items);
    } // End of the function
    var spacing = 0;
    var x = 0;
    var y = 0;
    var height = 0;
    var width = 0;
} // End of Class
#endinitclip
