// Action script...

// [Initial MovieClip Action of sprite 181]
#initclip 77
class com.fbpublisher.basicskin.viewclasses.windows.BookmarkSelectedWindow extends com.fbpublisher.basicskin.viewclasses.LayoutItem
{
    var _settings, loader, _clip, saveButton, removeButton, pageLabel, input, _pageNumberText, arangeItems, __get__color, width, height, _backgroundShape, __get___height, __get___width, skinColor, backRect, __get__text, leftBookPage, rightBookPage, __set__color, __set__text;
    function BookmarkSelectedWindow(clip, settings)
    {
        super(clip);
        mx.events.EventDispatcher.initialize(this);
        _settings = settings;
        loader = new MovieClipLoader();
        loader.addListener(this);
        defText = _settings.bookmarkDeafaultText;
        pageLabelText = _settings.bookmarkPageText;
        var _loc3 = _clip.createEmptyMovieClip("saveButtonClip", level++);
        saveButton = new com.fbpublisher.basicskin.viewclasses.TextButton(_settings, _loc3);
        saveButton.__set__color(_settings.skinColor);
        saveButton.__set__text(_settings.bookmarkAddText);
        saveButton.__set__height(25);
        saveButton.__set__desiredSize(0);
        saveButton.addEventListener("onPress", mx.utils.Delegate.create(this, onSaveButtonClick));
        saveButton.__set__labelFill(70);
        saveButton.__get__background().__set__fill(100);
        saveButton.__get__label().__set__fontColor(_settings.secondaryTextColor);
        saveButton.__get__label().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        saveButton.__get__label().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        var _loc4 = _clip.createEmptyMovieClip("removeButtonClip", level++);
        removeButton = new com.fbpublisher.basicskin.viewclasses.TextButton(_settings, _loc4);
        removeButton.__set__color(_settings.skinColor);
        removeButton.__set__text(_settings.bookmarkRemoveText);
        removeButton.__set__height(25);
        removeButton.__set__desiredSize(0);
        removeButton.addEventListener("onPress", mx.utils.Delegate.create(this, onRemoveButtonClick));
        removeButton.__set__labelFill(70);
        removeButton.__get__background().__set__fill(100);
        removeButton.__get__label().__set__fontColor(_settings.secondaryTextColor);
        removeButton.__get__label().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        removeButton.__get__label().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        var _loc5 = _clip.createEmptyMovieClip("pageLabelClip", level++);
        pageLabel = new com.fbpublisher.utils.graphics.StyleableLabel(_loc5);
        pageLabel.__set__fontColor(_settings.secondaryTextColor);
        pageLabel.__set__fill(50);
        pageLabel.__set__fontSize(10);
        pageLabel.__set__dropShadowDistance(1);
        pageLabel.__set__dropShadowSize(0);
        pageLabel.__set__dropShadowAngle(45);
        pageLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        pageLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        pageLabel.__set__antiAliasType("advanced");
        pageLabel.__set__selectable(false);
        pageLabel.__set__type("dynamic");
        pageLabel.__set__fontName(_settings.font2);
        pageLabel.__set__embedFonts(true);
        var _loc6 = _clip.createEmptyMovieClip("inputClip", level++);
        input = new com.fbpublisher.basicskin.viewclasses.TextInput(_loc6, _settings);
        input.__set__width(150);
        input.__set__text(defText);
        input.addEventListener("onSetFocus", this);
        input.addEventListener("onKillFocus", this);
        input.addEventListener("onMouseDown", this);
        input.addEventListener("onKeyDown", this);
        this._createShadows();
        this._drawTextInputStyle();
    } // End of the function
    function addEventListener()
    {
    } // End of the function
    function removerEventListener()
    {
    } // End of the function
    function dispatchEvent()
    {
    } // End of the function
    function updateTextEditColor()
    {
        if (_focused)
        {
            input.__get__background().colorTo(_settings.__get__textEditFocusBG(), 200);
        }
        else
        {
            input.__get__background().colorTo(_settings.__get__textEditBG(), 200);
        } // end else if
    } // End of the function
    function updateTexts()
    {
        defText = _settings.bookmarkDeafaultText;
        if (!_focused && !removeButton.__get__visible() && !edit)
        {
            input.__set__text(defText);
        } // end if
        if (removeButton.__get__visible())
        {
            saveButton.__set__text(_settings.bookmarkEditText);
        }
        else
        {
            saveButton.__set__text(_settings.bookmarkAddText);
        } // end else if
        removeButton.__set__text(_settings.bookmarkRemoveText);
        pageLabelText = _settings.bookmarkPageText;
        var _loc3 = _settings.__get__leftPageNumber();
        var _loc2 = _settings.__get__rightPageNumber();
        if (_pageNumberText == null)
        {
            pageLabel.__set__text("");
        }
        else
        {
            pageLabel.__set__text(pageLabelText + _pageNumberText);
        } // end else if
        this.arangeItems();
    } // End of the function
    function updateStyles()
    {
        pageLabel.__set__color(_settings.secondaryTextColor);
        pageLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        pageLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        saveButton.__get__label().__set__fontColor(_settings.secondaryTextColor);
        saveButton.__get__label().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        saveButton.__get__label().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        removeButton.__get__label().__set__fontColor(_settings.secondaryTextColor);
        removeButton.__get__label().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        removeButton.__get__label().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
    } // End of the function
    function set color(col)
    {
        saveButton.__set__color(col);
        removeButton.__set__color(col);
        //return (this.color());
        null;
    } // End of the function
    function _drawTextInputStyle()
    {
        input.__get__background().__set__cornerRadius(4);
        input.__get__background().__set__innerShadowDistance(1);
        input.__get__background().__set__innerShadowSize(0);
        input.__get__background().__set__innerShadowOpacity(55);
        input.__get__background().__set__innerShadowQuality(1);
        input.__get__background().__set__dropShadowDistance(1);
        input.__get__background().__set__dropShadowSize(0);
        input.__get__background().__set__dropShadowColor(16777215);
        input.__get__background().__set__dropShadowOpacity(90);
        input.__get__background().__set__color(_settings.textEditBG);
        input.__get__label().__set__fontColor(10066329);
        input.__get__background().__set__fill(100);
        input.__get__label().__set__fill(85);
        input.__get__label().__set__opacity(80);
    } // End of the function
    function onKeyDown()
    {
        edit = true;
    } // End of the function
    function onKillFocus()
    {
        _focused = false;
        input.__get__background().colorTo(_settings.__get__textEditBG(), 200);
        if (!removeButton.__get__visible() && !edit)
        {
            input.__set__text(defText);
            input.__get__label().__set__fontColor(10066329);
        } // end if
    } // End of the function
    function onMouseDown()
    {
        if (input.__get__focused() && this._mouseOutside(input))
        {
            input.killFocus();
        } // end if
    } // End of the function
    function _mouseOutside(clip)
    {
        var _loc2 = {x: _root._xmouse, y: _root._ymouse};
        clip.globalToLocal(_loc2);
        return (_loc2.x < 0 || _loc2.y < 0 || _loc2.x > clip._width || _loc2.y > clip._height);
    } // End of the function
    function onSetFocus(eventObj)
    {
        _focused = true;
        input.__get__background().colorTo(_settings.__get__textEditFocusBG(), 200);
        if (!removeButton.__get__visible() && !edit)
        {
            input.__set__text("");
            input.__get__label().__set__fontColor(0);
        } // end if
    } // End of the function
    function onRemoveButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onRemoveButtonClick"});
    } // End of the function
    function onSaveButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onSaveButtonClick"});
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        width = newWidth;
        height = newHeight;
        _backgroundShape.__set__width(width);
        _backgroundShape.__set__height(height);
        input.__set__x(width - 160);
        input.__set__y(15);
        saveButton.__set__y(45);
        saveButton.__set__x(input.__get__x() + input.__get__width() - saveButton.__get__width());
        removeButton.__set__y(45);
        removeButton.__set__x(saveButton.__get__x() - removeButton.__get__width() - 5);
        pageLabel.__set__x(11);
        pageLabel.__set__y(79);
        pageLabel.__set__width(94);
        pageLabel.__set__align("center");
    } // End of the function
    function _createShadows()
    {
    } // End of the function
    function _createBackground()
    {
        var _loc3 = _clip.createEmptyMovieClip("backgroundDown", 0);
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc3, 0, 0, this.__get___width(), this.__get___height());
        _backgroundShape.__set__cornerRadius(0);
        _backgroundShape.__set__color(skinColor);
        _backgroundShape.__set__gradientFromColor(16777215);
        _backgroundShape.__set__gradientToColor(16777215);
        _backgroundShape.__set__gradientFromAlpha(30);
        _backgroundShape.__set__gradientToAlpha(30);
        _backgroundShape.__set__dropShadowDistance(1);
        _backgroundShape.__set__dropShadowOpacity(30);
        _backgroundShape.__set__dropShadowAngle(90);
        _backgroundShape.__set__dropShadowSize(1);
        _backgroundShape.__set__innerShadowColor(16777215);
        _backgroundShape.__set__innerShadowDistance(1);
        _backgroundShape.__set__innerShadowOpacity(70);
        _backgroundShape.__set__innerShadowAngle(90);
        _backgroundShape.__set__innerShadowSize(1);
        var _loc2 = _clip.createEmptyMovieClip("backRectClip", 1);
        backRect = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 11, 7, 94, 63);
        backRect.__set__color(0);
        backRect.__set__fill(15);
        backRect.__set__cornerRadius(4);
        backRect.__set__dropShadowColor(16777215);
        backRect.__set__dropShadowDistance(1);
        backRect.__set__dropShadowSize(0);
        backRect.__set__dropShadowAngle(90);
        backRect.__set__dropShadowOpacity(75);
        backRect.__set__innerShadowColor(0);
        backRect.__set__innerShadowDistance(1);
        backRect.__set__innerShadowSize(0);
        backRect.__set__innerShadowAngle(90);
        backRect.__set__innerShadowOpacity(22);
    } // End of the function
    function set text(value)
    {
        if (value == null)
        {
            if (input.__get__focused())
            {
                input.__set__text("");
            }
            else
            {
                input.__set__text(defText);
                edit = false;
            } // end else if
            removeButton.hide();
            saveButton.__set__text(_settings.bookmarkAddText);
            return;
        } // end if
        input.__set__text(value);
        saveButton.__set__text(_settings.bookmarkEditText);
        removeButton.show();
        //return (this.text());
        null;
    } // End of the function
    function showRemove()
    {
        removeButton.show();
    } // End of the function
    function get text()
    {
        if (!edit)
        {
            return ("");
        } // end if
        //return (input.text());
    } // End of the function
    function updateImage(leftPage, rightPage, leftNumber, rightNumber)
    {
        loader.unloadClip(leftBookPage);
        loader.unloadClip(rightBookPage);
        leftBookPage = _clip.createEmptyMovieClip("leftPageClip", 6);
        loader.loadClip(leftPage, leftBookPage);
        leftBookPage._alpha = 0;
        rightBookPage = _clip.createEmptyMovieClip("rightPageClip", 7);
        loader.loadClip(rightPage, rightBookPage);
        rightBookPage._alpha = 0;
        leftBookPage._x = 18;
        leftBookPage._y = 14;
        rightBookPage._x = 58;
        rightBookPage._y = 14;
        if (leftNumber && rightNumber)
        {
            _pageNumberText = " " + leftNumber + "/" + rightNumber;
            pageLabel.__set__text(pageLabelText + " " + leftNumber + "/" + rightNumber);
        }
        else if (leftNumber)
        {
            _pageNumberText = " " + leftNumber;
            pageLabel.__set__text(pageLabelText + " " + leftNumber);
        }
        else if (rightNumber)
        {
            _pageNumberText = " " + rightNumber;
            pageLabel.__set__text(pageLabelText + " " + rightNumber);
        }
        else
        {
            _pageNumberText = null;
            pageLabel.__set__text("");
        } // end else if
    } // End of the function
    function onLoadInit(_mc)
    {
        _mc._height = 49;
        _mc._width = 40;
        leftBookPage._alpha = 100;
        rightBookPage._alpha = 100;
        var _loc4;
        var _loc3;
        var _loc2;
        if (leftBookPage._height == 0)
        {
            _loc4 = rightBookPage._height;
            _loc3 = rightBookPage._x;
            _loc2 = rightBookPage._y;
        }
        else
        {
            _loc4 = leftBookPage._height;
            _loc3 = leftBookPage._x;
            _loc2 = leftBookPage._y;
        } // end else if
    } // End of the function
    var level = 2;
    var defText = "Type your note here";
    var pageLabelText = "page";
    var edit = false;
    var _focused = false;
} // End of Class
#endinitclip
