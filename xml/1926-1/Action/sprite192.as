// Action script...

// [Initial MovieClip Action of sprite 192]
#initclip 88
class com.fbpublisher.basicskin.viewclasses.windows.PrintWindowContent extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _urls, _icons, _pages, _showIcons, _bookmarksWindow, _loader, _iconsLoader, _library, _pageClips, _clip, _settings, _printButton, _combobox, _selectGroup, _previewGroup, _fileSizeTitle, _pageNumberLabel, _progress, _pageIcons, _iconsBackgroung, rightArrow, leftArrow, _width, _height, _backgroundShape, _loadProgress;
    function PrintWindowContent(parentClip, settings, library, bookmarksWindow)
    {
        super(parentClip, settings);
        mx.events.EventDispatcher.initialize(this);
        _urls = settings.pagesStruct;
        if (settings.__get__invertPagesSet())
        {
            _urls.reverse();
        } // end if
        _icons = new Array();
        _pages = new Array();
        _showIcons = new Array();
        _bookmarksWindow = bookmarksWindow;
        for (var _loc3 = 0; _loc3 < _urls.length; ++_loc3)
        {
            _icons[_loc3] = _urls[_loc3].thumbnail;
            _pages[_loc3] = _urls[_loc3].zoom;
        } // end of for
        _loader = new com.fbpublisher.basicskin.viewclasses.windows.ImagesLoader();
        _loader.addEventListener("onComplete", mx.utils.Delegate.create(this, onPagesLoadComplete));
        _loader.addEventListener("onProgress", mx.utils.Delegate.create(this, onPagesLoadProgress));
        _iconsLoader = new com.fbpublisher.basicskin.viewclasses.windows.ImagesLoader();
        _iconsLoader.addEventListener("onComplete", mx.utils.Delegate.create(this, onIconsLoadComplete));
        _iconsLoader.addEventListener("onProgress", mx.utils.Delegate.create(this, onIconsLoadProgress));
        _library = library;
        _pageClips = new Array();
        this._create();
        _iconsLoader.loadImages(_icons, _clip);
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
    function show()
    {
        super.show();
        _printButton.__set__text(_settings.printButtonText);
    } // End of the function
    function updateTextEditColor()
    {
        _combobox.updateTextEditColor();
    } // End of the function
    function updateText()
    {
        _selectGroup.__set__titleText(_settings.printSelectPagesTitle);
        _previewGroup.__set__titleText(_settings.printPreviewTitle);
        if (_combobox.__get__selectedItem().data == "PDF_PAGES")
        {
            _printButton.__set__text(_settings.printButtonDownloadText);
        }
        else
        {
            _printButton.__set__text(_settings.printButtonText);
        } // end else if
        _combobox.changeItem(_settings.getPrintComboboxItem(0), "ALL_PAGES");
        _combobox.changeItem(_settings.getPrintComboboxItem(1), "CURRENT_PAGES");
        _combobox.changeItem(_settings.getPrintComboboxItem(2), "BOOKMARKED_PAGES");
        _combobox.changeItem(_settings.getPrintComboboxItem(3), "PDF_PAGES");
        _size = 0;
        for (var _loc2 = 0; _loc2 < _showIcons.length; ++_loc2)
        {
            if (_urls[_showIcons[_loc2]].size != undefined)
            {
                _size = _size + _urls[_showIcons[_loc2]].size;
            } // end if
        } // end of for
        if (_size != 0 && !isNaN(_size))
        {
            _fileSizeTitle.__set__text("" + _showIcons.length + " " + _settings.__get__fileLabel() + " [" + Math.round(_size / 10.240000) / 100 + " " + _settings.__get__MBLabel() + "]");
        }
        else
        {
            _fileSizeTitle.__set__text("");
        } // end else if
        this._arrangeElements();
    } // End of the function
    function updateStyles()
    {
        _pageNumberLabel.__set__fontColor(_settings.secondaryTextColor);
        _pageNumberLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _pageNumberLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _printButton.__get__label().__set__fontColor(_settings.secondaryTextColor);
        _printButton.__get__label().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _printButton.__get__label().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _printButton.__set__color(_settings.skinColor);
        _selectGroup.__get__title().__set__fontColor(_settings.secondaryTextColor);
        _selectGroup.__get__title().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _selectGroup.__get__title().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _previewGroup.__get__title().__set__fontColor(_settings.secondaryTextColor);
        _previewGroup.__get__title().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _previewGroup.__get__title().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _fileSizeTitle.__set__fontColor(_settings.secondaryTextColor);
        _fileSizeTitle.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _fileSizeTitle.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
    } // End of the function
    function reloadImages()
    {
        _urls = _settings.pagesStruct;
        if (_settings.__get__invertPagesSet())
        {
            _urls.reverse();
        } // end if
        for (var _loc2 = 0; _loc2 < _urls.length; ++_loc2)
        {
            _icons[_loc2] = _urls[_loc2].thumbnail;
            _pages[_loc2] = _urls[_loc2].zoom;
        } // end of for
        _iconsLoader.loadImages(_icons, _clip);
    } // End of the function
    function invertImages()
    {
        _urls.reverse();
        for (var _loc2 = 0; _loc2 < _urls.length; ++_loc2)
        {
            _icons[_loc2] = _urls[_loc2].thumbnail;
            _pages[_loc2] = _urls[_loc2].zoom;
        } // end of for
        _iconsLoader.loadImages(_icons, _clip);
    } // End of the function
    function onPagesLoadComplete(object)
    {
        _progress.remove();
        this.printPages(_loader.__get__images());
    } // End of the function
    function onPagesLoadProgress(object)
    {
    } // End of the function
    function onIconsLoadComplete(object)
    {
        _pageIcons = _iconsLoader.images;
        for (var _loc2 = 0; _loc2 < _pageIcons.length; ++_loc2)
        {
            _pageIcons[_loc2]._visible = true;
            var _loc3 = _pageIcons[_loc2]._height * _iconWidth / _pageIcons[_loc2]._width;
            _pageIcons[_loc2]._width = _iconWidth;
            _pageIcons[_loc2]._height = _loc3;
            _pageIcons[_loc2]._x = _previewGroup.__get__x() + (_previewGroup.__get__width() - _iconWidth) / 2;
            _pageIcons[_loc2]._y = _previewGroup.__get__y() + (_previewGroupHeight - _loc3) / 2;
        } // end of for
        this.updateDisplayIcons();
    } // End of the function
    function onIconsLoadProgress(object)
    {
    } // End of the function
    function updateDisplayIcons()
    {
        _visibleIcon = 0;
        _showIcons.splice(0, _showIcons.length);
        switch (_combobox.__get__selectedItem().data)
        {
            case "ALL_PAGES":
            {
                for (var _loc2 = 0; _loc2 < _pageIcons.length; ++_loc2)
                {
                    _showIcons.push(_loc2);
                } // end of for
                break;
            } 
            case "CURRENT_PAGES":
            {
                for (var _loc2 = 0; _loc2 < _pageIcons.length; ++_loc2)
                {
                    if (_loc2 + 1 == _settings.__get__leftPageNumber() || _loc2 + 1 == _settings.__get__rightPageNumber())
                    {
                        _showIcons.push(_loc2);
                    } // end if
                } // end of for
                break;
            } 
            case "BOOKMARKED_PAGES":
            {
                for (var _loc2 = 0; _loc2 < _bookmarksWindow.__get__bookmarkPages().length; ++_loc2)
                {
                    if (_bookmarksWindow.__get__bookmarkPages()[_loc2].left)
                    {
                        _showIcons.push(_bookmarksWindow.__get__bookmarkPages()[_loc2].left - 1);
                    } // end if
                    if (_bookmarksWindow.__get__bookmarkPages()[_loc2].right)
                    {
                        _showIcons.push(_bookmarksWindow.__get__bookmarkPages()[_loc2].right - 1);
                    } // end if
                } // end of for
                break;
            } 
            case "PDF_PAGES":
            {
                for (var _loc2 = 0; _loc2 < _pageIcons.length; ++_loc2)
                {
                    _showIcons.push(_loc2);
                } // end of for
                break;
            } 
        } // End of switch
        _size = 0;
        for (var _loc2 = 0; _loc2 < _showIcons.length; ++_loc2)
        {
            if (_urls[_showIcons[_loc2]].size != undefined)
            {
                _size = _size + _urls[_showIcons[_loc2]].size;
            } // end if
        } // end of for
        if (_size != 0 && !isNaN(_size))
        {
            _fileSizeTitle.__set__text("" + _showIcons.length + " " + _settings.__get__fileLabel() + " [" + Math.round(_size / 10.240000) / 100 + " " + _settings.__get__MBLabel() + "]");
        }
        else
        {
            _fileSizeTitle.__set__text("");
        } // end else if
        if (_showIcons.length > 0)
        {
            this.setVisibleIcon(_showIcons[_visibleIcon]);
        }
        else
        {
            this.hideAllIcons();
        } // end else if
    } // End of the function
    function setVisibleIcon(pageNumber)
    {
        for (var _loc2 = 0; _loc2 < _pageIcons.length; ++_loc2)
        {
            _pageIcons[_loc2]._visible = false;
        } // end of for
        _pageIcons[pageNumber]._visible = true;
        _iconsBackgroung.show();
        rightArrow.show();
        leftArrow.show();
        _pageNumberLabel.show();
        _iconsBackgroung.__set__x(_pageIcons[pageNumber]._x - 5);
        _iconsBackgroung.__set__y(_pageIcons[pageNumber]._y - 5);
        _iconsBackgroung.__set__width(_pageIcons[pageNumber]._width + 10);
        _iconsBackgroung.__set__height(_pageIcons[pageNumber]._height + 10);
        rightArrow.__set__x(_iconsBackgroung.__get__x() + _iconsBackgroung.__get__width());
        rightArrow.__set__y(_iconsBackgroung.__get__y() + _iconsBackgroung.__get__height() / 2 - _arrowButtonSize / 2);
        leftArrow.__set__x(_iconsBackgroung.__get__x() - _arrowButtonSize);
        leftArrow.__set__y(_iconsBackgroung.__get__y() + _iconsBackgroung.__get__height() / 2 - _arrowButtonSize / 2);
        _pageNumberLabel.__set__x(_iconsBackgroung.x);
        _pageNumberLabel.__set__y(_iconsBackgroung.__get__y() + _iconsBackgroung.__get__height() + 2);
        _pageNumberLabel.__set__width(_iconsBackgroung.width);
        _pageNumberLabel.__set__text("" + (_visibleIcon + 1) + " / " + _showIcons.length);
    } // End of the function
    function hideAllIcons()
    {
        _iconsBackgroung.hide();
        rightArrow.hide();
        leftArrow.hide();
        _pageNumberLabel.hide();
        for (var _loc2 = 0; _loc2 < _pageIcons.length; ++_loc2)
        {
            _pageIcons[_loc2]._visible = false;
        } // end of for
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function updateSkinColor()
    {
        _backgroundShape.__set__color(_settings.skinColor);
        _combobox.__set__color(_settings.skinColor);
        _printButton.__set__color(_settings.skinColor);
    } // End of the function
    function updatePrintOptions()
    {
        if (_settings.__get__bookmarksEnabled())
        {
            _combobox.addItem("Bookmarked Pages", "BOOKMARKED_PAGES");
        }
        else
        {
            _combobox.removeItem("BOOKMARKED_PAGES");
        } // end else if
        if (_settings.__get__saveEnabled())
        {
            _combobox.addItem("Print PDF", "PDF_PAGES");
        }
        else
        {
            _combobox.removeItem("PDF_PAGES");
        } // end else if
    } // End of the function
    function _create()
    {
        this._createBackground();
        this._createSelectGroup();
        this._createPreviewGroup();
        this._createPrintButton();
        this._createCombobox();
        this._createFileSizeHint();
        this._createProgressBar();
        this._createIconsBackground();
        this._createArrowButtons();
        this._createPageNumberLabel();
    } // End of the function
    function _createPageNumberLabel()
    {
        var _loc2 = _clip.createEmptyMovieClip("labelClip", _clip.getNextHighestDepth());
        _pageNumberLabel = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        _pageNumberLabel.__set__antiAliasType("advanced");
        _pageNumberLabel.__set__embedFonts(true);
        _pageNumberLabel.__set__fill(40);
        _pageNumberLabel.__set__fontColor(_settings.secondaryTextColor);
        _pageNumberLabel.__set__fontName(_settings.font2);
        _pageNumberLabel.__set__dropShadowDistance(1);
        _pageNumberLabel.__set__dropShadowSize(0);
        _pageNumberLabel.__set__dropShadowAngle(45);
        _pageNumberLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _pageNumberLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _pageNumberLabel.__set__fontSize(10);
        _pageNumberLabel.__set__align("center");
    } // End of the function
    function _createIconsBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("iconsBackground", _clip.getNextHighestDepth());
        _iconsBackgroung = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, _width, _height);
        _iconsBackgroung.__set__cornerRadius(4);
        _iconsBackgroung.__set__color(0);
        _iconsBackgroung.__set__fill(15);
        _iconsBackgroung.__set__dropShadowColor(16777215);
        _iconsBackgroung.__set__dropShadowDistance(1);
        _iconsBackgroung.__set__dropShadowOpacity(75);
        _iconsBackgroung.__set__dropShadowAngle(90);
        _iconsBackgroung.__set__dropShadowSize(0);
        _iconsBackgroung.__set__innerShadowColor(0);
        _iconsBackgroung.__set__innerShadowDistance(1);
        _iconsBackgroung.__set__innerShadowOpacity(22);
        _iconsBackgroung.__set__innerShadowAngle(90);
        _iconsBackgroung.__set__innerShadowSize(0);
    } // End of the function
    function _createArrowButtons()
    {
        var _loc2 = _clip.createEmptyMovieClip("arrowright", _clip.getNextHighestDepth());
        rightArrow = new com.fbpublisher.basicskin.viewclasses.buttons.RightArrowButton(_loc2);
        rightArrow.setSize(_arrowButtonSize, _arrowButtonSize);
        rightArrow.addEventListener("onButtonPress", mx.utils.Delegate.create(this, onRightButtonPress));
        var _loc3 = _clip.createEmptyMovieClip("arrowleft", _clip.getNextHighestDepth());
        leftArrow = new com.fbpublisher.basicskin.viewclasses.buttons.LeftArrowButton(_loc3);
        leftArrow.setSize(_arrowButtonSize, _arrowButtonSize);
        leftArrow.addEventListener("onButtonPress", mx.utils.Delegate.create(this, onLeftButtonPress));
    } // End of the function
    function onRightButtonPress()
    {
        _settings.__get__rightToLeft() ? (--_visibleIcon) : (++_visibleIcon);
        if (_showIcons.length <= _visibleIcon)
        {
            _visibleIcon = 0;
        }
        else if (_visibleIcon < 0)
        {
            _visibleIcon = _showIcons.length - 1;
        } // end else if
        this.setVisibleIcon(_showIcons[_visibleIcon]);
    } // End of the function
    function onLeftButtonPress()
    {
        _settings.__get__rightToLeft() ? (++_visibleIcon) : (--_visibleIcon);
        if (_showIcons.length <= _visibleIcon)
        {
            _visibleIcon = 0;
        }
        else if (_visibleIcon < 0)
        {
            _visibleIcon = _showIcons.length - 1;
        } // end else if
        this.setVisibleIcon(_showIcons[_visibleIcon]);
    } // End of the function
    function _createProgressBar()
    {
        var _loc2 = _clip.createEmptyMovieClip("loadProgressClip", _clip.getNextHighestDepth());
        _loadProgress = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 20, _height - 20, 0, 10);
    } // End of the function
    function _createFileSizeHint()
    {
        var _loc2 = _clip.createEmptyMovieClip("fileSizeTitleClip", _clip.getNextHighestDepth());
        _fileSizeTitle = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        _fileSizeTitle.__set__antiAliasType("advanced");
        _fileSizeTitle.__set__embedFonts(true);
        _fileSizeTitle.__set__fontName(_settings.font2);
        _fileSizeTitle.__set__fontSize(11);
        _fileSizeTitle.__set__autoSize(true);
        _fileSizeTitle.__set__text("");
        _fileSizeTitle.__set__fill(50);
        _fileSizeTitle.__set__fontColor(_settings.secondaryTextColor);
        _fileSizeTitle.__set__dropShadowSize(0);
        _fileSizeTitle.__set__dropShadowDistance(1);
        _fileSizeTitle.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _fileSizeTitle.__set__dropShadowColor(_settings.secondaryTextShadowColor);
    } // End of the function
    function _createCombobox()
    {
        _combobox = new com.fbpublisher.basicskin.viewclasses.Combobox(_clip, _settings);
        _combobox.setSize(_comboboxWidth, _comboboxHeight);
        _combobox.addItem(_settings.getPrintComboboxItem(0), "ALL_PAGES");
        _combobox.addItem(_settings.getPrintComboboxItem(1), "CURRENT_PAGES");
        if (_settings.__get__bookmarksEnabled())
        {
            _combobox.addItem(_settings.getPrintComboboxItem(2), "BOOKMARKED_PAGES");
        } // end if
        if (_settings.__get__saveEnabled())
        {
            _combobox.addItem(_settings.getPrintComboboxItem(3), "PDF_PAGES");
        } // end if
        _combobox.addEventListener("selectedItemChanged", this);
    } // End of the function
    function _createPrintButton()
    {
        var _loc2 = _clip.createEmptyMovieClip("printButton", _clip.getNextHighestDepth());
        _printButton = new com.fbpublisher.basicskin.viewclasses.TextButton(_settings, _loc2);
        _printButton.__set__color(_settings.skinColor);
        _printButton.__set__cornerRadius(4);
        _printButton.__set__text(_settings.printButtonText);
        _printButton.__set__labelFill(70);
        _printButton.__get__background().__set__fill(100);
        _printButton.__set__textPadding(_buttonTextPadding);
        _printButton.setSize(_buttonWidth, _buttonHeight);
        _printButton.__get__label().__set__fontColor(_settings.secondaryTextColor);
        _printButton.__get__label().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _printButton.__get__label().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _printButton.addEventListener("onRelease", mx.utils.Delegate.create(this, printButtonRelease));
    } // End of the function
    function _createSelectGroup()
    {
        var _loc2 = _clip.createEmptyMovieClip("selectGroup", _clip.getNextHighestDepth());
        _selectGroup = new com.fbpublisher.basicskin.viewclasses.GroupPanel(_loc2, _settings);
        _selectGroup.setSize(_selectGroupWidth, _selectGroupHeight);
        _selectGroup.__get__title().__set__fontColor(_settings.secondaryTextColor);
        _selectGroup.__get__title().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _selectGroup.__get__title().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _selectGroup.__set__titleText(_settings.printSelectPagesTitle);
    } // End of the function
    function _createPreviewGroup()
    {
        var _loc2 = _clip.createEmptyMovieClip("previewGroup", _clip.getNextHighestDepth());
        _previewGroup = new com.fbpublisher.basicskin.viewclasses.GroupPanel(_loc2, _settings);
        _previewGroup.setSize(_previewGroupWidth, _previewGroupHeight);
        _previewGroup.__get__title().__set__fontColor(_settings.secondaryTextColor);
        _previewGroup.__get__title().__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _previewGroup.__get__title().__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _previewGroup.__set__titleText(_settings.printPreviewTitle);
    } // End of the function
    function _arrangeElements()
    {
        _backgroundShape.setSize(_width, _height);
        _selectGroup.__set__x(_groupPadding);
        _selectGroup.__set__y(_groupPadding - 3);
        _previewGroup.__set__x(_selectGroup.__get__x() + _selectGroup.__get__width() + _groupPadding);
        _previewGroup.__set__y(_selectGroup.y);
        _printButton.setSize(_buttonWidth, _buttonHeight);
        _printButton.__set__x(_width - _groupPadding - _printButton.__get__width() - 2);
        _printButton.__set__y(_previewGroup.__get__y() + _previewGroup.__get__height() + 6);
        _previewGroup.__set__titleShiftX(Math.round(_previewGroup.__get__width() / 2 - 4 - _previewGroup.__get__title().__get__textWidth() / 2));
        _combobox.__set__x(_selectGroup.__get__x() + _comboboxPaddingX);
        _combobox.__set__y(_selectGroup.__get__y() + _comboboxPaddingY);
        _fileSizeTitle.__set__x(_selectGroup.__get__x() + _selectGroup.__get__titleShiftX());
        _fileSizeTitle.__set__y(_combobox.__get__y() + _combobox.__get__height() + 5);
        this.updateDisplayIcons();
    } // End of the function
    function _createBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("background", _clip.getNextHighestDepth());
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, _width, _height);
        _backgroundShape.__set__cornerRadius(0);
        _backgroundShape.__set__color(_settings.skinColor);
        _backgroundShape.__set__gradientFromColor(16777215);
        _backgroundShape.__set__gradientFromAlpha(75 * _settings.__get__windowBackgroundOpacity());
        _backgroundShape.__set__gradientToColor(16777215);
        _backgroundShape.__set__gradientToAlpha(80 * _settings.__get__windowBackgroundOpacity());
    } // End of the function
    function selectedItemChanged(eventObject)
    {
        if (_combobox.__get__selectedItem().data == "PDF_PAGES")
        {
            _printButton.__set__text(_settings.printButtonDownloadText);
        }
        else
        {
            _printButton.__set__text(_settings.printButtonText);
        } // end else if
        this._arrangeElements();
    } // End of the function
    function printButtonRelease()
    {
        var _loc4 = new Array();
        for (var _loc3 = 0; _loc3 < _showIcons.length; ++_loc3)
        {
            _loc4.push(_pages[_showIcons[_loc3]]);
        } // end of for
        if (_loc4.length == 0)
        {
            return;
        } // end if
        if (_combobox.__get__selectedItem().data == "PDF_PAGES")
        {
            this.dispatchEvent({type: "downloadPDFVersion"});
            return;
        } // end if
        var _loc5 = _clip.createEmptyMovieClip("progressLabelClip", _clip.getNextHighestDepth());
        _loc5._x = _width / 2 - 20;
        _loc5._y = _height / 2 - 20;
        _progress = new com.fbpublisher.basicskin.viewclasses.PagePreloader(_loc5, _settings);
        _progress.setSize(40, 40);
        _loader.loadImages(_loc4, _root);
    } // End of the function
    function printPages(pageClips)
    {
        var _loc6 = new PrintJob();
        var _loc14 = _loc6.start();
        if (_loc14)
        {
            for (var _loc1 = 0; _loc1 < pageClips.length; ++_loc1)
            {
                pageClips[_loc1].forceSmoothing = true;
                var _loc8 = pageClips[_loc1]._width;
                var _loc7 = pageClips[_loc1]._height;
                var _loc5 = _loc6.pageWidth / pageClips[_loc1]._width;
                var _loc3 = _loc6.pageHeight / pageClips[_loc1]._height;
                var _loc4 = _loc5 > _loc3 ? (_loc3) : (_loc5);
                pageClips[_loc1]._width = pageClips[_loc1]._width * _loc4;
                pageClips[_loc1]._height = pageClips[_loc1]._height * _loc4;
                _loc6.addPage(pageClips[_loc1], {xMin: 0, xMax: _loc8, yMin: 0, yMax: _loc7}, {printAsBitmap: true});
            } // end of for
            _loc6.send();
        } // end if
        false;
    } // End of the function
    var _componentClipName = "printWindowContent";
    var ready = false;
    var _groupPadding = 16;
    var _selectGroupWidth = 194;
    var _selectGroupHeight = 120;
    var _previewGroupWidth = 116;
    var _previewGroupHeight = 120;
    var _buttonWidth = 85;
    var _buttonHeight = 25;
    var _buttonTextPadding = 15;
    var _comboboxWidth = 156;
    var _comboboxHeight = 18;
    var _comboboxPaddingX = 13;
    var _comboboxPaddingY = 25;
    var _iterator = 0;
    var _arrowButtonSize = 20;
    var _iconWidth = 55;
    var _size = 0;
    var _visibleIcon = 0;
} // End of Class
#endinitclip
