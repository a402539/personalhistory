// Action script...

// [Initial MovieClip Action of sprite 151]
#initclip 47
class com.fbpublisher.basicskin.viewclasses.SearchField extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _clip, _width, __get__width, _height, __get__height, _hint, __get__hint, _menuWidth, __get__menuWidth, _menuHeight, __get__menuHeight, _maxWidth, __get__maxWidth, _padding, __get__padding, __get__x, __set__x, _textInput, __get__xAnimate, __set__y, __get__yAnimate, _submitButton, __get__skinColor, _iconClip, _icon, _textInputClip, _settings, _buttonClip, __get__query, __get__y, __get__hasFocus, __set__height, __set__hint, __set__maxWidth, __set__menuHeight, __set__menuWidth, __set__padding, __set__query, __set__skinColor, __set__width, __set__xAnimate, __set__yAnimate;
    static var _singleton, __get__singleton;
    function SearchField(parentClip)
    {
        super(parentClip, com.fbpublisher.basicskin.ApplicationSettings.__get__singleton());
        this.create();
        mx.events.EventDispatcher.initialize(this);
        _singleton = this;
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
    static function get singleton()
    {
        return (com.fbpublisher.basicskin.viewclasses.SearchField._singleton);
    } // End of the function
    function get width()
    {
        return (_clip._width);
    } // End of the function
    function set width(newWidth)
    {
        _width = newWidth;
        this._arrangeElements();
        //return (this.width());
        null;
    } // End of the function
    function get height()
    {
        return (_clip._height);
    } // End of the function
    function set height(newHeight)
    {
        _height = newHeight;
        this._arrangeElements();
        //return (this.height());
        null;
    } // End of the function
    function get hint()
    {
        return (_hint);
    } // End of the function
    function set hint(newHint)
    {
        _hint = newHint;
        //return (this.hint());
        null;
    } // End of the function
    function get menuWidth()
    {
        return (_menuWidth);
    } // End of the function
    function set menuWidth(newWidth)
    {
        _menuWidth = newWidth;
        this._arrangeElements();
        //return (this.menuWidth());
        null;
    } // End of the function
    function get menuHeight()
    {
        return (_menuHeight);
    } // End of the function
    function set menuHeight(newHeight)
    {
        _menuHeight = newHeight;
        this._arrangeElements();
        //return (this.menuHeight());
        null;
    } // End of the function
    function get maxWidth()
    {
        return (_maxWidth);
    } // End of the function
    function set maxWidth(newWidth)
    {
        _maxWidth = newWidth;
        this._arrangeElements();
        //return (this.maxWidth());
        null;
    } // End of the function
    function get padding()
    {
        return (_padding);
    } // End of the function
    function set padding(newPadding)
    {
        _padding = newPadding;
        this._arrangeElements();
        //return (this.padding());
        null;
    } // End of the function
    function get xAnimate()
    {
        //return (this.x());
    } // End of the function
    function set xAnimate(newX)
    {
        this.__set__x(newX);
        _textInput.__set__width(_menuWidth - _padding - newX);
        //return (this.xAnimate());
        null;
    } // End of the function
    function set yAnimate(newY)
    {
        this.__set__y(Math.round(newY));
        _textInput.__set__height(_menuHeight - 2 * newY);
        //return (this.yAnimate());
        null;
    } // End of the function
    function set skinColor(newColor)
    {
        _submitButton.__set__color(newColor);
        //return (this.skinColor());
        null;
    } // End of the function
    function create()
    {
        this._createButton();
        this._createTextInput();
        this._createIcon();
        this._arrangeElements();
    } // End of the function
    function _createIcon()
    {
        _iconClip = _clip.createEmptyMovieClip("icon", 2);
        _icon = new com.fbpublisher.basicskin.viewclasses.BitmapIcon(_iconClip, "searchDecorativeIcon");
    } // End of the function
    function _createTextInput()
    {
        _textInputClip = _clip.createEmptyMovieClip("textInput", 0);
        _textInput = new com.fbpublisher.basicskin.viewclasses.TextInput(_textInputClip, _settings);
        _textInput.addEventListener("onSetFocus", this);
        _textInput.addEventListener("onKillFocus", this);
        _textInput.addEventListener("onMouseDown", this);
        _textInput.addEventListener("onKeyDown", this);
        _textInput.addEventListener("onKeyUp", this);
        this._drawUnfocusedStyle();
    } // End of the function
    function _drawUnfocusedStyle()
    {
        _textInput.__get__background().__set__cornerRadius(_cornerRadius);
        _textInput.__get__background().__set__innerShadowDistance(1);
        _textInput.__get__background().__set__innerShadowSize(0);
        _textInput.__get__background().__set__innerShadowOpacity(70);
        _textInput.__get__background().__set__innerShadowQuality(1);
        _textInput.__get__background().__set__dropShadowOpacity(0);
        _textInput.__set__paddingX(7);
        _textInput.__set__paddingY(2);
        _textInput.__get__background().__set__fill(100);
        _textInput.__get__label().__set__fill(85);
        _textInput.__get__label().__set__opacity(80);
    } // End of the function
    function _drawFocusedStyle()
    {
        _textInput.__get__background().__set__cornerRadius(4);
        _textInput.__set__paddingX(8);
        _textInput.__set__paddingY(4);
    } // End of the function
    function _createButton()
    {
        _buttonClip = _clip.createEmptyMovieClip("button", 1);
        _submitButton = new com.fbpublisher.basicskin.viewclasses.TextButton(_settings, _buttonClip, "searchIcon");
        _submitButton.setSize(_buttonWidth, _buttonHeight);
        _submitButton.__set__cornerRadius(4);
        _submitButton.hide();
        _submitButton.addEventListener("onRelease", mx.utils.Delegate.create(this, onSubmitButtonPressed));
        _submitButton.addEventListener("onRollOver", this);
        _submitButton.addEventListener("onRollOut", this);
        _submitButton.addEventListener("onPress", this);
        _submitButton.addEventListener("onReleaseOutside", this);
    } // End of the function
    function set query(value)
    {
        text = value;
        this.updateTextInput();
        //return (this.query());
        null;
    } // End of the function
    function _arrangeElements()
    {
        var _loc2 = this._getPositionData();
        if (_hasFocus)
        {
            _icon.hide();
            _submitButton.show();
            _submitButton.__set__x(_loc2.buttonX);
            _submitButton.__set__y(_loc2.buttonY);
            this._drawFocusedStyle();
        }
        else
        {
            _icon.show();
            _icon.__set__x(_textInput.__get__width() - _icon.__get__width());
            _icon.__set__y(-3);
            this._drawUnfocusedStyle();
        } // end else if
        _textInput.setSize(_loc2.textInputWidth, _loc2.textInputHeight);
        this.__set__x(Math.round(_loc2.textX));
        this.__set__y(Math.round(_loc2.textY));
        if (_loc2.textInputWidth < _minWidth)
        {
            _textInput.hide();
        }
        else
        {
            _textInput.show();
        } // end else if
    } // End of the function
    function _getPositionData()
    {
        if (_hasFocus)
        {
            var _loc2 = _maxWidth - _padding - _buttonWidth - _buttonPadding;
            var _loc6 = _maxRequiredWidth < _loc2 ? (_maxRequiredWidth) : (_loc2);
            var _loc5 = _focusedTextInputHeight;
            var _loc4 = _menuWidth - _loc6 - _padding - _buttonWidth - _buttonPadding;
            var _loc3 = _menuHeight / 2 - _loc5 / 2;
            var _loc8 = _loc6 + _buttonPadding;
            var _loc7 = (_loc5 - _buttonHeight) / 2;
        }
        else
        {
            _loc6 = _initialTextInputWidth;
            _loc5 = _initialTextInputHeight;
            if (_initialTextInputWidth > _maxWidth)
            {
                _loc6 = _maxWidth;
            } // end if
            _loc4 = _menuWidth - _padding - _loc6;
            _loc3 = _menuHeight / 2 - _loc5 / 2;
        } // end else if
        return ({textInputWidth: _loc6, textInputHeight: _loc5, textX: _loc4, textY: _loc3, buttonX: _loc8, buttonY: _loc7});
    } // End of the function
    function onMouseDown()
    {
        if (_hasFocus && this._mouseOutside() && !_isAnimating)
        {
            _textInput.killFocus();
        } // end if
    } // End of the function
    function onSetFocus()
    {
        _textInput.__get__background().colorTo(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__textEditFocusBG(), 200);
        _hasFocus = true;
        this._animateOpen();
    } // End of the function
    function get hasFocus()
    {
        return (_hasFocus);
    } // End of the function
    function updateTextInput()
    {
        if (text.length > 13)
        {
            _textInput.__set__text(com.fbpublisher.utils.StringUtils.withoutLastSpaces(text.substr(0, 10)) + "...");
        }
        else
        {
            _textInput.__set__text(text);
        } // end else if
    } // End of the function
    function onKillFocus()
    {
        _textInput.__get__background().colorTo(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__textEditBG(), 200);
        _hasFocus = false;
        text = _textInput.text;
        this.updateTextInput();
        this._animateClose();
    } // End of the function
    function _animateOpen()
    {
        _isAnimating = true;
        var _loc2 = this._getPositionData();
        _icon.hide();
        new com.timwalling.TweenDelay(this, "xAnimate", mx.transitions.easing.Regular.easeInOut, this.__get__x(), _loc2.textX, 0.300000, 0, true);
        var _loc3 = new com.timwalling.TweenDelay(this, "yAnimate", mx.transitions.easing.Regular.easeInOut, this.__get__y(), _loc2.textY, 0.100000, 0.300000, true);
        _loc3.onMotionFinished = mx.utils.Delegate.create(this, onFirstStageOpen);
    } // End of the function
    function updateTextEditColor()
    {
        if (_hasFocus)
        {
            _textInput.__get__background().colorTo(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__textEditFocusBG(), 200);
        }
        else
        {
            _textInput.__get__background().colorTo(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__textEditBG(), 200);
        } // end else if
    } // End of the function
    function onFirstStageOpen()
    {
        var _loc2 = this._getPositionData();
        new com.timwalling.TweenDelay(_textInput, "width", mx.transitions.easing.Regular.easeInOut, _loc2.textInputWidth + _buttonWidth + _buttonPadding, _loc2.textInputWidth, 0.200000, 0, true);
        _textInput.__get__background().cornerRadiusTo(4, 200);
        _textInput.__set__paddingX(8);
        _textInput.__set__paddingY(4);
        _textInput.__set__text(text);
        var _loc3 = new com.timwalling.TweenDelay(_submitButton, "alpha", mx.transitions.easing.Regular.easeInOut, 0, 100, 0.200000, 0.200000, true);
        _loc3.onMotionFinished = mx.utils.Delegate.create(this, onSecondStageOpen);
        _submitButton.show();
        _submitButton.__set__alpha(0);
        _submitButton.__set__x(_loc2.buttonX);
        _submitButton.__set__y(_loc2.buttonY);
    } // End of the function
    function onSecondStageOpen()
    {
        this._arrangeElements();
        _isAnimating = false;
    } // End of the function
    function _animateClose()
    {
        _isAnimating = true;
        var _loc3 = this._getPositionData();
        new com.timwalling.TweenDelay(_submitButton, "alpha", mx.transitions.easing.Regular.easeInOut, 100, 0, 0.100000, 0, true);
        var _loc2 = new com.timwalling.TweenDelay(_textInput, "width", mx.transitions.easing.Regular.easeInOut, _textInput.__get__width(), _textInput.__get__width() + _buttonWidth + _buttonPadding, 0.100000, 0.100000, true);
        _loc2.onMotionFinished = mx.utils.Delegate.create(this, onFirstStageClose);
    } // End of the function
    function onFirstStageClose()
    {
        var _loc2 = this._getPositionData();
        _submitButton.hide();
        _submitButton.__set__alpha(100);
        _submitButton.__set__x(_loc2.buttonX);
        _submitButton.__set__y(_loc2.buttonY);
        _textInput.__get__background().cornerRadiusTo(_cornerRadius, 100);
        _textInput.__set__paddingX(7);
        _textInput.__set__paddingY(2);
        new com.timwalling.TweenDelay(this, "yAnimate", mx.transitions.easing.Regular.easeInOut, this.__get__y(), _loc2.textY, 0.050000, 0, true);
        var _loc3 = new com.timwalling.TweenDelay(this, "xAnimate", mx.transitions.easing.Regular.easeInOut, this.__get__x(), _loc2.textX, 0.150000, 0.050000, true);
        _loc3.onMotionFinished = mx.utils.Delegate.create(this, onSecondStageClose);
    } // End of the function
    function onSecondStageClose()
    {
        this._arrangeElements();
        _isAnimating = false;
    } // End of the function
    function _mouseOutside()
    {
        var _loc3 = {x: _root._xmouse, y: _root._ymouse};
        _clip.globalToLocal(_loc3);
        return (_loc3.x < 0 || _loc3.y < 0 || _loc3.x > _clip._width || _loc3.y > _clip._height);
    } // End of the function
    function onKeyDown()
    {
        if (_hasFocus && Key.getCode() == 27 && !_isAnimating)
        {
            _textInput.killFocus();
        }
        else if (_hasFocus && Key.getCode() == 13 && !_isAnimating)
        {
            _submitButton.emulatePress();
        } // end else if
    } // End of the function
    function onSubmitButtonPressed()
    {
        this._showHint(false);
        this.dispatchEvent({type: "onSearchText", query: _textInput.__get__text()});
    } // End of the function
    function onRollOver(eventObject)
    {
        this._showHint(true);
    } // End of the function
    function onRollOut(eventObject)
    {
        this._showHint(false);
    } // End of the function
    function onPress(eventObject)
    {
        this._showHint(false);
    } // End of the function
    function onReleaseOutside(eventObject)
    {
        this._showHint(false);
    } // End of the function
    function _showHint(show)
    {
        var _loc4 = com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchButtonHint();
        if (show)
        {
            var _loc2 = _buttonClip;
            var _loc6 = _loc2._x + _loc2._width / 2;
            var _loc5 = _loc2._y;
            var _loc3 = {x: _loc6, y: _loc5};
            _clip.localToGlobal(_loc3);
            if (_loc4 != "")
            {
                _hint.open(_loc4, _loc3.x, _loc3.y);
            } // end if
        }
        else
        {
            _hint.close();
        } // end else if
    } // End of the function
    function onKeyUp()
    {
        if (_hasFocus && Key.getCode() == 13 && !_isAnimating)
        {
            _submitButton.emulateRelease();
            this.dispatchEvent({type: "onSearchText", query: _textInput.__get__text()});
        } // end if
    } // End of the function
    var _componentClipName = "searchField";
    var _buttonWidth = 40;
    var _buttonHeight = 22;
    var _buttonPadding = 5;
    var _initialTextInputWidth = 114;
    var _initialTextInputHeight = 17;
    var _focusedTextInputHeight = 21;
    var _hasFocus = false;
    var _maxRequiredWidth = 300;
    var _minWidth = 30;
    var _cornerRadius = 6;
    var _isAnimating = false;
    var _searchQuery = "";
    var text = "";
} // End of Class
#endinitclip
