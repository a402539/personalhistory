// Action script...

// [Initial MovieClip Action of sprite 150]
#initclip 46
class com.fbpublisher.basicskin.viewclasses.Hint extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var hide, _settings, _label, _background, __set__x, __set__y, __get__x, show, _clip, _backgroundClip, _labelClip, B, A, C;
    function Hint(parentClip, _settings)
    {
        super(parentClip, _settings);
        this._create();
        this.hide();
    } // End of the function
    function updateStyles()
    {
        _label.__set__fontColor(_settings.secondaryTextColor);
        _label.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _label.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
    } // End of the function
    function open(hintText, cx, cy)
    {
        _background.stopAnimation();
        _label.stopAnimation();
        cx = Math.round(cx);
        cy = cy - 2;
        _label.__set__text(hintText);
        this._resizeBackground();
        this._positionLabel();
        this.__set__x(cx - _background.__get__width() / 2);
        this.__set__y(cy - _background.__get__height());
        if (this.__get__x() < 0)
        {
            var _loc3 = this.__get__x();
            this.__set__x(0);
            this._shiftBackground(_loc3);
        }
        else if (this.__get__x() + _background.__get__width() > Stage.width)
        {
            _loc3 = this.__get__x() + _background.__get__width() - Stage.width;
            this.__set__x(Stage.width - _background.__get__width());
            this._shiftBackground(_loc3);
        } // end else if
        _background.__set__color(_settings.skinColor);
        this._animateOpen();
        this.show();
    } // End of the function
    function close()
    {
        this.hide();
    } // End of the function
    function _create()
    {
        _backgroundClip = _clip.createEmptyMovieClip("background", 0);
        _background = new com.fbpublisher.utils.graphics.StyleableShape(_backgroundClip);
        _background.__set__cornerRadius(_cornerRadius);
        _background.addPoint(0, 0);
        _background.addPoint(84, 0);
        _background.addPoint(84, 21);
        _background.addPoint(48, 21, 0);
        _background.addPoint(42, 26, 0);
        _background.addPoint(37, 21, 0);
        _background.addPoint(0, 21);
        _background.draw();
        _background.__set__color(_settings.skinColor);
        _background.__set__dropShadowSize(10);
        _background.__set__dropShadowDistance(7);
        _background.__set__dropShadowQuality(3);
        _background.__set__dropShadowOpacity(63);
        _background.__set__dropShadowAngle(90);
        _background.__set__strokeColor(16777215);
        _background.__set__strokePosition("inner");
        _background.__set__strokeSize(1);
        _background.__set__strokeOpacity(10);
        _background.__set__gradientAngle(90);
        _background.__set__gradientToColor(16777215);
        _background.__set__gradientToAlpha(40);
        _background.__set__gradientFromAlpha(65);
        _labelClip = _clip.createEmptyMovieClip("label", 1);
        _label = new com.fbpublisher.utils.graphics.StyleableLabel(_labelClip);
        _label.__set__width(150);
        _label.__set__height(36);
        _label.__set__fill(75);
        _label.__set__antiAliasType("advanced");
        _label.__set__selectable(false);
        _label.__set__text("Loading..");
        _label.__set__fontName(_settings.font1);
        _label.__set__type("dynamic");
        _label.__set__embedFonts(true);
        _label.__set__fontColor(_settings.secondaryTextColor);
        _label.__set__dropShadowDistance(1);
        _label.__set__dropShadowSize(0);
        _label.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _label.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _label.__set__fontSize(10);
        _label.__set__x(5);
        _label.__set__y(5);
    } // End of the function
    function _animateOpen()
    {
        var _loc2 = 0.500000;
        _background.movePoint(4, B.x, 21.100000);
        _background.draw();
        _background.movePointTo(4, B.x, 26, 200 * _loc2, 200 * _loc2);
        _background.__set__dropShadowSize(0);
        _background.dropShadowSizeTo(10, 300 * _loc2);
        _background.__set__dropShadowDistance(0);
        _background.dropShadowDistanceTo(7, 300 * _loc2);
        _label.__set__opacity(0);
        _label.opacityTo(100, 300 * _loc2, 50 * _loc2);
        _background.__set__gradientOpacity(50);
        _background.gradientOpacityTo(100, 400 * _loc2, 100 * _loc2);
        _background.strokeOpacityTo(65, 200 * _loc2, 200 * _loc2);
        _label.__set__opacity(0);
        _label.opacityTo(100, 500 * _loc2, 100 * _loc2);
    } // End of the function
    function _positionLabel()
    {
        _label.__set__x(_paddingX - 1);
        _label.__set__y(3);
    } // End of the function
    function _shiftBackground(shift)
    {
        A = {x: _background.__get__width() / 2 + 6 + shift, y: 21};
        B = {x: _background.__get__width() / 2 + shift, y: 26};
        C = {x: _background.__get__width() / 2 - 5 + shift, y: 21};
        _background.movePoint(3, A.x, A.y);
        _background.movePoint(4, B.x, B.y);
        _background.movePoint(5, C.x, C.y);
        _background.draw();
    } // End of the function
    function _resizeBackground()
    {
        var _loc3 = _label.__get__textWidth() + 2 * _gutter;
        var _loc2 = _loc3 + 2 * _paddingX;
        A = {x: _loc2 / 2 + 6, y: 21};
        B = {x: _loc2 / 2, y: 26};
        C = {x: _loc2 / 2 - 5, y: 21};
        _background.movePoint(1, _loc2, 0);
        _background.movePoint(2, _loc2, 21);
        _background.movePoint(3, A.x, A.y);
        _background.movePoint(4, B.x, B.y);
        _background.movePoint(5, C.x, C.y);
        _background.draw();
    } // End of the function
    var _componentClipName = "hint";
    var _cornerRadius = 4;
    var _paddingX = 16;
    var _paddingY = 6;
    var _gutter = 2;
} // End of Class
#endinitclip
