// Action script...

// [Initial MovieClip Action of sprite 149]
#initclip 45
class com.fbpublisher.basicskin.viewclasses.TextButton extends com.fbpublisher.basicskin.viewclasses.IconButton
{
    var _settings, _iconSymbol, _label, __get__label, __get__textShift, __get__text, __get__textPadding, _background, __get__labelFill, _clip, _width, _height, _icon, _button, __get__desiredSize, __get__background, __set__desiredSize, __set__label, __set__labelFill, __set__text, __set__textPadding, __set__textShift;
    function TextButton(settings, clip, iconSymbol)
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
    function set label(value)
    {
        _label = value;
        //return (this.label());
        null;
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
        _background.__set__opacity(100);
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
        _label.__set__fontColor(0);
        _label.__set__dropShadowDistance(1);
        _label.__set__dropShadowSize(0);
        _label.__set__dropShadowColor(16777215);
        _label.__set__dropShadowOpacity(75);
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
        _width = _loc3;
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
        _background.gradientOpacityTo(75, 200);
        _background.gradientScaleTo(90, 200);
        _label.fillTo(80, 200);
    } // End of the function
    function _animateOut(delay)
    {
        if (delay == undefined)
        {
            delay = 0;
        } // end if
        _background.gradientScaleTo(50, 200, delay);
        _background.gradientOpacityTo(55, 200, delay);
        _label.fillTo(_labelFill, 200);
    } // End of the function
    function _animatePress()
    {
        var _loc2 = 150;
        _background.innerShadowColorTo(0, _loc2);
        _background.innerShadowOpacityTo(40, _loc2);
        _background.dropShadowColorTo(16777215, _loc2);
        _background.dropShadowOpacityTo(70, _loc2);
        _background.gradientOpacityTo(0, _loc2);
    } // End of the function
    function _animateRelease()
    {
        var _loc2 = 150;
        _background.innerShadowColorTo(16777215, _loc2);
        _background.innerShadowOpacityTo(80, _loc2);
        _background.dropShadowColorTo(0, _loc2);
        _background.dropShadowOpacityTo(40, _loc2);
        _background.gradientOpacityTo(55, _loc2);
    } // End of the function
    function set desiredSize(width)
    {
        _desiredWidth = width;
        //return (this.desiredSize());
        null;
    } // End of the function
    var _text = "";
    var _textPadding = 15;
    var _textShift = 0;
    var _labelFill = 60;
    var _desiredWidth = 100;
    var _desiredHeight = 20;
} // End of Class
#endinitclip
