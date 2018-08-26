// Action script...

// [Initial MovieClip Action of sprite 163]
#initclip 59
class com.fbpublisher.basicskin.viewclasses.Preloader extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var hide, _background, _label, show, _preloaderClip, _settings, _waitInterval, __set__x, __set__y, _clip, _backgroundClip, _labelClip, __get__height, __get__width;
    function Preloader(parentClip, settings)
    {
        super(parentClip, settings);
        this.create();
        this.hide();
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
    function get width()
    {
        //return (_background.width());
    } // End of the function
    function get height()
    {
        //return (_background.height());
    } // End of the function
    function open(hintMessage)
    {
        _label.__set__text(hintMessage);
        this._resizeObjects();
        this.show();
        new mx.transitions.Tween(_preloaderClip, "_alpha", mx.transitions.easing.Regular.easeInOut, 0, 100, 1, true);
        _background.__set__dropShadowSize(0);
        _background.dropShadowSizeTo(9, 500, 100);
        _background.__set__opacity(0);
        _background.opacityTo(100, 500);
        _background.__set__color(_settings.skinColor);
        _background.__set__gradientAngle(90);
        _background.__set__gradientToColor(16777215);
        _background.__set__gradientToAlpha(0);
        _background.__set__gradientOpacity(25);
        _background.__set__gradientScale(70);
        _background.__set__opacity(0);
        _background.opacityTo(100, 200, 300);
        _waitInterval = setInterval(this, "openAnimationFinished", 1100);
    } // End of the function
    function close()
    {
        new mx.transitions.Tween(_preloaderClip, "_alpha", mx.transitions.easing.Regular.easeInOut, 100, 0, 1, true);
        _background.dropShadowSizeTo(0, 500, 100);
        _background.opacityTo(0, 500, 300);
        _label.opacityTo(0, 200, 100);
        _waitInterval = setInterval(this, "closeAnimationFinished", 1000);
    } // End of the function
    function setSize(width, height)
    {
    } // End of the function
    function create()
    {
        this.__set__x(Math.round(Stage.width / 2 - _width / 2));
        this.__set__y(Math.round(Stage.height / 2 - _height / 2));
        _backgroundClip = _clip.createEmptyMovieClip("background", 0);
        _background = new com.fbpublisher.utils.graphics.StyleableRectangle(_backgroundClip, 0, 0, _width, _height);
        _background.addEventListener("animationFinished", this);
        _background.__set__cornerRadius(10);
        _background.__set__color(_backgroundColor);
        _background.__set__innerShadowDistance(0);
        _background.__set__innerShadowSize(2);
        _background.__set__innerShadowOpacity(55);
        _background.__set__strokeColor(16777215);
        _background.__set__strokeSize(1);
        _background.__set__strokePosition("inner");
        _background.__set__strokeOpacity(80);
        _background.__set__dropShadowSize(9);
        _background.__set__dropShadowDistance(0);
        _background.__set__dropShadowOpacity(36);
        _background.__set__dropShadowQuality(2);
        _background.__set__gradientAngle(90);
        _background.__set__gradientOpacity(20);
        _background.__set__gradientToColor(16777215);
        _background.__set__gradientToAlpha(0);
        _labelClip = _clip.createEmptyMovieClip("label", 1);
        _label = new com.fbpublisher.utils.graphics.StyleableLabel(_labelClip);
        _label.__set__width(150);
        _label.__set__height(36);
        _label.__set__antiAliasType("advanced");
        _label.__set__selectable(false);
        _label.__set__text("Loading..");
        _label.__set__fontName(_settings.font1);
        _label.__set__embedFonts(true);
        _label.__set__fontColor(16777215);
        _label.__set__dropShadowDistance(1);
        _label.__set__dropShadowSize(0);
        _label.__set__dropShadowOpacity(37);
        _label.__set__fontSize(11);
        _label.__set__x(_labelX);
        _label.__set__y(_labelY);
        _preloaderClip = _clip.attachMovie("PreloaderClip", "wheel", 2);
        _preloaderClip._x = _wheelX;
        _preloaderClip._y = _wheelY;
    } // End of the function
    function openAnimationFinished()
    {
        clearInterval(_waitInterval);
        this.dispatchEvent({type: "onPreloaderOpen"});
    } // End of the function
    function closeAnimationFinished()
    {
        clearInterval(_waitInterval);
        this.dispatchEvent({type: "onPreloaderClose"});
    } // End of the function
    function _resizeObjects()
    {
        var _loc2 = _label.__get__textWidth();
        _background.__set__width(_labelX + _loc2 + 25);
        _width = _labelX + _loc2 + 25;
        _label.__set__width(_loc2 + 10);
        this.__set__x(Math.round(Stage.width / 2 - _width / 2));
        this.__set__y(Math.round(Stage.height / 2 - _height / 2));
    } // End of the function
    var _componentClipName = "preloader";
    var _width = 170;
    var _height = 36;
    var _x = 0;
    var _y = 0;
    var _backgroundColor = 11383478;
    var _wheelX = 20;
    var _wheelY = 19;
    var _labelX = 37;
    var _labelY = 9;
} // End of Class
#endinitclip
