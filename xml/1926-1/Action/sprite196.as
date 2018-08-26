// Action script...

// [Initial MovieClip Action of sprite 196]
#initclip 92
class com.fbpublisher.basicskin.viewclasses.ComboboxList extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _itemComponents, hide, _settings, _backgroundShape, _clip, _width, _minY, __get__minY, _maxY, __get__maxY, _itemPaddingX, __get__itemPaddingX, __get__width, _height, show, __get__y, _backgroundFrameClip, __set__y, __get__height, __set__itemPaddingX, __set__maxY, __set__minY, __set__width;
    function ComboboxList(parentClip, settings)
    {
        super(parentClip, settings);
        _itemComponents = new Array();
        this.create();
        mx.events.EventDispatcher.initialize(this);
        this.hide();
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
        for (var _loc2 = 0; _loc2 < _itemComponents.length; ++_loc2)
        {
            _itemComponents[_loc2].updateTextEditColor();
        } // end of for
        _backgroundShape.colorTo(_settings.__get__textEditBG(), 200);
    } // End of the function
    function addItem(label, data)
    {
        var _loc2 = _clip.getNextHighestDepth();
        var _loc4 = _clip.createEmptyMovieClip("item" + _loc2, _loc2);
        var _loc3 = new com.fbpublisher.basicskin.viewclasses.ComboboxItem(_loc4, _settings, label, data, _width, _itemHeight);
        _loc3.addEventListener("itemPress", this);
        _itemComponents.push(_loc3);
        this._arrangeElements();
    } // End of the function
    function changeItem(index, label, data)
    {
        var _loc2 = _itemComponents[index];
        _loc2.setData(label, data);
        this._arrangeElements();
    } // End of the function
    function removeItem(itemIndex)
    {
        var _loc2 = _itemComponents[itemIndex];
        _loc2.removeEventListener("itemPress", this);
        _loc2.__get__clip().removeMovieClip();
        _itemComponents.splice(itemIndex, 1);
        this._arrangeElements();
    } // End of the function
    function set minY(newY)
    {
        _minY = newY;
        //return (this.minY());
        null;
    } // End of the function
    function set maxY(newY)
    {
        _maxY = newY;
        //return (this.maxY());
        null;
    } // End of the function
    function get itemPaddingX()
    {
        return (_itemPaddingX);
    } // End of the function
    function set itemPaddingX(newPadding)
    {
        _itemPaddingX = newPadding;
        for (var _loc2 = 0; _loc2 < _itemComponents.length; ++_loc2)
        {
            var _loc3 = _itemComponents[_loc2];
            _loc3.__set__itemPaddingX(_itemPaddingX);
        } // end of for
        //return (this.itemPaddingX());
        null;
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
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function expand()
    {
        this.show();
        var _loc2 = new com.timwalling.TweenDelay(this, "y", mx.transitions.easing.Regular.easeInOut, this.__get__y(), _maxY, 0.200000, 0, true);
        _loc2.onMotionFinished = mx.utils.Delegate.create(this, _onExpand);
    } // End of the function
    function collapse()
    {
        var _loc2 = new com.timwalling.TweenDelay(this, "y", mx.transitions.easing.Regular.easeInOut, this.__get__y(), _minY, 0.200000, 0, true);
        _loc2.onMotionFinished = mx.utils.Delegate.create(this, _onCollapse);
    } // End of the function
    function create()
    {
        this._createBackgroundShape();
    } // End of the function
    function _createBackgroundShape()
    {
        _backgroundFrameClip = _clip.createEmptyMovieClip("background", _clip.getNextHighestDepth());
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_backgroundFrameClip, 0, 0, _width, _height);
        _backgroundShape.__set__cornerRadius(_settings.windowCornerRadius);
        _backgroundShape.__set__color(_settings.textEditBG);
        _backgroundShape.__set__dropShadowSize(4);
        _backgroundShape.__set__dropShadowDistance(0);
        _backgroundShape.__set__dropShadowOpacity(30);
        _backgroundShape.__set__dropShadowQuality(2);
        _backgroundShape.setCustomCornerRadius(0, "top-left");
        _backgroundShape.setCustomCornerRadius(0, "top-right");
        _backgroundShape.__set__strokePosition("outer");
        _backgroundShape.__set__strokeSize(1);
        _backgroundShape.__set__strokeColor(0);
        _backgroundShape.__set__strokeOpacity(30);
    } // End of the function
    function _arrangeElements()
    {
        for (var _loc2 = 0; _loc2 < _itemComponents.length; ++_loc2)
        {
            var _loc3 = _itemComponents[_loc2];
            _loc3.__set__y(_maring + _loc2 * _itemHeight);
        } // end of for
        _height = _itemComponents.length * _itemHeight + 2 * _maring;
        if (_opened)
        {
            this.__set__y(_maxY);
        }
        else
        {
            this.__set__y(_minY);
        } // end else if
        _backgroundShape.setSize(_width, _height);
    } // End of the function
    function _onExpand()
    {
        _opened = true;
        this._arrangeElements();
    } // End of the function
    function _onCollapse()
    {
        _opened = false;
        this._arrangeElements();
        this.hide();
    } // End of the function
    function itemPress(eventObject)
    {
        this.dispatchEvent(eventObject);
    } // End of the function
    var _componentClipName = "comboboxList";
    var _opened = false;
    var _itemHeight = 23;
    var _maring = 5;
} // End of Class
#endinitclip
