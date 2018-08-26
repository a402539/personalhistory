// Action script...

// [Initial MovieClip Action of sprite 180]
#initclip 76
class com.fbpublisher.basicskin.viewclasses.windows.BookmarksWindowContent extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var bookmarks, urls, layout, _library, _selectWindow, _settings, _selectLabel, _scrollWindow, _scrollLabel, _width, _height, _backgroundShape, _pageDown, _pageUp, _clip, __get__bookmarkPages;
    function BookmarksWindowContent(parentClip, settings, library)
    {
        super(parentClip, settings);
        bookmarks = new Array(settings.__get__totalPages());
        urls = settings.thumbnails;
        if (settings.__get__invertPagesSet())
        {
            urls.reverse();
        } // end if
        layout = new com.fbpublisher.basicskin.viewclasses.DynamicBoxLayout();
        _library = library;
        mx.events.EventDispatcher.initialize(this);
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
    function updateTextEditColor()
    {
        _selectWindow.updateTextEditColor();
    } // End of the function
    function updateTexts()
    {
        _selectLabel.__set__text(_settings.bookmarksAddTitle);
        _scrollLabel.__set__text(_settings.__get__bookmarksCountTitle() + " (" + _scrollWindow.__get__items() + " " + _settings.__get__bookmarksItemsTitle() + ")");
        _selectWindow.updateTexts();
        _scrollWindow.updateTexts();
    } // End of the function
    function updateStyles()
    {
        _selectLabel.updateStyles();
        _selectWindow.updateStyles();
        _scrollLabel.updateStyles();
        _scrollWindow.updateStyles();
    } // End of the function
    function updateSubHeader()
    {
        _selectLabel.updateStyles();
        _scrollLabel.updateStyles();
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
        _selectLabel.__set__color(_settings.skinColor);
        _selectWindow.__set__color(_settings.skinColor);
        _scrollLabel.__set__color(_settings.skinColor);
        _scrollWindow.__set__color(_settings.skinColor);
        _pageDown.__set__color(_settings.skinColor);
        _pageUp.__set__color(_settings.skinColor);
    } // End of the function
    function reloadImages()
    {
        bookmarks = new Array(_settings.__get__totalPages());
        urls = _settings.thumbnails;
        if (_settings.__get__invertPagesSet())
        {
            urls.reverse();
        } // end if
        _scrollWindow.reloadImages();
    } // End of the function
    function invertImages()
    {
        _scrollWindow.invertImages();
    } // End of the function
    function _create()
    {
        this._createBackground();
        this._createLayoutContent();
        this.loadBookmarks();
    } // End of the function
    function _createLayoutContent()
    {
        var _loc6 = _clip.createEmptyMovieClip("selectedLabel", level++);
        _selectLabel = new com.fbpublisher.basicskin.viewclasses.DevideLabel(_loc6, _settings.__get__bookmarksAddTitle(), _settings);
        var _loc5 = _clip.createEmptyMovieClip("selectedW", level++);
        _selectWindow = new com.fbpublisher.basicskin.viewclasses.windows.BookmarkSelectedWindow(_loc5, _settings);
        _selectWindow.addEventListener("onSaveButtonClick", this);
        _selectWindow.addEventListener("onRemoveButtonClick", this);
        var _loc4 = _clip.createEmptyMovieClip("scrollLabel", level++);
        _scrollLabel = new com.fbpublisher.basicskin.viewclasses.DevideLabel(_loc4, _settings.__get__bookmarksCountTitle() + " (0 " + _settings.__get__bookmarksItemsTitle() + ")", _settings);
        var _loc3 = _clip.createEmptyMovieClip("pageDown", level++);
        _pageDown = new com.fbpublisher.basicskin.viewclasses.buttons.PageDownButton(_loc3, _settings);
        _pageDown.addEventListener("onButtonPress", mx.utils.Delegate.create(this, onDownButtonPress));
        var _loc7 = _clip.createEmptyMovieClip("scrollW", level++);
        _scrollWindow = new com.fbpublisher.basicskin.viewclasses.windows.BookmarkScrollView(_settings, _loc7);
        _scrollWindow.addEventListener("onBookmarkClick", this);
        _scrollWindow.addEventListener("onContentChanged", this);
        var _loc2 = _clip.createEmptyMovieClip("pageUp", level++);
        _pageUp = new com.fbpublisher.basicskin.viewclasses.buttons.PageUpButton(_loc2, _settings);
        _pageUp.addEventListener("onButtonPress", mx.utils.Delegate.create(this, onUpButtonPress));
        _pageDown.__set___visible(false);
        _pageUp.__set___visible(false);
        _selectLabel.__set___height(25);
        _selectWindow.__set___height(100);
        _scrollLabel.__set___height(25);
        _scrollWindow.__set___height(100);
        _pageDown.__set___height(buttonHeight + 2);
        _pageUp.__set___height(buttonHeight);
        layout.push(_selectLabel);
        layout.push(_selectWindow);
        layout.push(_scrollLabel);
        layout.push(_pageUp);
        layout.push(_scrollWindow);
        layout.push(_pageDown);
    } // End of the function
    function onBookmarkClick(object)
    {
        this.dispatchEvent({type: "onBookmarkClick", pageNumber: object.pageNumber});
    } // End of the function
    function onContentChanged(object)
    {
        _scrollLabel.__set__text(_settings.__get__bookmarksCountTitle() + " (" + _scrollWindow.__get__items() + " " + _settings.__get__bookmarksItemsTitle() + ")");
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
    function onRemoveButtonClick(eventObject)
    {
        var _loc2 = _settings.__get__leftPageNumber();
        var _loc3 = _settings.__get__rightPageNumber();
        if (_loc2)
        {
            bookmarks[_loc2] = null;
            _scrollWindow.removeItem(_loc2);
        } // end if
        if (_loc3)
        {
            bookmarks[_loc3] = null;
            _scrollWindow.removeItem(_loc3);
        } // end if
        _selectWindow.__set__text(null);
        this.saveBookmarks();
    } // End of the function
    function onSaveButtonClick(eventObject)
    {
        var _loc6;
        var _loc5 = null;
        var _loc4 = null;
        if (!_settings.__get__leftPageNumber() && !_settings.__get__rightPageNumber())
        {
            return;
        } // end if
        if (_settings.__get__leftPageNumber())
        {
            bookmarks[_settings.__get__leftPageNumber()] = _selectWindow.text;
            _selectWindow.__set__text(bookmarks[_settings.__get__leftPageNumber()]);
        } // end if
        if (_settings.__get__rightPageNumber())
        {
            bookmarks[_settings.__get__rightPageNumber()] = _selectWindow.text;
            _selectWindow.__set__text(bookmarks[_settings.__get__rightPageNumber()]);
        } // end if
        var _loc2 = _settings.__get__leftPageNumber();
        var _loc3 = _settings.__get__rightPageNumber();
        _scrollWindow.addItem(_loc2, _loc3, _selectWindow.__get__text());
        this.saveBookmarks();
    } // End of the function
    function onUpButtonPress(event)
    {
        var _loc3 = _scrollWindow.__get___height() * 0.800000;
        var _loc2 = _scrollWindow.__get__contentY() + _loc3;
        if (_loc2 > 0)
        {
            _loc2 = 0;
        } // end if
        var _loc4 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _loc2, 0.500000, true);
        custom = true;
    } // End of the function
    function saveBookmarks()
    {
        var _loc2 = SharedObject.getLocal("bookmarks" + _settings.__get__id());
        _loc2.data.bookmarks = _scrollWindow.bookmarks;
        _loc2.flush();
    } // End of the function
    function loadBookmarks()
    {
        var _loc3 = SharedObject.getLocal("bookmarks" + _settings.__get__id());
        if (_loc3.data.bookmarks)
        {
            if (_loc3.data.bookmarks.length > 0)
            {
                for (var _loc2 = 0; _loc2 < _loc3.data.bookmarks.length; ++_loc2)
                {
                    var _loc5 = _loc3.data.bookmarks[_loc2].left;
                    var _loc4 = _loc3.data.bookmarks[_loc2].right;
                    if (!_loc5 && !_loc4)
                    {
                        continue;
                    } // end if
                    if (_loc5)
                    {
                        bookmarks[_loc5] = _loc3.data.bookmarks[_loc2].text;
                    } // end if
                    if (_loc4)
                    {
                        bookmarks[_loc4] = _loc3.data.bookmarks[_loc2].text;
                    } // end if
                    _scrollWindow.addItem(_loc5, _loc4, _loc3.data.bookmarks[_loc2].text);
                } // end of for
            } // end if
        } // end if
    } // End of the function
    function onDownButtonPress(event)
    {
        var _loc3 = _scrollWindow.__get___height() * 0.800000;
        var _loc2 = _scrollWindow.__get__contentY() - _loc3;
        if (_loc2 < _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight())
        {
            _loc2 = _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight();
        } // end if
        var _loc4 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _loc2, 0.500000, true);
        custom = true;
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
        _backgroundShape.__set__gradientFromAlpha(75 * _settings.__get__windowBackgroundOpacity());
        _backgroundShape.__set__gradientToColor(16777215);
        _backgroundShape.__set__gradientToAlpha(80 * _settings.__get__windowBackgroundOpacity());
    } // End of the function
    function onPageChanged()
    {
        var _loc4;
        var _loc5;
        var _loc2 = _settings.__get__leftPageNumber();
        var _loc3 = _settings.__get__rightPageNumber();
        if (_loc2)
        {
            _loc4 = urls[_loc2 - 1];
        } // end if
        if (_loc3)
        {
            _loc5 = urls[_loc3 - 1];
        } // end if
        _selectWindow.updateImage(_loc4, _loc5, _loc2, _loc3);
        if (bookmarks[_loc2] != undefined)
        {
            _selectWindow.__set__text(bookmarks[_loc2]);
        }
        else if (bookmarks[_loc3] != undefined)
        {
            _selectWindow.__set__text(bookmarks[_loc3]);
        }
        else
        {
            _selectWindow.__set__text(null);
        } // end else if
    } // End of the function
    function get bookmarkPages()
    {
        //return (_scrollWindow.bookmarkPages());
    } // End of the function
    var _componentClipName = "bookmarksWindowContent";
    var ready = false;
    var level = 1;
    var buttonHeight = 20;
    var custom = false;
} // End of Class
#endinitclip
