// Action script...

// [Initial MovieClip Action of sprite 135]
#initclip 31
class com.fbpublisher.basicskin.viewclasses.windows.SearchWindowContent extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _library, layout, _searchWindow, _width, _height, _settings, _scrollLabel, _scrollWindow, _searchLabel, _backgroundShape, _clip, _pageDown, _pageUp, __get__pageHeight, __get__hint, _this, onEnterFrame, __get__hasFocus, __set__hint, __get__query;
    function SearchWindowContent(parentClip, settings, library)
    {
        super(parentClip, settings);
        _library = library;
        layout = new com.fbpublisher.basicskin.viewclasses.DynamicBoxLayout();
        mx.events.EventDispatcher.initialize(this);
        Mouse.addListener(this);
        this._create();
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
    function get hasFocus()
    {
        //return (_searchWindow.hasFocus());
    } // End of the function
    function get query()
    {
        //return (_searchWindow.query());
    } // End of the function
    function updateStyles()
    {
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function updateTextEditColor()
    {
        _searchWindow.updateTextEditColor();
    } // End of the function
    function updateSkinColor()
    {
        _searchWindow.__set__color(_settings.skinColor);
        _scrollLabel.__set__color(_settings.skinColor);
        _scrollWindow.__set__color(_settings.skinColor);
        _searchLabel.__set__color(_settings.skinColor);
        _backgroundShape.__set__color(_settings.skinColor);
    } // End of the function
    function _create()
    {
        this._createBackground();
        this._createLayoutContent();
    } // End of the function
    function _createLayoutContent()
    {
        var _loc4 = _clip.createEmptyMovieClip("selectedLabel", level++);
        _searchLabel = new com.fbpublisher.basicskin.viewclasses.DevideLabel(_loc4, com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchResultTitle(), _settings);
        var _loc6 = _clip.createEmptyMovieClip("selectedW", level++);
        _searchWindow = new com.fbpublisher.basicskin.viewclasses.windows.SearchFormWindow(_loc6, _settings.__get__skinColor());
        _searchWindow.addEventListener("onSearchText", this);
        var _loc5 = _clip.createEmptyMovieClip("scrollLabel", level++);
        _scrollLabel = new com.fbpublisher.basicskin.viewclasses.DevideLabel(_loc5, "No Pages Found", _settings);
        var _loc3 = _clip.createEmptyMovieClip("pageDown", level++);
        _pageDown = new com.fbpublisher.basicskin.viewclasses.buttons.PageDownButton(_loc3, _settings);
        _pageDown.addEventListener("onButtonPress", mx.utils.Delegate.create(this, onDownButtonPress));
        var _loc7 = _clip.createEmptyMovieClip("scrollW", level++);
        _scrollWindow = new com.fbpublisher.basicskin.viewclasses.windows.SearchScrollView(_settings, _loc7);
        _scrollWindow.addEventListener("onResultClick", this);
        _scrollWindow.addEventListener("onContentChanged", this);
        var _loc2 = _clip.createEmptyMovieClip("pageUp", level++);
        _pageUp = new com.fbpublisher.basicskin.viewclasses.buttons.PageUpButton(_loc2, _settings);
        _pageUp.addEventListener("onButtonPress", mx.utils.Delegate.create(this, onUpButtonPress));
        _pageDown.__set___visible(false);
        _pageUp.__set___visible(false);
        _searchLabel.__set___height(25);
        _searchWindow.__set___height(55);
        _scrollLabel.__set___height(25);
        _scrollWindow.__set___height(100);
        _pageDown.__set___height(buttonHeight + 2);
        _pageUp.__set___height(buttonHeight);
        layout.push(_searchLabel);
        layout.push(_searchWindow);
        layout.push(_scrollLabel);
        layout.push(_pageUp);
        layout.push(_scrollWindow);
        layout.push(_pageDown);
    } // End of the function
    function onSearchText(event)
    {
        this.search();
    } // End of the function
    function get pageHeight()
    {
        //return (_scrollWindow._height());
    } // End of the function
    function onUpButtonPress(event)
    {
        var _loc2 = _scrollWindow.__get__contentY() + this.__get__pageHeight();
        if (_loc2 > 0)
        {
            _loc2 = 0;
        } // end if
        var _loc3 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _loc2, 0.500000, true);
    } // End of the function
    function onDownButtonPress(event)
    {
        var _loc2 = _scrollWindow.__get__contentY() - this.__get__pageHeight();
        if (_loc2 < _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight())
        {
            _loc2 = _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight();
        } // end if
        var _loc3 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _loc2, 0.500000, true);
    } // End of the function
    function onMouseWheel(delta)
    {
        if (this._mouseOutside())
        {
            return;
        } // end if
        var _loc2 = _scrollWindow.__get__contentY() + delta * com.fbpublisher.basicskin.viewclasses.windows.SearchScrollView.SEARCH_BUTTON_HEIGHT;
        if (_loc2 > 0)
        {
            _loc2 = 0;
        } // end if
        if (_loc2 < this.__get__pageHeight() - _scrollWindow.__get__contentHeight())
        {
            _loc2 = this.__get__pageHeight() - _scrollWindow.__get__contentHeight();
        } // end if
        var _loc3 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _loc2, 0.500000, true);
    } // End of the function
    function _mouseOutside()
    {
        var _loc3 = {x: _root._xmouse, y: _root._ymouse};
        _clip.globalToLocal(_loc3);
        return (_loc3.x < 0 || _loc3.y < 0 || _loc3.x > _width || _loc3.y > _height);
    } // End of the function
    function onResultClick(object)
    {
        this.dispatchEvent({type: "onResultClick", pageNumber: object.pageNumber, query: _searchWindow.__get__query()});
    } // End of the function
    function onBookmarkClick(object)
    {
        this.dispatchEvent({type: "onBookmarkClick", pageNumber: object.pageNumber});
    } // End of the function
    function onContentChanged()
    {
        this.updateContent();
    } // End of the function
    function set hint(value)
    {
        _searchWindow.__set__hint(value);
        //return (this.hint());
        null;
    } // End of the function
    function updateContent()
    {
        if (_searchWindow.__get__waiting())
        {
            _scrollLabel.__set__text(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().searchSearchingText);
        }
        else if (_searchWindow.__get__query().length < com.fbpublisher.utils.search.Index.MIN_WORD)
        {
            _scrollLabel.__set__text(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().searchMinLenWarning);
        }
        else
        {
            _scrollLabel.__set__text(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchPagesFoundText() + _scrollWindow.__get__items());
        } // end else if
        _searchLabel.__set__text(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().searchResultTitle);
        if (_scrollWindow.__get__contentHeight() > _scrollWindow.__get___height())
        {
            _pageDown.__set___visible(true);
            _pageUp.__set___visible(true);
        }
        else
        {
            _pageDown.__set___visible(false);
            _pageUp.__set___visible(false);
        } // end else if
        layout.__set___height(_height);
    } // End of the function
    function _arrangeElements()
    {
        _backgroundShape.setSize(_width, _height);
        layout.__set___width(_width);
        layout.__set___height(_height);
        _scrollWindow.__set__contentY(0);
    } // End of the function
    function _createBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("background", 0);
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, _width, _height);
        _backgroundShape.__set__cornerRadius(0);
        _backgroundShape.__set__color(_settings.skinColor);
        _backgroundShape.__set__gradientFromColor(16777215);
        _backgroundShape.__set__gradientFromAlpha(75);
        _backgroundShape.__set__gradientToColor(16777215);
        _backgroundShape.__set__gradientToAlpha(80);
    } // End of the function
    function search()
    {
        var result = com.fbpublisher.utils.search.Index.__get__singleton().search(_searchWindow.__get__query());
        _scrollWindow.clear();
        _searchWindow.__set__waiting(true);
        var _loc4 = _clip.createEmptyMovieClip("laterer", _clip.getNextHighestDepth());
        _loc4._this = this;
        _loc4.result = result;
        _loc4.onEnterFrame = function ()
        {
            _this._searchWindow.waiting = false;
            _this._scrollWindow.addItems(result);
            com.fbpublisher.utils.search.BookInfo.__get__singleton().clear();
            for (var _loc2 = 0; _loc2 < result.length; ++_loc2)
            {
                var _loc3 = result[_loc2];
                com.fbpublisher.utils.search.BookInfo.__get__singleton().highlight(_loc3.__get__page());
            } // end of for
            _this.updateContent();
            delete this.onEnterFrame;
            false;
        };
        this.updateContent();
    } // End of the function
    function addResult(query)
    {
        _searchWindow.__set__query(query);
        this.search();
    } // End of the function
    var _componentClipName = "searchWindowContent";
    var ready = false;
    var level = 1;
    var buttonHeight = 20;
} // End of Class
#endinitclip
