// Action script...

// [Initial MovieClip Action of sprite 170]
#initclip 66
class com.fbpublisher.basicskin.viewclasses.windows.mainwindow.PermalinkPanel extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _settings, _baseURL, __set__y, _label, _shareButton, _copyButton, _width, _height, __get__width, __get__height, _background, __get__skinColor, __get__y, _pageNumber, _permalinkURL, _textInput, __get__pageNumber, __get__baseURL, __get__mainLabel, __get__shareLabel, __get__copyLabel, __set__height, _clip, _backgroundClip, _textInputClip, _labelClip, __set__baseURL, __set__copyLabel, __set__mainLabel, __get__opened, __set__pageNumber, __set__shareLabel, __set__skinColor, __get__visibleHeight, __set__width;
    function PermalinkPanel(parentClip, settings)
    {
        super(parentClip, settings);
        _baseURL = _settings.permalinkBaseURL;
        this._create();
        this.__set__y(-_panelHeight);
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
    function updateStyles()
    {
        _label.__set__fontColor(_settings.secondaryTextColor);
        _label.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _label.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _shareButton.__get__label().__set__fontColor(_settings.secondaryTextColor);
        _shareButton.__get__label().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _shareButton.__get__label().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _copyButton.__get__label().__set__fontColor(_settings.secondaryTextColor);
        _copyButton.__get__label().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _copyButton.__get__label().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
    } // End of the function
    function get opened()
    {
        return (_opened);
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function get width()
    {
        return (_width);
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
        return (_height);
    } // End of the function
    function set height(newHeight)
    {
        _height = newHeight;
        this._arrangeElements();
        //return (this.height());
        null;
    } // End of the function
    function set skinColor(newColor)
    {
        _background.__set__color(newColor);
        //return (this.skinColor());
        null;
    } // End of the function
    function get visibleHeight()
    {
        //return (_panelHeight + this.y());
    } // End of the function
    function open()
    {
        _opened = false;
        var _loc2 = new com.timwalling.TweenDelay(this, "y", mx.transitions.easing.Regular.easeInOut, this.__get__y(), 0, 0.200000, 0, true);
        _loc2.onMotionFinished = mx.utils.Delegate.create(this, _onPanelOpened);
        _loc2.onMotionChanged = mx.utils.Delegate.create(this, _onPanelMove);
    } // End of the function
    function close()
    {
        _opened = true;
        var _loc2 = new com.timwalling.TweenDelay(this, "y", mx.transitions.easing.Regular.easeInOut, this.__get__y(), -_panelHeight, 0.200000, 0, true);
        _loc2.onMotionFinished = mx.utils.Delegate.create(this, _onPanelClosed);
        _loc2.onMotionChanged = mx.utils.Delegate.create(this, _onPanelMove);
    } // End of the function
    function disablePermalink()
    {
        if (_opened)
        {
            this.close();
        } // end if
    } // End of the function
    function set pageNumber(newPageNumber)
    {
        _pageNumber = newPageNumber;
        if (_pageNumber != undefined)
        {
            _permalinkURL = _baseURL + "?pageNumber=" + _pageNumber;
        }
        else
        {
            _permalinkURL = _baseURL;
        } // end else if
        _textInput.__set__text(_permalinkURL);
        //return (this.pageNumber());
        null;
    } // End of the function
    function set baseURL(newBaseURL)
    {
        _baseURL = newBaseURL;
        _permalinkURL = _baseURL + "#" + _pageNumber;
        _textInput.__set__text(_permalinkURL);
        //return (this.baseURL());
        null;
    } // End of the function
    function set mainLabel(newLabel)
    {
        _label.__set__text(newLabel);
        this._arrangeElements();
        //return (this.mainLabel());
        null;
    } // End of the function
    function set shareLabel(newLabel)
    {
        //return (this.shareLabel());
        null;
    } // End of the function
    function set copyLabel(newLabel)
    {
        _copyButton.__set__text(newLabel);
        _shareButton.__set__text(newLabel);
        this._arrangeElements();
        //return (this.copyLabel());
        null;
    } // End of the function
    function updateColor(newColor)
    {
        if (_hasFocus)
        {
            _textInput.__get__background().colorTo(_settings.__get__textEditFocusBG(), 200);
        }
        else
        {
            _textInput.__get__background().colorTo(_settings.__get__textEditBG(), 200);
        } // end else if
    } // End of the function
    function _onPanelMove()
    {
        this.dispatchEvent({type: "onPermalinkSizeChanged"});
    } // End of the function
    function _onPanelOpened()
    {
        _opened = true;
        this._arrangeElements();
        this.dispatchEvent({type: "onPermalinkSizeChanged"});
    } // End of the function
    function _onPanelClosed()
    {
        _opened = false;
        this._arrangeElements();
        this.dispatchEvent({type: "onPermalinkSizeChanged"});
    } // End of the function
    function _create()
    {
        this._createBackground();
        this._createTextInput();
        this._createLabel();
        this._createShareButton();
        this._createCopyButton();
        this.__set__height(_panelHeight);
    } // End of the function
    function _createShareButton()
    {
        var _loc2 = _clip.createEmptyMovieClip("share", _clip.getNextHighestDepth());
        _shareButton = new com.fbpublisher.basicskin.viewclasses.TextButton(_settings, _loc2);
        _shareButton.setSize(_buttonWidth, _buttonHeight);
        _shareButton.__set__cornerRadius(4);
        _shareButton.__set__text(_settings.permalinkCopyLabel);
        _shareButton.__get__background().__set__fill(33);
        _shareButton.__get__label().__set__fontColor(_settings.secondaryTextColor);
        _shareButton.__get__label().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _shareButton.__get__label().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _shareButton.addEventListener("onRelease", mx.utils.Delegate.create(this, _onCopyButtonRelease));
    } // End of the function
    function _onShareButtonRelease()
    {
        this.dispatchEvent({type: "onPermalinkShare", URL: _permalinkURL});
    } // End of the function
    function _createCopyButton()
    {
        var _loc2 = _clip.createEmptyMovieClip("copy", _clip.getNextHighestDepth());
        _copyButton = new com.fbpublisher.basicskin.viewclasses.TextButton(_settings, _loc2);
        _copyButton.setSize(_buttonWidth, _buttonHeight);
        _copyButton.__set__cornerRadius(4);
        _copyButton.__set__text(_settings.permalinkCopyLabel);
        _copyButton.__get__background().__set__fill(33);
        _copyButton.__get__label().__set__fontColor(_settings.secondaryTextColor);
        _copyButton.__get__label().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _copyButton.__get__label().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _copyButton.setCustomCornerRadius(0, "top-right");
        _copyButton.setCustomCornerRadius(0, "bottom-right");
        _copyButton.addEventListener("onRelease", mx.utils.Delegate.create(this, _onCopyButtonRelease));
    } // End of the function
    function _onCopyButtonRelease()
    {
        this.dispatchEvent({type: "onPermalinkCopy", URL: _permalinkURL});
    } // End of the function
    function _createBackground()
    {
        _backgroundClip = _clip.createEmptyMovieClip("background", 1);
        _background = new com.fbpublisher.utils.graphics.StyleableRectangle(_backgroundClip, 0, 0, _width, _height);
        _background.__set__color(_settings.skinColor);
        _background.__set__innerShadowAngle(-90);
        _background.__set__innerShadowSize(0);
        _background.__set__innerShadowDistance(1);
        _background.__set__innerShadowOpacity(30);
        _background.__set__cornerRadius(5);
        _background.setCustomCornerRadius(0, "top-left");
        _background.setCustomCornerRadius(0, "top-right");
        _background.__set__gradientAngle(90);
        _background.__set__gradientFromAlpha(65);
        _background.__set__gradientToColor(16777215);
        _background.__set__gradientToAlpha(40);
        _background.__set__gradientScale(70);
    } // End of the function
    function _createTextInput()
    {
        _permalinkURL = _baseURL + "#" + _pageNumber;
        _textInputClip = _clip.createEmptyMovieClip("textInput", 2);
        _textInput = new com.fbpublisher.basicskin.viewclasses.TextInput(_textInputClip, _settings);
        _textInput.addEventListener("onSetFocus", this);
        _textInput.addEventListener("onKillFocus", this);
        _textInput.addEventListener("onMouseDown", this);
        _textInput.addEventListener("onKeyDown", this);
        _textInput.__set__paddingY(4);
        _textInput.__set__text(_permalinkURL);
        this._drawTextInputStyle();
    } // End of the function
    function _createLabel()
    {
        _labelClip = _clip.createEmptyMovieClip("label", 3);
        _label = new com.fbpublisher.utils.graphics.StyleableLabel(_labelClip);
        _label.__set__antiAliasType("advanced");
        _label.__set__embedFonts(true);
        _label.__set__fontColor(_settings.secondaryTextColor);
        _label.__set__fontName(_settings.font2);
        _label.__set__fontSize(11);
        _label.__set__autoSize(true);
        _label.__set__text(_settings.permalinkLabel);
        _label.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _label.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _label.__set__dropShadowDistance(1);
        _label.__set__dropShadowQuality(4);
        _label.__set__dropShadowSize(0);
        _label.__set__fill(67);
        _label.__set__dropShadowAngle(90);
    } // End of the function
    function _arrangeElements()
    {
        _background.setSize(_width, _height);
        var _loc4 = _textPadding;
        if (_label.__get__text() != "")
        {
            _label.__set__x(_labelPadding);
            _label.__set__y(_height / 2 - (_label.__get__textHeight() + 4) / 2 - 2);
            _loc4 = _loc4 + (_label.__get__textWidth() + 2 + _labelPadding);
        } // end if
        if (_shareButton.__get__width() > _copyButton.__get__width())
        {
            _copyButton.__set__width(_shareButton.width);
        }
        else
        {
            _shareButton.__set__width(_copyButton.width);
        } // end else if
        var _loc5 = _textPadding + _shareButton.__get__width() + _textPadding;
        if (_hasFocus)
        {
            _loc5 = _loc5 + (_buttonsPadding + _copyButton.__get__width());
        } // end if
        var _loc6 = _width - _loc4 - _loc5;
        _textInput.setSize(_loc6, _textInputHeight);
        _textInput.__set__x(_loc4);
        _textInput.__set__y(Math.round(_height / 2 - _textInputHeight / 2 - 2));
        var _loc2 = _textInput.__get__x() + _textInput.__get__width() + _textPadding;
        var _loc3 = Math.round(_height / 2 - _shareButton.__get__height() / 2 - 1);
        _copyButton.__set__x(_loc2);
        _copyButton.__set__y(_loc3);
        if (_hasFocus)
        {
            _shareButton.__set__x(_loc2 + _copyButton.__get__width() + _buttonsPadding);
            _shareButton.__set__y(_loc3);
        }
        else
        {
            _shareButton.__set__x(_loc2);
            _shareButton.__set__y(_loc3);
        } // end else if
        if (_hasFocus)
        {
            _copyButton.show();
        }
        else
        {
            _copyButton.hide();
        } // end else if
    } // End of the function
    function _drawTextInputStyle()
    {
        _textInput.__get__background().__set__cornerRadius(4);
        _textInput.__get__background().__set__innerShadowDistance(1);
        _textInput.__get__background().__set__innerShadowSize(0);
        _textInput.__get__background().__set__innerShadowOpacity(55);
        _textInput.__get__background().__set__innerShadowQuality(1);
        _textInput.__get__background().__set__dropShadowDistance(1);
        _textInput.__get__background().__set__dropShadowSize(0);
        _textInput.__get__background().__set__dropShadowColor(16777215);
        _textInput.__get__background().__set__dropShadowOpacity(90);
        _textInput.__get__background().__set__fill(100);
        _textInput.__get__label().__set__fill(80);
        _textInput.__get__label().__set__opacity(85);
    } // End of the function
    function onSetFocus()
    {
        _hasFocus = true;
        _textInput.__get__background().colorTo(_settings.__get__textEditFocusBG(), 200);
    } // End of the function
    function onKillFocus()
    {
        _hasFocus = false;
        _textInput.__get__background().colorTo(_settings.__get__textEditBG(), 200);
    } // End of the function
    function onMouseDown()
    {
        if (_hasFocus && this._mouseOutside())
        {
            _textInput.killFocus();
        } // end if
    } // End of the function
    function _mouseOutside()
    {
        var _loc3 = {x: _root._xmouse, y: _root._ymouse};
        _clip.globalToLocal(_loc3);
        return (_loc3.x < 0 || _loc3.y < 0 || _loc3.x > _width || _loc3.y > _height);
    } // End of the function
    var _componentClipName = "permalinkPanel";
    var _panelHeight = 32;
    var _textInputHeight = 21;
    var _textFieldRightPadding = 70;
    var _hasFocus = false;
    var _buttonWidth = 45;
    var _buttonHeight = 24;
    var _labelPadding = 15;
    var _textPadding = 13;
    var _buttonsPadding = 1;
    var _opened = false;
} // End of Class
#endinitclip
