// Action script...

// [Initial MovieClip Action of sprite 139]
#initclip 35
class com.fbpublisher.basicskin.viewclasses.TextInput
{
    var _clip, _settings, _label, __get__maxChars, __get__restrict, __get__type, __get__x, __get__y, _background, __get__text, __get__paddingX, __get__paddingY, __get__width, __get__height, _backgroundClip, __get__background, __get__focused, __set__height, __get__label, __get__length, __set__maxChars, __set__paddingX, __set__paddingY, __set__restrict, __set__text, __set__type, __set__width, __set__x, __set__y;
    function TextInput(parentClip, settings)
    {
        _clip = parentClip;
        _settings = settings;
        this._create();
        mx.events.EventDispatcher.initialize(this);
    } // End of the function
    function dispatchEvent()
    {
    } // End of the function
    function addEventListener()
    {
    } // End of the function
    function removeEventListener()
    {
    } // End of the function
    function get focused()
    {
        //return (_label.focused());
    } // End of the function
    function get maxChars()
    {
        //return (_label.maxChars());
    } // End of the function
    function set maxChars(numberOfChars)
    {
        _label.__set__maxChars(numberOfChars);
        //return (this.maxChars());
        null;
    } // End of the function
    function get restrict()
    {
        //return (_label.restrict());
    } // End of the function
    function set restrict(restrictChars)
    {
        _label.__set__restrict(restrictChars);
        //return (this.restrict());
        null;
    } // End of the function
    function get type()
    {
        //return (_label.type());
    } // End of the function
    function set type(newType)
    {
        _label.__set__type(newType);
        //return (this.type());
        null;
    } // End of the function
    function get x()
    {
        return (_clip._x);
    } // End of the function
    function set x(newX)
    {
        _clip._x = newX;
        //return (this.x());
        null;
    } // End of the function
    function xTo(newX, duration, delay, eventHandler)
    {
        if (delay == undefined)
        {
            delay = 0;
        } // end if
        var _loc2 = new com.timwalling.TweenDelay(this, "x", mx.transitions.easing.Regular.easeInOut, this.__get__x(), newX, duration / 1000, delay / 1000, true);
        if (eventHandler != undefined)
        {
            _loc2.onMotionFinished = eventHandler;
        } // end if
    } // End of the function
    function get y()
    {
        return (_clip._y);
    } // End of the function
    function set y(newY)
    {
        _clip._y = newY;
        //return (this.y());
        null;
    } // End of the function
    function widthTo(newWidth, duration, delay)
    {
        _background.widthTo(newWidth, duration, delay);
        _label.__set__width(newWidth - _paddingX * 2 + 4);
    } // End of the function
    function get text()
    {
        //return (_label.text());
    } // End of the function
    function set text(newText)
    {
        _label.__set__text(newText);
        //return (this.text());
        null;
    } // End of the function
    function show()
    {
        _clip._visible = true;
    } // End of the function
    function hide()
    {
        _clip._visible = false;
    } // End of the function
    function get paddingX()
    {
        return (_paddingX);
    } // End of the function
    function set paddingX(newPadding)
    {
        _paddingX = newPadding;
        this._arrangeElements();
        //return (this.paddingX());
        null;
    } // End of the function
    function get paddingY()
    {
        return (_paddingY);
    } // End of the function
    function set paddingY(newPadding)
    {
        _paddingY = newPadding;
        this._arrangeElements();
        //return (this.paddingY());
        null;
    } // End of the function
    function paddingYTo(newPadding, duration, delay, eventHandler)
    {
        if (delay == undefined)
        {
            delay = 0;
        } // end if
        var _loc3 = new com.timwalling.TweenDelay(this, "paddingY", mx.transitions.easing.Regular.easeInOut, this.__get__paddingY(), newPadding, duration / 1000, delay / 1000, true);
        if (eventHandler != undefined)
        {
            _loc3.onMotionFinished = eventHandler;
        } // end if
    } // End of the function
    function get label()
    {
        return (_label);
    } // End of the function
    function get background()
    {
        return (_background);
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
    function get length()
    {
        //return (_label.text().length);
    } // End of the function
    function killFocus()
    {
        Selection.setFocus(_global._focusLooser);
    } // End of the function
    function setFocus()
    {
        _label.setFocus();
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function _create()
    {
        this._createBackground();
        this._createLabel();
        this._arrangeElements();
    } // End of the function
    function _arrangeElements()
    {
        _background.setSize(_width, _height);
        _label.__set__width(_width - _paddingX * 2 + 4);
        _label.__set__height(_height - _paddingY * 2 + 4);
        _label.__set__x(_paddingX - 2);
        _label.__set__y(_paddingY - 2);
    } // End of the function
    function _createBackground()
    {
        _backgroundClip = _clip.createEmptyMovieClip("background", 0);
        _background = new com.fbpublisher.utils.graphics.StyleableRectangle(_backgroundClip, 0, 0, _width, _height);
        _background.__set__cornerRadius(_cornerRadius);
        _background.__set__color(_settings.textEditBG);
        _backgroundClip.onMouseDown = mx.utils.Delegate.create(this, onMouseDown);
    } // End of the function
    function _createLabel()
    {
        var _loc2 = _clip.createEmptyMovieClip("label", 1);
        _label = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        _label.addEventListener("onSetFocus", this);
        _label.addEventListener("onKillFocus", this);
        _label.addEventListener("onKeyDown", this);
        _label.addEventListener("onKeyUp", this);
        _label.__set__type("input");
        _label.__set__fill(100);
        _label.__set__antiAliasType("advanced");
        _label.__set__selectable(true);
        _label.__set__text("");
        _label.__set__fontName(_settings.font1);
        _label.__set__embedFonts(true);
        _label.__set__fontColor(0);
        _label.__set__fontSize(11);
    } // End of the function
    function _mouseInside()
    {
        var _loc3 = {x: _root._xmouse, y: _root._ymouse};
        _clip.globalToLocal(_loc3);
        return (_loc3.x > 0 && _loc3.y > 0 && _loc3.x < _clip._width && _loc3.y < _clip._height);
    } // End of the function
    function onMouseDown()
    {
        if (Stage.displayState == "fullScreen" && this._mouseInside())
        {
            com.fbpublisher.basicskin.View.__get__singleton().showAlertWindow(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__fullScreenAlertTitle(), com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__fullScreenAlertMessage());
        }
        else
        {
            this.dispatchEvent({type: "onMouseDown"});
        } // end else if
    } // End of the function
    function onSetFocus(eventObj)
    {
        this.dispatchEvent({type: "onSetFocus"});
    } // End of the function
    function onKillFocus(eventObj)
    {
        this.dispatchEvent({type: "onKillFocus"});
    } // End of the function
    function onKeyDown(eventObj)
    {
        this.dispatchEvent({type: "onKeyDown"});
    } // End of the function
    function onKeyUp(eventObj)
    {
        this.dispatchEvent({type: "onKeyUp"});
    } // End of the function
    var _width = 100;
    var _height = 20;
    var _cornerRadius = 7;
    var _paddingX = 8;
    var _paddingY = 4;
} // End of Class
#endinitclip
