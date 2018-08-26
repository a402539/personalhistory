// Action script...

// [Initial MovieClip Action of sprite 197]
#initclip 93
class com.fbpublisher.basicskin.viewclasses.ComboboxItem extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _width, _height, _labelText, _labelData, _settings, _background, _label, __get__itemPaddingX, _clip, __get__height, __set__itemPaddingX, __get__width;
    function ComboboxItem(parentClip, settings, label, data, itemWidth, itemHeight)
    {
        super(parentClip, settings);
        _width = itemWidth;
        _height = itemHeight;
        _labelText = label;
        _labelData = data;
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
        _background.colorTo(_settings.__get__textEditBG(), 200);
    } // End of the function
    function setData(label, data)
    {
        _labelText = label;
        _labelData = data;
        _label.__set__text(_labelText);
        this._arrangeElements();
    } // End of the function
    function get width()
    {
        return (_width);
    } // End of the function
    function get height()
    {
        return (_height);
    } // End of the function
    function get itemPaddingX()
    {
        return (_itemPaddingX);
    } // End of the function
    function set itemPaddingX(newPadding)
    {
        _itemPaddingX = newPadding;
        this._arrangeElements();
        //return (this.itemPaddingX());
        null;
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function create()
    {
        this._createBackground();
        this._createLabel();
        this._arrangeElements();
    } // End of the function
    function _createBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("background", _clip.getNextHighestDepth());
        _background = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, _width, _height);
        _background.__set__color(_settings.textEditBG);
        _background.__get__clip().onRollOver = mx.utils.Delegate.create(this, itemRollOver);
        _background.__get__clip().onRollOut = mx.utils.Delegate.create(this, itemRollOut);
        _background.__get__clip().onPress = mx.utils.Delegate.create(this, itemPress);
    } // End of the function
    function _createLabel()
    {
        var _loc2 = _clip.createEmptyMovieClip("label", _clip.getNextHighestDepth());
        _label = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        _label.__set__antiAliasType("advanced");
        _label.__set__embedFonts(true);
        _label.__set__fontName(_settings.font1);
        _label.__set__fontSize(11);
        _label.__set__autoSize(true);
        _label.__set__text(_labelText);
    } // End of the function
    function _arrangeElements()
    {
        _background.setSize(_width, _height);
        _label.__set__x(_itemPaddingX);
        _label.__set__y(Math.round(_height / 2 - _label.__get__textHeight() / 2 - 4));
    } // End of the function
    function itemRollOver()
    {
        _background.colorTo(7973338, 200, 0);
    } // End of the function
    function itemRollOut()
    {
        _background.colorTo(_settings.__get__textEditBG(), 200, 0);
    } // End of the function
    function itemPress()
    {
        _background.colorTo(_settings.__get__textEditBG(), 200, 0);
        this.dispatchEvent({type: "itemPress", data: _labelData});
    } // End of the function
    var _componentClipName = "comboboxItem";
    var _itemPaddingX = 0;
} // End of Class
#endinitclip
