// Action script...

// [Initial MovieClip Action of sprite 152]
#initclip 48
class com.fbpublisher.basicskin.viewclasses.ScrollView extends com.fbpublisher.basicskin.viewclasses.LayoutItem
{
    var _settings, skinColor, _clip, contentClip, _backgroundShape, __get__color, __get___height, __get___width, _maskShape, __get__contentX, __get__contentY, __set__color, __get__contentHeight, __set__contentX, __set__contentY;
    function ScrollView(settings, clip, _skinColor)
    {
        super(clip);
        _settings = settings;
        skinColor = _skinColor;
        this._createBackground();
        contentClip = _clip.createEmptyMovieClip("bookClip", level++);
        this._createMask();
    } // End of the function
    function set color(col)
    {
        _backgroundShape.__set__color(col);
        //return (this.color());
        null;
    } // End of the function
    function _createBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("backgroundDown", level++);
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, this.__get___width(), this.__get___height());
        _backgroundShape.__set__cornerRadius(0);
        _backgroundShape.__set__color(skinColor);
        _backgroundShape.__set__gradientFromColor(16777215);
        _backgroundShape.__set__gradientToColor(16777215);
        _backgroundShape.__set__gradientFromAlpha(75 * _settings.__get__windowBackgroundOpacity());
        _backgroundShape.__set__gradientToAlpha(80 * _settings.__get__windowBackgroundOpacity());
    } // End of the function
    function _createMask()
    {
        var _loc2 = _clip.createEmptyMovieClip("maskClip", level++);
        _maskShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, this.__get___width(), this.__get___height());
        _maskShape.__set__cornerRadius(0);
        _maskShape.__set__color(skinColor);
        _maskShape.__set__gradientFromColor(16777215);
        _maskShape.__set__gradientToColor(16777215);
        _maskShape.__set__gradientFromAlpha(30);
        _maskShape.__set__gradientToAlpha(30);
        _clip.setMask(_loc2);
    } // End of the function
    function set contentX(value)
    {
        contentClip._x = value;
        //return (this.contentX());
        null;
    } // End of the function
    function get contentX()
    {
        return (contentClip._x);
    } // End of the function
    function set contentY(value)
    {
        contentClip._y = value;
        //return (this.contentY());
        null;
    } // End of the function
    function get contentY()
    {
        return (contentClip._y);
    } // End of the function
    function get contentHeight()
    {
        return (contentClip._height);
    } // End of the function
    function setSize(width, height)
    {
        _maskShape.__set__width(width);
        _maskShape.__set__height(height);
        _backgroundShape.__set__width(width);
        _backgroundShape.__set__height(height);
        super.setSize(width, height);
    } // End of the function
    var level = 0;
} // End of Class
#endinitclip
