// Action script...

// [Initial MovieClip Action of sprite 205]
#initclip 101
class com.fbpublisher.basicskin.viewclasses.LayoutManager
{
    var _width, _height, _settings, _modalWindowButton, __get__modalWindowButton, _saveWindow, __get__saveWindow, _printWindow, __get__printWindow, _alertWindow, __get__alertWindow, _sendWindow, __get__sendWindow, _bookmarksWindow, __get__bookmarksWindow, _tocWindow, __get__tocWindow, _searchWindow, __get__searchWindow, _thumbnailsWindow, __get__thumbnailsWindow, _bookNavigator, __get__bookNavigator, _mainWindow, __get__mainWindow, _preloader, __get__preloader, _background, __get__background, _bottomMenu, __get__bottomMenu, _hint, __get__hint, _book, __get__book, _pageZoomer, __get__pageZoomer, __set__alertWindow, __set__background, __set__book, __set__bookNavigator, __set__bookmarksWindow, __set__bottomMenu, __set__hint, __set__mainWindow, __set__modalWindowButton, __set__pageZoomer, __set__preloader, __set__printWindow, __set__saveWindow, __set__searchWindow, __set__sendWindow, __set__thumbnailsWindow, __set__tocWindow;
    function LayoutManager(settings, view, width, height)
    {
        _width = width;
        _height = height;
        _settings = settings;
    } // End of the function
    function resizeStage(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeWindows();
    } // End of the function
    function arrangeWindows()
    {
        this._arrangeWindows();
    } // End of the function
    function repositionBook()
    {
        this._positionBook();
        this._positionPageZoomer();
    } // End of the function
    function repositionNavigator()
    {
        this._positionBookNavigator();
    } // End of the function
    function repositionToolWindows()
    {
        this._positionToolWindows();
    } // End of the function
    function set modalWindowButton(newButton)
    {
        _modalWindowButton = newButton;
        this._positionToolWindows();
        //return (this.modalWindowButton());
        null;
    } // End of the function
    function set saveWindow(newWindow)
    {
        _saveWindow = newWindow;
        this._positionToolWindows();
        //return (this.saveWindow());
        null;
    } // End of the function
    function set printWindow(newWindow)
    {
        _printWindow = newWindow;
        this._positionToolWindows();
        //return (this.printWindow());
        null;
    } // End of the function
    function set alertWindow(newWindow)
    {
        _alertWindow = newWindow;
        this._positionToolWindows();
        //return (this.alertWindow());
        null;
    } // End of the function
    function set sendWindow(newWindow)
    {
        _sendWindow = newWindow;
        this._positionToolWindows();
        //return (this.sendWindow());
        null;
    } // End of the function
    function get bookmarksWindow()
    {
        return (_bookmarksWindow);
    } // End of the function
    function set bookmarksWindow(newWindow)
    {
        _bookmarksWindow = newWindow;
        //return (this.bookmarksWindow());
        null;
    } // End of the function
    function get tocWindow()
    {
        return (_tocWindow);
    } // End of the function
    function set tocWindow(newWindow)
    {
        _tocWindow = newWindow;
        //return (this.tocWindow());
        null;
    } // End of the function
    function get searchWindow()
    {
        return (_searchWindow);
    } // End of the function
    function set searchWindow(newWindow)
    {
        _searchWindow = newWindow;
        //return (this.searchWindow());
        null;
    } // End of the function
    function get thumbnailsWindow()
    {
        return (_thumbnailsWindow);
    } // End of the function
    function set thumbnailsWindow(newWindow)
    {
        _thumbnailsWindow = newWindow;
        //return (this.thumbnailsWindow());
        null;
    } // End of the function
    function set bookNavigator(newNavigator)
    {
        _bookNavigator = newNavigator;
        //return (this.bookNavigator());
        null;
    } // End of the function
    function get mainWindow()
    {
        return (_mainWindow);
    } // End of the function
    function set mainWindow(newWindow)
    {
        _mainWindow = newWindow;
        this._arrangeWindows();
        //return (this.mainWindow());
        null;
    } // End of the function
    function get preloader()
    {
        return (_preloader);
    } // End of the function
    function set preloader(newPreloader)
    {
        _preloader = newPreloader;
        //return (this.preloader());
        null;
    } // End of the function
    function get background()
    {
        return (_background);
    } // End of the function
    function set background(newBackground)
    {
        _background = newBackground;
        this._arrangeWindows();
        //return (this.background());
        null;
    } // End of the function
    function get bottomMenu()
    {
        return (_bottomMenu);
    } // End of the function
    function set bottomMenu(newMenu)
    {
        _bottomMenu = newMenu;
        this._arrangeWindows();
        //return (this.bottomMenu());
        null;
    } // End of the function
    function get hint()
    {
        return (_hint);
    } // End of the function
    function set hint(newHint)
    {
        _hint = newHint;
        this._positionHint();
        //return (this.hint());
        null;
    } // End of the function
    function get book()
    {
        return (_book);
    } // End of the function
    function set book(newBook)
    {
        _book = newBook;
        this._positionBook();
        //return (this.book());
        null;
    } // End of the function
    function get pageZoomer()
    {
        return (_pageZoomer);
    } // End of the function
    function set pageZoomer(newZoomer)
    {
        _pageZoomer = newZoomer;
        this._positionPageZoomer();
        //return (this.pageZoomer());
        null;
    } // End of the function
    function _arrangeWindows()
    {
        this._positionBottomMenu();
        this._positionMainWindow();
        _global._focusLooser._x = Stage.width;
        this._positionBackground();
        this._positionBottomMenu();
        this._positionPreloader();
        this._positionBook();
        this._positionPageZoomer();
        this._positionHint();
        this._positionThumbnailsWindow();
        this._positionBookmarksWindow();
        this._positionTOCWindow();
        this._positionSearchWindow();
        this._positionToolWindows();
    } // End of the function
    function _positionBackground()
    {
        var _loc2 = _settings.__get__applicationWidth();
        var _loc3 = _settings.__get__applicationHeight();
        _background.setSize(_loc2, _loc3);
        _background.__set__x(Math.round(_width / 2 - _loc2 / 2));
        _background.__set__y(Math.round(_height / 2 - _loc3 / 2));
    } // End of the function
    function _positionBottomMenu()
    {
        _bottomMenu.setSize(_settings.__get__windowWidth(), _bottomMenuHeight);
        _bottomMenu.__set__x(Math.round(_width / 2 - _settings.__get__windowWidth() / 2));
        _bottomMenu.__set__y(Math.round(_height / 2 + _settings.__get__windowHeight() / 2 - _bottomMenuHeight));
    } // End of the function
    function _positionMainWindow()
    {
        var _loc3 = _settings.__get__windowWidth();
        var _loc4 = _settings.__get__windowHeight() - _windowMargin - _bottomMenuHeight;
        var _loc2 = 0;
        if (_thumbnailsWindow.__get__visible() || _bookmarksWindow.__get__visible() || _searchWindow.__get__visible() || _tocWindow.__get__visible())
        {
            _loc3 = _loc3 - (_sideWindowWidth + _windowMargin);
            _loc2 = _sideWindowWidth + _windowMargin;
        } // end if
        _mainWindow.setSize(_loc3, _loc4);
        _mainWindow.__set__x(Math.round(_width / 2 - _settings.__get__windowWidth() / 2) + _loc2);
        _mainWindow.__set__y(Math.round(_height / 2 - _settings.__get__windowHeight() / 2));
    } // End of the function
    function _positionThumbnailsWindow()
    {
        if (_thumbnailsWindow.__get__visible())
        {
            this._positionSideWindow(_thumbnailsWindow);
        } // end if
    } // End of the function
    function _positionBookmarksWindow()
    {
        if (_bookmarksWindow.__get__visible())
        {
            this._positionSideWindow(_bookmarksWindow);
        } // end if
    } // End of the function
    function _positionTOCWindow()
    {
        if (_tocWindow.__get__visible())
        {
            this._positionSideWindow(_tocWindow);
        } // end if
    } // End of the function
    function _positionSearchWindow()
    {
        if (_searchWindow.__get__visible())
        {
            this._positionSideWindow(_searchWindow);
        } // end if
    } // End of the function
    function _positionSideWindow(window)
    {
        window.setSize(_sideWindowWidth, _mainWindow.__get__height());
        window.__set__x(Math.round(_width / 2 - _settings.__get__windowWidth() / 2));
        window.__set__y(_mainWindow.y);
    } // End of the function
    function _positionPreloader()
    {
        _preloader.__set__x(Math.round(_width / 2 - _preloader.__get__width() / 2));
        _preloader.__set__y(Math.round(_height / 2 - _preloader.__get__height() / 2));
    } // End of the function
    function _positionBook()
    {
        var _loc3 = (com.fbpublisher.basicskin.viewclasses.windows.MainWindow)(_mainWindow).__get__permalinkHeight();
        var _loc4 = (com.fbpublisher.basicskin.viewclasses.Window)(_mainWindow).__get__headerHeight();
        var _loc7 = _settings.__get__navigationEnabled() && _settings.__get__navigationType() == "sideButtons" ? (2 * (com.fbpublisher.basicskin.viewclasses.BookNavigation)(_bookNavigator).__get__buttonWidth()) : (0);
        _settings.__set__bookAreaWidth(_mainWindow.__get__width() - _loc7);
        _settings.__set__bookAreaHeight(_mainWindow.__get__height() - _loc4 - _loc3);
        var _loc6 = _settings.__get__bookAreaWidth() / _settings.__get__bookWidth();
        var _loc5 = _settings.__get__bookAreaHeight() / _settings.__get__bookHeight();
        var _loc2 = _loc6 < _loc5 ? (_loc6) : (_loc5);
        _loc2 = _loc2 * (_settings.__get__bookSizeScale() / 100);
        _settings.__set__realBookWidth(_settings.__get__bookWidth() * _loc2);
        _settings.__set__realBookHeight(_settings.__get__bookHeight() * _loc2);
        _book.setSize(_settings.__get__realBookWidth(), _settings.__get__realBookHeight());
        _settings.__set__bookCenterX(Math.round(_mainWindow.__get__x() + _settings.__get__bookAreaWidth() / 2));
        _settings.__set__bookCenterY(Math.round(_mainWindow.__get__y() + _loc4 + _settings.__get__bookAreaHeight() / 2) + _loc3);
        _book.__set__x(_book.__get__x() + (com.fbpublisher.basicskin.viewclasses.Book)(_book).getBookCenterShift());
        _book.__set__y(_settings.bookCenterY);
        (com.fbpublisher.basicskin.viewclasses.Book)(_book).onPositionFinished();
        this._positionBookNavigator();
    } // End of the function
    function _positionPageZoomer()
    {
        var _loc2 = 0;
        if (_settings.__get__navigationEnabled() && _settings.__get__navigationType() == "sideButtons")
        {
            _loc2 = (com.fbpublisher.basicskin.viewclasses.BookNavigation)(_bookNavigator).buttonWidth;
        } // end if
        _pageZoomer.__set__x(_mainWindow.__get__x() + _loc2);
        _pageZoomer.__set__y(_settings.__get__bookCenterY() - _settings.__get__bookAreaHeight() / 2);
        if (_settings.__get__zoomFitWidth())
        {
            _pageZoomer.setSize(_mainWindow.__get__width() - 48, _settings.__get__bookAreaHeight() - 1);
        }
        else
        {
            _pageZoomer.setSize(_settings.__get__bookAreaWidth(), _settings.__get__bookAreaHeight() - 1);
        } // end else if
    } // End of the function
    function _positionHint()
    {
    } // End of the function
    function repositionNavigatorZoomed()
    {
        var _loc5 = (com.fbpublisher.basicskin.viewclasses.BookNavigation)(_bookNavigator).__get__buttonWidth();
        var _loc4 = _mainWindow.__get__width();
        var _loc2 = _settings.__get__zoomPageWidth();
        if (_settings.__get__zoomFitWidth())
        {
            _loc2 = _mainWindow.__get__width() - 48;
        } // end if
        if (_loc4 > _loc2 + 2 * _loc5)
        {
            _loc4 = _loc2 + 2 * _loc5;
        } // end if
        var _loc3 = _settings.__get__bookAreaHeight();
        var _loc6 = _loc2 * (2 * _settings.__get__realBookHeight() / _settings.__get__realBookWidth());
        if (_loc3 > _loc6)
        {
            _loc3 = _loc6;
        } // end if
        _bookNavigator.setSize(_loc4, _loc3);
        var _loc8 = _settings.__get__bookCenterX() - _loc4 / 2 + _loc5;
        var _loc7 = _settings.__get__bookCenterY() - _loc3 / 2;
        _bookNavigator.__set__x(_loc8);
        _bookNavigator.__set__y(_loc7);
    } // End of the function
    function _positionBookNavigator()
    {
        var _loc2 = (com.fbpublisher.basicskin.viewclasses.BookNavigation)(_bookNavigator).__get__buttonWidth();
        if (!_settings.__get__bookZoomedIn())
        {
            _bookNavigator.setSize(_book.__get__width() + 2 * _loc2, _book.__get__height());
            _bookNavigator.__set__x(_book.__get__x() - _book.__get__width() / 2 - _loc2);
            _bookNavigator.__set__y(_book.__get__y() - _book.__get__height() / 2);
        }
        else
        {
            var _loc5 = _mainWindow.__get__width();
            var _loc3 = _settings.__get__zoomPageWidth();
            if (_settings.__get__zoomFitWidth())
            {
                _loc3 = _mainWindow.__get__width() - 48;
            } // end if
            if (_loc5 > _loc3 + 2 * _loc2)
            {
                _loc5 = _loc3 + 2 * _loc2;
            } // end if
            var _loc4 = _settings.__get__bookAreaHeight();
            var _loc6 = _loc3 * (2 * _settings.__get__realBookHeight() / _settings.__get__realBookWidth());
            if (_loc4 > _loc6)
            {
                _loc4 = _loc6;
            } // end if
            _bookNavigator.setSize(_loc5, _loc4);
            var _loc8 = _settings.__get__bookCenterX() - _loc5 / 2 + _loc2;
            var _loc7 = _settings.__get__bookCenterY() - _loc4 / 2;
            _bookNavigator.__set__x(_loc8);
            _bookNavigator.__set__y(_loc7);
        } // end else if
    } // End of the function
    function _positionToolWindows()
    {
        var _loc10 = 300;
        var _loc11 = 400;
        var _loc4 = 360;
        var _loc5 = 220;
        var _loc6 = 360;
        var _loc8 = 220;
        var _loc7 = (com.fbpublisher.basicskin.viewclasses.Window)(_saveWindow).contentWidth;
        var _loc9 = (com.fbpublisher.basicskin.viewclasses.Window)(_saveWindow).contentHeight;
        var _loc3 = _mainWindow.__get__x() + _mainWindow.__get__width() / 2;
        var _loc2 = _mainWindow.__get__y() + _mainWindow.__get__height() / 2;
        if (_sendWindow.__get__visible())
        {
            _sendWindow.setSize(_loc10, _loc11);
            _sendWindow.__set__x(Math.round(_loc3 - _loc10 / 2));
            _sendWindow.__set__y(Math.round(_loc2 - _loc11 / 2));
        } // end if
        if (_alertWindow.__get__visible())
        {
            _alertWindow.setSize(_loc6, _loc8);
            _alertWindow.__set__x(Math.round(_loc3 - _loc6 / 2));
            _alertWindow.__set__y(Math.round(_loc2 - _loc8 / 2));
        } // end if
        if (_printWindow.__get__visible())
        {
            _printWindow.setSize(_loc4, _loc5);
            _printWindow.__set__x(Math.round(_loc3 - _loc4 / 2));
            _printWindow.__set__y(Math.round(_loc2 - _loc5 / 2));
        } // end if
        if (_saveWindow.__get__visible())
        {
            _saveWindow.setSize(_loc7, _loc9);
            _saveWindow.__set__x(Math.round(_loc3 - _loc7 / 2));
            _saveWindow.__set__y(Math.round(_loc2 - _loc9 / 2));
        } // end if
        _modalWindowButton.__set__x(0);
        _modalWindowButton.__set__y(0);
        _modalWindowButton.setSize(_width, _height);
        if (_sendWindow.__get__visible() || _printWindow.__get__visible() || _saveWindow.__get__visible() || _alertWindow.__get__visible())
        {
            _modalWindowButton.__set__visible(true);
        }
        else
        {
            _modalWindowButton.__set__visible(false);
        } // end else if
    } // End of the function
    var _bottomMenuHeight = 41;
    var _windowMargin = 6;
    var _sideWindowWidth = 280;
} // End of Class
#endinitclip
