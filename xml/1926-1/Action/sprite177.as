// Action script...

// [Initial MovieClip Action of sprite 177]
#initclip 73
class com.fbpublisher.basicskin.viewclasses.StaticGridLayout
{
    var __get__rightToLeft, __get___x, __get___y, __get__lineHeight, __get__lines, __get___height, __set___x, __set___y, __get__colums, __set__rightToLeft;
    function StaticGridLayout(_rows, _cols)
    {
        rows = _rows;
        cols = _cols;
    } // End of the function
    function insertAt(_obj, _it)
    {
    } // End of the function
    function removeAt(_it)
    {
    } // End of the function
    function clear()
    {
        items.splice(0, items.length);
    } // End of the function
    function push(_item)
    {
        items.push(_item);
        this.update();
    } // End of the function
    function pop()
    {
        items.pop();
    } // End of the function
    function setSpacing(_horizontalSpacing, _verticalSpacing)
    {
        horizontalSpacing = _horizontalSpacing;
        verticalSpacing = _verticalSpacing;
        this.update();
    } // End of the function
    function setItemSize(_itemWidth, _itemHeight)
    {
        itemWidth = _itemWidth;
        itemHeight = _itemHeight;
        this.update();
    } // End of the function
    function get lineHeight()
    {
        return (itemHeight + verticalSpacing);
    } // End of the function
    function get lines()
    {
        return (Math.ceil(1 * items.length / cols));
    } // End of the function
    function line(i)
    {
        return (Math.ceil(1 * i / cols));
    } // End of the function
    function get colums()
    {
        return (cols);
    } // End of the function
    function update()
    {
        var _loc3;
        if (this.__get__rightToLeft())
        {
            _loc3 = x + (cols - 1) * (itemWidth + horizontalSpacing);
        }
        else
        {
            _loc3 = x;
        } // end else if
        var _loc4 = y;
        var _loc5 = 0;
        var _loc6 = 0;
        for (var _loc2 = 0; _loc2 < items.length; ++_loc2)
        {
            items[_loc2]._x = _loc3;
            items[_loc2]._y = _loc4;
            if (this.__get__rightToLeft())
            {
                _loc3 = items[_loc2]._x - (itemWidth + horizontalSpacing);
            }
            else
            {
                _loc3 = items[_loc2]._x + (itemWidth + horizontalSpacing);
            } // end else if
            _loc4 = items[_loc2]._y;
            items[_loc2]._y = items[_loc2]._y + (itemHeight - items[_loc2]._height) / 2;
            ++_loc5;
            if (_loc6 >= rows && rows != 0)
            {
                break;
                continue;
            } // end if
            if (_loc5 >= cols && cols != 0)
            {
                _loc5 = 0;
                if (this.__get__rightToLeft())
                {
                    _loc3 = x + (cols - 1) * (itemWidth + horizontalSpacing);
                }
                else
                {
                    _loc3 = x;
                } // end else if
                _loc4 = _loc4 + itemHeight + verticalSpacing;
                ++_loc6;
            } // end if
        } // end of for
    } // End of the function
    function set _x(value)
    {
        x = value;
        this.update();
        //return (this._x());
        null;
    } // End of the function
    function set _y(value)
    {
        y = value;
        this.update();
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
        //return (this.lineHeight() * this.__get__lines());
    } // End of the function
    function get rightToLeft()
    {
        return (_rightToLeft);
    } // End of the function
    function set rightToLeft(value)
    {
        _rightToLeft = value;
        this.update();
        //return (this.rightToLeft());
        null;
    } // End of the function
    var items = new Array();
    var rows = 0;
    var cols = 3;
    var horizontalSpacing = 20;
    var verticalSpacing = 10;
    var x = 0;
    var y = 0;
    var center = true;
    var itemWidth = 40;
    var itemHeight = 40;
    var _rightToLeft = false;
} // End of Class
#endinitclip
