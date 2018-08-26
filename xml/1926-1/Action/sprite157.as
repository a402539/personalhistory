// Action script...

// [Initial MovieClip Action of sprite 157]
#initclip 53
class com.fbpublisher.basicskin.viewclasses.DevideLabel extends com.fbpublisher.basicskin.viewclasses.LayoutItem
{
    var _settings, _clip, labelClip, _label, skinColor, _backgroundShape, __get__color, width, height, __get__text, __get___height, __get___width, __set__color, __set__text;
    function DevideLabel(clip, text, settings)
    {
        super(clip);
        _settings = settings;
        mx.events.EventDispatcher.initialize(this);
        labelClip = _clip.createEmptyMovieClip("label", level++);
        _label = new com.fbpublisher.utils.graphics.StyleableLabel(labelClip);
        _label.__set__text(text);
        _label.__set__align("left");
        _label.__set__height(26);
        _label.__set__x(14);
        _label.__set__fontColor(_settings.secondaryTextColor);
        _label.__set__fill(65);
        _label.__set__dropShadowDistance(1);
        _label.__set__dropShadowSize(0);
        _label.__set__dropShadowAngle(45);
        _label.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _label.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _label.__set__fontSize(11);
        _label.__set__antiAliasType("advanced");
        _label.__set__selectable(false);
        _label.__set__type("dynamic");
        _label.__set__fontName(_settings.font2);
        _label.__set__embedFonts(true);
        skinColor = _settings.skinColor;
        this._createBackground();
    } // End of the function
    function updateStyles()
    {
        _label.__set__fontColor(_settings.secondaryTextColor);
        _label.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _label.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _backgroundShape.__set__gradientFromColor(_settings.windowSubHeaderGradientColor);
        _backgroundShape.__set__gradientToColor(_settings.windowSubHeaderGradientColor);
        _backgroundShape.__set__gradientFromAlpha(_settings.windowSubHeaderGradientAlphaFrom);
        _backgroundShape.__set__gradientToAlpha(_settings.windowSubHeaderGradientAlphaTo);
    } // End of the function
    function set color(col)
    {
        _backgroundShape.__set__color(col);
        //return (this.color());
        null;
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        width = newWidth;
        height = newHeight;
        _backgroundShape.__set__width(width);
        _backgroundShape.__set__height(height);
        _label.__set__width(width);
        labelClip._y = Math.round(height / 2 - 10);
        super.setSize(width, height);
    } // End of the function
    function set text(value)
    {
        _label.__set__text(value);
        //return (this.text());
        null;
    } // End of the function
    function _createBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("backgroundDown", 0);
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, this.__get___width(), this.__get___height());
        _backgroundShape.__set__cornerRadius(0);
        _backgroundShape.__set__color(skinColor);
        _backgroundShape.__set__gradientOpacity(50);
        _backgroundShape.__set__gradientFromColor(_settings.windowSubHeaderGradientColor);
        _backgroundShape.__set__gradientToColor(_settings.windowSubHeaderGradientColor);
        _backgroundShape.__set__gradientFromAlpha(_settings.windowSubHeaderGradientAlphaFrom);
        _backgroundShape.__set__gradientToAlpha(_settings.windowSubHeaderGradientAlphaTo);
        _backgroundShape.__set__dropShadowDistance(1);
        _backgroundShape.__set__dropShadowOpacity(35);
        _backgroundShape.__set__dropShadowAngle(90);
        _backgroundShape.__set__dropShadowSize(0);
        _backgroundShape.__set__dropShadowColor(16777215);
    } // End of the function
    var level = 1;
} // End of Class
#endinitclip
