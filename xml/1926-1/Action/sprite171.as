// Action script...

// [Initial MovieClip Action of sprite 171]
#initclip 67
class com.fbpublisher.basicskin.viewclasses.windows.MainWindowHeader extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _paginationPanel, _settings, linkButtonClip, _link, _title, _search, _width, _height, indexingLabel, _clip, textClip, __get__hint, _separator, _button, __set__hint;
    function MainWindowHeader(parentClip, settings)
    {
        super(parentClip, settings);
        this._create();
        com.fbpublisher.utils.search.Index.__get__singleton().addEventListener(com.fbpublisher.utils.search.Index.LOAD_COMPLETE, mx.utils.Delegate.create(this, updateSearch));
        com.fbpublisher.utils.search.Index.__get__singleton().addEventListener(com.fbpublisher.utils.search.Index.LOAD_START, mx.utils.Delegate.create(this, updateSearch));
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
        _paginationPanel.updateTextEditColor();
    } // End of the function
    function updateLink()
    {
        if (_settings.__get__displayType() == "demo" || _settings.__get__linkButtonEnabled())
        {
            linkButtonClip._visible = true;
        }
        else
        {
            linkButtonClip._visible = false;
        } // end else if
        if (_settings.__get__displayType() == "demo")
        {
            _link.__set__text("PDF Publisher Trial");
        }
        else
        {
            _link.__set__text(_settings.linkButtonLabel);
        } // end else if
        this._arrangeElements();
    } // End of the function
    function updateStyles()
    {
        _title.__set__fontColor(_settings.mainTextColor);
        _title.__set__dropShadowColor(_settings.mainTextShadowColor);
        _title.__set__dropShadowOpacity(_settings.mainTextShadowOpacity);
        _paginationPanel.updateStyles();
        _link.__get__label().__set__fontColor(_settings.mainTextColor);
        _link.__get__label().__set__dropShadowColor(_settings.mainTextShadowColor);
        _link.__get__label().__set__dropShadowOpacity(_settings.mainTextShadowOpacity);
        _search.__set__skinColor(_settings.skinColor);
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function updateTitle()
    {
        _title.__set__text(_settings.titleLabel);
        if (_settings.__get__titleEnabled())
        {
            _title.show();
        }
        else
        {
            _title.hide();
        } // end else if
        this._arrangeElements();
    } // End of the function
    function updatePaginationEnabled()
    {
        if (_settings.__get__paginationEnabled())
        {
            _paginationPanel.show();
        }
        else
        {
            _paginationPanel.hide();
        } // end else if
        this._arrangeElements();
    } // End of the function
    function updatePaginationLabel()
    {
        _paginationPanel.__set__label(_settings.paginationLabel);
        this._arrangeElements();
    } // End of the function
    function updatePaginationTotalPages()
    {
        _paginationPanel.__set__totalPages(_settings.paginationTotalPages);
        this._arrangeElements();
    } // End of the function
    function updatePaginationPageNumbers()
    {
        _paginationPanel.__set__pageNumbers(_settings.paginationPageNumbers);
        this._arrangeElements();
    } // End of the function
    function pageNumbersChanged()
    {
        if (!_settings.__get__bookZoomedIn())
        {
            _paginationPanel.__set__pageNumbers(_settings.__get__leftPageNumber() + "," + _settings.__get__rightPageNumber());
        }
        else
        {
            _paginationPanel.__set__pageNumbers(String(_settings.__get__zoomedPageNumber()));
        } // end else if
        _paginationPanel.__set__totalPages(_settings.totalPages);
        this._arrangeElements();
    } // End of the function
    function _create()
    {
        this._createButton();
        this._createTitle();
        this._createSeparator();
        this._createPagination();
        this._createHomeLink();
        this._createSearchField();
        this._createIndexingLabel();
    } // End of the function
    function _createIndexingLabel()
    {
        if (!indexingLabel)
        {
            textClip = _clip.createEmptyMovieClip("text", _clip.getNextHighestDepth());
            indexingLabel = new com.fbpublisher.utils.graphics.StyleableLabel(textClip);
            indexingLabel.__set__fontColor(_settings.secondaryTextColor);
            indexingLabel.__set__fontSize(10);
            indexingLabel.__set__align("left");
            indexingLabel.__set__fill(100);
            indexingLabel.__set__dropShadowDistance(1);
            indexingLabel.__set__dropShadowSize(0);
            indexingLabel.__set__dropShadowAngle(45);
            indexingLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
            indexingLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
            indexingLabel.__set__antiAliasType("advanced");
            indexingLabel.__set__fontName(_settings.font1);
            indexingLabel.__set__embedFonts(true);
            indexingLabel.__set__text(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().searchLoadingText);
            textClip._visible = false;
        } // end if
    } // End of the function
    function _createSearchField()
    {
        var _loc2 = _clip.createEmptyMovieClip("search", _clip.getNextHighestDepth());
        _search = new com.fbpublisher.basicskin.viewclasses.SearchField(_loc2);
        _search.__set__menuWidth(_width);
        _search.__set__menuHeight(_height);
        _search.__set__maxWidth(_width - _searchFieldPadding);
        _search.addEventListener("onSearchText", this);
        this.updateSearch();
    } // End of the function
    function set hint(newHint)
    {
        _search.__set__hint(newHint);
        //return (this.hint());
        null;
    } // End of the function
    function updateSearch()
    {
        if (_settings.__get__searchEnabled())
        {
            if (com.fbpublisher.utils.search.Index.__get__singleton().__get__loaded())
            {
                _search.show();
                textClip._visible = false;
            }
            else if (com.fbpublisher.utils.search.Index.__get__singleton().__get__loading())
            {
                _search.hide();
                textClip._visible = true;
            }
            else
            {
                _search.hide();
                textClip._visible = false;
            } // end else if
        }
        else
        {
            _search.hide();
            textClip._visible = false;
        } // end else if
        this._arrangeElements();
    } // End of the function
    function _createButton()
    {
        var _loc2 = _clip.createEmptyMovieClip("button", _clip.getNextHighestDepth());
        _loc2.onEnterFrame = mx.utils.Delegate.create(this, _buttonEnterFrame);
    } // End of the function
    function _createTitle()
    {
        var _loc2 = _clip.createEmptyMovieClip("title", _clip.getNextHighestDepth());
        _title = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        _title.__set__antiAliasType("advanced");
        _title.__set__embedFonts(true);
        _title.__set__fontName(_settings.font1);
        _title.__set__fontSize(11);
        _title.__set__autoSize(true);
        _title.__set__fontColor(_settings.mainTextColor);
        _title.__set__dropShadowColor(_settings.mainTextShadowColor);
        _title.__set__text(_settings.titleLabel);
        _title.__set__dropShadowOpacity(_settings.mainTextShadowOpacity);
        _title.__set__dropShadowDistance(1);
        _title.__set__dropShadowQuality(1);
        _title.__set__dropShadowSize(0);
    } // End of the function
    function _createHomeLink()
    {
        linkButtonClip = _clip.createEmptyMovieClip("linkButton", _clip.getNextHighestDepth());
        _link = new com.fbpublisher.basicskin.viewclasses.buttons.TrialButton(linkButtonClip, _settings);
        _link.__set__color(0);
        _link.__set__cornerRadius(4);
        if (_settings.__get__displayType() == "demo")
        {
            _link.__set__text("PDF Publisher Trial");
        }
        else
        {
            _link.__set__text(_settings.linkButtonLabel);
        } // end else if
        _link.__set__textPadding(16);
        _link.setSize(100, 22);
        _link.addEventListener("onRelease", mx.utils.Delegate.create(this, linkButtonRelease));
        if (_settings.__get__displayType() == "demo" || _settings.__get__linkButtonEnabled())
        {
            linkButtonClip._visible = true;
        }
        else
        {
            linkButtonClip._visible = false;
        } // end else if
    } // End of the function
    function _createSeparator()
    {
        var _loc2 = _clip.createEmptyMovieClip("separator", _clip.getNextHighestDepth());
        _separator = new com.fbpublisher.basicskin.viewclasses.BitmapIcon(_loc2, "titleSeparatorIcon");
    } // End of the function
    function _createPagination()
    {
        var _loc2 = _clip.createEmptyMovieClip("pagination", _clip.getNextHighestDepth());
        _paginationPanel = new com.fbpublisher.basicskin.viewclasses.windows.mainwindow.PaginationPanel(_loc2, _settings);
        _paginationPanel.addEventListener("onGotoPage", mx.utils.Delegate.create(this, _onGotoPage));
    } // End of the function
    function _arrangeElements()
    {
        var _loc2 = 0;
        var _loc3 = Math.round((_height - _link.__get__height()) / 2);
        _link.setSize(_buttonWidth, _buttonHeight);
        _link.__set__y(_loc3);
        _link.__set__x(_width - _link.__get__width() - _loc3);
        _button.setSize(_width, _height);
        if (_settings.__get__searchEnabled())
        {
            _search.__set__menuWidth(_width);
            _search.__set__menuHeight(_height);
            var _loc4 = _link.__get__visible() ? (_link.__get__width()) : (0);
            _search.__set__padding(_searchFieldPadding + _loc4);
            _search.__set__maxWidth(_width - _searchFieldPadding);
            if (indexingLabel)
            {
                indexingLabel.__set__x(_search.x);
                indexingLabel.__set__y(_search.y);
            } // end if
        } // end if
        if (_settings.__get__titleEnabled())
        {
            _title.__set__x(_titlePadding - 2);
            _title.__set__y(Math.round(_height / 2 - _title.__get__textHeight() / 2 - 3));
            _loc2 = _loc2 + (_title.__get__textWidth() + _titlePadding + 2);
            if (_settings.__get__paginationEnabled() && _paginationPanel.__get__consideredVisible())
            {
                _loc2 = _loc2 + 2 * _separatorPadding;
                _separator.show();
                _separator.__set__x(_loc2);
                _separator.__set__y(_height / 2 - _separator.__get__height() / 2);
                _loc2 = _loc2 + _separator.width;
            }
            else
            {
                _separator.hide();
            } // end else if
            _paginationPanel.__set__x(Math.round(_loc2 - 2));
        }
        else
        {
            _separator.hide();
            _loc2 = _loc2 + _titlePadding;
            _paginationPanel.__set__x(Math.round(_loc2 - 2));
        } // end else if
        _paginationPanel.__set__y(Math.round(_height / 2 - _paginationPanel.__get__height() / 2));
    } // End of the function
    function linkButtonRelease()
    {
        var _loc2;
        if (_settings.__get__displayType() == "demo")
        {
            _loc2 = "http://www.page-flip.com";
        }
        else
        {
            _loc2 = _settings.linkButtonURL;
        } // end else if
        getURL(_loc2, "_blank");
    } // End of the function
    function _buttonEnterFrame()
    {
        if (!this._mouseOutsidePagination() && !_alreadyOver)
        {
            this._onRollOver();
        }
        else if (this._mouseOutsidePagination() && _alreadyOver)
        {
            this._onRollOut();
        } // end else if
    } // End of the function
    function _onRollOver()
    {
        _alreadyOver = true;
        _paginationPanel.open();
    } // End of the function
    function _onRollOut()
    {
        _alreadyOver = false;
        _paginationPanel.close();
    } // End of the function
    function _mouseOutside()
    {
        var _loc3 = {x: _root._xmouse, y: _root._ymouse};
        _clip.globalToLocal(_loc3);
        return (_loc3.x < 0 || _loc3.y < 0 || _loc3.x > _width || _loc3.y > _height);
    } // End of the function
    function _mouseOutsidePagination()
    {
        var _loc3 = {x: _root._xmouse, y: _root._ymouse};
        _clip.globalToLocal(_loc3);
        //return (_loc3.x < 0 || _loc3.y < 0 || _loc3.x > _paginationPanel.x() + _paginationPanel.__get__width() + 30 || _loc3.y > _height);
    } // End of the function
    function _onGotoPage(eventObject)
    {
        this.dispatchEvent({type: "onGotoPage", pageNumber: eventObject.pageNumber});
    } // End of the function
    function onSearchText(eventObject)
    {
        this.dispatchEvent({type: "onSearchText", query: eventObject.query});
    } // End of the function
    var _componentClipName = "mainWindowHeader";
    var _titlePadding = 15;
    var _separatorPadding = -2;
    var _alreadyOver = false;
    var _buttonWidth = 85;
    var _buttonHeight = 25;
    var _searchFieldPadding = 20;
} // End of Class
#endinitclip
