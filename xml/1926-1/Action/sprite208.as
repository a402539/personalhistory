// Action script...

// [Initial MovieClip Action of sprite 208]
#initclip 104
class com.fbpublisher.basicskin.viewclasses.PageZoomer extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _library, _mainWindow, _clear, _zoomClip, _book, _zoomLeftPage, _button, _width, _height, _pageClip, __get____x, __get____y, __get____width, __get____height, _pagePreloader, __get__skinColor, _clip, _nextPageClip, _maskClip, _maskShape, _settings, _pageBitmap, _nextPageBitmap, _pageClipWidth, _pageClipHeight, _zoomWidth, _zoomHeight, _bookCoordinates, _mouseStepX, _mouseStepY, _oldMouseX, _oldMouseY, _clipWidth, _clipHeight, _zoomClipContent, _pageLoader, __get__Animating, __set____height, __set____width, __set____x, __set____y, __set__skinColor, __get__zoomedIn;
    function PageZoomer(parentClip, settings, library, window)
    {
        super(parentClip, settings);
        _library = library;
        _mainWindow = window;
        _clear = false;
        this._create();
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
    function clearHistory()
    {
        for (var _loc2 in _zoomClip)
        {
            _zoomClip[_loc2].removeMovieClip();
        } // end of for...in
    } // End of the function
    function zoomIn(book, zoomLeftPage)
    {
        if (!_zoomedIn)
        {
            _book = book;
            _zoomLeftPage = zoomLeftPage;
            this._drawPageClip();
            this._positionPageClip();
            this._animateZoomIn();
            _button.__set__visible(true);
        } // end if
    } // End of the function
    function setSize(w, h)
    {
        _width = w;
        _height = h;
        this._arrangeElements();
    } // End of the function
    function zoomOut()
    {
        if (_zoomedIn)
        {
            this._cancelDownload();
            this._animateZoomOut();
        } // end if
    } // End of the function
    function zoomOutAndClear()
    {
        _clear = true;
        this.zoomOut();
    } // End of the function
    function switchPages(targetPageNumber, forward, isLeftPage)
    {
        trace ("Inner SWITCH " + forward);
        this._createNextPage(targetPageNumber);
        this._animateSwitching(forward);
        _zoomLeftPage = isLeftPage;
    } // End of the function
    function get Animating()
    {
        return (_isAnimating);
    } // End of the function
    function get zoomedIn()
    {
        return (_zoomedIn);
    } // End of the function
    function get __x()
    {
        return (_pageClip._x);
    } // End of the function
    function set __x(newX)
    {
        _pageClip._x = newX;
        if (_pageLoaded)
        {
            _zoomClip._x = newX;
        } // end if
        //return (this.__x());
        null;
    } // End of the function
    function get __y()
    {
        return (_pageClip._y);
    } // End of the function
    function set __y(newY)
    {
        _pageClip._y = newY;
        if (_pageLoaded)
        {
            _zoomClip._y = newY;
        } // end if
        //return (this.__y());
        null;
    } // End of the function
    function get __width()
    {
        return (_pageClip._width);
    } // End of the function
    function set __width(newWidth)
    {
        _pageClip._width = newWidth;
        if (_pageLoaded)
        {
            _zoomClip._width = newWidth;
        } // end if
        //return (this.__width());
        null;
    } // End of the function
    function get __height()
    {
        return (_pageClip._height);
    } // End of the function
    function set __height(newHeight)
    {
        _pageClip._height = newHeight;
        if (_pageLoaded)
        {
            _zoomClip._height = newHeight;
        } // end if
        //return (this.__height());
        null;
    } // End of the function
    function set skinColor(newColor)
    {
        _pagePreloader.__set__skinColor(newColor);
        //return (this.skinColor());
        null;
    } // End of the function
    function _create()
    {
        this._createButton();
        _pageClip = _clip.createEmptyMovieClip("page", _clip.getNextHighestDepth());
        _nextPageClip = _clip.createEmptyMovieClip("nextPage", _clip.getNextHighestDepth());
        _zoomClip = _clip.createEmptyMovieClip("zoom", _clip.getNextHighestDepth());
        _zoomClip._visible = false;
        _clip.onMouseMove = mx.utils.Delegate.create(this, onMouseMove);
        _maskClip = _clip.createEmptyMovieClip("mask", _clip.getNextHighestDepth());
        _maskShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_maskClip, 0, 0, _width, _height);
        _maskShape.__set__cornerRadius(_settings.windowCornerRadius);
        _maskShape.setCustomCornerRadius(0, "top-left");
        _maskShape.setCustomCornerRadius(0, "top-right");
        _maskShape.__set__color(65280);
        _clip.setMask(_maskClip);
    } // End of the function
    function _createButton()
    {
        _button = new com.fbpublisher.basicskin.viewclasses.SimpleButton(_clip);
        _button.__set__useHandCursor(false);
        _button.__set__visible(false);
        _button.addEventListener("onRelease", mx.utils.Delegate.create(this, onZoomPageRelease));
    } // End of the function
    function _drawPageClip()
    {
        var _loc2 = _zoomLeftPage ? (_settings.__get__leftPageNumber()) : (_settings.__get__rightPageNumber());
        _pageBitmap = _book.getPageBitmap(_loc2, _settings.__get__pageBackgroundColor());
        _pageClip.attachBitmap(_pageBitmap, 0, "auto", true);
        _pageClip._visible = true;
    } // End of the function
    function _createNextPage(pageNumber)
    {
        _nextPageBitmap = _book.getPageBitmap(pageNumber);
        _nextPageClip.attachBitmap(_nextPageBitmap, 0, "auto", true);
    } // End of the function
    function _animateSwitching(forward)
    {
        _isAnimating = true;
        var _loc3 = forward ? (_pageClipWidth) : (-_pageClipWidth);
        var _loc7 = _pageClip._x + _loc3;
        var _loc5 = _pageClip._y;
        var _loc8 = _pageClipWidth;
        var _loc6 = _pageClipHeight;
        _nextPageClip._x = _loc7;
        _nextPageClip._y = _loc5;
        _nextPageClip._width = _loc8;
        _nextPageClip._height = _loc6;
        var _loc2 = 0.400000;
        new com.timwalling.TweenDelay(_pageClip, "_x", mx.transitions.easing.Regular.easeInOut, _pageClip._x, _pageClip._x - _loc3, _loc2, 0, true);
        new com.timwalling.TweenDelay(_zoomClip, "_x", mx.transitions.easing.Regular.easeInOut, _zoomClip._x, _zoomClip._x - _loc3, _loc2, 0, true);
        var _loc4 = new com.timwalling.TweenDelay(_nextPageClip, "_x", mx.transitions.easing.Regular.easeInOut, _nextPageClip._x, this.pageX(), _loc2, 0, true);
        _loc4.onMotionFinished = mx.utils.Delegate.create(this, switchingMotionFinished);
        this._unloadLargeImage();
    } // End of the function
    function pageX()
    {
        var _loc3 = _settings.__get__zoomPageWidth();
        if (_settings.__get__zoomFitWidth())
        {
            _loc3 = _mainWindow.__get__width() - 48;
        } // end if
        _zoomingRatio = _loc3 / _pageClipWidth;
        var _loc4 = _pageClipWidth * _zoomingRatio;
        var _loc2 = _width / 2 - _loc4 / 2;
        if (_loc2 < 0)
        {
            _loc2 = 0;
        } // end if
        return (_loc2);
    } // End of the function
    function createZoomoutPage()
    {
        _nextPageBitmap.dispose();
        _isAnimating = false;
        var _loc2 = _pageClipWidth;
        var _loc3 = _pageClipHeight;
        this._drawPageClip();
        _zoomClip._x = _nextPageClip._x;
        _pageClip._x = _nextPageClip._x;
        _pageClip._width = _loc2;
        _pageClip._height = _loc3;
        _zoomClip._visible = false;
        _zoomWidth = _loc2;
        _zoomHeight = _loc3;
    } // End of the function
    function switchingMotionFinished()
    {
        this.createZoomoutPage();
        this.zoomInMotionFinished(true);
    } // End of the function
    function _positionPageClip()
    {
        var _loc2 = this.getPageCoordinates();
        _pageClip._x = _loc2.x;
        _pageClip._y = _loc2.y;
    } // End of the function
    function getPageCoordinates()
    {
        _bookCoordinates = {x: _book.__get__x(), y: _book.__get__y()};
        _clip.globalToLocal(_bookCoordinates);
        var _loc2 = 0;
        if (_zoomLeftPage)
        {
            _loc2 = -_book.__get__width() / 2;
        } // end if
        //return ({x: _bookCoordinates.x + _loc2, y: _bookCoordinates.y - _book.height() / 2});
    } // End of the function
    function _animateZoomIn()
    {
        _isAnimating = true;
        var _loc2 = 0.300000;
        var _loc5 = _settings.__get__zoomPageWidth();
        if (_settings.__get__zoomFitWidth())
        {
            _loc5 = _mainWindow.__get__width() - 48;
        } // end if
        _zoomingRatio = _loc5 / _pageClip._width;
        var _loc4 = _pageClip._width * _zoomingRatio;
        var _loc3 = _pageClip._height * _zoomingRatio;
        var _loc8 = _width / 2 - _loc4 / 2;
        var _loc7 = _height / 2 - _loc3 / 2;
        _zoomWidth = _loc4;
        _zoomHeight = _loc3;
        new com.timwalling.TweenDelay(_pageClip, "_width", mx.transitions.easing.Regular.easeInOut, _pageClip._width, _loc4, _loc2, 0, true);
        new com.timwalling.TweenDelay(_pageClip, "_height", mx.transitions.easing.Regular.easeInOut, _pageClip._height, _loc3, _loc2, 0, true);
        new com.timwalling.TweenDelay(_pageClip, "_x", mx.transitions.easing.Regular.easeInOut, _pageClip._x, _loc8, _loc2, 0, true);
        var _loc6 = new com.timwalling.TweenDelay(_pageClip, "_y", mx.transitions.easing.Regular.easeInOut, _pageClip._y, _loc7, _loc2, 0, true);
        _loc6.onMotionFinished = mx.utils.Delegate.create(this, zoomInMotionFinished);
    } // End of the function
    function zoomInMotionFinished(dontShift)
    {
        _mouseStepX = (_pageClip._width - _width) / _width;
        _mouseStepY = (_pageClip._height - _height) / _height;
        var _loc5 = {x: _root._xmouse, y: _root._ymouse};
        _clip.globalToLocal(_loc5);
        var _loc10 = _loc5.x - _width / 2;
        var _loc11 = _loc5.y - _height / 2;
        var _loc3 = _loc10 * _mouseStepX;
        var _loc4 = _loc11 * _mouseStepY;
        var _loc8 = Math.abs(_pageClip._height - _height);
        var _loc7 = Math.abs(_pageClip._width - _width);
        if (_pageClip._y - _loc4 < -_loc8)
        {
            _loc4 = _pageClip._y + _loc8;
        } // end if
        if (_pageClip._y - _loc4 > 0)
        {
            _loc4 = _pageClip._y;
        } // end if
        if (_pageClip._x - _loc3 < -_loc7)
        {
            _loc3 = _pageClip._x + _loc7;
        } // end if
        if (_pageClip._x - _loc3 > 0)
        {
            _loc3 = _pageClip._x;
        } // end if
        var _loc6 = 0.200000;
        if (dontShift != true)
        {
            dontShift = false;
        } // end if
        if (!dontShift)
        {
            if (_mouseStepX > 0)
            {
                var _loc9 = new com.timwalling.TweenDelay(_pageClip, "_x", mx.transitions.easing.Regular.easeInOut, _pageClip._x, _pageClip._x - _loc3, _loc6, 0, true);
            } // end if
            if (_mouseStepY > 0)
            {
                _loc9 = new com.timwalling.TweenDelay(_pageClip, "_y", mx.transitions.easing.Regular.easeInOut, _pageClip._y, _pageClip._y - _loc4, _loc6, 0, true);
            } // end if
        } // end if
        if (_loc9 != undefined)
        {
            _loc9.onMotionFinished = mx.utils.Delegate.create(this, shiftMotionFinished);
        }
        else
        {
            this.shiftMotionFinished();
        } // end else if
        _pageClipWidth = _pageClip._width;
        _pageClipHeight = _pageClip._height;
        this.dispatchEvent({type: "zoomInAnimationFinished"});
    } // End of the function
    function shiftMotionFinished()
    {
        _oldMouseX = _root._xmouse;
        _oldMouseY = _root._ymouse;
        _zoomedIn = true;
        _isAnimating = false;
        this._loadLargePage();
    } // End of the function
    function _arrangeElements()
    {
        var _loc2 = _width;
        var _loc3 = _settings.__get__zoomPageWidth();
        if (_settings.__get__zoomFitWidth())
        {
            _loc3 = _width;
        } // end if
        if (_loc2 > _loc3)
        {
            _loc2 = _loc3;
        } // end if
        var _loc4 = _width / 2 - _loc3 / 2;
        if (_loc4 < 0)
        {
            _loc4 = 0;
        } // end if
        var _loc5 = _height / 2 - _loc3 / 2;
        if (_loc5 < 0)
        {
            _loc5 = 0;
        } // end if
        _button.setSize(_loc2, _height);
        _button.__set__x(_loc4);
        _button.__set__y(_loc5);
        _maskShape.setSize(_loc2, _height);
        _maskShape.__set__x(_loc4);
        _maskShape.__set__y(0);
        if (_zoomedIn)
        {
            _mouseStepX = (_pageClipWidth - _width) / _width;
            _mouseStepY = (_pageClipHeight - _height) / _height;
            if (_settings.__get__zoomFitWidth())
            {
                _zoomingRatio = (_mainWindow.__get__width() - 48) / _zoomWidth;
                _pageClipWidth = _zoomWidth * _zoomingRatio;
                _pageClipHeight = _zoomHeight * _zoomingRatio;
                _pageClip._width = _pageClipWidth;
                _pageClip._height = _pageClipHeight;
                _zoomClip._width = _clipWidth * _zoomingRatio;
                _zoomClip._height = _clipHeight * _zoomingRatio;
            } // end if
            var _loc7 = _width / 2 - _pageClip._width / 2;
            var _loc6 = _height / 2 - _pageClip._height / 2;
            _pageClip._x = _loc7;
            _pageClip._y = _loc6;
            _zoomClip._x = _loc7;
            _zoomClip._y = _loc6;
            if (_pagePreloader != undefined)
            {
                _pagePreloader.setSize(50, 50);
                _pagePreloader.__set__x(_width / 2 - _pagePreloader.__get__width() / 2);
                _pagePreloader.__set__y(_height / 2 - _pagePreloader.__get__height() / 2);
            } // end if
            this.onMouseMove();
        } // end if
        if (_loc2 >= _settings.__get__windowWidth() && _maskShape.__get__cornerRadius() == 0)
        {
            _maskShape.__set__cornerRadius(_settings.windowCornerRadius);
        }
        else if (_loc2 < _settings.__get__windowWidth() && _maskShape.__get__cornerRadius() > 0)
        {
            _maskShape.__set__cornerRadius(0);
        } // end else if
    } // End of the function
    function onMouseMove()
    {
        if (_zoomedIn && !_isAnimating)
        {
            var _loc12 = _width / 2 - _pageClipWidth / 2;
            var _loc10 = _height / 2 - _pageClipHeight / 2;
            var _loc5 = {x: _root._xmouse, y: _root._ymouse};
            _clip.globalToLocal(_loc5);
            var _loc8 = _loc5.x - _width / 2;
            var _loc9 = _loc5.y - _height / 2;
            var _loc11 = _loc8 * _mouseStepX;
            var _loc13 = _loc9 * _mouseStepY;
            var _loc4;
            var _loc3;
            if (_mouseStepX > 0)
            {
                _loc4 = _loc12 - _loc11;
                var _loc6 = _pageClipWidth - _width;
                if (_loc4 < -_loc6)
                {
                    _loc4 = -_loc6;
                } // end if
                if (_loc4 > 0)
                {
                    _loc4 = 0;
                } // end if
            } // end if
            if (_mouseStepY > 0)
            {
                _loc3 = _loc10 - _loc13;
                var _loc7 = _pageClipHeight - _height;
                if (_loc3 < -_loc7)
                {
                    _loc3 = -_loc7;
                } // end if
                if (_loc3 > 0)
                {
                    _loc3 = 0;
                } // end if
            } // end if
            _zoomClip._x = (_pageClipWidth - _zoomClip._width) / 2 + Math.round(_loc4);
            _pageClip._x = Math.round(_loc4);
            _zoomClip._y = (_pageClipHeight - _zoomClip._height) / 2 + Math.round(_loc3);
            _pageClip._y = Math.round(_loc3);
        } // end if
        _oldMouseX = _root._xmouse;
        _oldMouseY = _root._ymouse;
    } // End of the function
    function onZoomPageRelease()
    {
        this.dispatchEvent({type: "onZoomPageRelease"});
    } // End of the function
    function _animateZoomOut()
    {
        var _loc2 = 0.300000;
        this.createZoomoutPage();
        var _loc8 = _settings.__get__realBookWidth() / 2;
        var _loc5 = _settings.__get__realBookHeight();
        var _loc3 = this.getPageCoordinates();
        var _loc7 = _loc3.x;
        var _loc6 = _loc3.y;
        new com.timwalling.TweenDelay(this, "__width", mx.transitions.easing.Regular.easeInOut, _pageClipWidth, _loc8, _loc2, 0, true);
        new com.timwalling.TweenDelay(this, "__height", mx.transitions.easing.Regular.easeInOut, _pageClip._height, _loc5, _loc2, 0, true);
        new com.timwalling.TweenDelay(this, "__x", mx.transitions.easing.Regular.easeInOut, _pageClip._x, _loc7, _loc2, 0, true);
        var _loc4 = new com.timwalling.TweenDelay(this, "__y", mx.transitions.easing.Regular.easeInOut, _pageClip._y, _loc6, _loc2, 0, true);
        _isAnimating = true;
        _zoomedIn = false;
        _loc4.onMotionFinished = mx.utils.Delegate.create(this, zoomOutMotionFinished);
    } // End of the function
    function zoomOutMotionFinished()
    {
        _zoomedIn = false;
        _button.__set__visible(false);
        _pageBitmap.dispose();
        _pageClip._visible = false;
        this._unloadLargeImage();
        _isAnimating = false;
        if (_clear)
        {
            this.clearHistory();
            _clear = false;
        } // end if
        this.dispatchEvent({type: "zoomOutAnimationFinished"});
    } // End of the function
    function _unloadLargeImage()
    {
        if (_isLibraryPage)
        {
            _zoomClipContent.removeMovieClip();
        }
        else
        {
            this._cancelDownload();
        } // end else if
        _pageLoaded = false;
        _zoomClip._visible = false;
    } // End of the function
    function _loadLargePage()
    {
        var _loc3 = _settings.__get__zoomedPageNumber();
        var _loc4 = "zoom";
        var _loc2 = _settings.getZoomPageUrl(_loc3);
        if (_loc2 != "undefined")
        {
            _isLibraryPage = this._getPageType(_loc2);
            if (!_isLibraryPage)
            {
                _zoomClipContent = _zoomClip.createEmptyMovieClip("content", 0);
                _pageLoader = new MovieClipLoader();
                _pageLoader.addListener(this);
                _downloadStarted = false;
                _pageLoader.loadClip(_loc2, _zoomClipContent);
                this._createPreloader();
            }
            else
            {
                this.onLoadInit();
            } // end else if
            _largePageExists = true;
        }
        else
        {
            _largePageExists = false;
        } // end else if
    } // End of the function
    function onLoadStart()
    {
        _downloadStarted = true;
        if (_downloadCanceled)
        {
            this._cancelDownload();
            _downloadCanceled = false;
        } // end if
    } // End of the function
    function onLoadInit(target_mc)
    {
        _pageLoaded = true;
        if (target_mc._width / target_mc._height > _pageClipWidth / _pageClipHeight)
        {
            _zoomClip._height = target_mc._height * _pageClipWidth / target_mc._width;
            _zoomClip._width = _pageClipWidth;
        }
        else
        {
            _zoomClip._width = target_mc._width * _pageClipHeight / target_mc._height;
            _zoomClip._height = _pageClipHeight;
        } // end else if
        _zoomClip._x = (_pageClipWidth - _zoomClip._width) / 2 + _pageClip._x;
        _zoomClip._y = (_pageClipHeight - _zoomClip._height) / 2 + _pageClip._y;
        _zoomClip._visible = true;
        _zoomClip.forceSmoothing = true;
        _clipWidth = _zoomClip._width;
        _clipHeight = _zoomClip._height;
        com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().addButtons(_settings.__get__zoomedPageNumber() - 1, _zoomClipContent, _book);
        if (com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchEnabled())
        {
            _zoomClipContent.highlightCanvas = _zoomClipContent.createEmptyMovieClip("highlightCanvas", _zoomClipContent.getNextHighestDepth());
            _zoomClipContent.highlightCanvas.bounds = _zoomClipContent.getBounds(_zoomClipContent);
            com.fbpublisher.utils.search.BookInfo.__get__singleton().setZoomerCanvas(_settings.__get__zoomedPageNumber() - 1, _zoomClipContent.highlightCanvas);
        } // end if
        this._removePreloader();
        _pagePreloader = null;
    } // End of the function
    function _getPageType(pageURL)
    {
        _zoomClipContent = _zoomClip.attachMovie(pageURL, "content", 0);
        if (_zoomClipContent == undefined)
        {
            return (false);
        }
        else
        {
            return (true);
        } // end else if
    } // End of the function
    function _createPreloader()
    {
        if (_pagePreloader)
        {
            return;
        } // end if
        _pagePreloader = new com.fbpublisher.basicskin.viewclasses.PagePreloader(_clip, _settings);
        _pagePreloader.setSize(50, 50);
        _pagePreloader.__set__x(_width / 2 - _pagePreloader.__get__width() / 2);
        _pagePreloader.__set__y(_height / 2 - _pagePreloader.__get__height() / 2);
    } // End of the function
    function _removePreloader()
    {
        _pagePreloader.remove();
        delete this._pagePreloader;
    } // End of the function
    function _cancelDownload()
    {
        if (_isLibraryPage || !_largePageExists)
        {
            return;
        } // end if
        if (_downloadStarted)
        {
            _pageLoader.unloadClip(_zoomClipContent);
        }
        else
        {
            _downloadCanceled = true;
        } // end else if
        this._removePreloader();
    } // End of the function
    var _componentClipName = "pageZoomer";
    var _zoomingRatio = 1.500000;
    var _zoomedIn = false;
    var _isAnimating = false;
    var _pageLoaded = false;
    var _isLibraryPage = false;
    var _downloadStarted = false;
    var _downloadCanceled = false;
    var _largePageExists = false;
} // End of Class
#endinitclip
