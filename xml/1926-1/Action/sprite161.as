// Action script...

// [Initial MovieClip Action of sprite 161]
#initclip 57
class com.fbpublisher.utils.BookWrapper
{
    var _parentClip, _bookDepth, _bookName, _pagesSet, _book, __get__flipRightOnStart, __get__zoomedIn, __get__x, __get__y, __get__width, __get__height, __get__extXML, __get__scaleContent, __get__preserveProportions, __get__centerContent, __get__hardcover, __get__hardcoverThickness, __get__hardcoverEdgeColor, __get__highlightHardcover, __get__frameWidth, __get__frameColor, __get__frameAlpha, __get__firstPageNumber, __get__alwaysOpened, __get__autoFlipSize, __get__navigationFlipOffset, __get__flipOnClick, __get__handOverCorner, __get__handOverPage, __get__staticShadowsType, __get__staticShadowsDepth, __get__staticShadowsLightColor, __get__staticShadowsDarkColor, __get__dynamicShadowsDepth, __get__dynamicShadowsLightColor, __get__dynamicShadowsDarkColor, __get__moveSpeed, __get__closeSpeed, __get__gotoSpeed, __get__rigidPageSpeed, __get__flipSound, __get__hardcoverSound, __get__preloaderType, __get__pageBackgroundColor, __get__pageBackgroundSymbol, __get__loadOnDemand, __get__allowPagesUnload, __get__cachePages, __get__userPreloaderId, __get__showUnderlyingPages, __get__playOnDemand, __get__freezeOnFlip, __get__smoothPages, __get__rigidPages, __get__darkPages, __get__flipCornerStyle, __get__flipCornerPosition, __get__flipCornerAmount, __get__flipCornerAngle, __get__flipCornerRelease, __get__flipCornerVibrate, __get__flipCornerPlaySound, __get__pageSet, __get__cacheSize, __set__allowPagesUnload, __set__alwaysOpened, __set__autoFlipSize, __set__cachePages, __set__cacheSize, __set__centerContent, __set__closeSpeed, __set__darkPages, __set__dynamicShadowsDarkColor, __set__dynamicShadowsDepth, __set__dynamicShadowsLightColor, __set__extXML, __set__firstPageNumber, __set__flipCornerAmount, __set__flipCornerAngle, __set__flipCornerPlaySound, __set__flipCornerPosition, __set__flipCornerRelease, __set__flipCornerStyle, __set__flipCornerVibrate, __set__flipOnClick, __set__flipRightOnStart, __set__flipSound, __set__frameAlpha, __set__frameColor, __set__frameWidth, __set__freezeOnFlip, __set__gotoSpeed, __set__handOverCorner, __set__handOverPage, __set__hardcover, __set__hardcoverEdgeColor, __set__hardcoverSound, __set__hardcoverThickness, __set__height, __set__highlightHardcover, __get__leftPageNumber, __set__loadOnDemand, __set__moveSpeed, __set__navigationFlipOffset, __set__pageBackgroundColor, __set__pageBackgroundSymbol, __set__pageSet, __get__pagesSet, __set__playOnDemand, __set__preloaderType, __set__preserveProportions, __get__rightPageNumber, __set__rigidPageSpeed, __set__rigidPages, __set__scaleContent, __set__showUnderlyingPages, __set__smoothPages, __set__staticShadowsDarkColor, __set__staticShadowsDepth, __set__staticShadowsLightColor, __set__staticShadowsType, __get__totalPages, __set__userPreloaderId, __set__width, __set__x, __set__y, __set__zoomedIn;
    function BookWrapper(parentClip)
    {
        _parentClip = parentClip;
        _bookDepth = _parentClip.getNextHighestDepth();
        _bookName = "Book" + _bookDepth;
        _pagesSet = new Array();
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
    function create()
    {
        _book = _parentClip.attachMovie(_bookSymbolId, _bookName, _bookDepth, this._createInitObject());
        this._subscribeToEvents();
    } // End of the function
    function set flipRightOnStart(flip)
    {
        var _loc2 = _book.leftPageNumber == undefined ? (_book.rightPageNumber) : (_book.leftPageNumber);
        var _loc3 = flip ? (_book.totalPages - _loc2) : (_loc2);
        _book.flipGotoPage(_loc3);
        //return (this.flipRightOnStart());
        null;
    } // End of the function
    function get zoomedIn()
    {
        return (_zoomedIn);
    } // End of the function
    function set zoomedIn(zoomed)
    {
        _zoomedIn = zoomed;
        //return (this.zoomedIn());
        null;
    } // End of the function
    function get x()
    {
        return (_x);
    } // End of the function
    function set x(newX)
    {
        _x = newX;
        _parentClip._x = _x;
        //return (this.x());
        null;
    } // End of the function
    function get y()
    {
        return (_y);
    } // End of the function
    function set y(newY)
    {
        _y = newY;
        _parentClip._y = _y;
        //return (this.y());
        null;
    } // End of the function
    function get width()
    {
        return (_width);
    } // End of the function
    function set width(newWidth)
    {
        _width = newWidth;
        if (_book != undefined)
        {
            _book.width = _width;
        } // end if
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
        if (_book != undefined)
        {
            _book.height = _height;
        } // end if
        //return (this.height());
        null;
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        if (_book != undefined)
        {
            _book.setSize(_width, _height);
        } // end if
    } // End of the function
    function get pagesSet()
    {
        return (_pagesSet);
    } // End of the function
    function get extXML()
    {
        return (_extXML);
    } // End of the function
    function set extXML(newURL)
    {
        _extXML = newURL;
        //return (this.extXML());
        null;
    } // End of the function
    function get scaleContent()
    {
        return (_scaleContent);
    } // End of the function
    function set scaleContent(scale)
    {
        _scaleContent = scale;
        if (_book != undefined)
        {
            _book.scaleContentProp = _scaleContent;
        } // end if
        //return (this.scaleContent());
        null;
    } // End of the function
    function get preserveProportions()
    {
        return (_preserveProportions);
    } // End of the function
    function set preserveProportions(preserve)
    {
        _preserveProportions = preserve;
        if (_book != undefined)
        {
            _book.preserveProportionsProp = _preserveProportions;
        } // end if
        //return (this.preserveProportions());
        null;
    } // End of the function
    function get centerContent()
    {
        return (_centerContent);
    } // End of the function
    function set centerContent(center)
    {
        _centerContent = center;
        if (_book != undefined)
        {
            _book.centerContentProp = _centerContent;
        } // end if
        //return (this.centerContent());
        null;
    } // End of the function
    function get hardcover()
    {
        return (_hardcover);
    } // End of the function
    function set hardcover(enableHardcover)
    {
        _hardcover = enableHardcover;
        if (_book != undefined)
        {
            _book.hardcoverProp = _hardcover;
        } // end if
        //return (this.hardcover());
        null;
    } // End of the function
    function get hardcoverThickness()
    {
        return (_hardcoverThickness);
    } // End of the function
    function set hardcoverThickness(thickness)
    {
        _hardcoverThickness = thickness;
        if (_book != undefined)
        {
            _book.hardcoverThicknessProp = _hardcoverThickness;
        } // end if
        //return (this.hardcoverThickness());
        null;
    } // End of the function
    function get hardcoverEdgeColor()
    {
        return (_hardcoverEdgeColor);
    } // End of the function
    function set hardcoverEdgeColor(newColor)
    {
        _hardcoverEdgeColor = newColor;
        if (_book != undefined)
        {
            _book.hardcoverEdgeColorProp = _hardcoverEdgeColor;
        } // end if
        //return (this.hardcoverEdgeColor());
        null;
    } // End of the function
    function get highlightHardcover()
    {
        return (_highlightHardcover);
    } // End of the function
    function set highlightHardcover(highlight)
    {
        _highlightHardcover = highlight;
        if (_book != undefined)
        {
            _book.highlightHardcoverProp = _highlightHardcover;
        } // end if
        //return (this.highlightHardcover());
        null;
    } // End of the function
    function get frameWidth()
    {
        return (_frameWidth);
    } // End of the function
    function set frameWidth(newWidth)
    {
        _frameWidth = newWidth;
        if (_book != undefined)
        {
            _book.frameWidthProp = _frameWidth;
        } // end if
        //return (this.frameWidth());
        null;
    } // End of the function
    function get frameColor()
    {
        return (_frameColor);
    } // End of the function
    function set frameColor(newColor)
    {
        _frameColor = newColor;
        if (_book != undefined)
        {
            _book.frameColorProp = _frameColor;
        } // end if
        //return (this.frameColor());
        null;
    } // End of the function
    function get frameAlpha()
    {
        return (_frameAlpha);
    } // End of the function
    function set frameAlpha(newAlpha)
    {
        _frameAlpha = newAlpha;
        if (_book != undefined)
        {
            _book.frameAlphaProp = _frameAlpha;
        } // end if
        //return (this.frameAlpha());
        null;
    } // End of the function
    function get firstPageNumber()
    {
        return (_firstPage);
    } // End of the function
    function set firstPageNumber(newNumber)
    {
        _firstPage = newNumber;
        if (_book != undefined)
        {
            this._rebuildBook();
        } // end if
        //return (this.firstPageNumber());
        null;
    } // End of the function
    function get alwaysOpened()
    {
        return (_alwaysOpened);
    } // End of the function
    function set alwaysOpened(opened)
    {
        _alwaysOpened = opened;
        if (_book != undefined)
        {
            this._rebuildBook();
        } // end if
        //return (this.alwaysOpened());
        null;
    } // End of the function
    function get autoFlipSize()
    {
        return (_autoFlip);
    } // End of the function
    function set autoFlipSize(newSize)
    {
        _autoFlip = newSize;
        if (_book != undefined)
        {
            _book.autoFlipProp = _autoFlip;
        } // end if
        //return (this.autoFlipSize());
        null;
    } // End of the function
    function get navigationFlipOffset()
    {
        return (_navigationFlipOffset);
    } // End of the function
    function set navigationFlipOffset(newOffset)
    {
        _navigationFlipOffset = newOffset;
        if (_book != undefined)
        {
            _book.navigationFlipOffsetProp = _navigationFlipOffset;
        } // end if
        //return (this.navigationFlipOffset());
        null;
    } // End of the function
    function get flipOnClick()
    {
        return (_flipOnClick);
    } // End of the function
    function set flipOnClick(flip)
    {
        _flipOnClick = flip;
        if (_book != undefined)
        {
            _book.flipOnClickProp = _flipOnClick;
        } // end if
        //return (this.flipOnClick());
        null;
    } // End of the function
    function get handOverCorner()
    {
        return (_handOverCorner);
    } // End of the function
    function set handOverCorner(showHand)
    {
        _handOverCorner = showHand;
        if (_book != undefined)
        {
            _book.handOverCornerProp = _handOverCorner;
        } // end if
        //return (this.handOverCorner());
        null;
    } // End of the function
    function get handOverPage()
    {
        return (_handOverPage);
    } // End of the function
    function set handOverPage(showHand)
    {
        _handOverPage = showHand;
        if (_book != undefined)
        {
            _book.handOverPageProp = _handOverPage;
        } // end if
        //return (this.handOverPage());
        null;
    } // End of the function
    function get staticShadowsType()
    {
        return (_staticShadowsType);
    } // End of the function
    function set staticShadowsType(newType)
    {
        _staticShadowsType = newType;
        if (_book != undefined)
        {
            _book.staticShadowsTypeProp = _staticShadowsType;
        } // end if
        //return (this.staticShadowsType());
        null;
    } // End of the function
    function get staticShadowsDepth()
    {
        return (_staticShadowsDepth);
    } // End of the function
    function set staticShadowsDepth(newDepth)
    {
        _staticShadowsDepth = newDepth;
        if (_book != undefined)
        {
            _book.staticShadowsDepthProp = _staticShadowsDepth;
        } // end if
        //return (this.staticShadowsDepth());
        null;
    } // End of the function
    function get staticShadowsLightColor()
    {
        return (_staticShadowsLightColor);
    } // End of the function
    function set staticShadowsLightColor(newColor)
    {
        _staticShadowsLightColor = newColor;
        if (_book != undefined)
        {
            _book.staticShadowsLightColorProp = _staticShadowsLightColor;
        } // end if
        //return (this.staticShadowsLightColor());
        null;
    } // End of the function
    function get staticShadowsDarkColor()
    {
        return (_staticShadowsDarkColor);
    } // End of the function
    function set staticShadowsDarkColor(newColor)
    {
        _staticShadowsDarkColor = newColor;
        if (_book != undefined)
        {
            _book.staticShadowsDarkColorProp = _staticShadowsDarkColor;
        } // end if
        //return (this.staticShadowsDarkColor());
        null;
    } // End of the function
    function get dynamicShadowsDepth()
    {
        return (_shadowsDepth);
    } // End of the function
    function set dynamicShadowsDepth(newDepth)
    {
        _shadowsDepth = newDepth;
        if (_book != undefined)
        {
            _book.dynamicShadowsDepthProp = _shadowsDepth;
        } // end if
        //return (this.dynamicShadowsDepth());
        null;
    } // End of the function
    function get dynamicShadowsLightColor()
    {
        return (_dynamicShadowsLightColor);
    } // End of the function
    function set dynamicShadowsLightColor(newColor)
    {
        _dynamicShadowsLightColor = newColor;
        if (_book != undefined)
        {
            _book.dynamicShadowsLightColorProp = _dynamicShadowsLightColor;
        } // end if
        //return (this.dynamicShadowsLightColor());
        null;
    } // End of the function
    function get dynamicShadowsDarkColor()
    {
        return (_dynamicShadowsDarkColor);
    } // End of the function
    function set dynamicShadowsDarkColor(newColor)
    {
        _dynamicShadowsDarkColor = newColor;
        if (_book != undefined)
        {
            _book.dynamicShadowsDarkColorProp = _dynamicShadowsDarkColor;
        } // end if
        //return (this.dynamicShadowsDarkColor());
        null;
    } // End of the function
    function get moveSpeed()
    {
        return (_moveSpeed);
    } // End of the function
    function set moveSpeed(newSpeed)
    {
        _moveSpeed = newSpeed;
        if (_book != undefined)
        {
            _book.moveSpeedProp = _moveSpeed;
        } // end if
        //return (this.moveSpeed());
        null;
    } // End of the function
    function get closeSpeed()
    {
        return (_closeSpeed);
    } // End of the function
    function set closeSpeed(newSpeed)
    {
        _closeSpeed = newSpeed;
        if (_book != undefined)
        {
            _book.closeSpeedProp = _closeSpeed;
        } // end if
        //return (this.closeSpeed());
        null;
    } // End of the function
    function get gotoSpeed()
    {
        return (_gotoSpeed);
    } // End of the function
    function set gotoSpeed(newSpeed)
    {
        _gotoSpeed = newSpeed;
        if (_book != undefined)
        {
            _book.gotoSpeedProp = _gotoSpeed;
        } // end if
        //return (this.gotoSpeed());
        null;
    } // End of the function
    function get rigidPageSpeed()
    {
        return (_rigidPageSpeed);
    } // End of the function
    function set rigidPageSpeed(newSpeed)
    {
        _rigidPageSpeed = newSpeed;
        if (_book != undefined)
        {
            _book.rigidPageSpeedProp = _rigidPageSpeed;
        } // end if
        //return (this.rigidPageSpeed());
        null;
    } // End of the function
    function get flipSound()
    {
        return (_flipSound);
    } // End of the function
    function set flipSound(newURL)
    {
        _flipSound = newURL;
        if (_book != undefined)
        {
            _book.flipSoundProp = _flipSound;
        } // end if
        //return (this.flipSound());
        null;
    } // End of the function
    function get hardcoverSound()
    {
        return (_hardcoverSound);
    } // End of the function
    function set hardcoverSound(newURL)
    {
        _hardcoverSound = newURL;
        if (_book != undefined)
        {
            _book.hardcoverSoundProp = _hardcoverSound;
        } // end if
        //return (this.hardcoverSound());
        null;
    } // End of the function
    function get preloaderType()
    {
        return (_preloaderType);
    } // End of the function
    function set preloaderType(newType)
    {
        _preloaderType = newType;
        if (_book != undefined)
        {
            _book.preloaderTypeProp = _preloaderType;
        } // end if
        //return (this.preloaderType());
        null;
    } // End of the function
    function get pageBackgroundColor()
    {
        return (_pageBack);
    } // End of the function
    function set pageBackgroundColor(newColor)
    {
        _pageBack = newColor;
        if (_book != undefined)
        {
            _book.pageBackProp = _pageBack;
            this._rebuildBook();
        } // end if
        //return (this.pageBackgroundColor());
        null;
    } // End of the function
    function get pageBackgroundSymbol()
    {
        return (_backgroundSymbol);
    } // End of the function
    function set pageBackgroundSymbol(newId)
    {
        _backgroundSymbol = newId;
        if (_book != undefined)
        {
            _book.backgroundSymbolProp = _backgroundSymbol;
        } // end if
        //return (this.pageBackgroundSymbol());
        null;
    } // End of the function
    function get loadOnDemand()
    {
        return (_loadOnDemand);
    } // End of the function
    function set loadOnDemand(load)
    {
        _loadOnDemand = load;
        if (_book != undefined)
        {
            this._rebuildBook();
        } // end if
        //return (this.loadOnDemand());
        null;
    } // End of the function
    function get allowPagesUnload()
    {
        return (_allowPagesUnload);
    } // End of the function
    function set allowPagesUnload(allow)
    {
        _allowPagesUnload = allow;
        if (_book != undefined)
        {
            this._rebuildBook();
        } // end if
        //return (this.allowPagesUnload());
        null;
    } // End of the function
    function get cachePages()
    {
        return (_cachePages);
    } // End of the function
    function set cachePages(cache)
    {
        _cachePages = cache;
        if (_book != undefined)
        {
            this._rebuildBook();
        } // end if
        //return (this.cachePages());
        null;
    } // End of the function
    function get userPreloaderId()
    {
        return (_userPreloaderId);
    } // End of the function
    function set userPreloaderId(newId)
    {
        _userPreloaderId = newId;
        if (_book != undefined)
        {
            this._rebuildBook();
        } // end if
        //return (this.userPreloaderId());
        null;
    } // End of the function
    function get showUnderlyingPages()
    {
        return (_showUnderlyingPages);
    } // End of the function
    function set showUnderlyingPages(show)
    {
        _showUnderlyingPages = show;
        if (_book != undefined)
        {
            this._rebuildBook();
        } // end if
        //return (this.showUnderlyingPages());
        null;
    } // End of the function
    function get playOnDemand()
    {
        return (_playOnDemand);
    } // End of the function
    function set playOnDemand(play)
    {
        _playOnDemand = play;
        if (_book != undefined)
        {
            this._rebuildBook();
        } // end if
        //return (this.playOnDemand());
        null;
    } // End of the function
    function get freezeOnFlip()
    {
        return (_freezeOnFlip);
    } // End of the function
    function set freezeOnFlip(freeze)
    {
        _freezeOnFlip = freeze;
        if (_book != undefined)
        {
            _book.globalFreezeOnFlipProp = _freezeOnFlip;
        } // end if
        //return (this.freezeOnFlip());
        null;
    } // End of the function
    function get smoothPages()
    {
        return (_smoothPages);
    } // End of the function
    function set smoothPages(smooth)
    {
        _smoothPages = smooth;
        if (_book != undefined)
        {
            _book.globalSmoothProp = _smoothPages;
        } // end if
        //return (this.smoothPages());
        null;
    } // End of the function
    function get rigidPages()
    {
        return (_rigidPages);
    } // End of the function
    function set rigidPages(rigid)
    {
        _rigidPages = rigid;
        if (_book != undefined)
        {
            _book.globalRigidProp = _rigidPages;
        } // end if
        //return (this.rigidPages());
        null;
    } // End of the function
    function get darkPages()
    {
        return (_darkPages);
    } // End of the function
    function set darkPages(dark)
    {
        _darkPages = dark;
        if (_book != undefined)
        {
            _book.globalDarkProp = _darkPages;
        } // end if
        //return (this.darkPages());
        null;
    } // End of the function
    function get flipCornerStyle()
    {
        return (_flipCornerStyle);
    } // End of the function
    function set flipCornerStyle(newStyle)
    {
        _flipCornerStyle = newStyle;
        if (_book != undefined)
        {
            this._rebuildBook();
        } // end if
        //return (this.flipCornerStyle());
        null;
    } // End of the function
    function get flipCornerPosition()
    {
        return (_flipCornerPosition);
    } // End of the function
    function set flipCornerPosition(newPosition)
    {
        _flipCornerPosition = newPosition;
        if (_book != undefined)
        {
            _book.flipCornerPositionProp = _flipCornerPosition;
        } // end if
        //return (this.flipCornerPosition());
        null;
    } // End of the function
    function get flipCornerAmount()
    {
        return (_flipCornerAmount);
    } // End of the function
    function set flipCornerAmount(newAmount)
    {
        _flipCornerAmount = newAmount;
        if (_book != undefined)
        {
            _book.flipCornerAmountProp = _flipCornerAmount;
        } // end if
        //return (this.flipCornerAmount());
        null;
    } // End of the function
    function get flipCornerAngle()
    {
        return (_flipCornerAngle);
    } // End of the function
    function set flipCornerAngle(newAngle)
    {
        _flipCornerAngle = newAngle;
        if (_book != undefined)
        {
            _book.flipCornerAngleProp = _flipCornerAngle;
        } // end if
        //return (this.flipCornerAngle());
        null;
    } // End of the function
    function get flipCornerRelease()
    {
        return (_flipCornerRelease);
    } // End of the function
    function set flipCornerRelease(release)
    {
        _flipCornerRelease = release;
        if (_book != undefined)
        {
            _book.flipCornerReleaseProp = _flipCornerRelease;
        } // end if
        //return (this.flipCornerRelease());
        null;
    } // End of the function
    function get flipCornerVibrate()
    {
        return (_flipCornerVibrate);
    } // End of the function
    function set flipCornerVibrate(vibrate)
    {
        _flipCornerVibrate = vibrate;
        if (_book != undefined)
        {
            _book.flipCornerVibrateProp = _flipCornerVibrate;
        } // end if
        //return (this.flipCornerVibrate());
        null;
    } // End of the function
    function get flipCornerPlaySound()
    {
        return (_flipCornerPlaySound);
    } // End of the function
    function set flipCornerPlaySound(play)
    {
        _flipCornerPlaySound = play;
        if (_book != undefined)
        {
            _book.flipCornerPlaySoundProp = _flipCornerPlaySound;
        } // end if
        //return (this.flipCornerPlaySound());
        null;
    } // End of the function
    function get totalPages()
    {
        return (_book.totalPages);
    } // End of the function
    function get leftPageNumber()
    {
        return (_book.leftPageNumber);
    } // End of the function
    function get rightPageNumber()
    {
        return (_book.rightPageNumber);
    } // End of the function
    function addPage(pageURL, pageParams)
    {
        var _loc5 = pageURL;
        if (pageParams != undefined)
        {
            var _loc3 = 0;
            for (var _loc6 in pageParams)
            {
                var _loc2 = _loc3 > 0 ? ("&") : ("?");
                _loc5 = _loc5 + (_loc2 + _loc6 + "=" + pageParams[_loc6]);
                ++_loc3;
            } // end of for...in
        } // end if
        _pagesSet.push(_loc5);
        if (_book != undefined)
        {
            this._rebuildBook();
        } // end if
    } // End of the function
    function set pageSet(value)
    {
        _pagesSet = value;
        if (_book != undefined)
        {
            this._rebuildBook();
        } // end if
        //return (this.pageSet());
        null;
    } // End of the function
    function set cacheSize(value)
    {
        _cacheSize = value;
        //return (this.cacheSize());
        null;
    } // End of the function
    function flipCorner(cornerPosition, release, amount, angle, vibrate, playSound)
    {
        if (_book != undefined)
        {
            _book.flipCorner(cornerPosition, release, amount, angle, vibrate, playSound);
        } // end if
    } // End of the function
    function gotoPage(pageNumber)
    {
        if (_book != undefined)
        {
            if (!_zoomedIn)
            {
                _book.gotoPage(pageNumber);
            }
            else
            {
                this.dispatchEvent({type: "zoomNavigationCall", functionName: "gotoPage", targetPage: pageNumber});
            } // end if
        } // end else if
    } // End of the function
    function flipGotoPage(pageNumber)
    {
        if (_book != undefined)
        {
            if (!_zoomedIn)
            {
                _book.flipGotoPage(pageNumber);
            }
            else
            {
                this.dispatchEvent({type: "zoomNavigationCall", functionName: "flipGotoPage", targetPage: pageNumber});
            } // end if
        } // end else if
    } // End of the function
    function directGotoPage(pageNumber)
    {
        if (_book != undefined)
        {
            if (!_zoomedIn)
            {
                _book.directGotoPage(pageNumber);
            }
            else
            {
                this.dispatchEvent({type: "zoomNavigationCall", functionName: "directGotoPage", targetPage: pageNumber});
            } // end if
        } // end else if
    } // End of the function
    function switchToPage(pageNumber)
    {
        _book.directGotoPage(pageNumber);
    } // End of the function
    function flipForward()
    {
        if (_book.rightPageNumber >= _book.totalPages)
        {
            return;
        } // end if
        if (_book != undefined)
        {
            if (!_zoomedIn)
            {
                _book.flipForward();
            }
            else
            {
                this.dispatchEvent({type: "zoomNavigationCall", functionName: "flipForward"});
            } // end if
        } // end else if
    } // End of the function
    function flipBack()
    {
        if (_book != undefined)
        {
            if (!_zoomedIn)
            {
                _book.flipBack();
            }
            else
            {
                this.dispatchEvent({type: "zoomNavigationCall", functionName: "flipBack"});
            } // end if
        } // end else if
    } // End of the function
    function getPageLink(pageNumber)
    {
        return (_book.getPageLink(pageNumber));
    } // End of the function
    function isPageVisible(pageNumber)
    {
        return (_book.isPageVisible(pageNumber));
    } // End of the function
    function isPageLoaded(pageNumber)
    {
        return (_book.isPageLoaded(pageNumber));
    } // End of the function
    function getPageURL(pageNumber)
    {
        return (_book.getPageURL(pageNumber));
    } // End of the function
    function getPageParams(pageNumber)
    {
        return (_book.getPageParams(pageNumber));
    } // End of the function
    function isLeftPage(pageNumber)
    {
        return (_book.isLeftPage(pageNumber));
    } // End of the function
    function isRightPage(pageNumber)
    {
        return (_book.isRightPage(pageNumber));
    } // End of the function
    function show()
    {
        _parentClip._visible = true;
    } // End of the function
    function hide()
    {
        _parentClip._visible = false;
    } // End of the function
    function _subscribeToEvents()
    {
        _book.addEventListener(this);
    } // End of the function
    function onInit(eventObject)
    {
        this._positionBook();
        this.dispatchEvent({type: "onInit", target: _book});
    } // End of the function
    function onPageLoad(eventObject)
    {
        this.dispatchEvent({type: "onPageLoad", target: _book, URL: eventObject.URL, pageNumber: eventObject.pageNumber});
    } // End of the function
    function onPageUnload(eventObject)
    {
        this.dispatchEvent({type: "onPageUnload", target: _book, pageNumber: eventObject.pageNumber});
    } // End of the function
    function onPutPage(eventObject)
    {
        this.dispatchEvent({type: "onPutPage", target: _book, pageNumber: eventObject.pageNumber, pageClip: eventObject.page_mc});
    } // End of the function
    function onLastPage(eventObject)
    {
        this.dispatchEvent({type: "onLastPage", target: _book});
    } // End of the function
    function onFirstPage(eventObject)
    {
        this.dispatchEvent({type: "onFirstPage", target: _book});
    } // End of the function
    function onEndGoto(eventObject)
    {
        this.dispatchEvent({type: "onEndGoto", target: _book});
    } // End of the function
    function onNavigationFunctionCall(eventObject)
    {
        this.dispatchEvent({type: "onNavigationFunctionCall", target: _book, functionName: eventObject.functionName, targetPage: eventObject.targetPage});
    } // End of the function
    function onXMLComplete(eventObject)
    {
        this.dispatchEvent({type: "onXMLComplete", target: _book});
    } // End of the function
    function onRollOver(eventObject)
    {
        this.dispatchEvent({type: "onRollOver", target: _book});
    } // End of the function
    function onRollOut(eventObject)
    {
        this.dispatchEvent({type: "onRollOut", target: _book});
    } // End of the function
    function onRelease(eventObject)
    {
        this.dispatchEvent({type: "onRelease", target: _book, pageNumber: eventObject.pageNumber, pageClip: eventObject.page_mc, isCorner: eventObject.isCorner});
    } // End of the function
    function onReleaseOutside(eventObject)
    {
        this.dispatchEvent({type: "onReleaseOutside", target: _book});
    } // End of the function
    function onClick(eventObject)
    {
        this.dispatchEvent({type: "onClick", target: _book, pageNumber: eventObject.pageNumber, pageClip: eventObject.page_mc, isCorner: eventObject.isCorner});
    } // End of the function
    function onClickWithoutDragging(eventObject)
    {
        this.dispatchEvent({type: "onClickWithoutDragging", target: _book, pageNumber: eventObject.pageNumber, pageClip: eventObject.page_mc, isCorner: eventObject.isCorner});
    } // End of the function
    function onStartFlip(eventObject)
    {
        this.dispatchEvent({type: "onStartFlip", target: _book, pageNumber: eventObject.pageNumber});
    } // End of the function
    function onFlipOver(eventObject)
    {
        this.dispatchEvent({type: "onFlipOver", target: _book, forward: eventObject.forward});
    } // End of the function
    function onCornerOut(eventObject)
    {
        this.dispatchEvent({type: "onCornerOut", target: _book});
    } // End of the function
    function onCornerOver(eventObject)
    {
        this.dispatchEvent({type: "onCornerOver", target: _book});
    } // End of the function
    function onFlipBack(eventObject)
    {
        this.dispatchEvent({type: "onFlipBack", target: _book, pageNumber: eventObject.pageNumber});
    } // End of the function
    function onPageOver(eventObject)
    {
        this.dispatchEvent({type: "onPageOver", target: _book, isLeftPage: eventObject.isLeftPage, pageNumber: eventObject.pageNumber});
    } // End of the function
    function onPageOut(eventObject)
    {
        this.dispatchEvent({type: "onPageOut", target: _book, isLeftPage: eventObject.isLeftPage, pageNumber: eventObject.pageNumber});
    } // End of the function
    function onBookOver(eventObject)
    {
        this.dispatchEvent({type: "onBookOver", target: _book, isLeftPage: eventObject.isLeftPage});
    } // End of the function
    function onBookOut(eventObject)
    {
        this.dispatchEvent({type: "onBookOut", target: _book, isLeftPage: eventObject.isLeftPage});
    } // End of the function
    function _positionBook()
    {
        _book._x = _x;
        _book._y = _y;
        _book.width = _width;
        _book.height = _height;
    } // End of the function
    function _rebuildPagesPaths()
    {
        for (var _loc2 = 0; _loc2 < _pagesSet.length; ++_loc2)
        {
            var _loc7 = _pagesSet[_loc2];
            var _loc6 = this._cleanPageURL(_loc7);
            var _loc3 = _book.getPageLink(_loc2).params;
            if (_loc3 != undefined)
            {
                var _loc5 = 0;
                for (var _loc8 in _loc3)
                {
                    var _loc4 = _loc5 > 0 ? ("&") : ("?");
                    _loc6 = _loc6 + (_loc4 + _loc8 + "=" + _loc3[_loc8]);
                    ++_loc5;
                } // end of for...in
            } // end if
            _pagesSet.splice(_loc2, 1, _loc6);
        } // end of for
    } // End of the function
    function _cleanPageURL(pageURL)
    {
        var _loc2 = pageURL.indexOf(_book._constants.DELIMITER);
        if (_loc2 != -1)
        {
            return (pageURL.substr(_loc2 + _book._constants.DELIMITER.length));
        } // end if
        return (pageURL);
    } // End of the function
    function _rebuildBook()
    {
        _book.removeEventListener(this);
        this._rebuildPagesPaths();
        this.create();
    } // End of the function
    function _createInitObject()
    {
        var _loc2 = new Object();
        _loc2.pagesSet = _pagesSet;
        _loc2.extXML = _extXML;
        _loc2.scaleContent = _scaleContent;
        _loc2.preserveProportions = _preserveProportions;
        _loc2.centerContent = _centerContent;
        _loc2.hardcover = _hardcover;
        _loc2.hardcoverThickness = _hardcoverThickness;
        _loc2.hardcoverEdgeColor = _hardcoverEdgeColor;
        _loc2.highlightHardcover = _highlightHardcover;
        _loc2.frameWidth = _frameWidth;
        _loc2.frameColor = _frameColor;
        _loc2.frameAlpha = _frameAlpha;
        _loc2.firstPage = _firstPage;
        _loc2.alwaysOpened = _alwaysOpened;
        _loc2.autoFlip = _autoFlip;
        _loc2.navigationFlipOffset = _navigationFlipOffset;
        _loc2.flipOnClick = _flipOnClick;
        _loc2.handOverCorner = _handOverCorner;
        _loc2.handOverPage = _handOverPage;
        _loc2.staticShadowsType = _staticShadowsType;
        _loc2.staticShadowsDepth = _staticShadowsDepth;
        _loc2.staticShadowsLightColor = _staticShadowsLightColor;
        _loc2.staticShadowsDarkColor = _staticShadowsDarkColor;
        _loc2.shadowsDepth = _shadowsDepth;
        _loc2.dynamicShadowsLightColor = _dynamicShadowsLightColor;
        _loc2.dynamicShadowsDarkColor = _dynamicShadowsDarkColor;
        _loc2.moveSpeed = _moveSpeed;
        _loc2.closeSpeed = _closeSpeed;
        _loc2.gotoSpeed = _gotoSpeed;
        _loc2.rigidPageSpeed = _rigidPageSpeed;
        _loc2.flipSound = _flipSound;
        _loc2.hardcoverSound = _hardcoverSound;
        _loc2.preloaderType = _preloaderType;
        _loc2.pageBack = _pageBack;
        _loc2.backgroundSymbol = _backgroundSymbol;
        _loc2.loadOnDemand = _loadOnDemand;
        _loc2.allowPagesUnload = _allowPagesUnload;
        _loc2.cachePages = _cachePages;
        _loc2.cacheSize = _cacheSize;
        _loc2.userPreloaderId = _userPreloaderId;
        _loc2._showUnderlyingPages = _showUnderlyingPages;
        _loc2.playOnDemand = _playOnDemand;
        _loc2.globalFreezeOnFlip = _freezeOnFlip;
        _loc2.globalDark = _darkPages;
        _loc2.globalSmooth = _smoothPages;
        _loc2.globalRigid = _rigidPages;
        _loc2.flipCornerStyle = _flipCornerStyle;
        _loc2.flipCornerPosition = _flipCornerPosition;
        _loc2.flipCornerAmount = _flipCornerAmount;
        _loc2.flipCornerAngle = _flipCornerAngle;
        _loc2.flipCornerRelease = _flipCornerRelease;
        _loc2.flipCornerVibrate = _flipCornerVibrate;
        _loc2.flipCornerPlaySound = _flipCornerPlaySound;
        return (_loc2);
    } // End of the function
    var _bookSymbolId = "FFlippingBookSymbol";
    var _x = 0;
    var _y = 0;
    var _width = 400;
    var _height = 250;
    var _extXML = "";
    var _scaleContent = true;
    var _preserveProportions = true;
    var _centerContent = true;
    var _hardcover = false;
    var _hardcoverThickness = 2;
    var _hardcoverEdgeColor = 13421772;
    var _highlightHardcover = true;
    var _frameWidth = 0;
    var _frameColor = 16777215;
    var _frameAlpha = 100;
    var _firstPage = 0;
    var _alwaysOpened = false;
    var _autoFlip = 50;
    var _navigationFlipOffset = 50;
    var _flipOnClick = true;
    var _handOverCorner = true;
    var _handOverPage = true;
    var _staticShadowsType = "Asymmetric";
    var _staticShadowsDepth = 1;
    var _staticShadowsLightColor = 16777215;
    var _staticShadowsDarkColor = 0;
    var _shadowsDepth = 1;
    var _dynamicShadowsLightColor = 16777215;
    var _dynamicShadowsDarkColor = 0;
    var _moveSpeed = 2;
    var _closeSpeed = 3;
    var _gotoSpeed = 3;
    var _rigidPageSpeed = 5;
    var _flipSound = "";
    var _hardcoverSound = "";
    var _preloaderType = "Progress Bar";
    var _pageBack = 10079487;
    var _backgroundSymbol = "";
    var _loadOnDemand = true;
    var _allowPagesUnload = true;
    var _cachePages = true;
    var _cacheSize = 10;
    var _userPreloaderId = "";
    var _showUnderlyingPages = false;
    var _playOnDemand = true;
    var _freezeOnFlip = false;
    var _smoothPages = false;
    var _rigidPages = false;
    var _darkPages = false;
    var _flipCornerPosition = "bottom-right";
    var _flipCornerStyle = "manually";
    var _flipCornerAmount = 50;
    var _flipCornerAngle = 45;
    var _flipCornerRelease = true;
    var _flipCornerVibrate = true;
    var _flipCornerPlaySound = false;
    var _zoomedIn = false;
} // End of Class
#endinitclip
