// Action script...

// [Initial MovieClip Action of sprite 190]
#initclip 86
class com.fbpublisher.basicskin.viewclasses.windows.SendWindowContent extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _library, _width, _height, _settings, _backgroundShape, _clip;
    function SendWindowContent(parentClip, settings, library)
    {
        super(parentClip, settings);
        _library = library;
        mx.events.EventDispatcher.initialize(this);
        this._create();
    } // End of the function
    function addEventListener()
    {
    } // End of the function
    function removerEventListener()
    {
    } // End of the function
    function dispatchEvent()
    {
    } // End of the function
    function updateStyles()
    {
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function updateSkinColor()
    {
        _backgroundShape.__set__color(_settings.skinColor);
    } // End of the function
    function _create()
    {
        this._createBackground();
    } // End of the function
    function _arrangeElements()
    {
        _backgroundShape.setSize(_width, _height);
    } // End of the function
    function _createBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("background", 0);
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, _width, _height);
        _backgroundShape.__set__cornerRadius(0);
        _backgroundShape.__set__color(_settings.skinColor);
        _backgroundShape.__set__gradientFromColor(16777215);
        _backgroundShape.__set__gradientFromAlpha(75);
        _backgroundShape.__set__gradientToColor(16777215);
        _backgroundShape.__set__gradientToAlpha(80);
    } // End of the function
    var _componentClipName = "sendWindowContent";
    var ready = false;
} // End of Class
#endinitclip
