// Action script...

// [Initial MovieClip Action of sprite 160]
#initclip 56
class com.fbpublisher.basicskin.viewclasses.Book extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var hide, _clip, __get__enabled, _book, __get__pageBackgroundColor, __get__pages, __get__width, __get__height, __get__handOverCorner, __get__handOverPage, __get__moveSpeed, __get__flipSound, __get__loadOnDemand, __get__staticShadowDepth, __get__hardcover, __get__dynamicShadowDepth, __get__freezeOnFlip, __get__flipCorner, __get__flipCornerPosition, _settings, __get__totalPages, __set__dropShadowOpacity, __get__dropShadowOpacity, __get__x, __get__component, __set__dynamicShadowDepth, __set__enabled, __set__flipCorner, __set__flipCornerPosition, __set__flipSound, __set__freezeOnFlip, __set__handOverCorner, __set__handOverPage, __set__hardcover, __set__height, __set__loadOnDemand, __set__moveSpeed, __set__pageBackgroundColor, __set__pages, __get__ready, __set__staticShadowDepth, __set__width;
    function Book(parentClip, settings)
    {
        super(parentClip, settings);
        this._create();
        this.hide();
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
    function set enabled(value)
    {
        _clip.enabled = value;
        //return (this.enabled());
        null;
    } // End of the function
    function get pageBackgroundColor()
    {
        //return (_book.pageBackgroundColor());
    } // End of the function
    function set pageBackgroundColor(newColor)
    {
        _book.__set__pageBackgroundColor(newColor);
        //return (this.pageBackgroundColor());
        null;
    } // End of the function
    function set pages(value)
    {
        _book.__set__pageSet(value);
        //return (this.pages());
        null;
    } // End of the function
    function get component()
    {
        return (_book);
    } // End of the function
    function get ready()
    {
        return (_ready);
    } // End of the function
    function get width()
    {
        //return (_book.width());
    } // End of the function
    function set width(newWidth)
    {
        _book.__set__width(newWidth);
        //return (this.width());
        null;
    } // End of the function
    function get height()
    {
        //return (_book.height());
    } // End of the function
    function set height(newHeight)
    {
        _book.__set__height(newHeight);
        //return (this.height());
        null;
    } // End of the function
    function set handOverCorner(value)
    {
        _book.__set__handOverCorner(value);
        //return (this.handOverCorner());
        null;
    } // End of the function
    function get handOverCorner()
    {
        //return (_book.handOverCorner());
    } // End of the function
    function set handOverPage(value)
    {
        _book.__set__handOverPage(value);
        //return (this.handOverPage());
        null;
    } // End of the function
    function get handOverPage()
    {
        //return (_book.handOverPage());
    } // End of the function
    function set moveSpeed(value)
    {
        _book.__set__moveSpeed(value);
        //return (this.moveSpeed());
        null;
    } // End of the function
    function get moveSpeed()
    {
        //return (_book.moveSpeed());
    } // End of the function
    function set flipSound(value)
    {
        _book.__set__flipSound(value);
        //return (this.flipSound());
        null;
    } // End of the function
    function get flipSound()
    {
        //return (_book.flipSound());
    } // End of the function
    function set loadOnDemand(value)
    {
        _book.__set__loadOnDemand(value);
        //return (this.loadOnDemand());
        null;
    } // End of the function
    function get loadOnDemand()
    {
        //return (_book.loadOnDemand());
    } // End of the function
    function set staticShadowDepth(value)
    {
        _book.__set__staticShadowsDepth(value);
        //return (this.staticShadowDepth());
        null;
    } // End of the function
    function get staticShadowDepth()
    {
        //return (_book.staticShadowsDepth());
    } // End of the function
    function set hardcover(value)
    {
        _book.__set__hardcover(value);
        //return (this.hardcover());
        null;
    } // End of the function
    function get hardcover()
    {
        //return (_book.hardcover());
    } // End of the function
    function set dynamicShadowDepth(value)
    {
        _book.__set__dynamicShadowsDepth(value);
        //return (this.dynamicShadowDepth());
        null;
    } // End of the function
    function get dynamicShadowDepth()
    {
        //return (_book.dynamicShadowsDepth());
    } // End of the function
    function set freezeOnFlip(value)
    {
        _book.__set__freezeOnFlip(value);
        //return (this.freezeOnFlip());
        null;
    } // End of the function
    function get freezeOnFlip()
    {
        //return (_book.freezeOnFlip());
    } // End of the function
    function set flipCorner(value)
    {
        _book.__set__flipCornerStyle(value ? ("first page only") : ("manually"));
        //return (this.flipCorner());
        null;
    } // End of the function
    function get flipCorner()
    {
        //return (_book.flipCornerStyle() == "first page only");
    } // End of the function
    function set flipCornerPosition(value)
    {
        _book.__set__flipCornerPosition(value);
        //return (this.flipCornerPosition());
        null;
    } // End of the function
    function get flipCornerPosition()
    {
        //return (_book.flipCornerPosition());
    } // End of the function
    function get totalPages()
    {
        //return (_book.totalPages());
    } // End of the function
    function onPositionFinished()
    {
        if (_ready && _firstTime)
        {
            _firstTime = false;
            if (_book.__get__flipCornerStyle() == "first page only")
            {
                _book.flipCorner();
            } // end if
        } // end if
    } // End of the function
    function updateFlipCorner()
    {
        if (_book.__get__flipCornerStyle() == "first page only")
        {
            _book.flipCorner();
        } // end if
    } // End of the function
    function getPageBitmap(pageNumber, color)
    {
        var _loc2 = _book.getPageLink(_settings.__get__rightToLeft() ? (this.__get__totalPages() - pageNumber) : (pageNumber - 1));
        if (color == undefined)
        {
            color = 16777215;
        } // end if
        var _loc3 = new flash.display.BitmapData(_book.__get__width() / 2, _book.__get__height(), false, color);
        if (_loc2.loaded)
        {
            _loc3.draw(_loc2, _loc2.transform.matrix);
        } // end if
        return (_loc3);
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _book.setSize(newWidth, newHeight);
    } // End of the function
    function flipForward()
    {
        _book.flipForward();
    } // End of the function
    function flipBack()
    {
        _book.flipBack();
    } // End of the function
    function flipGotoPage(pageNumber)
    {
        trace ("FlipGoTo");
        _book.flipGotoPage(_settings.__get__rightToLeft() ? (this.__get__totalPages() - pageNumber) : (pageNumber - 1));
    } // End of the function
    function gotoPage(pageNumber)
    {
        _book.gotoPage(_settings.__get__rightToLeft() ? (this.__get__totalPages() - pageNumber) : (pageNumber - 1));
    } // End of the function
    function directGotoPage(pageNumber)
    {
        _book.directGotoPage(_settings.__get__rightToLeft() ? (this.__get__totalPages() - pageNumber) : (pageNumber - 1));
    } // End of the function
    function switchToPage(pageNumber)
    {
        _book.switchToPage(_settings.__get__rightToLeft() ? (this.__get__totalPages() - pageNumber) : (pageNumber - 1));
    } // End of the function
    function isLeftPage(pageNumber)
    {
        //return (_book.isLeftPage(_settings.rightToLeft() ? (this.__get__totalPages() - pageNumber) : (pageNumber - 1)));
    } // End of the function
    function updateShadow()
    {
        if (_settings.__get__bookShadowEnabled())
        {
            if (_staticState || !_settings.__get__bookShadowHideWhenFlipping())
            {
                this.__set__dropShadowOpacity(70);
            } // end if
        }
        else
        {
            this.__set__dropShadowOpacity(0);
        } // end else if
    } // End of the function
    function updateBookCentering()
    {
        this.centerBook(100);
    } // End of the function
    function zoomIn()
    {
        _settings.__set__bookZoomedIn(true);
        _book.__set__zoomedIn(true);
    } // End of the function
    function zoomOut()
    {
        _settings.__set__bookZoomedIn(false);
        _book.__set__zoomedIn(false);
    } // End of the function
    function neighborPages(firstPageNumber, secondPageNumber)
    {
        firstPageNumber = _settings.__get__rightToLeft() ? (this.__get__totalPages() - firstPageNumber) : (firstPageNumber - 1);
        secondPageNumber = _settings.__get__rightToLeft() ? (this.__get__totalPages() - secondPageNumber) : (secondPageNumber - 1);
        if (firstPageNumber - secondPageNumber == 1)
        {
            return (_book.isLeftPage(secondPageNumber) && _book.isRightPage(firstPageNumber));
        }
        else if (firstPageNumber - secondPageNumber == -1)
        {
            return (_book.isLeftPage(firstPageNumber) && _book.isRightPage(secondPageNumber));
        }
        else
        {
            return (false);
        } // end else if
    } // End of the function
    function getPageParameter(pageNumber, parameterName)
    {
        //return (_book.getPageParams(_settings.rightToLeft() ? (this.__get__totalPages() - pageNumber) : (pageNumber - 1))[parameterName]);
    } // End of the function
    function isPageLoaded(pageNumber)
    {
        //return (_book.getPageLink(_settings.rightToLeft() ? (this.__get__totalPages() - pageNumber) : (pageNumber - 1)).loaded);
    } // End of the function
    function set dropShadowOpacity(newOpacity)
    {
        _dropShadowOpacity = newOpacity;
        if (_dropShadowOpacity > 0)
        {
            var _loc2 = new flash.filters.DropShadowFilter(0, 90, 0, _dropShadowOpacity / 100, 7, 7, 1, 2, false, false, false);
            _clip.filters = [_loc2];
        }
        else
        {
            _clip.filters = [];
        } // end else if
        //return (this.dropShadowOpacity());
        null;
    } // End of the function
    function get dropShadowOpacity()
    {
        return (_dropShadowOpacity);
    } // End of the function
    function dropShadowOpacityTo(targetOpacity, duration, delay)
    {
        new com.timwalling.TweenDelay(this, "dropShadowOpacity", mx.transitions.easing.Regular.easeInOut, _dropShadowOpacity, targetOpacity, duration / 1000, delay / 1000, true);
    } // End of the function
    function getBookCenterShift(leftPageNumber, rightPageNumber, targetPagesPassed)
    {
        var _loc6 = 0;
        var _loc2 = _settings.__get__bookCenterX();
        if (targetPagesPassed)
        {
            var _loc4 = leftPageNumber;
            var _loc5 = rightPageNumber;
            if (_loc4 == undefined && _loc5 == undefined)
            {
                _loc4 = _settings.__get__totalPages() + 1;
            }
            else if (_loc5 == undefined && _book.__get__alwaysOpened())
            {
                _loc5 = _settings.__get__totalPages() + 1;
            } // end else if
        }
        else
        {
            _loc4 = _book.__get__leftPageNumber();
            _loc5 = _book.__get__rightPageNumber();
        } // end else if
        if (_settings.__get__bookCentered())
        {
            if (_loc4 == undefined)
            {
                _loc2 = _settings.__get__bookCenterX() - _book.__get__width() / 4;
            }
            else if (_loc5 == undefined && !_book.__get__alwaysOpened())
            {
                _loc2 = _settings.__get__bookCenterX() + _book.__get__width() / 4;
            }
            else if (this.__get__x() != _settings.__get__bookCenterX())
            {
                _loc2 = _settings.bookCenterX;
            } // end else if
        }
        else
        {
            _loc2 = _settings.bookCenterX;
        } // end else if
        var _loc3 = 0;
        if (_settings.__get__navigationEnabled() && _settings.__get__navigationType() == "sideButtons")
        {
            _loc3 = _settings.navigationButtonWidth;
        } // end if
        //return (_loc2 - this.x() + _loc3);
    } // End of the function
    function centerBook(duration, leftPageNumber, rightPageNumber, targetPagesPassed)
    {
        var _loc3 = this.getBookCenterShift(leftPageNumber, rightPageNumber, targetPagesPassed);
        if (_loc3 != 0 && _settings.__get__bookCentered())
        {
            var _loc2 = new com.timwalling.TweenDelay(this, "x", mx.transitions.easing.Regular.easeInOut, this.__get__x(), this.__get__x() + _loc3, duration / 1000, 0, true);
        }
        else if (!_settings.__get__bookCentered() && this.__get__x() != _settings.__get__bookCenterX())
        {
            _loc2 = new com.timwalling.TweenDelay(this, "x", mx.transitions.easing.Regular.easeInOut, this.__get__x(), _settings.__get__bookCenterX(), duration / 1000, 0, true);
        } // end else if
        if (_loc2 != undefined)
        {
            _loc2.onMotionChanged = mx.utils.Delegate.create(this, onBookCenterChanged);
        } // end if
    } // End of the function
    function onBookCenterChanged()
    {
        this.dispatchEvent({type: "bookCenterChanged"});
    } // End of the function
    function _create()
    {
        _book = new com.fbpublisher.utils.BookWrapper(_clip);
        _book.__set__pageSet(_settings.pages);
        _book.__set__alwaysOpened(false);
        _book.__set__hardcover(false);
        _book.__set__dynamicShadowsDepth(1.500000);
        _book.__set__pageBackgroundColor(_settings.pageBackgroundColor);
        _book.__set__cacheSize(_settings.bookCacheSize);
        _book.__set__flipCornerPosition("bottom-right");
        _book.__set__flipCornerAngle(30);
        _book.addEventListener("onInit", this);
        _book.addEventListener("onPutPage", this);
        _book.addEventListener("onStartFlip", this);
        _book.addEventListener("onFlipOver", this);
        _book.addEventListener("onFlipBack", this);
        _book.addEventListener("onPageLoad", this);
        _book.addEventListener("onBookOver", this);
        _book.addEventListener("onBookOut", this);
        _book.addEventListener("onClickWithoutDragging", this);
        _book.addEventListener("onNavigationFunctionCall", this);
        _book.addEventListener("zoomNavigationCall", this);
        this.setBookSettings();
        _book.create();
    } // End of the function
    function setBookSettings()
    {
        _book.__set__handOverCorner(_settings.handOverCorner);
        _book.__set__handOverPage(_settings.handOverPage);
        _book.__set__moveSpeed(_settings.moveSpeed);
        _book.__set__flipSound(_settings.flipSound);
        _book.__set__loadOnDemand(_settings.loadOnDemand);
        _book.__set__staticShadowsDepth(_settings.staticShadowDepth);
        _book.__set__dynamicShadowsDepth(_settings.dynamicShadowDepth);
        _book.__set__freezeOnFlip(_settings.freezeOnFlip);
        _book.__set__flipCornerStyle(_settings.__get__flipCorner() ? ("first page only") : ("manually"));
        _book.__set__flipCornerPosition(_settings.flipCornerPosition);
        _book.__set__allowPagesUnload(_settings.allowPagesUnload);
        _book.__set__hardcover(_settings.hardcover);
    } // End of the function
    function onInit(eventObject)
    {
        _ready = true;
        this.dispatchEvent({type: "onBookInit", target: _book});
        this.dispatchEvent({type: "onObjectReady", target: _book});
        if (_settings.__get__bookShadowEnabled())
        {
            this.__set__dropShadowOpacity(70);
        } // end if
    } // End of the function
    function onPutPage(eventObject)
    {
        this.dispatchEvent({type: "onPutPage", target: _book});
        if (_settings.__get__bookShadowEnabled() && _settings.__get__bookShadowHideWhenFlipping())
        {
            this.dropShadowOpacityTo(70, 300, 0);
        } // end if
        _staticState = true;
        this.centerBook(300);
    } // End of the function
    function onStartFlip(eventObject)
    {
        if (_settings.__get__bookShadowEnabled() && _settings.__get__bookShadowHideWhenFlipping())
        {
            this.dropShadowOpacityTo(0, 300, 0);
        } // end if
        _staticState = false;
        this.dispatchEvent({type: "onStartFlip", pageNumber: _settings.__get__rightToLeft() ? (this.__get__totalPages() - eventObject.pageNumber) : (eventObject.pageNumber + 1)});
    } // End of the function
    function onFlipOver(eventObject)
    {
        var _loc5 = _book.__get__leftPageNumber() != undefined ? (_book.__get__leftPageNumber()) : (-1);
        var _loc4 = _book.__get__rightPageNumber() != undefined ? (_book.__get__rightPageNumber()) : (_book.__get__totalPages());
        var _loc3;
        var _loc2;
        if (eventObject.forward)
        {
            _loc3 = _book.__get__rightPageNumber() + 1;
            _loc2 = _book.__get__rightPageNumber() + 2;
        }
        else
        {
            _loc3 = _book.__get__leftPageNumber() - 2;
            _loc2 = _book.__get__leftPageNumber() - 1;
        } // end else if
        if (_loc3 < 0 || _loc3 >= _book.__get__totalPages())
        {
            _loc3 = undefined;
        } // end if
        if (_loc2 < 0 || _loc2 >= _book.__get__totalPages())
        {
            _loc2 = undefined;
        } // end if
        this.centerBook(300, _loc3, _loc2, true);
    } // End of the function
    function onFlipBack(eventObject)
    {
        if (_settings.__get__bookShadowEnabled() && _settings.__get__bookShadowHideWhenFlipping())
        {
            this.dropShadowOpacityTo(70, 300, 0);
        } // end if
        _staticState = true;
        this.dispatchEvent({type: "onFlipBack", pageNumber: _settings.__get__rightToLeft() ? (this.__get__totalPages() - eventObject.pageNumber) : (eventObject.pageNumber)});
    } // End of the function
    function onNavigationFunctionCall(eventObject)
    {
        var _loc7 = _book.__get__leftPageNumber() != undefined ? (_book.__get__leftPageNumber()) : (-1);
        var _loc6 = _book.__get__rightPageNumber() != undefined ? (_book.__get__rightPageNumber()) : (_book.__get__totalPages());
        var _loc3;
        var _loc2;
        switch (eventObject.functionName)
        {
            case "flipForward":
            {
                _loc3 = _loc6 + 1;
                _loc2 = _loc6 + 2;
                break;
            } 
            case "flipBack":
            {
                _loc3 = _loc7 - 2;
                _loc2 = _loc7 - 1;
                break;
            } 
            case "flipGotoPage":
            {
                var _loc4 = Number(eventObject.targetPage);
                var _loc8 = _book.isLeftPage(_loc4);
                if (_loc8)
                {
                    _loc3 = _loc4;
                    _loc2 = _loc4 + 1;
                }
                else
                {
                    _loc3 = _loc4 - 1;
                    _loc2 = _loc4;
                } // end else if
                break;
            } 
            case "gotoPage":
            {
                _loc4 = Number(eventObject.targetPage);
                _loc8 = _book.isLeftPage(_loc4);
                if (_loc8)
                {
                    _loc3 = _loc4;
                    _loc2 = _loc4 + 1;
                }
                else
                {
                    _loc3 = _loc4 - 1;
                    _loc2 = _loc4;
                } // end else if
                break;
            } 
            case "directGotoPage":
            {
                _loc4 = Number(eventObject.targetPage);
                _loc8 = _book.isLeftPage(_loc4);
                if (_loc8)
                {
                    _loc3 = _loc4;
                    _loc2 = _loc4 + 1;
                }
                else
                {
                    _loc3 = _loc4 - 1;
                    _loc2 = _loc4;
                } // end else if
                break;
            } 
        } // End of switch
        if (_loc3 < 0 || _loc3 >= _book.__get__totalPages())
        {
            _loc3 = undefined;
        } // end if
        if (_loc2 < 0 || _loc2 >= _book.__get__totalPages())
        {
            _loc2 = undefined;
        } // end if
        this.centerBook(300, _loc3, _loc2, true);
    } // End of the function
    function onPageLoad(eventObject)
    {
        var _loc2 = _book.getPageLink(eventObject.pageNumber);
        _loc2.forceSmoothing = true;
        if (com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchEnabled())
        {
            _loc2.highlightCanvas = _loc2.createEmptyMovieClip("highlightCanvas", _loc2.getNextHighestDepth());
            _loc2.highlightCanvas.bounds = _loc2.getBounds(_loc2);
            com.fbpublisher.utils.search.BookInfo.__get__singleton().setBookCanvas(eventObject.pageNumber, _loc2.highlightCanvas);
        } // end if
        com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().addButtons(_settings.__get__rightToLeft() ? (this.__get__totalPages() - eventObject.pageNumber) : (eventObject.pageNumber), _book.getPageLink(eventObject.pageNumber), this);
    } // End of the function
    function onClickWithoutDragging(eventObject)
    {
        var _loc5 = _book.isLeftPage(eventObject.pageNumber);
        this.dispatchEvent({type: "onClickWithoutDragging", isCorner: eventObject.isCorner, pageNumber: _settings.__get__rightToLeft() ? (this.__get__totalPages() - eventObject.pageNumber) : (eventObject.pageNumber), isLeftPage: _loc5});
    } // End of the function
    function zoomNavigationCall(eventObject)
    {
        this.dispatchEvent({type: "zoomNavigationCall", target: _book, functionName: eventObject.functionName, pageNumber: _settings.__get__rightToLeft() ? (this.__get__totalPages() - eventObject.targetPage) : (eventObject.targetPage + 1)});
    } // End of the function
    function onBookOver(eventObject)
    {
        this.dispatchEvent({type: "onBookOver"});
    } // End of the function
    function onBookOut(eventObject)
    {
        this.dispatchEvent({type: "onBookOut"});
    } // End of the function
    function onRelease(eventObject)
    {
        this.dispatchEvent({type: "onRelease", target: _book, pageNumber: _settings.__get__rightToLeft() ? (this.__get__totalPages() - eventObject.pageNumber) : (eventObject.pageNumber), pageClip: eventObject.page_mc, isCorner: eventObject.isCorner});
    } // End of the function
    var _componentClipName = "book";
    var _ready = false;
    var _dropShadowOpacity = 0;
    var _staticState = true;
    var _firstTime = true;
    var index = 0;
} // End of Class
#endinitclip
