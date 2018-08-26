// Action script...

// [Initial MovieClip Action of sprite 156]
#initclip 52
class com.fbpublisher.basicskin.viewclasses.buttons.PageUpButton extends com.fbpublisher.basicskin.viewclasses.LayoutItem
{
    var _settings, _clip, button, _icon, _button, _backgroundShape, dispatchEvent, __get__color, __get___height, __get___width, __get__topCornerRadius, __get__bottomCornerRadius, __set__bottomCornerRadius, __set__color, __get__selected, __set__topCornerRadius;
    function PageUpButton(clip, settings)
    {
        super(clip);
        mx.events.EventDispatcher.initialize(this);
        _settings = settings;
        button = _clip.createEmptyMovieClip("buttonData", level++);
        _icon = new com.fbpublisher.basicskin.viewclasses.BitmapIcon(button, "arrowUp");
        this._createButton();
        this._createBackground();
        this.setSize(_clip._width, _clip._height);
    } // End of the function
    function finishedTween()
    {
    } // End of the function
    function _createButton()
    {
        _button = new com.fbpublisher.basicskin.viewclasses.SimpleButton(_clip);
        _button.addEventListener("onRollOver", this);
        _button.addEventListener("onRollOut", this);
        _button.addEventListener("onPress", this);
        _button.addEventListener("onRelease", this);
        _button.addEventListener("onReleaseOutside", this);
    } // End of the function
    function onRollOver()
    {
        _backgroundShape.fillTo(20, 100);
    } // End of the function
    function onRollOut()
    {
        _backgroundShape.fillTo(30, 100);
    } // End of the function
    function onPress()
    {
        _backgroundShape.fillTo(40, 100);
        this.dispatchEvent({type: "onButtonPress", target: this});
    } // End of the function
    function onRelease()
    {
        _backgroundShape.fillTo(20, 100);
    } // End of the function
    function onReleaseOutside()
    {
        _backgroundShape.fillTo(30, 100);
    } // End of the function
    function set color(col)
    {
        _backgroundShape.__set__color(col);
        //return (this.color());
        null;
    } // End of the function
    function setSize(width, height)
    {
        _button.__set__width(width);
        _button.__set__height(height);
        _backgroundShape.__set__width(width);
        _backgroundShape.__set__height(height);
        button._x = width / 2 - 7;
        button._y = height / 2 - 5;
        super.setSize(width, height);
    } // End of the function
    function _createBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("backgroundUp", 0);
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, this.__get___width(), this.__get___height());
        _backgroundShape.__set__cornerRadius(0);
        _backgroundShape.__set__color(_settings.skinColor);
        _backgroundShape.__set__fill(30);
        _backgroundShape.__set__dropShadowColor(0);
        _backgroundShape.__set__dropShadowDistance(1);
        _backgroundShape.__set__dropShadowOpacity(35);
        _backgroundShape.__set__dropShadowAngle(90);
        _backgroundShape.__set__dropShadowSize(0);
    } // End of the function
    function set topCornerRadius(value)
    {
        _backgroundShape.setCustomCornerRadius(value, "top-left");
        _backgroundShape.setCustomCornerRadius(value, "top-right");
        //return (this.topCornerRadius());
        null;
    } // End of the function
    function set bottomCornerRadius(value)
    {
        _backgroundShape.setCustomCornerRadius(value, "bottom-left");
        _backgroundShape.setCustomCornerRadius(value, "bottom-right");
        //return (this.bottomCornerRadius());
        null;
    } // End of the function
    function get selected()
    {
        return (_selected);
    } // End of the function
    function deleteClip()
    {
        _clip = null;
    } // End of the function
    var level = 1;
    var _selected = false;
} // End of Class
#endinitclip
