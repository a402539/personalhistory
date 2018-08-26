// Action script...

// [Initial MovieClip Action of sprite 140]
#initclip 36
class com.fbpublisher.utils.graphics.StyleableLabel extends com.fbpublisher.utils.graphics.StyleableObject
{
    var _contentClip, _contentTextField, __get__maxChars, __get__restrict, __get__antiAliasType, _text, __get__html, __get__text, __get__width, __get__height, __get__fontSize, __set__color, __get__fontColor, colorTo, _fontName, __get__fontName, __get__embedFonts, __get__type, __get__multiline, __get__selectable, __get__wordWrap, __get__align, __get__autoSize, _updateEnable, _dropShadowClip, _dropShadowTextField, _innerShadowClip, _innerShadowTextField, _gradientMaskClip, _gradientMaskTextField, __get__updateEnable, _dropShadowDepth, _rootClip, _innerShadowDepth, _gradientMaskDepth, _strokeClip, __set__align, __set__antiAliasType, __set__autoSize, __set__embedFonts, __get__focused, __set__fontColor, __set__fontName, __set__fontSize, __set__height, __set__html, __get__length, __set__maxChars, __set__multiline, __set__restrict, __set__selectable, __set__text, __get__textHeight, __get__textWidth, __set__type, __set__updateEnable, __set__width, __set__wordWrap;
    function StyleableLabel(clip)
    {
        super(clip);
        _contentTextField = _contentClip.createTextField("contentText", 0, 0, 0, _width, _height);
        _contentTextField.addListener(this);
        _contentTextField.onSetFocus = mx.utils.Delegate.create(this, onSetFocus);
        _contentTextField.onKillFocus = mx.utils.Delegate.create(this, onKillFocus);
        Key.addListener(this);
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
    function setFocus()
    {
        Selection.setFocus(_contentTextField);
        _focused = true;
    } // End of the function
    function get focused()
    {
        return (_focused);
    } // End of the function
    function get textWidth()
    {
        return (_contentTextField.textWidth);
    } // End of the function
    function get textHeight()
    {
        return (_contentTextField.textHeight);
    } // End of the function
    function get maxChars()
    {
        return (_maxChars);
    } // End of the function
    function set maxChars(numberOfChars)
    {
        _maxChars = numberOfChars;
        this._drawTextField();
        //return (this.maxChars());
        null;
    } // End of the function
    function get restrict()
    {
        return (_restrict);
    } // End of the function
    function set restrict(restrictChars)
    {
        _restrict = restrictChars;
        this._drawTextField();
        //return (this.restrict());
        null;
    } // End of the function
    function get antiAliasType()
    {
        return (_antiAliasType);
    } // End of the function
    function set antiAliasType(newType)
    {
        _antiAliasType = newType;
        this._drawTextField();
        //return (this.antiAliasType());
        null;
    } // End of the function
    function get text()
    {
        return (_text);
    } // End of the function
    function set html(value)
    {
        _html = value;
        //return (this.html());
        null;
    } // End of the function
    function set text(newText)
    {
        _text = newText;
        this._drawTextField();
        //return (this.text());
        null;
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._drawTextField();
    } // End of the function
    function get width()
    {
        return (_width);
    } // End of the function
    function set width(newWidth)
    {
        _width = newWidth;
        this._drawTextField();
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
        this._drawTextField();
        //return (this.height());
        null;
    } // End of the function
    function get fontSize()
    {
        return (_fontSize);
    } // End of the function
    function set fontSize(newSize)
    {
        _fontSize = newSize;
        this._drawTextFormat();
        //return (this.fontSize());
        null;
    } // End of the function
    function get fontColor()
    {
        return (_fontColor);
    } // End of the function
    function set fontColor(newColor)
    {
        _fontColor = newColor;
        this.__set__color(_fontColor);
        //return (this.fontColor());
        null;
    } // End of the function
    function fontColorTo(newColor, duration, delay)
    {
        this.colorTo(newColor, duration, delay);
    } // End of the function
    function get fontName()
    {
        if (_fontName != undefined)
        {
            return (_fontName);
        }
        else
        {
            return (_contentTextField.getTextFormat().font);
        } // end else if
    } // End of the function
    function set fontName(newName)
    {
        _fontName = newName;
        this._drawTextFormat();
        //return (this.fontName());
        null;
    } // End of the function
    function get embedFonts()
    {
        return (_embedFonts);
    } // End of the function
    function set embedFonts(embed)
    {
        _embedFonts = embed;
        this._drawTextField();
        this._drawTextFormat();
        //return (this.embedFonts());
        null;
    } // End of the function
    function get type()
    {
        return (_type);
    } // End of the function
    function set type(newType)
    {
        _type = newType;
        this._drawTextField();
        //return (this.type());
        null;
    } // End of the function
    function get multiline()
    {
        return (_multiline);
    } // End of the function
    function set multiline(isMultiline)
    {
        _multiline = isMultiline;
        this._drawTextField();
        //return (this.multiline());
        null;
    } // End of the function
    function get selectable()
    {
        return (_selectable);
    } // End of the function
    function set selectable(isSelectable)
    {
        _selectable = isSelectable;
        this._drawTextField();
        //return (this.selectable());
        null;
    } // End of the function
    function get wordWrap()
    {
        return (_wordWrap);
    } // End of the function
    function set wordWrap(wrap)
    {
        _wordWrap = wrap;
        this._drawTextField();
        //return (this.wordWrap());
        null;
    } // End of the function
    function get align()
    {
        return (_align);
    } // End of the function
    function set align(newAlign)
    {
        _align = newAlign;
        this._drawTextFormat();
        //return (this.align());
        null;
    } // End of the function
    function get autoSize()
    {
        return (_autoSize);
    } // End of the function
    function set autoSize(doAutoSize)
    {
        _autoSize = doAutoSize;
        this._drawTextField();
        //return (this.autoSize());
        null;
    } // End of the function
    function get length()
    {
        return (_contentTextField.text.length);
    } // End of the function
    function _drawTextField()
    {
        _drawTextFieldSetted = true;
        if (!_updateEnable)
        {
            return;
        } // end if
        this.applyTextFieldSettings(_contentTextField);
        if (_dropShadowClip != undefined)
        {
            this.applyTextFieldSettings(_dropShadowTextField);
        } // end if
        if (_innerShadowClip != undefined)
        {
            this.applyTextFieldSettings(_innerShadowTextField);
        } // end if
        if (_gradientMaskClip != undefined)
        {
            this.applyTextFieldSettings(_gradientMaskTextField);
        } // end if
    } // End of the function
    function set updateEnable(value)
    {
        super.__set__updateEnable(value);
        if (_updateEnable)
        {
            if (_drawTextFieldSetted)
            {
                this._drawTextField();
            } // end if
            if (_drawTextFormatSetted)
            {
                this._drawTextFormat();
            } // end if
        } // end if
        //return (this.updateEnable());
        null;
    } // End of the function
    function _drawTextFormat()
    {
        _drawTextFormatSetted = true;
        if (!_updateEnable)
        {
            return;
        } // end if
        this.applyTextFormatSettings(_contentTextField);
        if (_dropShadowClip != undefined)
        {
            this.applyTextFormatSettings(_dropShadowTextField);
        } // end if
        if (_innerShadowClip != undefined)
        {
            this.applyTextFormatSettings(_innerShadowTextField);
        } // end if
        if (_gradientMaskClip != undefined)
        {
            this.applyTextFormatSettings(_gradientMaskTextField);
        } // end if
    } // End of the function
    function _createDropShadowClip()
    {
        if (_dropShadowClip == undefined)
        {
            _dropShadowClip = _rootClip.createEmptyMovieClip("dropShadowText", _dropShadowDepth);
            _dropShadowTextField = _dropShadowClip.createTextField("dropShadowText", 0, 0, 0, _width, _height);
            _dropShadowTextField.addListener(this);
            this.applyTextFieldSettings(_dropShadowTextField);
            this.applyTextFormatSettings(_dropShadowTextField);
        } // end if
    } // End of the function
    function _createInnerShadowClip()
    {
        if (_innerShadowClip == undefined)
        {
            _innerShadowClip = _rootClip.createEmptyMovieClip("innerShadowText", _innerShadowDepth);
            _innerShadowTextField = _innerShadowClip.createTextField("innerShadowText", 0, 0, 0, _width, _height);
            _innerShadowTextField.addListener(this);
            this.applyTextFieldSettings(_innerShadowTextField);
            this.applyTextFormatSettings(_innerShadowTextField);
        } // end if
    } // End of the function
    function _createGradientMaskClip()
    {
        if (_gradientMaskClip == undefined)
        {
            _gradientMaskClip = _rootClip.createEmptyMovieClip("gradientMaskText", _gradientMaskDepth);
            _gradientMaskTextField = _gradientMaskClip.createTextField("gradientMaskText", 0, 0, 0, _width, _height);
            _gradientMaskTextField.addListener(this);
            this.applyTextFieldSettings(_gradientMaskTextField);
            this.applyTextFormatSettings(_gradientMaskTextField);
        } // end if
    } // End of the function
    function _createStrokeClip()
    {
        if (_strokeClip == undefined)
        {
        } // end if
    } // End of the function
    function applyTextFormatSettings(targetTextField)
    {
        var _loc3;
        if (_fontName == "LucidaBold")
        {
            _loc3 = _root.fontBold.getTextFormat();
        }
        else if (_fontName == "Lucida")
        {
            _loc3 = _root.fontNormal.getTextFormat();
        } // end else if
        _loc3.size = _fontSize;
        _loc3.color = _fontColor;
        _loc3.align = _align;
        targetTextField.setTextFormat(_loc3);
        targetTextField.setNewTextFormat(_loc3);
    } // End of the function
    function applyTextFieldSettings(targetTextField)
    {
        targetTextField.type = _type;
        targetTextField.selectable = _selectable;
        targetTextField.wordWrap = _wordWrap;
        targetTextField.multiline = _multiline;
        targetTextField.html = _html;
        if (_html)
        {
            targetTextField.htmlText = _text;
        }
        else
        {
            targetTextField.text = _text;
        } // end else if
        targetTextField._width = _width;
        targetTextField._height = _height;
        targetTextField.embedFonts = _embedFonts;
        targetTextField.autoSize = _autoSize;
        targetTextField.antiAliasType = _antiAliasType;
        targetTextField.maxChars = _maxChars;
        targetTextField.restrict = _restrict;
    } // End of the function
    function onChanged(changedTextField)
    {
        _text = changedTextField.text;
        this._drawTextField();
        this._drawTextFormat();
    } // End of the function
    function onSetFocus(oldFocus)
    {
        this.dispatchEvent({type: "onSetFocus", oldFocus: oldFocus});
        _focused = true;
    } // End of the function
    function onKillFocus(newFocus)
    {
        this.dispatchEvent({type: "onKillFocus", newFocus: newFocus});
        _focused = false;
    } // End of the function
    function onKeyDown()
    {
        this.dispatchEvent({type: "onKeyDown"});
    } // End of the function
    function onKeyUp()
    {
        this.dispatchEvent({type: "onKeyUp"});
    } // End of the function
    var _width = 100;
    var _height = 25;
    var _fontSize = 12;
    var _fontColor = 0;
    var _embedFonts = false;
    var _type = "input";
    var _multiline = false;
    var _html = false;
    var _selectable = false;
    var _wordWrap = false;
    var _align = "left";
    var _antiAliasType = "normal";
    var _autoSize = false;
    var _maxChars = null;
    var _restrict = null;
    var _focused = false;
    var _drawTextFieldSetted = false;
    var _drawTextFormatSetted = false;
} // End of Class
#endinitclip
