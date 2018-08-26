// Action script...

// [Initial MovieClip Action of sprite 195]
#initclip 91
class com.fbpublisher.basicskin.viewclasses.Combobox extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _items, _settings, _mainItemBackground, _itemsPanel, _handle, __get__color, _width, _height, __get__height, _selectedItem, _itemsPanelClip, _clip, _panelMaskClip, _handleIcon, __set__color, __set__height, __get__selectedItem;
    function Combobox(parentClip, settings)
    {
        super(parentClip, settings);
        _items = new Array();
        this.create();
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
    function updateTextEditColor()
    {
        if (!_opened)
        {
            _mainItemBackground.colorTo(_settings.__get__textEditBG(), 200);
        }
        else
        {
            _mainItemBackground.colorTo(_settings.__get__textEditFocusBG(), 200);
        } // end else if
        _itemsPanel.updateTextEditColor();
    } // End of the function
    function set color(col)
    {
        _handle.__set__color(col);
        //return (this.color());
        null;
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
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
    function get selectedItem()
    {
        return (_items[_selectedItemIndex]);
    } // End of the function
    function addItem(label, data)
    {
        var _loc4 = this._getItemIndex(data);
        if (_loc4 == -1)
        {
            _items.push({label: label, data: data});
            _selectedItem.__set__text(_items[_selectedItemIndex].label);
            _itemsPanel.addItem(label, data);
            _itemsPanel.__set__itemPaddingX(_itemPaddingX);
            this._arrangeElements();
        } // end if
    } // End of the function
    function changeItem(label, data)
    {
        var _loc2 = this._getItemIndex(data);
        if (_loc2 == -1)
        {
            return;
        } // end if
        _items[_loc2] = {label: label, data: data};
        _selectedItem.__set__text(_items[_selectedItemIndex].label);
        _itemsPanel.changeItem(_loc2, label, data);
        _itemsPanel.__set__itemPaddingX(_itemPaddingX);
        this._arrangeElements();
    } // End of the function
    function removeItem(itemData)
    {
        var _loc2 = this._getItemIndex(itemData);
        if (_loc2 != -1)
        {
            _itemsPanel.removeItem(_loc2);
            _items.splice(_loc2, 1);
        } // end if
        if (_selectedItemIndex == _loc2)
        {
            _selectedItemIndex = 0;
            _selectedItem.__set__text(_items[_selectedItemIndex].label);
            this.dispatchEvent({type: "selectedItemChanged", index: _selectedItemIndex, data: _items[_selectedItemIndex].data});
        } // end if
    } // End of the function
    function create()
    {
        this._createItemsPanel();
        this._createMainItemBackground();
        this._createHandle();
        this._createSelectedItemLabel();
        this._createPanelMask();
    } // End of the function
    function _createItemsPanel()
    {
        var _loc3 = _root.getNextHighestDepth();
        _itemsPanelClip = _root.createEmptyMovieClip("itemsList" + _loc3, _loc3);
        _itemsPanel = new com.fbpublisher.basicskin.viewclasses.ComboboxList(_itemsPanelClip, _settings);
        _itemsPanel.addEventListener("itemPress", this);
    } // End of the function
    function _createPanelMask()
    {
        _panelMaskClip = _clip.createEmptyMovieClip("panelMask", _clip.getNextHighestDepth());
        _panelMaskClip.lineStyle(0, 0, 0);
        _panelMaskClip.beginFill(100, 0);
        _panelMaskClip.moveTo(0, 0);
        _panelMaskClip.lineTo(100, 0);
        _panelMaskClip.lineTo(100, 100);
        _panelMaskClip.lineTo(0, 100);
        _panelMaskClip.lineTo(0, 0);
        _panelMaskClip.endFill();
        _itemsPanel.__get__clip().setMask(_panelMaskClip);
    } // End of the function
    function _createSelectedItemLabel()
    {
        var _loc2 = _clip.createEmptyMovieClip("selectedItem", _clip.getNextHighestDepth());
        _selectedItem = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        _selectedItem.__set__antiAliasType("advanced");
        _selectedItem.__set__embedFonts(true);
        _selectedItem.__set__fontName(_settings.font2);
        _selectedItem.__set__fontSize(11);
        _selectedItem.__set__autoSize(true);
        _selectedItem.__set__color(0);
        _selectedItem.__set__fill(_selectedItemFill);
        _selectedItem.__set__text(_items[_selectedItemIndex].label);
    } // End of the function
    function _createMainItemBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("mainItemBackground", _clip.getNextHighestDepth());
        _mainItemBackground = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2);
        _mainItemBackground.__set__color(_settings.textEditBG);
        _mainItemBackground.__set__cornerRadius(_settings.windowCornerRadius);
        _mainItemBackground.__set__strokePosition("outer");
        _mainItemBackground.__set__strokeSize(1);
        _mainItemBackground.__set__strokeColor(0);
        _mainItemBackground.__set__strokeOpacity(30);
        _mainItemBackground.__set__dropShadowSize(4);
        _mainItemBackground.__set__dropShadowDistance(0);
        _mainItemBackground.__set__dropShadowOpacity(30);
        _mainItemBackground.__set__dropShadowQuality(2);
        _mainItemBackground.__get__clip().onRollOver = mx.utils.Delegate.create(this, _handleRollOver);
        _mainItemBackground.__get__clip().onRollOut = mx.utils.Delegate.create(this, _handleRollOut);
        _mainItemBackground.__get__clip().onPress = mx.utils.Delegate.create(this, _handlePress);
        _mainItemBackground.__get__clip().onRelease = mx.utils.Delegate.create(this, _handleRelease);
        _mainItemBackground.__get__clip().onReleaseOutside = mx.utils.Delegate.create(this, _handleReleaseOutside);
        _mainItemBackground.__get__clip().onMouseDown = mx.utils.Delegate.create(this, _mouseDown);
    } // End of the function
    function _createHandle()
    {
        var _loc3 = _clip.createEmptyMovieClip("handle", _clip.getNextHighestDepth());
        _handle = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc3, 0, 0, 20, 18);
        _handle.__set__color(_settings.skinColor);
        _handle.__set__cornerRadius(_settings.windowCornerRadius);
        _handle.__set__gradientAngle(90);
        _handle.__set__gradientToColor(16777215);
        _handle.__set__gradientToAlpha(0);
        _handle.__set__gradientOpacity(55);
        _handle.__set__gradientScale(40);
        _handle.__set__innerShadowSize(1);
        _handle.__set__innerShadowDistance(1);
        _handle.__set__innerShadowColor(16777215);
        _handle.__set__innerShadowOpacity(55);
        _handle.__set__innerShadowAngle(45);
        _handle.__set__dropShadowSize(3);
        _handle.__set__dropShadowDistance(1);
        _handle.__set__dropShadowColor(0);
        _handle.__set__dropShadowOpacity(50);
        _handle.__set__dropShadowQuality(2);
        _handle.__set__dropShadowAngle(175);
        _handle.setCustomCornerRadius(0, "top-left");
        _handle.setCustomCornerRadius(0, "bottom-left");
        var _loc2 = _clip.createEmptyMovieClip("handleIcon", _clip.getNextHighestDepth());
        _handleIcon = new com.fbpublisher.basicskin.viewclasses.BitmapIcon(_loc2, "comboboxArrowsIcon");
    } // End of the function
    function _arrangeElements()
    {
        _mainItemBackground.setSize(_width, _height);
        _handle.__set__x(_mainItemBackground.__get__width() - _handle.__get__width());
        _handleIcon.__set__x(Math.round(_handle.__get__x() + _handle.__get__width() / 2 - _handleIcon.__get__width() / 2 - 1));
        _handleIcon.__set__y(Math.round(_handle.__get__y() + _handle.__get__height() / 2 - _handleIcon.__get__height() / 2 - 1));
        _selectedItem.__set__x(_itemPaddingX);
        _selectedItem.__set__y(Math.round(_mainItemBackground.__get__height() / 2 - _selectedItem.__get__textHeight() / 2) - 2);
        _panelMaskClip._y = _height;
        _panelMaskClip._x = -5;
        _panelMaskClip._width = _width + 10;
        _panelMaskClip._height = _itemsPanel.__get__height() + 5;
        _itemsPanel.__set__width(_width - _handle.__get__width() - 1);
    } // End of the function
    function _handleRollOver()
    {
        if (!_opened)
        {
            _handle.gradientOpacityTo(75, 200);
            _selectedItem.fillTo(90, 200);
        } // end if
    } // End of the function
    function _handleRollOut()
    {
        if (!_opened)
        {
            _handle.gradientOpacityTo(55, 200);
            _selectedItem.fillTo(_selectedItemFill, 200);
        } // end if
    } // End of the function
    function _handleRelease()
    {
    } // End of the function
    function _handleReleaseOutside()
    {
        this._handleRollOut();
    } // End of the function
    function _handlePress()
    {
        if (!_opened)
        {
            _handle.gradientOpacityTo(20, 200);
            _mainItemBackground.customCornerRadiusTo(0, "bottom-left", 5);
            _opened = true;
            _mainItemBackground.colorTo(_settings.__get__textEditFocusBG(), 200);
            this._positionPanel();
            this._updatePanelSettings();
            _itemsPanel.expand();
        }
        else
        {
            _handle.gradientOpacityTo(55, 200);
            _mainItemBackground.customCornerRadiusTo(_settings.__get__windowCornerRadius(), "bottom-left", 500);
            _opened = false;
            _mainItemBackground.colorTo(_settings.__get__textEditBG(), 200);
            this._updatePanelSettings();
            _itemsPanel.collapse();
        } // end else if
    } // End of the function
    function _mouseDown()
    {
        if (_opened && this._isOutsideComponent())
        {
            this._handlePress();
            this._handleRollOut();
        } // end if
    } // End of the function
    function _isOutsideComponent()
    {
        var _loc3 = {x: _root._xmouse, y: _root._ymouse};
        _clip.globalToLocal(_loc3);
        return (!(_loc3.x >= 0 && _loc3.x <= _clip._width && _loc3.y >= 0 && _loc3.y <= _clip._height));
    } // End of the function
    function itemPress(eventObject)
    {
        var _loc2 = this._getItemIndex(eventObject.data);
        var _loc3 = _selectedItemIndex != _loc2;
        _selectedItemIndex = _loc2;
        _selectedItem.__set__text(_items[_selectedItemIndex].label);
        this._handlePress();
        this._handleRollOut();
        if (_loc3)
        {
            this.dispatchEvent({type: "selectedItemChanged", index: _selectedItemIndex, data: eventObject.data});
        } // end if
    } // End of the function
    function _getItemIndex(data)
    {
        for (var _loc2 = 0; _loc2 < _items.length; ++_loc2)
        {
            if (_items[_loc2].data == data)
            {
                return (_loc2);
            } // end if
        } // end of for
        return (-1);
    } // End of the function
    function _positionPanel()
    {
        var _loc3 = {x: 0, y: _height - _itemsPanel.__get__height()};
        _clip.localToGlobal(_loc3);
        _itemsPanelClip.swapDepths(_root.getNextHighestDepth());
        _itemsPanel.__set__x(_loc3.x);
        _itemsPanel.__set__y(_loc3.y);
    } // End of the function
    function _updatePanelSettings()
    {
        var _loc3 = {x: 0, y: _height - _itemsPanel.__get__height()};
        var _loc2 = {x: 0, y: _height};
        _clip.localToGlobal(_loc3);
        _clip.localToGlobal(_loc2);
        _itemsPanel.__set__minY(_loc3.y);
        _itemsPanel.__set__maxY(_loc2.y + 1);
    } // End of the function
    var _componentClipName = "combobox";
    var _itemPaddingX = 10;
    var _selectedItemIndex = 0;
    var _opened = false;
    var _selectedItemFill = 70;
} // End of Class
#endinitclip
