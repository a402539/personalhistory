// Action script...

// [Initial MovieClip Action of sprite 158]
#initclip 54
class com.fbpublisher.basicskin.viewclasses.windows.GenericWindowHeader extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _iconSymbol, _width, _height, _title, __get__title, _settings, _closeButton, _clip, _icon, __set__title;
    function GenericWindowHeader(parentClip, settings, iconSymbol)
    {
        super(parentClip, settings);
        _iconSymbol = iconSymbol;
        this._create();
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
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function get title()
    {
        //return (_title.text());
    } // End of the function
    function set title(titleText)
    {
        _title.__set__text(titleText);
        //return (this.title());
        null;
    } // End of the function
    function updateStyles()
    {
        _title.__set__fontColor(_settings.mainTextColor);
        _title.__set__dropShadowColor(_settings.mainTextShadowColor);
        _title.__set__dropShadowOpacity(_settings.mainTextShadowOpacity);
    } // End of the function
    function updateSkinColor()
    {
        _closeButton.__set__color(_settings.skinColor);
    } // End of the function
    function updateCornerRadius()
    {
        _closeButton.__set__cornerRadius(_settings.windowCornerRadius);
    } // End of the function
    function _create()
    {
        this._createIcon();
        this._createTitle();
        this._createCloseButton();
    } // End of the function
    function _createIcon()
    {
        var _loc2 = _clip.createEmptyMovieClip("icon", _clip.getNextHighestDepth());
        _icon = new com.fbpublisher.basicskin.viewclasses.BitmapIcon(_loc2, _iconSymbol);
    } // End of the function
    function _createTitle()
    {
        var _loc2 = _clip.createEmptyMovieClip("title", _clip.getNextHighestDepth());
        _title = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        _title.__set__antiAliasType("advanced");
        _title.__set__embedFonts(true);
        _title.__set__fontName(_settings.font1);
        _title.__set__fontSize(11);
        _title.__set__autoSize(true);
        _title.__set__fontColor(_settings.mainTextColor);
        _title.__set__dropShadowColor(_settings.mainTextShadowColor);
        _title.__set__text(_settings.titleLabel);
        _title.__set__dropShadowOpacity(_settings.mainTextShadowOpacity);
        _title.__set__dropShadowDistance(1);
        _title.__set__dropShadowQuality(1);
        _title.__set__dropShadowSize(0);
    } // End of the function
    function _createCloseButton()
    {
        var _loc2 = _clip.createEmptyMovieClip("close", _clip.getNextHighestDepth());
        _closeButton = new com.fbpublisher.basicskin.viewclasses.IconButton(_loc2, "crossIcon");
        _closeButton.addEventListener("onRelease", this);
        _closeButton.setSize(24, 24);
        _closeButton.__set__color(_settings.skinColor);
    } // End of the function
    function _arrangeElements()
    {
        _icon.__set__x(_iconPadding);
        _icon.__set__y(Math.round(_height / 2 - _icon.__get__height() / 2));
        _title.__set__x(_icon.__get__x() + _icon.__get__width() + _titlePadding - 2);
        _title.__set__y(Math.round(_height / 2 - _title.__get__textHeight() / 2 - 3));
        _closeButton.__set__x(_width - _closeButton.__get__width() - 10);
        _closeButton.__set__y(Math.round(_height / 2 - _closeButton.__get__height() / 2));
    } // End of the function
    function onRelease()
    {
        this.dispatchEvent({type: "onCloseButtonClick"});
    } // End of the function
    var _componentClipName = "windowHeader";
    var _titlePadding = 5;
    var _iconPadding = 10;
} // End of Class
#endinitclip
