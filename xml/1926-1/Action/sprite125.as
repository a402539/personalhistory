// Action script...

// [Initial MovieClip Action of sprite 125]
#initclip 21
class com.fbpublisher.basicskin.viewclasses.Window extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var hide, __get__headerHeight, _settings, _headerShape, _backgroundShape, _contentMaskShape, _headerContentMaskShape, _headerContent, __get__cornerRadius, _content, __get__skinColor, __get__content, __get__headerContent, _headerContentClip, _contentClip, _width, _height, __get__backgroundColor, _clip, _backgroundClip, _headerClip, _contentMaskClip, _headerContentMaskClip, __set__backgroundColor, __set__content, __get__contentClip, __set__cornerRadius, __set__headerContent, __get__headerContentClip, __set__headerHeight, __get__height, __set__skinColor, __get__width;
    function Window(parentClip, settings)
    {
        super(parentClip, settings);
        mx.events.EventDispatcher.initialize(this);
        this.create();
        this.hide();
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
    function get headerHeight()
    {
        return (_headerHeight);
    } // End of the function
    function set headerHeight(newHeight)
    {
        _headerHeight = newHeight;
        this._resizeObjects();
        //return (this.headerHeight());
        null;
    } // End of the function
    function updateHeader()
    {
        _headerShape.__set__gradientToColor(_settings.windowHeaderGradientColor);
        _headerShape.__set__gradientToAlpha(_settings.windowHeaderGradientAlphaTo);
        _headerShape.__set__gradientOpacity(_settings.windowHeaderGradientAlphaFrom);
    } // End of the function
    function set cornerRadius(newRadius)
    {
        _backgroundShape.__set__cornerRadius(newRadius);
        _headerShape.__set__cornerRadius(newRadius);
        _contentMaskShape.__set__cornerRadius(newRadius);
        _headerContentMaskShape.__set__cornerRadius(newRadius);
        _headerContent.updateCornerRadius();
        //return (this.cornerRadius());
        null;
    } // End of the function
    function set skinColor(newColor)
    {
        _headerShape.__set__color(newColor);
        _content.__set__skinColor(newColor);
        _headerContent.__set__skinColor(newColor);
        _content.updateSkinColor();
        _headerContent.updateSkinColor();
        //return (this.skinColor());
        null;
    } // End of the function
    function set content(newContent)
    {
        _content = newContent;
        this._resizeObjects();
        //return (this.content());
        null;
    } // End of the function
    function set headerContent(newContent)
    {
        _headerContent = newContent;
        this._resizeObjects();
        //return (this.headerContent());
        null;
    } // End of the function
    function get headerContentClip()
    {
        return (_headerContentClip);
    } // End of the function
    function get contentClip()
    {
        return (_contentClip);
    } // End of the function
    function get width()
    {
        return (_width);
    } // End of the function
    function get height()
    {
        return (_height);
    } // End of the function
    function get backgroundColor()
    {
        //return (_backgroundShape.color());
    } // End of the function
    function set backgroundColor(newColor)
    {
        _backgroundShape.__set__color(newColor);
        //return (this.backgroundColor());
        null;
    } // End of the function
    function setSize(width, height)
    {
        _width = width;
        _height = height;
        this._resizeObjects();
    } // End of the function
    function create()
    {
        _backgroundClip = _clip.createEmptyMovieClip("background", 0);
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_backgroundClip, 0, 0, _width, _height);
        _backgroundShape.__set__cornerRadius(_settings.windowCornerRadius);
        _backgroundShape.__set__color(16777215);
        _backgroundShape.__set__dropShadowSize(7);
        _backgroundShape.__set__dropShadowDistance(0);
        _backgroundShape.__set__dropShadowOpacity(39);
        _headerClip = _clip.createEmptyMovieClip("header", 1);
        _headerShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_headerClip, 0, 0, _width, _height);
        _headerShape.__set__cornerRadius(_settings.windowCornerRadius);
        _headerShape.__set__color(_settings.skinColor);
        _headerShape.__set__strokeColor(_settings.mainWindowBackgroundColor);
        _headerShape.__set__strokeSize(1);
        _headerShape.__set__strokePosition("inner");
        _headerShape.__set__innerShadowDistance(0);
        _headerShape.__set__innerShadowSize(2);
        _headerShape.__set__innerShadowOpacity(83);
        _headerShape.__set__gradientAngle(90);
        _headerShape.__set__gradientToColor(_settings.windowHeaderGradientColor);
        _headerShape.__set__gradientToAlpha(_settings.windowHeaderGradientAlphaTo);
        _headerShape.__set__gradientOpacity(_settings.windowHeaderGradientAlphaFrom);
        _headerShape.__set__gradientScale(70);
        _headerShape.setCustomCornerRadius(0, "bottom-left");
        _headerShape.setCustomCornerRadius(0, "bottom-right");
        _contentClip = _clip.createEmptyMovieClip("content", 2);
        _contentMaskClip = _clip.createEmptyMovieClip("contentMask", 3);
        _contentMaskShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_contentMaskClip, 0, 0, _width, _height);
        _contentMaskShape.__set__cornerRadius(_settings.windowCornerRadius);
        _contentMaskShape.setCustomCornerRadius(0, "top-left");
        _contentMaskShape.setCustomCornerRadius(0, "top-right");
        _contentMaskShape.__set__color(16711680);
        _contentClip.setMask(_contentMaskClip);
        _headerContentClip = _clip.createEmptyMovieClip("headerContent", 4);
        _headerContentMaskClip = _clip.createEmptyMovieClip("headerContentMask", 5);
        _headerContentMaskShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_headerContentMaskClip, 0, 0, _width, _height);
        _headerContentMaskShape.__set__cornerRadius(_settings.windowCornerRadius);
        _headerContentMaskShape.setCustomCornerRadius(0, "bottom-left");
        _headerContentMaskShape.setCustomCornerRadius(0, "bottom-right");
        _headerContentMaskShape.__set__color(65280);
        _headerContentClip.setMask(_headerContentMaskClip);
    } // End of the function
    function _resizeObjects()
    {
        _contentMaskShape.__set__y(_headerHeight);
        _contentClip._y = _headerHeight;
        _backgroundShape.setSize(_width, _height);
        _headerShape.setSize(_width, _headerHeight);
        _headerContentMaskShape.setSize(_width, _headerHeight);
        _contentMaskShape.setSize(_width - 2, _height - _headerHeight - 1);
        _contentMaskShape.__set__x(1);
        if (_headerContent != undefined)
        {
            _headerContent.setSize(_width, _headerHeight);
        } // end if
        if (_content != undefined)
        {
            _content.setSize(_width, _height - _headerHeight);
        } // end if
    } // End of the function
    var _componentClipName = "window";
    var _headerHeight = 40;
} // End of Class
#endinitclip
