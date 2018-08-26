// Action script...

// [Initial MovieClip Action of sprite 172]
#initclip 68
class com.fbpublisher.basicskin.viewclasses.windows.mainwindow.PaginationPanel extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _settings, _pagesInput, _titleLabel, _totalLabel, _clip, __get__label, _totalPages, __get__totalPages, _pageNumbers, __get__pageNumbers, _animationCheckInterval, hide, __get__consideredVisible, show, __get__height, _animationInterval, __set__label, __set__pageNumbers, __set__totalPages, __get__width;
    function PaginationPanel(parentClip, settings)
    {
        super(parentClip, settings);
        this._create();
        this._arrangeElements();
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
    function updateTextEditColor()
    {
        _pagesInput.__get__background().colorTo(_settings.__get__textEditBG(), 200);
    } // End of the function
    function updateStyles()
    {
        _titleLabel.__set__fontColor(_settings.secondaryTextColor);
        _titleLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _titleLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _totalLabel.__set__fontColor(_settings.secondaryTextColor);
        _totalLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _totalLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        this._applyStateSettings();
    } // End of the function
    function get width()
    {
        return (_clip._width);
    } // End of the function
    function get height()
    {
        return (_clip._height);
    } // End of the function
    function open()
    {
        _alreadyOver = true;
        this._startOpenCheck();
    } // End of the function
    function close()
    {
        _alreadyOver = false;
        this._startCloseCheck();
    } // End of the function
    function set label(newLabel)
    {
        _titleLabel.__set__text(newLabel);
        this._arrangeElements();
        //return (this.label());
        null;
    } // End of the function
    function set totalPages(total)
    {
        _totalPages = total;
        if (_totalPages % 2 != 0)
        {
            _totalPages = _totalPages + 1;
        } // end if
        _totalLabel.__set__text("/ " + _totalPages);
        this._arrangeElements();
        this._considerVisibility();
        //return (this.totalPages());
        null;
    } // End of the function
    function set pageNumbers(newPageNumbers)
    {
        var _loc5 = newPageNumbers.split(",");
        var _loc3 = Number(_loc5[0]);
        var _loc4 = Number(_loc5[1]);
        var _loc2 = _loc3 + "-" + _loc4;
        if (isNaN(_loc3))
        {
            _loc2 = String(_loc4);
        } // end if
        if (isNaN(_loc4))
        {
            _loc2 = String(_loc3);
        } // end if
        _pageNumbers = _loc2;
        if (!_opened)
        {
            _pagesInput.__set__text(_pageNumbers);
        } // end if
        this._arrangeElements();
        this._considerVisibility();
        //return (this.pageNumbers());
        null;
    } // End of the function
    function get consideredVisible()
    {
        var _loc2 = _pageNumbers.split("-");
        var _loc3 = Number(_loc2[0]);
        var _loc4 = Number(_loc2[1]);
        return ((!isNaN(_loc3) || !isNaN(_loc4)) && !isNaN(_totalPages));
    } // End of the function
    function _startOpenCheck()
    {
        if (_animationCheckInterval)
        {
            clearInterval(_animationCheckInterval);
        } // end if
        _animationCheckInterval = setInterval(this, "startOpenAnimation", _checkDelay);
    } // End of the function
    function _startCloseCheck()
    {
        if (_animationCheckInterval)
        {
            clearInterval(_animationCheckInterval);
        } // end if
        _animationCheckInterval = setInterval(this, "startCloseAnimation", _checkDelay);
    } // End of the function
    function startOpenAnimation()
    {
        clearInterval(_animationCheckInterval);
        if (!_opened)
        {
            if (_isAnimating)
            {
                return;
            } // end if
            _isAnimating = true;
            this._animateOpen(200, 0, _onOpenFinished);
        } // end if
    } // End of the function
    function startCloseAnimation()
    {
        clearInterval(_animationCheckInterval);
        if (!_hasFocus && _opened)
        {
            if (_isAnimating)
            {
                return;
            } // end if
            _isAnimating = true;
            this._onUnfocusFinished();
            this._animateClose(200, 200, _onCloseFinished);
            _pagesInput.__get__label().__set__selectable(false);
            _pagesInput.__set__text(_pageNumbers);
            Selection.setSelection(0, 0);
        } // end if
    } // End of the function
    function _create()
    {
        this._createTitleLabel();
        this._createPagesInput();
        this._createTotalLabel();
        this._considerVisibility();
    } // End of the function
    function _considerVisibility()
    {
        if (!_settings.__get__paginationEnabled())
        {
            this.hide();
            return;
        } // end if
        if (this.__get__consideredVisible())
        {
            this.show();
        }
        else
        {
            this.hide();
        } // end else if
    } // End of the function
    function _createTitleLabel()
    {
        var _loc2 = _clip.createEmptyMovieClip("title", _clip.getNextHighestDepth());
        _titleLabel = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        this._applyTitleStyle(_titleLabel);
        _titleLabel.__set__text(_settings.paginationLabel);
    } // End of the function
    function _createTotalLabel()
    {
        var _loc2 = _clip.createEmptyMovieClip("total", _clip.getNextHighestDepth());
        _totalLabel = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        this._applyTitleStyle(_totalLabel);
        _totalLabel.__set__text("/ " + _settings.__get__paginationTotalPages());
    } // End of the function
    function _applyTitleStyle(label)
    {
        label.__set__antiAliasType("advanced");
        label.__set__embedFonts(true);
        label.__set__fontName(_settings.font2);
        label.__set__fontSize(11);
        label.__set__autoSize(true);
        label.__set__fontColor(_settings.secondaryTextColor);
        label.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        label.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        label.__set__dropShadowDistance(1);
        label.__set__dropShadowQuality(1);
        label.__set__dropShadowSize(0);
        label.__set__fill(55);
    } // End of the function
    function _createPagesInput()
    {
        var _loc2 = _clip.createEmptyMovieClip("pagesInput", _clip.getNextHighestDepth());
        _pagesInput = new com.fbpublisher.basicskin.viewclasses.TextInput(_loc2, _settings);
        _pagesInput.addEventListener("onSetFocus", this);
        _pagesInput.addEventListener("onKillFocus", this);
        _pagesInput.addEventListener("onMouseDown", this);
        _pagesInput.addEventListener("onKeyDown", this);
        _pagesInput.__set__text(_pageNumbers);
        _pagesInput.__set__height(_pagesInputHeight);
        _pagesInput.__set__maxChars(3);
        _pagesInput.__set__restrict("0-9");
        this._drawTextInputStyle();
    } // End of the function
    function _arrangeElements()
    {
        _titleLabel.__set__x(0);
        var _loc3 = _titleLabel.__get__x() + _titleLabel.__get__textWidth() + _titlePadding;
        _pagesInput.__set__width(_pagesInput.__get__label().__get__textWidth() + 2 * _pagesPadding);
        if (_opened)
        {
            _pagesInput.__set__x(Math.round(_loc3));
            var _loc4 = _pagesInput.__get__width() + _totalPadding + 3;
        }
        else
        {
            var _loc2 = (_pagesInput.__get__width() - _pagesInput.__get__label().__get__textWidth()) / 2;
            _pagesInput.__set__x(Math.round(_loc3 - _loc2));
            _loc4 = _pagesInput.__get__width() + _totalPadding - _loc2;
        } // end else if
        _totalLabel.__set__x(Math.round(_pagesInput.__get__x() + _loc4));
        _pagesInput.__set__y(0);
        _titleLabel.__set__y(Math.round(this.__get__height() / 2 - _titleLabel.__get__textHeight() / 2 - 3));
        _totalLabel.__set__y(Math.round(this.__get__height() / 2 - _totalLabel.__get__textHeight() / 2 - 3));
    } // End of the function
    function _drawTextInputStyle()
    {
        _pagesInput.__get__background().__set__cornerRadius(4);
        _pagesInput.__get__background().__set__innerShadowDistance(1);
        _pagesInput.__get__background().__set__innerShadowSize(0);
        _pagesInput.__get__background().__set__innerShadowOpacity(80);
        _pagesInput.__get__background().__set__innerShadowQuality(1);
        _pagesInput.__get__background().__set__fill(100);
        _pagesInput.__get__label().__set__align("center");
        _pagesInput.__get__label().__set__selectable(false);
        this._applyStateSettings();
    } // End of the function
    function _applyStateSettings()
    {
        if (_opened)
        {
            _pagesInput.__get__background().__set__opacity(100);
            _pagesInput.__get__background().__set__innerShadowOpacity(80);
            _pagesInput.__get__label().__set__fontColor(_settings.secondaryTextColor);
            _pagesInput.__get__label().__set__dropShadowColor(_settings.secondaryTextShadowColor);
            _pagesInput.__get__label().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
            _pagesInput.__get__label().__set__dropShadowOpacity(0);
            _pagesInput.__set__paddingY(3);
        }
        else
        {
            _pagesInput.__get__background().__set__opacity(0);
            _pagesInput.__get__label().__set__fontColor(_settings.mainTextColor);
            _pagesInput.__get__label().__set__dropShadowColor(_settings.mainTextShadowColor);
            _pagesInput.__get__label().__set__opacity(100);
            _pagesInput.__get__label().__set__dropShadowDistance(1);
            _pagesInput.__get__label().__set__dropShadowSize(0);
            _pagesInput.__get__label().__set__dropShadowOpacity(_settings.mainTextShadowOpacity);
            _pagesInput.__set__paddingY(2);
        } // end else if
    } // End of the function
    function onSetFocus()
    {
        _hasFocus = true;
        if (_isAnimating)
        {
            return;
        } // end if
        _isAnimating = true;
        this._onFocusFinished();
    } // End of the function
    function onKillFocus()
    {
        _hasFocus = false;
        if (_alreadyOver)
        {
            if (_isAnimating)
            {
                return;
            } // end if
            _isAnimating = true;
            this._setUnfocusedText();
            this._onUnfocusFinished();
        }
        else
        {
            if (_isAnimating)
            {
                return;
            } // end if
            _isAnimating = true;
            this._setUnfocusedText();
            this._onUnfocusFinished();
            this._animateClose(200, 200, _onCloseFinished);
        } // end else if
    } // End of the function
    function onMouseDown()
    {
        if (_hasFocus && this._mouseOutside())
        {
            _pagesInput.killFocus();
        } // end if
    } // End of the function
    function onKeyDown()
    {
        if (_hasFocus && Key.getCode() == 27)
        {
            _pagesInput.killFocus();
        }
        else if (_hasFocus && Key.getCode() == 13)
        {
            this.dispatchEvent({type: "onGotoPage", pageNumber: Number(_pagesInput.__get__text())});
        } // end else if
    } // End of the function
    function _mouseOutside()
    {
        var _loc3 = {x: _root._xmouse, y: _root._ymouse};
        _clip.globalToLocal(_loc3);
        //return (_loc3.x < _pagesInput.x() || _loc3.y < _pagesInput.__get__y() || _loc3.x > _pagesInput.__get__x() + _pagesInput.__get__width() || _loc3.y > _pagesInput.__get__y() + _pagesInput.__get__height());
    } // End of the function
    function _animateOpen(duration, delay, eventHandler)
    {
        var _loc4 = this._getPositionData(false, true);
        _pagesInput.xTo(_loc4.pagesInputX, duration, delay);
        _totalLabel.xTo(_loc4.totalLabelX, duration, delay);
        _pagesInput.__get__background().opacityTo(100, duration, delay + 200);
        _pagesInput.__get__label().dropShadowOpacityTo(0, duration, delay + 200);
        _pagesInput.paddingYTo(3, duration, delay + 200);
        if (eventHandler != undefined)
        {
            this._setAnimationHandler(eventHandler, duration + delay + 200);
        } // end if
    } // End of the function
    function _animateClose(duration, delay, eventHandler)
    {
        var _loc4 = this._getPositionData(false, false);
        _pagesInput.__get__label().fontColorTo(_settings.__get__mainTextColor(), duration, delay);
        _pagesInput.paddingYTo(2, 1, delay + duration);
        _pagesInput.__get__background().opacityTo(0, duration, delay + duration);
        _pagesInput.__get__label().dropShadowOpacityTo(50, duration / 4, delay + duration);
        _totalLabel.xTo(_loc4.totalLabelX, duration, delay + 2 * duration);
        _pagesInput.xTo(_loc4.pagesInputX, duration, delay + 2 * duration);
        if (eventHandler != undefined)
        {
            this._setAnimationHandler(eventHandler, duration + delay + 2 * duration);
        } // end if
    } // End of the function
    function _setAnimationHandler(eventHandler, delay)
    {
        if (_animationInterval)
        {
            clearInterval(_animationInterval);
        } // end if
        _animationInterval = setInterval(mx.utils.Delegate.create(this, eventHandler), delay);
    } // End of the function
    function _onOpenFinished()
    {
        clearInterval(_animationInterval);
        _isAnimating = false;
        _opened = true;
        this._arrangeElements();
        this._applyStateSettings();
        _pagesInput.__get__label().__set__selectable(true);
        if (!_alreadyOver)
        {
            this.close();
        } // end if
    } // End of the function
    function _onCloseFinished()
    {
        clearInterval(_animationInterval);
        _isAnimating = false;
        _opened = false;
        this._arrangeElements();
        this._applyStateSettings();
        if (_alreadyOver)
        {
            this.open();
        } // end if
    } // End of the function
    function _onFocusFinished()
    {
        _isAnimating = false;
        this._arrangeElements();
        this._applyStateSettings();
        this._setFocusedText();
        if (!_hasFocus)
        {
            this.onKillFocus();
        } // end if
    } // End of the function
    function _setFocusedText()
    {
        _pagesInput.__set__text("");
    } // End of the function
    function _onUnfocusFinished()
    {
        _isAnimating = false;
        this._arrangeElements();
        this._applyStateSettings();
        this._setUnfocusedText();
        if (_hasFocus)
        {
            this.onSetFocus();
        } // end if
    } // End of the function
    function _setUnfocusedText()
    {
        _pagesInput.__set__text(_pageNumbers);
    } // End of the function
    function _getPositionData(__hasFocus, __opened)
    {
        var _loc3 = new Object();
        var _loc9 = 0;
        var _loc4 = _loc9 + _titleLabel.__get__textWidth() + _titlePadding;
        var _loc2 = _pagesInput.__get__label().__get__textWidth() + 2 * _pagesPadding;
        if (__opened && !__hasFocus)
        {
            var _loc5 = _loc4;
            var _loc8 = _loc2 + _totalPadding + 3;
        }
        else if (__hasFocus)
        {
            _loc5 = _loc4 - 3;
            _loc8 = _loc2 + _totalPadding;
        }
        else
        {
            var _loc6 = (_loc2 - _pagesInput.__get__label().__get__textWidth()) / 2;
            _loc5 = _loc4 - _loc6;
            _loc8 = _loc2 + _totalPadding - _loc6;
        } // end else if
        var _loc7 = _loc5 + _loc8;
        _loc3.pagesInputX = _loc5;
        _loc3.totalLabelX = _loc7;
        return (_loc3);
    } // End of the function
    var _componentClipName = "permalinkPanel";
    var _titlePadding = 11;
    var _totalPadding = 3;
    var _pagesPadding = 15;
    var _pagesInputHeight = 19;
    var _opened = false;
    var _hasFocus = false;
    var _alreadyOver = false;
    var _checkDelay = 200;
    var _isAnimating = false;
} // End of Class
#endinitclip
