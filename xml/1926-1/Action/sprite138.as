// Action script...

// [Initial MovieClip Action of sprite 138]
#initclip 34
class com.fbpublisher.basicskin.viewclasses.windows.SearchFormWindow extends com.fbpublisher.basicskin.viewclasses.LayoutItem
{
    var __set__Fixed, _input, _hint, __get__hint, backgrnd, _submitButton, __get__color, _buttonClip, _clip, _preloaderClip, dispatchEvent, __get__waiting, __get__query, width, height, __set__color, __get__hasFocus, __set__hint, __set__query, __set__waiting;
    function SearchFormWindow(clip, color)
    {
        super(clip);
        this._create();
        this.__set__Fixed(true);
    } // End of the function
    function updateTextEditColor()
    {
        if (_hasFocus)
        {
            _input.__get__background().colorTo(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__textEditFocusBG(), 200);
        }
        else
        {
            _input.__get__background().colorTo(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__textEditBG(), 200);
        } // end else if
    } // End of the function
    function set hint(value)
    {
        _hint = value;
        //return (this.hint());
        null;
    } // End of the function
    function set color(col)
    {
        backgrnd.__set__color(col);
        _submitButton.__set__color(col);
        //return (this.color());
        null;
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
    function _create()
    {
        var _loc2 = _clip.createEmptyMovieClip();
        backgrnd = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, 200, 20);
        backgrnd.__set__cornerRadius(0);
        backgrnd.__set__color(65280);
        backgrnd.__set__fill(80);
        backgrnd.__set__dropShadowDistance(1);
        backgrnd.__set__strokeSize(1);
        backgrnd.__set__strokeColor(16777215);
        backgrnd.__set__dropShadowDistance(1);
        backgrnd.__set__dropShadowSize(4);
        backgrnd.__set__dropShadowAngle(90);
        backgrnd.__set__dropShadowOpacity(50);
        _preloaderClip = _clip.attachMovie("PreloaderClip", "wheel", _clip.getNextHighestDepth());
        _preloaderClip._visible = false;
        var _loc3 = _clip.createEmptyMovieClip("inputClip", _clip.getNextHighestDepth());
        _input = new com.fbpublisher.basicskin.viewclasses.TextInput(_loc3, com.fbpublisher.basicskin.ApplicationSettings.__get__singleton());
        _input.__set__width(230);
        _input.__set__height(22);
        _input.__set__text("Search");
        _input.addEventListener("onKeyDown", this);
        _input.addEventListener("onKeyUp", this);
        _input.addEventListener("onSetFocus", this);
        _input.addEventListener("onKillFocus", this);
        this._drawTextInputStyle();
        _buttonClip = _clip.createEmptyMovieClip("button", _clip.getNextHighestDepth());
        _submitButton = new com.fbpublisher.basicskin.viewclasses.TextButton(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton(), _buttonClip, "searchIcon");
        _submitButton.__set__icon("PreloaderIcon");
        _submitButton.setSize(_buttonWidth, _buttonHeight);
        _submitButton.__set__cornerRadius(4);
        _submitButton.addEventListener("onRelease", mx.utils.Delegate.create(this, onSubmitButtonPressed));
        _submitButton.addEventListener("onRollOver", this);
        _submitButton.addEventListener("onRollOut", this);
        _submitButton.addEventListener("onPress", this);
        _submitButton.addEventListener("onReleaseOutside", this);
    } // End of the function
    function onSubmitButtonPressed()
    {
        this._showHint(false);
        com.fbpublisher.basicskin.viewclasses.SearchField.__get__singleton().__set__query(_input.text);
        this.dispatchEvent({type: "onSearchText", query: _input.__get__text()});
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
    function onSetFocus()
    {
        _input.__get__background().colorTo(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__textEditFocusBG(), 200);
        _hasFocus = true;
    } // End of the function
    function onKillFocus()
    {
        _input.__get__background().colorTo(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__textEditBG(), 200);
        _hasFocus = false;
    } // End of the function
    function get hasFocus()
    {
        return (_hasFocus);
    } // End of the function
    function onKeyDown()
    {
        if (_hasFocus && Key.getCode() == 27)
        {
            _input.killFocus();
        }
        else if (_hasFocus && Key.getCode() == 13)
        {
            _submitButton.emulatePress();
        } // end else if
    } // End of the function
    function onKeyUp()
    {
        if (_hasFocus && Key.getCode() == 13)
        {
            _submitButton.emulateRelease();
            com.fbpublisher.basicskin.viewclasses.SearchField.__get__singleton().__set__query(_input.text);
            this.dispatchEvent({type: "onSearchText", query: _input.__get__text()});
        } // end if
    } // End of the function
    function set waiting(value)
    {
        if (value)
        {
            _submitButton.__set__icon("PreloaderIcon");
            _submitButton.setSize(_buttonWidth, _buttonHeight);
        }
        else
        {
            _submitButton.__set__icon("searchIcon");
            _submitButton.setSize(_buttonWidth, _buttonHeight);
        } // end else if
        //return (this.waiting());
        null;
    } // End of the function
    function get waiting()
    {
        return (_preloaderClip._visible);
    } // End of the function
    function set query(value)
    {
        _input.__set__text(value);
        //return (this.query());
        null;
    } // End of the function
    function get query()
    {
        //return (_input.text().toLowerCase());
    } // End of the function
    function _drawTextInputStyle()
    {
        _input.__get__background().__set__cornerRadius(4);
        _input.__get__background().__set__innerShadowDistance(1);
        _input.__get__background().__set__innerShadowSize(0);
        _input.__get__background().__set__innerShadowOpacity(55);
        _input.__get__background().__set__innerShadowQuality(1);
        _input.__get__background().__set__dropShadowDistance(1);
        _input.__get__background().__set__dropShadowSize(0);
        _input.__get__background().__set__dropShadowColor(16777215);
        _input.__get__background().__set__dropShadowOpacity(90);
        _input.__get__background().__set__fill(100);
        _input.__get__label().__set__fill(85);
        _input.__get__label().__set__opacity(80);
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        width = newWidth;
        height = newHeight;
        backgrnd.__set__width(newWidth);
        backgrnd.__set__height(newHeight);
        _input.__set__x(10);
        _input.__set__y(5);
        _submitButton.__set__y(_input.y);
        _submitButton.__set__x(_input.__get__x() + _input.__get__width() + 5);
        _preloaderClip._y = _submitButton.__get__y() + _submitButton.__get__height() / 2;
        _preloaderClip._x = _submitButton.__get__x() + _submitButton.__get__width() / 2;
    } // End of the function
    var _buttonWidth = 40;
    var _buttonHeight = 22;
    var _hasFocus = false;
} // End of Class
#endinitclip
