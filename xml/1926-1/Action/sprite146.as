// Action script...

// [Initial MovieClip Action of sprite 146]
#initclip 42
class com.fbpublisher.basicskin.viewclasses.IconButton
{
    var _clip, _iconSymbolId, _settings, _background, __get__cornerRadius, __get__alpha, _id, __get__id, _iconClip, _button, __get__enabled, __get__color, __get__width, __get__height, __get__visible, __get__x, __get__y, _backgroundClip, _icon, __get__icon, __set__alpha, __set__color, __set__cornerRadius, __set__enabled, __set__height, __set__icon, __set__id, __set__visible, __set__width, __set__x, __set__y;
    function IconButton(clip, iconSymbol, settings)
    {
        _clip = clip;
        _iconSymbolId = iconSymbol;
        _settings = settings;
        _color = _settings.skinColor;
        this._createButton();
        this._createBackground();
        this._createIcon();
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
    function get cornerRadius()
    {
        return (_cornerRadius);
    } // End of the function
    function set cornerRadius(newRadius)
    {
        _cornerRadius = newRadius;
        _background.__set__cornerRadius(_cornerRadius);
        //return (this.cornerRadius());
        null;
    } // End of the function
    function get alpha()
    {
        return (_clip._alpha);
    } // End of the function
    function set alpha(newAlpha)
    {
        _clip._alpha = newAlpha;
        //return (this.alpha());
        null;
    } // End of the function
    function set id(newId)
    {
        _id = newId;
        //return (this.id());
        null;
    } // End of the function
    function get id()
    {
        return (_id);
    } // End of the function
    function get enabled()
    {
        return (_enabled);
    } // End of the function
    function set enabled(isEnabled)
    {
        _enabled = isEnabled;
        if (!_enabled)
        {
            switch (_state)
            {
                case "release":
                {
                    this._animateOut();
                    break;
                } 
                case "press":
                {
                    this._animateRelease();
                    this._animateOut(200);
                    break;
                } 
            } // End of switch
            _iconClip._alpha = 30;
        }
        else
        {
            _iconClip._alpha = 100;
        } // end else if
        if (_id == "separator")
        {
            _iconClip._alpha = 100;
        } // end if
        _button.__set__useHandCursor(_enabled);
        //return (this.enabled());
        null;
    } // End of the function
    function get color()
    {
        return (_color);
    } // End of the function
    function set color(newColor)
    {
        _color = newColor;
        _background.__set__color(_color);
        //return (this.color());
        null;
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
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function hide()
    {
        _clip._visible = false;
    } // End of the function
    function show()
    {
        _clip._visible = true;
    } // End of the function
    function get visible()
    {
        return (_clip._visible);
    } // End of the function
    function set visible(isVisible)
    {
        _clip._visible = isVisible;
        //return (this.visible());
        null;
    } // End of the function
    function setCustomCornerRadius(newRadius, cornerPosition)
    {
        _background.setCustomCornerRadius(newRadius, cornerPosition);
    } // End of the function
    function get x()
    {
        return (_clip._x);
    } // End of the function
    function set x(newX)
    {
        _clip._x = Math.round(newX);
        //return (this.x());
        null;
    } // End of the function
    function get y()
    {
        return (_clip._y);
    } // End of the function
    function set y(newY)
    {
        _clip._y = Math.round(newY);
        //return (this.y());
        null;
    } // End of the function
    function destroy(listener)
    {
        _clip.removeMovieClip();
        this.removeEventListener("onPress", listener);
        this.removeEventListener("onRelease", listener);
        this.removeEventListener("onRollOver", listener);
        this.removeEventListener("onRollOut", listener);
    } // End of the function
    function emulatePress()
    {
        var _loc2 = 150;
        _background.innerShadowColorTo(0, _loc2);
        _background.innerShadowOpacityTo(40, _loc2);
        _background.dropShadowColorTo(16777215, _loc2);
        _background.dropShadowOpacityTo(70, _loc2);
        _background.gradientOpacityTo(0, _loc2);
    } // End of the function
    function emulateRelease()
    {
        var _loc2 = 150;
        _background.innerShadowColorTo(16777215, _loc2);
        _background.innerShadowOpacityTo(80, _loc2);
        _background.dropShadowColorTo(0, _loc2);
        _background.dropShadowOpacityTo(40, _loc2);
        _background.gradientOpacityTo(55, _loc2);
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
    function _createBackground()
    {
        _backgroundClip = _clip.createEmptyMovieClip("bg", 1);
        _background = new com.fbpublisher.utils.graphics.StyleableRectangle(_backgroundClip);
        _background.__set__color(_color);
        _background.__set__cornerRadius(_cornerRadius);
        _background.__set__dropShadowDistance(1);
        _background.__set__dropShadowSize(0);
        _background.__set__dropShadowOpacity(40);
        _background.__set__innerShadowDistance(1);
        _background.__set__innerShadowSize(0);
        _background.__set__innerShadowOpacity(80);
        _background.__set__innerShadowColor(16777215);
        _background.__set__gradientAngle(90);
        _background.__set__gradientToColor(16777215);
        _background.__set__gradientToAlpha(0);
        _background.__set__gradientOpacity(55);
        _background.__set__opacity(0);
    } // End of the function
    function set icon(iconSymbolId)
    {
        _icon.__set__icon(iconSymbolId);
        //return (this.icon());
        null;
    } // End of the function
    function _createIcon()
    {
        _iconClip = _clip.createEmptyMovieClip("icon", 2);
        _icon = new com.fbpublisher.basicskin.viewclasses.BitmapIcon(_iconClip, _iconSymbolId);
    } // End of the function
    function _arrangeElements()
    {
        _background.setSize(_width, _height);
        _icon.__set__x(Math.round(_width / 2 - _icon.__get__width() / 2));
        _icon.__set__y(Math.round(_height / 2 - _icon.__get__height() / 2));
        _button.setSize(_width, _height);
    } // End of the function
    function onRollOver()
    {
        _state = "over";
        if (_enabled)
        {
            this._animateOver();
            this.dispatchEvent({type: "onRollOver", id: _id});
        } // end if
    } // End of the function
    function onRollOut()
    {
        _state = "out";
        if (_enabled)
        {
            this._animateOut();
            this.dispatchEvent({type: "onRollOut", id: _id});
        } // end if
    } // End of the function
    function onPress()
    {
        _state = "press";
        if (_enabled)
        {
            this._animatePress();
            this.dispatchEvent({type: "onPress", id: _id});
        } // end if
    } // End of the function
    function onRelease()
    {
        _state = "release";
        if (_enabled)
        {
            this._animateRelease();
            this.dispatchEvent({type: "onRelease", id: _id});
        } // end if
    } // End of the function
    function onReleaseOutside()
    {
        _state = "release";
        if (_enabled)
        {
            this._animateRelease();
            this._animateOut(200);
            this.dispatchEvent({type: "onRelease", id: _id});
        } // end if
    } // End of the function
    function _animateOver()
    {
        _background.opacityTo(100, 400);
    } // End of the function
    function _animateOut(delay)
    {
        if (delay == undefined)
        {
            delay = 0;
        } // end if
        _background.opacityTo(0, 200, delay);
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
    var _width = 30;
    var _height = 30;
    var _x = 0;
    var _y = 0;
    var _color = 8225929;
    var _enabled = true;
    var _type = "standard";
    var _cornerRadius = 5;
    var _state = "out";
} // End of Class
#endinitclip
