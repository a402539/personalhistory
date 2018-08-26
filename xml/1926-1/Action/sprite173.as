// Action script...

// [Initial MovieClip Action of sprite 173]
#initclip 69
class com.fbpublisher.basicskin.viewclasses.buttons.TrialButton extends com.fbpublisher.basicskin.viewclasses.IconButton
{
    var _settings, _iconSymbol, _label, __get__textShift, __get__text, __get__textPadding, _background, __get__labelFill, _clip, _width, _height, _icon, _button, __get__background, __get__label, __set__labelFill, __set__text, __set__textPadding, __set__textShift;
    function TrialButton(clip, settings, iconSymbol)
    {
        super(clip, iconSymbol);
        _settings = settings;
        _iconSymbol = iconSymbol;
        this._adjustBackground();
    } // End of the function
    function get label()
    {
        return (_label);
    } // End of the function
    function get textShift()
    {
        return (_textShift);
    } // End of the function
    function set textShift(newShift)
    {
        _textShift = newShift;
        this._arrangeElements();
        //return (this.textShift());
        null;
    } // End of the function
    function get text()
    {
        return (_text);
    } // End of the function
    function set text(newText)
    {
        _text = newText;
        if (_text != "")
        {
            if (_label == undefined)
            {
                this._createLabel();
            } // end if
            _label.__set__text(_text);
            this._arrangeElements();
        } // end if
        //return (this.text());
        null;
    } // End of the function
    function get textPadding()
    {
        return (_textPadding);
    } // End of the function
    function set textPadding(newPadding)
    {
        _textPadding = newPadding;
        this._arrangeElements();
        //return (this.textPadding());
        null;
    } // End of the function
    function get background()
    {
        return (_background);
    } // End of the function
    function get labelFill()
    {
        //return (_label.fill());
    } // End of the function
    function set labelFill(newFill)
    {
        _labelFill = newFill;
        _label.__set__fill(_labelFill);
        //return (this.labelFill());
        null;
    } // End of the function
    function _adjustBackground()
    {
        _background.__set__opacity(25);
        _background.__set__gradientAngle(90);
        _background.__set__gradientToColor(_background.gradientFromColor);
        _background.__set__strokeColor(0);
        _background.__set__strokeSize(1);
        _background.__set__strokeOpacity(30);
    } // End of the function
    function _createLabel()
    {
        var _loc2 = _clip.createEmptyMovieClip("label", _clip.getNextHighestDepth());
        _label = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        _label.__set__antiAliasType("advanced");
        _label.__set__selectable(false);
        _label.__set__type("dynamic");
        _label.__set__fontName(_settings.font2);
        _label.__set__embedFonts(true);
        _label.__set__autoSize(true);
        _label.__set__fontColor(_settings.mainTextColor);
        _label.__set__dropShadowDistance(1);
        _label.__set__dropShadowSize(0);
        _label.__set__dropShadowColor(_settings.mainTextShadowColor);
        _label.__set__dropShadowOpacity(_settings.mainTextShadowOpacity);
        _label.__set__fontSize(11);
        _label.__set__fill(_labelFill);
    } // End of the function
    function _arrangeElements()
    {
        var _loc2 = _label.__get__textWidth();
        if (_loc2 == undefined)
        {
            _loc2 = 0;
        } // end if
        var _loc3 = _textPadding * 2 + _loc2;
        if (_width < _loc3)
        {
            _width = _loc3;
        } // end if
        _background.setSize(_width, _height);
        if (_iconSymbol != "")
        {
            _icon.__set__x(Math.round(_width / 2 - _icon.__get__width() / 2));
            _icon.__set__y(Math.round(_height / 2 - _icon.__get__height() / 2));
        } // end if
        _button.setSize(_width, _height);
        if (_label != undefined)
        {
            _label.__set__x(Math.round(_width / 2 - _label.__get__textWidth() / 2 - 3) + _textShift);
            _label.__set__y(Math.round(_height / 2 - _label.__get__textHeight() / 2 - 3));
        } // end if
    } // End of the function
    function _animateOver()
    {
        this.__get__background().opacityTo(40, 200);
    } // End of the function
    function _animateOut(delay)
    {
        this.__get__background().opacityTo(25, 200);
    } // End of the function
    function _animatePress()
    {
    } // End of the function
    function _animateRelease()
    {
    } // End of the function
    var _text = "";
    var _textPadding = 15;
    var _textShift = 0;
    var _labelFill = 75;
} // End of Class
#endinitclip
