// Action script...

// [Initial MovieClip Action of sprite 167]
#initclip 63
class com.fbpublisher.basicskin.viewclasses.IconMenu
{
    var _clip, _items, _settings, _hint, __get__hint, __get__color, __get__buttonWidth, __get__buttonHeight, __get__width, __get__height, __get__x, __get__y, __set__buttonHeight, __set__buttonWidth, __set__color, __set__height, __set__hint, __set__width, __set__x, __set__y;
    function IconMenu(clip, settings)
    {
        _clip = clip;
        _items = new Array();
        _settings = settings;
        mx.events.EventDispatcher.initialize(this);
    } // End of the function
    function addEventListener()
    {
    } // End of the function
    function removeEventListsner()
    {
    } // End of the function
    function dispatchEvent()
    {
    } // End of the function
    function updateStyles()
    {
    } // End of the function
    function get hint()
    {
        return (_hint);
    } // End of the function
    function set hint(newHint)
    {
        _hint = newHint;
        //return (this.hint());
        null;
    } // End of the function
    function get color()
    {
        return (_color);
    } // End of the function
    function set color(newColor)
    {
        _color = newColor;
        for (var _loc2 = 0; _loc2 < _items.length; ++_loc2)
        {
            _items[_loc2].button.color = _color;
        } // end of for
        //return (this.color());
        null;
    } // End of the function
    function get buttonWidth()
    {
        return (_buttonWidth);
    } // End of the function
    function set buttonWidth(newWidth)
    {
        _buttonWidth = newWidth;
        this._arrangeItems();
        //return (this.buttonWidth());
        null;
    } // End of the function
    function get buttonHeight()
    {
        return (_buttonHeight);
    } // End of the function
    function set buttonHeight(newHeight)
    {
        _buttonHeight = newHeight;
        this._arrangeItems();
        //return (this.buttonHeight());
        null;
    } // End of the function
    function get width()
    {
        return (_items.length * _buttonWidth);
    } // End of the function
    function set width(newWidth)
    {
        _buttonWidth = newWidth / _items.length;
        this._arrangeItems();
        //return (this.width());
        null;
    } // End of the function
    function get height()
    {
        return (_buttonHeight);
    } // End of the function
    function set height(newHeight)
    {
        _buttonHeight = newHeight;
        this._arrangeItems();
        //return (this.height());
        null;
    } // End of the function
    function setSize(w, h)
    {
        setProperty("", _width, w);
        setProperty("", _height, h);
        this._arrangeItems();
    } // End of the function
    function get x()
    {
        return (_x);
    } // End of the function
    function set x(newX)
    {
        _x = Math.round(newX);
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
        _y = Math.round(newY);
        _clip._y = _y;
        //return (this.y());
        null;
    } // End of the function
    function addItem(id, position, iconSymbol, hint)
    {
        if (!this._itemExists(id))
        {
            var _loc2 = this._createButton(id, iconSymbol, _settings);
            _loc2.__set__id(id);
            if (id == "separator")
            {
                _loc2.__set__enabled(false);
            } // end if
            _loc2.addEventListener("onRollOver", this);
            _loc2.addEventListener("onRollOut", this);
            _loc2.addEventListener("onPress", this);
            _loc2.addEventListener("onRelease", this);
            _loc2.addEventListener("onReleaseOutside", this);
            var _loc3 = new Object();
            _loc3.id = id;
            _loc3.hint = hint;
            _loc3.button = _loc2;
            _loc3.position = position;
            _items.push(_loc3);
            this._arrangeItems();
        } // end if
    } // End of the function
    function setEnabled(id, enabled)
    {
        if (this._itemExists(id))
        {
            var _loc3 = this._getItemPosition(id);
            var _loc2 = _items[_loc3].button;
            _loc2.__set__enabled(enabled);
        } // end if
    } // End of the function
    function setHint(id, newHint)
    {
        if (this._itemExists(id))
        {
            var _loc2 = this._getItemPosition(id);
            var _loc3 = _items[_loc2];
            _loc3.hint = newHint;
        } // end if
    } // End of the function
    function removeItem(id)
    {
        if (this._itemExists(id))
        {
            var _loc2 = this._getItemPosition(id);
            var _loc4 = _items[_loc2];
            var _loc3 = _loc4.button;
            _loc3.destroy(this);
            _items.splice(_loc2, 1);
            this._arrangeItems();
        } // end if
    } // End of the function
    function _createButton(id, iconSymbol)
    {
        var _loc3 = _clip.createEmptyMovieClip(id, _buttonDepth++);
        var _loc2 = new com.fbpublisher.basicskin.viewclasses.IconButton(_loc3, iconSymbol);
        _loc2.addEventListener("onPress", this);
        _loc2.addEventListener("onRelease", this);
        _loc2.addEventListener("onRollOver", this);
        _loc2.addEventListener("onRollOut", this);
        return (_loc2);
    } // End of the function
    function _itemExists(id)
    {
        var _loc3 = false;
        for (var _loc2 = 0; _loc2 < _items.length; ++_loc2)
        {
            if (_items[_loc2].id == id)
            {
                _loc3 = true;
                break;
            } // end if
        } // end of for
        return (_loc3);
    } // End of the function
    function _getItemPosition(id)
    {
        for (var _loc2 = 0; _loc2 < _items.length; ++_loc2)
        {
            if (_items[_loc2].id == id)
            {
                return (_loc2);
            } // end if
        } // end of for
        return (-1);
    } // End of the function
    function _arrangeItems()
    {
        _items.sortOn("position", Array.NUMERIC);
        for (var _loc3 = 0; _loc3 < _items.length; ++_loc3)
        {
            var _loc4 = _items[_loc3];
            var _loc2 = _loc4.button;
            _loc2.__set__width(_buttonWidth);
            _loc2.__set__height(_buttonHeight);
            _loc2.__set__x(_loc3 * _buttonWidth);
            _loc2.__set__y(0);
        } // end of for
    } // End of the function
    function onRollOver(eventObject)
    {
        this._showHint(true, eventObject.id);
    } // End of the function
    function onRollOut(eventObject)
    {
        this._showHint(false, eventObject.id);
    } // End of the function
    function onPress(eventObject)
    {
        this._showHint(false, eventObject.id);
    } // End of the function
    function onRelease(eventObject)
    {
        this._showHint(false, eventObject.id);
        this.dispatchEvent({type: "onMenuItemRelease", id: eventObject.id});
    } // End of the function
    function onReleaseOutside(eventObject)
    {
        this._showHint(false, eventObject.id);
    } // End of the function
    function _showHint(show, id)
    {
        var _loc5 = _items[this._getItemPosition(id)];
        var _loc4 = _loc5.hint;
        if (show)
        {
            var _loc2 = _loc5.button;
            var _loc7 = _loc2.x + _loc2.width / 2;
            var _loc6 = _loc2.y;
            var _loc3 = {x: _loc7, y: _loc6};
            _clip.localToGlobal(_loc3);
            if (_loc4 != "")
            {
                _hint.open(_loc4, _loc3.x, _loc3.y);
            } // end if
        }
        else
        {
            _hint.close();
        } // end else if
    } // End of the function
    var _buttonDepth = 0;
    var _x = 0;
    var _y = 0;
    var _buttonWidth = 32;
    var _buttonHeight = 32;
    var _color = 8225929;
} // End of Class
#endinitclip
