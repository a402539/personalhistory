// Action script...

// [Initial MovieClip Action of sprite 42]
#initclip 106
function FFlippingBookConstants()
{
    this.version = "1.8.9.3";
    this.DELIMITER = "%!!!%";
    this.INVALID_XML_MSG = "FFlippingBookError: Incorrect XML source..";
    this.MEDIA_INTERVAL = 300;
    this.MEDIA_TIMEOUT = 3000;
    this.PAGE_TIMEOUT = 3000;
    this.DEF_PAGE_NAME = "fpage";
    this.PAGE_SHADOW_LAYER_NAME = "shadows";
    this.PAGE_BG_NAME = "bg";
    this.PAGE_HOLDER_NAME = "holder";
    this.PAGE_HOLDER_PARENT_NAME = "parent";
    this.PAGE_PRELOADER_NAME = "loader";
    this.PAGE_MEDIA_NAME = "media";
    this.PAGE_MASK_NAME = "pmask";
    this.SYMBOL_PRELOADER_NAME = "FBStandardPreloader";
    this.PRELOADER_BAR_NAME = "bar_mc";
    this.ACTIONS_BUTTON_NAME = "actions_button";
    this.MAIN_OBJ_ID = "MAIN";
    this.MODEL_OBJ_ID = "MODEL";
    this.CACHE_OBJ_ID = "CACHE";
    this.CONSTANTS_OBJ_ID = "CONSTANTS";
    this.LOADER_OBJ_ID = "LOADER";
    this.VIEW_OBJ_ID = "VIEW";
    this.WIDTH_NODE_NAME = "WIDTH";
    this.HEIGHT_NODE_NAME = "HEIGHT";
    this.FRAME_NODE_NAME = "FRAME";
    this.ALWAYS_OPENED_NODE_NAME = "ALWAYSOPENED";
    this.SCALE_CONTENT_NODE_NAME = "SCALECONTENT";
    this.CENTER_CONTENT_NODE_NAME = "CENTERCONTENT";
    this.PLAY_ON_DEMAND_NODE_NAME = "PLAYONDEMAND";
    this.HARDCOVER_NODE_NAME = "HARDCOVER";
    this.AUTOFLIP_NODE_NAME = "AUTOFLIP";
    this.FLIP_ON_CLICK_NODE_NAME = "FLIPONCLICK";
    this.MOVE_SPEED_NODE_NAME = "MOVESPEED";
    this.CLOSE_SPEED_NODE_NAME = "CLOSESPEED";
    this.GOTO_SPEED_NODE_NAME = "GOTOSPEED";
    this.RIGID_SPEED_NODE_NAME = "RIGIDPAGESPEED";
    this.FLIP_SOUND_NODE_NAME = "FLIPSOUND";
    this.PAGE_BACK_NODE_NAME = "PAGEBACK";
    this.BACKGROUND_SYMBOL_NODE_NAME = "BACKGROUNDSYMBOL";
    this.LOAD_ON_DEMAND_NODE_NAME = "LOADONDEMAND";
    this.ALLOW_PAGES_UNLOAD_NODE_NAME = "ALLOWPAGESUNLOAD";
    this.SHOW_UNDERLYING_PAGES_NODE_NAME = "SHOWUNDERLYINGPAGES";
    this.HAND_OVER_CORNER_NODE_NAME = "HANDOVERCORNER";
    this.HAND_OVER_PAGE_NODE_NAME = "HANDOVERPAGE";
    this.NAVIGATION_FLIP_OFFSET_NODE_NAME = "NAVIGATIONFLIPOFFSET";
    this.CACHE_PAGES_NODE_NAME = "CACHEPAGES";
    this.USE_PRELOADER_NODE_NAME = "USEPRELOADER";
    this.USER_PRELOADER_NODE_NAME = "USERPRELOADERID";
    this.CACHE_SIZE_NODE_NAME = "CACHESIZE";
    this.PRELOADER_TYPE_NODE_NAME = "PRELOADERTYPE";
    this.PAGES_NODE_NAME = "PAGES";
    this.FIRST_PAGE_NODE_NAME = "FIRSTPAGE";
    this.STATIC_SHADOWS_TYPE_NODE_NAME = "STATICSHADOWSTYPE";
    this.STATIC_SHADOWS_DEPTH_NODE_NAME = "STATICSHADOWSDEPTH";
    this.STATIC_SHADOWS_LIGHT_COLOR_NODE_NAME = "STATICSHADOWSLIGHTCOLOR";
    this.STATIC_SHADOWS_DARK_COLOR_NODE_NAME = "STATICSHADOWSDARKCOLOR";
    this.DYNAMIC_SHADOWS_DEPTH_NODE_NAME = "DYNAMICSHADOWSDEPTH";
    this.DYNAMIC_SHADOWS_LIGHT_COLOR_NODE_NAME = "DYNAMICSHADOWSLIGHTCOLOR";
    this.DYNAMIC_SHADOWS_DARK_COLOR_NODE_NAME = "DYNAMICSHADOWSDARKCOLOR";
    this.FLIP_CORNER_NODE_NAME = "FLIPCORNER";
    this.PAGE_STATIC_SHADOW1_NAME = "STATICSH1";
    this.PAGE_STATIC_SHADOW2_NAME = "STATICSH2";
    this.FLIP_SOUND_SYMBOL_NAME = "FFlippingBookSound";
    this.NUM_TYPE_NAME = "number";
    this.BOOL_TYPE_NAME = "boolean";
    this.BOOL_TRUE_VAL = "TRUE";
    this.BOOL_FALSE_VAL = "FALSE";
    this.PRELOADER_WIDTH_SCALE = 2;
    this.PRELOADER_HEIGHT_SCALE = 30;
    this.MIN_PAGE_OFFSET = 0.998000;
    this.MIN_PAGE_OFFSET2 = 0.990000;
    this.DEF_PRELOADER_TYPE = "Progress Bar";
    this.DEF_CACHE_SIZE = 4;
    this.DEF_HARDCOVER = false;
    this.DEF_WIDTH = 100;
    this.DEF_HEIGHT = 100;
    this.DEF_FRAME_WIDTH = 5;
    this.DEF_FRAME_COLOR = 16777215;
    this.DEF_FRAME_ALPHA = 100;
    this.DEF_SHADOWS_TYPE = "Default";
    this.DEF_SHADOWS_DEPTH = 1;
    this.DEF_STATIC_SHADOWS_LIGHT_COLOR = 16777215;
    this.DEF_STATIC_SHADOWS_DARK_COLOR = 0;
    this.DEF_DYNAMIC_SHADOWS_LIGHT_COLOR = 16777215;
    this.DEF_DYNAMIC_SHADOWS_DARK_COLOR = 0;
    this.DEF_MOVE_SPEED = 2;
    this.DEF_CLOSE_SPEED = 3;
    this.DEF_GOTO_SPEED = 3;
    this.DEF_RIGID_SPEED = 5;
    this.DEF_ALWAYS_OPENED = false;
    this.DEF_FLIP_ON_CLICK = true;
    this.DEF_LOAD_ON_DEMAND = true;
    this.DEF_BACKGROUND_SYMBOL = "";
    this.DEF_HIGHLIGHT_PAGE_CURL = false;
    this.DEF_HIGHLIGHT_HARDCOVER = true;
    this.DEF_ALLOW_PAGES_UNLOAD = false;
    this.DEF_SHOW_UNDERLYING_PAGES = false;
    this.DEF_HAND_OVER_CORNER = true;
    this.DEF_HAND_OVER_PAGE = true;
    this.DEF_NAVIGATION_FLIP_OFFSET = 50;
    this.DEF_CACHE_PAGES = true;
    this.DEF_USE_PRELOADER = true;
    this.DEF_PAGEBACK = 11447982;
    this.DEF_SCALE_CONTENT = true;
    this.DEF_CENTER_CONTENT = true;
    this.DEF_PLAY_ON_DEMAND = true;
    this.DEF_SOUND = "default";
    this.DEF_NO_SOUND = "";
    this.DEF_AUTOFLIP = 50;
    this.DEF_GLOBAL_SMOOTH = false;
    this.DEF_GLOBAL_FREEZE = false;
    this.DEF_GLOBAL_DARK = false;
    this.DEF_GLOBAL_RIGID = false;
    this.DEF_FLIP_CORNER_POSITION = "top-right";
    this.DEF_FLIP_CORNER_STYLE = "manually";
    this.DEF_FLIP_CORNER_ANGLE = 30;
    this.DEF_FLIP_CORNER_AMOUNT = 50;
    this.DEF_FLIP_CORNER_RELEASE = true;
    this.DEF_FLIP_CORNER_VIBRATE = true;
    this.DEF_FLIP_CORNER_PLAY_SOUND = false;
    this.EMPTY_PAGE = "_empty";
    this.TRANSPARENT_PAGE1 = "_transp1";
    this.TRANSPARENT_PAGE2 = "_transp2";
    this.INIT_STATE = 0;
    this.UNACTIVE_STATE = 1;
    this.FLIPPING_STATE = 2;
    this.FLIPOVER_STATE = 3;
    this.FLIPBACK_STATE = 4;
    this.AUTOFLIP_STATE = 5;
    this.GOTOPAGE_STATE = 6;
    this.FLIP_GOTOPAGE_STATE = 7;
    this.FLIP_CORNER_STATE = 8;
    this.START_FLIP_CORNER_STATE = 9;
    this.FLIP_CORNER_FIXED_STATE = 10;
    this.CACHE_DEPTH = 100;
    this.BOOK_DEPTH = 10000;
    this.HARDCOVER_DEPTH = 10100;
    this.PAGE_01_MC_NAME = "p01";
    this.PAGE_02_MC_NAME = "p02";
    this.PAGE_03_MC_NAME = "p03";
    this.PAGE_04_MC_NAME = "p04";
    this.MASK_03_MC_NAME = "m03";
    this.MASK_12_MC_NAME = "m12";
    this.SHADOW_03_MC_NAME = "s03";
    this.SHADOW_04_MC_NAME = "s04";
    this.SH_MASK_03_MC_NAME = "shm03";
    this.SH_MASK_04_MC_NAME = "shm04";
    this.PAGES_SH_MC_NAME = "s12";
    this.PAGES_SHM_MC_NAME = "shm12";
    this.HARDCOVER_SH_MC_NAME = "hs12";
    this.HARDCOVER_SHM_MC_NAME = "hsm12";
    this.STATIC_SHADOW_MC_NAME = "shStatic";
    this.PAGE01_DEPTH = 8;
    this.PAGE02_DEPTH = 5;
    this.PAGE03_DEPTH = 4;
    this.PAGE04_DEPTH = 0;
    this.SH12_SCALE = 0.400000;
    this.SH3_SCALE = 1.600000;
    this.SPEED_DIV = 10;
} // End of the function
function FFlippingBookBroker()
{
    this.objects = new Array();
} // End of the function
function FFlippingBookCache(broker, usePreloader, cachePages, loadOnDemand, bgColor)
{
    this._broker = broker;
    this._const = new FFlippingBookConstants();
    this._broker.registerObject(this._const.CACHE_OBJ_ID, this);
    this._baseObject = this._broker.objects[this._const.MAIN_OBJ_ID];
    this._pagesDepth = this._const.CACHE_DEPTH;
    this.usePreloader = usePreloader;
    this.cachePages = cachePages;
    this.loadOnDemand = loadOnDemand;
    this.bgColor = bgColor;
    this.__pagesLinks = new Array();
    this.__pagesProcess = new Array();
    this.__pagesHolders = new Array();
    this.__rigidHolders = new Array();
    this.__pagesLoaders = new Array();
    this.__pagesTimeouts = new Array();
    this.__pagesLoading = new Array();
    this.__pagesExt = new Array();
    this.__pagesDepths = new Array();
    this.__pagesBacks = new Array();
    this.__pagesMasks = new Array();
    this.__checkCompleted = new Array();
    this.__checkCount = new Array();
    this.__pagesShadows1 = new Array();
    this.__pagesShadows2 = new Array();
    this._sound = new Sound(this._baseObject);
    this._hardcoverSound = new Sound(this._baseObject);
    this._isSound = true;
    this._soundTimeout = this._const.MEDIA_TIMEOUT;
    this.sd = this._baseObject.shadowsDepth;
    this.ssd = this._baseObject.staticShadowsDepth;
    this._mediaComplete = false;
    this._soundComplete = false;
    this._pagesComplete = false;
    this.extXML = new XML();
    this.extXML.ignoreWhite = true;
    this.extXML._parentObj = this;
    this.extXML.onLoad = this.onXMLComplete;
    this.eventHolder = this._baseObject.createEmptyMovieClip("eventHolder", 14);
    this.eventHolder.obj = this;
    this.loadingQueueLen = 0;
    this.__frozenPages = new Array();
} // End of the function
function FFlippingBookModel(pagesSet, firstPage, alwaysOpened, broker)
{
    this._broker = broker;
    this._const = new FFlippingBookConstants();
    this._broker.registerObject(this._const.MODEL_OBJ_ID, this);
    this._cache = this._broker.objects[this._const.CACHE_OBJ_ID];
    this._baseObj = this._broker.objects[this._const.MAIN_OBJ_ID];
    this._userPages = pagesSet;
    this._curPageNumbers = new Array(4);
    this._markEqual();
    this._realPages = this._copyArray(pagesSet);
    this.alwaysOpened = alwaysOpened;
    this.__direction = -1;
    this._makeItReal();
    this.addProperty("_userCurrentPage2", this.getUserCurrentPage2, null);
    this._userCurrentPage = firstPage;
    this._currentPage = this._realPageNumber(firstPage);
} // End of the function
function FFlippingBookClass()
{
    this.flash8Renderer = flash.geom.Transform != undefined;
    this._x = Math.round(this._x);
    this._y = Math.round(this._y);
    this.listeners = new Array();
    this._constants = new FFlippingBookConstants();
    this._broker = new FFlippingBookBroker();
    this._broker.registerObject(this._constants.MAIN_OBJ_ID, this);
    this.usePreloader = this.preloaderType != "None";
    this._cache = new FFlippingBookCache(this._broker, this.usePreloader, this.cachePages, this.loadOnDemand, this.pageBack);
    this.pageParameters = new Array();
    this.pageIndexes = new Array();
    this.addProperty("enabledProp", this.getEnabledProp, this.setEnabledProp);
    this.addProperty("totalPages", this.getTotalPages, null);
    this.addProperty("leftPageNumber", this.getLeftPageNumber, null);
    this.addProperty("rightPageNumber", this.getRightPageNumber, null);
    this.addProperty("autoFlipProp", this.getAutoFlipProp, this.setAutoFlipProp);
    this.addProperty("navigationFlipOffsetProp", this.getNavigationFlipOffset, this.setNavigationFlipOffset);
    this.addProperty("flipOnClickProp", this.getFlipOnClick, this.setFlipOnClick);
    this.addProperty("moveSpeedProp", this.getMoveSpeedProp, this.setMoveSpeedProp);
    this.addProperty("closeSpeedProp", this.getCloseSpeedProp, this.setCloseSpeedProp);
    this.addProperty("gotoSpeedProp", this.getGotoSpeedProp, this.setGotoSpeedProp);
    this.addProperty("width", this.getWidth, this.setWidth);
    this.addProperty("height", this.getHeight, this.setHeight);
    this.addProperty("alwaysOpenedProp", this.getAlwaysOpenedProp, null);
    this.addProperty("staticShadowsDepthProp", this.getStaticShadowsDepth, this.setStaticShadowsDepth);
    this.addProperty("dynamicShadowsDepthProp", this.getDynamicShadowsDepth, this.setDynamicShadowsDepth);
    this.addProperty("preloaderTypeProp", this.getPreloaderType, this.setPreloaderType);
    this.addProperty("preserveProportionsProp", this.getPreserveProportions, this.setPreserveProportions);
    this.addProperty("scaleContentProp", this.getScaleContent, this.setScaleContent);
    this.addProperty("centerContentProp", this.getCenterContent, this.setCenterContent);
    this.addProperty("frameWidthProp", this.getFrameWidth, this.setFrameWidth);
    this.addProperty("frameColorProp", this.getFrameColor, this.setFrameColor);
    this.addProperty("frameAlphaProp", this.getFrameAlpha, this.setFrameAlpha);
    this.addProperty("flipSoundProp", this.getFlipSound, this.setFlipSound);
    this.addProperty("hardcoverSoundProp", this.getHardcoverSound, this.setHardcoverSound);
    this.addProperty("hardcoverProp", this.getHardcover, this.setHardcover);
    this.addProperty("hardcoverThicknessProp", this.getHardcoverThickness, this.setHardcoverThickness);
    this.addProperty("hardcoverEdgeColorProp", this.getHardcoverEdgeColor, this.setHardcoverEdgeColor);
    this.addProperty("highlightHardcoverProp", this.getHighlightHardcover, this.setHighlightHardcover);
    this.addProperty("globalSmoothProp", this.getGlobalSmooth, this.setGlobalSmooth);
    this.addProperty("globalRigidProp", this.getGlobalRigid, this.setGlobalRigid);
    this.addProperty("globalFreezeOnFlipProp", this.getGlobalFreezeOnFlip, this.setGlobalFreezeOnFlip);
    this.addProperty("globalDarkProp", this.getGlobalDark, this.setGlobalDark);
    this.addProperty("flipCornerPositionProp", this.getFlipCornerPosition, this.setFlipCornerPosition);
    this.addProperty("flipCornerStyleProp", this.getFlipCornerStyle, this.setFlipCornerStyle);
    this.addProperty("flipCornerAmountProp", this.getFlipCornerAmount, this.setFlipCornerAmount);
    this.addProperty("flipCornerAngleProp", this.getFlipCornerAngle, this.setFlipCornerAngle);
    this.addProperty("flipCornerReleaseProp", this.getFlipCornerRelease, this.setFlipCornerRelease);
    this.addProperty("flipCornerVibrateProp", this.getFlipCornerVibrate, this.setFlipCornerVibrate);
    this.addProperty("flipCornerPlaySoundProp", this.getFlipCornerPlaySound, this.setFlipCornerPlaySound);
    this.addProperty("handOverCornerProp", this.getHandOverCorner, this.setHandOverCorner);
    this.addProperty("handOverPageProp", this.getHandOverPage, this.setHandOverPage);
    this.addProperty("staticShadowsTypeProp", this.getStaticShadowsType, this.setStaticShadowsType);
    this.addProperty("staticShadowsLightColorProp", this.getStaticShadowsLightColor, this.setStaticShadowsLightColor);
    this.addProperty("staticShadowsDarkColorProp", this.getStaticShadowsDarkColor, this.setStaticShadowsDarkColor);
    this.addProperty("dynamicShadowsLightColorProp", this.getDynamicShadowsLightColor, this.setDynamicShadowsLightColor);
    this.addProperty("dynamicShadowsDarkColorProp", this.getDynamicShadowsDarkColor, this.setDynamicShadowsDarkColor);
    this.addProperty("rigidPageSpeedProp", this.getRigidPageSpeed, this.setRigidPageSpeed);
    this.addProperty("pageBackProp", this.getPageBack, this.setPageBack);
    this.addProperty("backgroundSymbolProp", this.getBackgroundSymbol, this.setBackgroundSymbol);
    this.enabledProp = true;
    this._isZoomed = false;
    this._a = Math.abs(this._rotation / 180 * 3.141593);
    this._sina = Math.sin(this._a);
    this._cosa = Math.cos(this._a);
    this._W = this._width;
    this._H = this._height;
    this._w = (this._H * this._sina - this._W * this._cosa) / (this._sina * this._sina - this._cosa * this._cosa);
    this._h = (this._H * this._cosa - this._W * this._sina) / (this._cosa * this._cosa - this._sina * this._sina);
    this.setSize(this._w, this._h);
    this.box_mc._visible = false;
    if (this.extXML != "")
    {
        this._cache.loadExternalXML(this.extXML);
    }
    else
    {
        this._getMedia();
    } // end else if
} // End of the function
function FFlippingBookView(bw, bh, autoFlip, flipOnClick, broker)
{
    this._const = new FFlippingBookConstants();
    this._end = false;
    this._broker = broker;
    this._broker.registerObject(this._const.VIEW_OBJ_ID, this);
    this._baseObj = this._broker.objects[this._const.MAIN_OBJ_ID];
    this._cache = this._broker.objects[this._const.CACHE_OBJ_ID];
    this._model = this._broker.objects[this._const.MODEL_OBJ_ID];
    this._pageWidth = this._baseObj._bookWidth / 2;
    this._pageHeight = this._baseObj._bookHeight;
    this._autoFlip = this._baseObj.autoFlip;
    this._flipOnClick = this._baseObj.flipOnClick;
    this._pageSpeed = this._baseObj.moveSpeed / this._const.SPEED_DIV;
    this._rigidSpeed = this._baseObj.rigidPageSpeed / this._const.SPEED_DIV;
    this._closeSpeed = this._baseObj.closeSpeed / this._const.SPEED_DIV;
    this._gotoSpeed = this._baseObj.gotoSpeed / this._const.SPEED_DIV;
    this._minOffset = this._const.MIN_PAGE_OFFSET;
    this._flipSound = this._cache._sound;
    this._coverSound = this._cache._hardcoverSound;
    this._bookState = this._const.INIT_STATE;
    this._depth = this._const.BOOK_DEPTH;
    this.radIndex = 57.295780;
    this._transpPage = 0;
    this.__ox = 0;
    this.__oy = 0;
    this.__oldX = 0;
    this.__oldY = 0;
    this.__p4Empty = false;
    this.__shadowHeight = 2 * Math.sqrt(this._pageHeight * this._pageHeight + this._pageWidth * this._pageWidth);
    this.__pagesShadowHeight = 2 * Math.sqrt(4 * this._pageHeight * this._pageHeight + this._pageWidth * this._pageWidth);
    this._radIndex = 57.295780;
    this.__gotoPageIndex = 0;
    this.sd = this._baseObj.shadowsDepth;
    this.__isMouseDown = false;
    this.__clickTrackingInterval = 0;
    this.__canDragPage = false;
    this._drawBook();
    this._drawActionsButton();
    this.__actionsButton.onPress = this.__onMouseDown;
    this.__actionsButton.onRelease = this.__onMouseUp;
    this.__actionsButton.onReleaseOutside = this.__onMouseUpOutside;
    this.__actionsButton.useHandCursor = false;
    this.__actionsButton.onRollOver = this.__onRollOver;
    this.__actionsButton.onRollOut = this.__onRollOut;
    this._baseObj.onEnterFrame = this.__onEnterFrame;
    this._model.putPage();
} // End of the function
FFlippingBookBroker.prototype.registerObject = function (id, obj)
{
    this.objects[id] = obj;
};
FFlippingBookCache.prototype._stripItem = function (str)
{
    var _loc2 = str.indexOf(this._const.DELIMITER) + this._const.DELIMITER.length;
    return (str.substr(_loc2));
};
FFlippingBookCache.prototype.loadExternalXML = function (src)
{
    if (src != "")
    {
        this.extXML.load(src);
    }
    else
    {
        this._baseObject._onXMLComplete(false);
    } // end else if
};
FFlippingBookCache.prototype.onXMLComplete = function (success)
{
    if (success && this.status == 0)
    {
        this._parentObj._baseObject._onXMLComplete();
    }
    else if (this.status != 0)
    {
        trace (this._parentObj._const.INVALID_XML_MSG);
    } // end else if
};
FFlippingBookCache.prototype.loadMedia = function (pagesSet, flipSound, pageBack, w, h)
{
    this._soundSrc = flipSound;
    this._hardcoverSoundSrc = this._baseObject.hardcoverSound;
    this._bgColor = pageBack;
    this._realPages = pagesSet;
    this._pageWidth = w / 2;
    this._pageHeight = h;
    this._loadFlipSound();
    this._loadPages();
    if (!this.loadOnDemand)
    {
        this._baseObject.progress = 0;
        this.__placeOverallPreloader();
    } // end if
    this.eventHolder.onEnterFrame = this.__checkMedia;
};
FFlippingBookCache.prototype._updateFlipSound = function ()
{
    if (this._soundSrc == this._const.DEF_NO_SOUND || this._soundSrc == undefined)
    {
        this._isSound = false;
    }
    else
    {
        this._sound.attachSound(this._soundSrc);
        if (this._sound.duration == undefined)
        {
            this._sound.loadSound(this._soundSrc, false);
        } // end if
        this._isSound = true;
    } // end else if
    if (this._hardcoverSoundSrc == this._const.DEF_NO_SOUND || this._hardcoverSoundSrc == undefined)
    {
        this._isHardcoverSound = false;
    }
    else
    {
        this._hardcoverSound.attachSound(this._hardcoverSoundSrc);
        if (this._hardcoverSound.duration == undefined)
        {
            this._hardcoverSound.loadSound(this._hardcoverSoundSrc, false);
        } // end if
        this._isHardcoverSound = true;
    } // end else if
};
FFlippingBookCache.prototype._loadFlipSound = function ()
{
    this._soundComplete = false;
    if (this._soundSrc == this._const.DEF_NO_SOUND || this._soundSrc == undefined)
    {
        this._isSound = false;
        this._soundComplete = true;
    }
    else
    {
        this._sound.attachSound(this._soundSrc);
        if (this._sound.duration == undefined)
        {
            this._sound.loadSound(this._soundSrc, false);
        } // end if
        this._soundComplete = false;
        this._isSound = false;
    } // end else if
    this._hardcoverSoundComplete = false;
    if (this._hardcoverSoundSrc == this._const.DEF_NO_SOUND || this._hardcoverSoundSrc == undefined)
    {
        this._isHardcoverSound = false;
        this._hardcoverSoundComplete = true;
    }
    else
    {
        this._hardcoverSound.attachSound(this._hardcoverSoundSrc);
        if (this._hardcoverSound.duration == undefined)
        {
            this._hardcoverSound.loadSound(this._hardcoverSoundSrc, false);
        } // end if
        this._hardcoverSoundComplete = false;
        this._isHardcoverSound = false;
    } // end else if
};
FFlippingBookCache.prototype._getProgress = function ()
{
    var _loc2 = 0;
    var _loc3 = 0;
    for (var _loc4 in this.__pagesProcess)
    {
        if (this.__pagesExt[_loc4])
        {
            if (!isNaN(this.__pagesProcess[_loc4]))
            {
                _loc2 = _loc2 + this.__pagesProcess[_loc4];
            } // end if
            ++_loc3;
        } // end if
    } // end of for...in
    return (_loc2 / _loc3);
};
FFlippingBookCache.prototype.__checkMedia = function ()
{
    var _loc2 = this.obj;
    if (!_loc2._soundComplete)
    {
        if (_loc2._sound.getBytesLoaded() == _loc2._sound.getBytesTotal() || _loc2._sound.getBytesTotal() == undefined)
        {
            if (_loc2._sound.getBytesTotal == 0 && _loc2._soundTimeout > 0)
            {
                _loc2._soundTimeout = _loc2._soundTimeout - _loc2._const.MEDIA_INTERVAL;
            }
            else if (_loc2._sound.getBytesTotal == undefined && _loc2._soundTimeout <= 0)
            {
                _loc2._isSound = false;
                _loc2._soundComplete = true;
            }
            else
            {
                _loc2._isSound = true;
                _loc2._soundComplete = true;
            } // end if
        } // end else if
    } // end else if
    if (!_loc2._pagesComplete && !_loc2.loadOnDemand)
    {
        _loc2._pagesComplete = true;
        for (src in _loc2.__pagesProcess)
        {
            if (_loc2.__pagesProcess[src] < 100 || _loc2.__checkCompleted[src] == 1 || isNaN(_loc2.__pagesProcess[src]))
            {
                var _loc3 = _loc2.__pagesHolders[src].getBytesLoaded() / _loc2.__pagesHolders[src].getBytesTotal() * 100;
                if (_loc2.usePreloader)
                {
                    _loc2.__pagesLoaders[src].setProgress(_loc3);
                } // end if
                _loc2.__pagesProcess[src] = _loc3;
                _loc2.__pagesHolders[src].progress = _loc3;
                _loc2._baseObject.progress = _loc2._getProgress();
                _loc2.preloader.setProgress(_loc2._baseObject.progress);
                _loc2.__pagesTimeouts[src] = _loc2.__pagesTimeouts[src] - _loc2._const.MEDIA_INTERVAL;
                if (_loc3 == 100 && _loc2.__pagesHolders[src].getBytesLoaded() > 4 && _loc2.__checkCompleted[src] == 1)
                {
                    _loc2._baseObject._setPageParameters(_loc2.__pagesHolders[src], src, true);
                    _loc2._baseObject._setVisible();
                    if (_loc2._baseObject._showUnderlyingPages)
                    {
                        _loc2.__pagesBacks[src]._visible = false;
                    } // end if
                    _loc2.__pagesHolders[src].progress = 100;
                    _loc2.__pagesLoaders[src].removeMovieClip();
                    _loc2.__pagesHolders[src].originalWidth = _loc2.__pagesHolders[src]._width;
                    _loc2.__pagesHolders[src].originalHeight = _loc2.__pagesHolders[src]._height;
                    _loc2.__smoothContent(src);
                    _loc2.__resizeContent(src, _loc2._pageWidth * 2, _loc2._pageHeight);
                    _loc2.__playPage(_loc2.__pagesHolders[src]);
                    _loc2.__pagesHolders[src]._parent._visible = true;
                    _loc2.__pagesProcess[src] = _loc3;
                    if (_loc2._model == undefined)
                    {
                        _loc2._model = _loc2._broker.objects[_loc2._const.MODEL_OBJ_ID];
                    } // end if
                    _loc2._baseObject.onPageLoad(_loc2._stripItem(src), _loc2.__pagesHolders[src].pageNumber);
                    _loc2._baseObject.dispatchEvent("onPageLoad", {target: _loc2._baseObject, URL: _loc2._stripItem(src), pageNumber: _loc2.__pagesHolders[src].pageNumber});
                    _loc2.__freezeLoadedContent();
                }
                else
                {
                    _loc2._pagesComplete = false;
                } // end else if
                if (_loc3 == 100 && _loc2.__pagesHolders[src].getBytesLoaded() > 4)
                {
                    _loc2.__checkCompleted[src] = 1;
                } // end if
            } // end if
        } // end of for...in
    } // end if
    if (_loc2._soundComplete && (_loc2._pagesComplete || _loc2.loadOnDemand))
    {
        delete _loc2.eventHolder.onEnterFrame;
        _loc2._baseObject._onMediaComplete();
        if (_loc2._pagesComplete)
        {
            _loc2._baseObject.progress = 100;
            _loc2.preloader.removeMovieClip();
        } // end if
    } // end if
};
FFlippingBookCache.prototype._loadPages = function ()
{
    var _loc6 = this._realPages.length;
    for (var _loc2 = 0; _loc2 < _loc6; ++_loc2)
    {
        if (this.__pagesLinks[this._realPages[_loc2]] == undefined)
        {
            this.__pagesLinks[this._realPages[_loc2]] = this.__createPage(this._const.DEF_PAGE_NAME + "_" + _loc2, this._realPages[_loc2]);
            this.__pagesLinks[this._realPages[_loc2]]._y = -this._pageHeight / 2;
            this.__pagesLinks[this._realPages[_loc2]]._visible = false;
        } // end if
    } // end of for
    for (src in this.__pagesLinks)
    {
        this.__pagesLoading[src] = false;
        var _loc4 = this._baseObject.pageParameters[this._baseObject.pageIndexes[src]];
        var _loc5 = this.__pagesHolders[src].attachMovie(this._stripItem(src), this._const.PAGE_MEDIA_NAME, 0);
        if (_loc5 == undefined && src != this._const.TRANSPARENT_PAGE1 && src != this._const.TRANSPARENT_PAGE2 && src != this._const.EMPTY_PAGE)
        {
            _loc4 = this._baseObject.pageParameters[this._baseObject.pageIndexes[src]];
            this.__pagesHolders[src]._parent.params = new Object();
            this.__pagesHolders[src]._parent.params = _loc4;
            this._baseObject._setPageParameters(this.__pagesHolders[src], src, false);
            this.__pagesProcess[src] = 0;
            this.__pagesExt[src] = true;
            this.__pagesTimeouts[src] = this._const.PAGE_TIMEOUT;
            if (!this.loadOnDemand)
            {
                this.__pagesHolders[src]._parent._visible = false;
                this.__pagesHolders[src].loadMovie(this._stripItem(src));
            } // end if
            if (this.usePreloader)
            {
                var _loc3 = this.__pagesLinks[src].parent;
                this.__placePreloader(_loc3);
                this.__pagesLoaders[src] = _loc3[this._const.PAGE_PRELOADER_NAME];
                this.__pagesLoaders[src].setProgress(0);
            } // end if
            this.__pagesHolders[src].progress = 0;
            if (this.__pagesHolders[src].params.showStaticShadow == "false")
            {
                this.__pagesHolders[src]._parent._parent.shadows._visible = false;
            } // end if
            this.__drawFrame(src, this._baseObject.frameWidth, this._baseObject.frameWidth);
            continue;
        } // end if
        this.__pagesExt[src] = false;
        this.__pagesProcess[src] = 100;
        this.__pagesHolders[src].progress = 100;
        this.__pagesHolders[src].params = new Object();
        this.__pagesHolders[src].params = _loc4;
        this._baseObject._setPageParameters(this.__pagesHolders[src].media, src, true);
        this.__pagesHolders[src].media.originalWidth = this.__pagesHolders[src].media._width;
        this.__pagesHolders[src].media.originalHeight = this.__pagesHolders[src].media._height;
        this._baseObject._setVisible();
        if (src != "_empty")
        {
            this.__pagesBacks[src]._visible = false;
        } // end if
        if (this.__pagesHolders[src].params.showStaticShadow == "false")
        {
            this.__pagesHolders[src]._parent._parent.shadows._visible = false;
        } // end if
        this.__smoothContent(src);
        this.__freezeLoadedContent();
        this.__resizeContent(src, 2 * this._pageWidth, this._pageHeight);
        this.__playPage(this.__pagesHolders[src].media);
    } // end of for...in
    this.__markRigidPages();
};
FFlippingBookCache.prototype.__isRigidPage = function (pageClip)
{
    var _loc2 = this.__getBooleanValue(pageClip.params.rigid);
    if (_loc2 != undefined)
    {
        return (_loc2);
    }
    else
    {
        return (this._baseObject.globalRigid);
    } // end else if
};
FFlippingBookCache.prototype.__markRigidPages = function ()
{
    var _loc8 = 0;
    var _loc7 = this._baseObject.totalPages;
    for (src in this.__pagesLinks)
    {
        var _loc2 = this.__pagesHolders[src].media;
        if (_loc2 == undefined)
        {
            _loc2 = this.__pagesHolders[src];
        } // end if
        if (_loc2 == undefined && src == "_empty")
        {
            _loc2 = this.__pagesLinks[src];
            _loc2.pageNumber = this._baseObject.totalPages;
            _loc2.params = new Object();
            _loc2.isLeftPage = !this._baseObject.alwaysOpened;
        } // end if
        var _loc5 = _loc2.pageNumber;
        if (_loc5 != undefined)
        {
            var _loc4 = _loc2.isLeftPage ? (_loc5 - 1) : (_loc5 + 1);
            if (_loc4 >= _loc8 && _loc4 <= _loc7)
            {
                nextPage = this._baseObject.getPageLink(_loc4);
                if (nextPage.params.rigid == "true" || _loc2.params.rigid == "true")
                {
                    nextPage.params.rigid = "true";
                    _loc2.params.rigid = "true";
                    _loc2.params._rigidNeighbor = true;
                    nextPage.params._rigidNeighbor = true;
                    var _loc3 = _loc2._parent._parent.shadows;
                    if (_loc3 == undefined)
                    {
                        _loc3 = _loc2._parent._parent._parent.shadows;
                    } // end if
                    if (_loc3 == undefined)
                    {
                        _loc3 = _loc2.parent.shadows;
                    } // end if
                    _loc3[this._const.PAGE_STATIC_SHADOW1_NAME]._visible = false;
                    _loc3[this._const.PAGE_STATIC_SHADOW2_NAME]._visible = false;
                    _loc3 = nextPage._parent._parent.shadows;
                    if (_loc3 == undefined)
                    {
                        _loc3 = nextPage._parent._parent._parent.shadows;
                    } // end if
                    if (_loc3 == undefined)
                    {
                        _loc3 = nextPage.parent.shadows;
                    } // end if
                    _loc3[this._const.PAGE_STATIC_SHADOW1_NAME]._visible = false;
                    _loc3[this._const.PAGE_STATIC_SHADOW2_NAME]._visible = false;
                } // end if
            } // end if
        } // end if
    } // end of for...in
    for (src in this.__pagesLinks)
    {
        _loc2 = this.__pagesHolders[src].media;
        if (_loc2 == undefined)
        {
            _loc2 = this.__pagesHolders[src];
        } // end if
        _loc5 = _loc2.pageNumber;
        var _loc6 = _loc2.isLeftPage ? (_loc5 + 1) : (_loc5 - 1);
        neighborPage = this._baseObject.getPageLink(_loc6);
        if ((neighborPage.params.rigid != "true" || _loc2.params.rigid != "true") && neighborPage != undefined)
        {
            _loc3 = _loc2._parent._parent.shadows;
            if (_loc3 == undefined)
            {
                _loc3 = _loc2._parent._parent._parent.shadows;
            } // end if
            if (_loc3 == undefined)
            {
                _loc3 = _loc2.parent.shadows;
            } // end if
            if (_loc2.isLeftPage)
            {
                _loc3[this._const.PAGE_STATIC_SHADOW1_NAME]._visible = true;
                _loc3[this._const.PAGE_STATIC_SHADOW2_NAME]._visible = false;
            }
            else
            {
                _loc3[this._const.PAGE_STATIC_SHADOW1_NAME]._visible = true;
                _loc3[this._const.PAGE_STATIC_SHADOW2_NAME]._visible = false;
            } // end else if
            _loc3 = neighborPage._parent._parent.shadows;
            if (_loc3 == undefined)
            {
                _loc3 = neighborPage._parent._parent._parent.shadows;
            } // end if
            if (_loc3 == undefined)
            {
                _loc3 = neighborPage.parent.shadows;
            } // end if
            if (_loc2.isLeftPage)
            {
                _loc3[this._const.PAGE_STATIC_SHADOW1_NAME]._visible = false;
                _loc3[this._const.PAGE_STATIC_SHADOW2_NAME]._visible = true;
            }
            else
            {
                _loc3[this._const.PAGE_STATIC_SHADOW1_NAME]._visible = true;
                _loc3[this._const.PAGE_STATIC_SHADOW2_NAME]._visible = false;
            } // end else if
            _loc2.params._rigidNeighbor = false;
            neighborPage.params._rigidNeighbor = false;
        } // end if
    } // end of for...in
};
FFlippingBookCache.prototype.__drawFrame = function (src, frameWidth, frameHeight)
{
    var frameColor = this._baseObject.frameColor;
    var frameAlpha = this._baseObject.frameAlpha;
    var pageClip = this.__pagesHolders[src];
    if (pageClip.media)
    {
        pageClip = pageClip.media;
    } // end if
    var isWidePage = this.__getBooleanValue(pageClip.params.wide);
    var isLeftPage = pageClip.isLeftPage;
    var needToDraw = pageClip.params.drawFrame != "false" && frameWidth > 0 && frameAlpha > 0;
    var dl = dr = 0;
    if (isWidePage)
    {
        if (isLeftPage)
        {
            dr = frameWidth;
        }
        else
        {
            dl = frameWidth;
        } // end if
    } // end else if
    var frameClip = this.__pagesShadows1[src]._parent.createEmptyMovieClip("frame", 8);
    if (frameClip != undefined && needToDraw)
    {
        with (frameClip)
        {
            clear();
            beginFill(frameColor, frameAlpha);
            moveTo(0, 0);
            lineTo(this._pageWidth, 0);
            lineTo(this._pageWidth, this._pageHeight);
            lineTo(0, this._pageHeight);
            lineTo(0, 0);
            moveTo(frameWidth - dl, frameHeight);
            lineTo(this._pageWidth - frameWidth + dr, frameHeight);
            lineTo(this._pageWidth - frameWidth + dr, this._pageHeight - frameHeight);
            lineTo(frameWidth - dl, this._pageHeight - frameHeight);
            lineTo(frameWidth - dl, frameHeight);
            endFill();
        } // End of with
    } // end if
};
FFlippingBookCache.prototype.__createPage = function (src, id)
{
    var _loc6 = this._baseObject.createEmptyMovieClip(src, this._pagesDepth++);
    var _loc3 = _loc6.createEmptyMovieClip(this._const.PAGE_HOLDER_PARENT_NAME, 1);
    this.__rigidHolders[id] = _loc3;
    var _loc4 = _loc3.createEmptyMovieClip(this._const.PAGE_HOLDER_PARENT_NAME, 1);
    if (id != this._const.TRANSPARENT_PAGE1 && id != this._const.TRANSPARENT_PAGE2)
    {
        var _loc5 = _loc3.createEmptyMovieClip(this._const.PAGE_BG_NAME, 0);
        var _loc7 = _loc3.createEmptyMovieClip(this._const.PAGE_SHADOW_LAYER_NAME, 100);
        this.__drawBack(_loc5);
        this.__pagesBacks[id] = _loc5;
        if (id != this._const.EMPTY_PAGE)
        {
            this.__pagesHolders[id] = _loc4.createEmptyMovieClip(this._const.PAGE_HOLDER_NAME, 0);
            this.__pagesProcess[id] = 0;
            this.__pagesMasks[id] = _loc4.createEmptyMovieClip(this._const.PAGE_MASK_NAME, 7100);
            this.__drawBack(this.__pagesMasks[id]);
        }
        else
        {
            this.__pagesProcess[id] = 100;
        } // end else if
        var _loc9 = this.__pagesShadows1[id] = _loc7.createEmptyMovieClip(this._const.PAGE_STATIC_SHADOW1_NAME, 10);
        var _loc8 = this.__pagesShadows2[id] = _loc7.createEmptyMovieClip(this._const.PAGE_STATIC_SHADOW2_NAME, 11);
        if (!(id == this._const.EMPTY_PAGE && this._baseObject.hardcover))
        {
            this.__drawStaticShadows(_loc9, _loc8);
        } // end if
    }
    else
    {
        this.__pagesHolders[id] = 100;
    } // end else if
    return (_loc6);
};
FFlippingBookCache.prototype.__redrawStaticShadows = function ()
{
    for (var _loc4 in this.__pagesHolders)
    {
        var _loc3 = this.__pagesShadows1[_loc4];
        var _loc2 = this.__pagesShadows2[_loc4];
        if (_loc3 && _loc2)
        {
            this.__drawStaticShadows(_loc3, _loc2);
        } // end if
        this.__updatePageShadows(_loc4, this._baseObject._bookWidth, this._baseObject._bookHeight);
    } // end of for...in
};
FFlippingBookCache.prototype.__redrawDynamicShadows = function ()
{
    this._view._drawShadow12();
    this._view._drawShadow03();
    this._view._drawShadow04();
};
FFlippingBookCache.prototype.__redrawPageBackgrounds = function ()
{
    for (var _loc2 in this.__pagesBacks)
    {
        this.__drawBack(this.__pagesBacks[_loc2]);
    } // end of for...in
};
FFlippingBookCache.prototype.__drawStaticShadows = function (mc1, mc2)
{
    mc1._initialBookWidth = this._pageWidth * 2;
    switch (this._baseObject.staticShadowsType)
    {
        case "Default":
        {
            var pw = this._pageWidth;
            var sw = 50;
            var sh = this._pageHeight;
            var colors = [this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsDarkColor];
            var ratios = [0, 155, 220, 255];
            var alphas = [0, 10 * this.ssd, 20 * this.ssd, 25 * this.ssd];
            var matrix = {matrixType: "box", x: pw - sw, y: 0, w: sw, h: sh, r: 0};
            with (mc1)
            {
                clear();
                moveTo(pw - sw, 0);
                beginGradientFill("linear", colors, alphas, ratios, matrix);
                lineTo(pw, 0);
                lineTo(pw, sh);
                lineTo(pw - sw, sh);
                lineTo(pw - sw, 0);
                endFill();
            } // End of with
            colors = [this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsDarkColor];
            ratios = [0, 35, 100, 255];
            alphas = [25 * this.ssd, 20 * this.ssd, 10 * this.ssd, 0];
            matrix = {matrixType: "box", x: 0, y: 0, w: sw, h: sh, r: 0};
            with (mc2)
            {
                clear();
                moveTo(0, 0);
                beginGradientFill("linear", colors, alphas, ratios, matrix);
                lineTo(sw, 0);
                lineTo(sw, sh);
                lineTo(0, sh);
                lineTo(0, 0);
                endFill();
            } // End of with
            break;
        } 
        case "Symmetric":
        {
            var pageWidth = this._pageWidth;
            var pageHeight = this._pageHeight;
            var shadowHeight = pageHeight;
            var sw = 250;
            var colors = [this._baseObject.staticShadowsLightColor, this._baseObject.staticShadowsLightColor, this._baseObject.staticShadowsDarkColor];
            var ratios = [150, 224, 255];
            var alphas = [0, 10 * this.ssd, 30 * this.ssd];
            var matrix = {matrixType: "box", x: pageWidth - sw, y: 0, w: sw, h: shadowHeight, r: 0};
            with (mc1)
            {
                clear();
                moveTo(pageWidth - sw, 0);
                beginGradientFill("linear", colors, alphas, ratios, matrix);
                lineTo(pageWidth, 0);
                lineTo(pageWidth, shadowHeight);
                lineTo(pageWidth - sw, shadowHeight);
                lineTo(0, 0);
                endFill();
            } // End of with
            var colors = [this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsLightColor, this._baseObject.staticShadowsLightColor];
            var ratios = [0, 31, 95];
            var alphas = [30 * this.ssd, 10 * this.ssd, 0];
            var matrix = {matrixType: "box", x: 0, y: 0, w: sw, h: shadowHeight, r: 0};
            with (mc2)
            {
                clear();
                moveTo(0, 0);
                beginGradientFill("linear", colors, alphas, ratios, matrix);
                lineTo(sw, 0);
                lineTo(sw, shadowHeight);
                lineTo(0, shadowHeight);
                lineTo(0, 0);
                endFill();
            } // End of with
            break;
        } 
        case "Asymmetric":
        {
            var pageWidth = this._pageWidth;
            var pageHeight = this._pageHeight;
            var shadowHeight = pageHeight;
            var sw = 50;
            var colors = [this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsDarkColor];
            var ratios = [0, 120, 255];
            var alphas = [0, 10 * this.ssd, 40 * this.ssd];
            var matrix = {matrixType: "box", x: pageWidth - sw, y: 0, w: sw, h: shadowHeight, r: 0};
            with (mc1)
            {
                clear();
                moveTo(pageWidth - sw, 0);
                beginGradientFill("linear", colors, alphas, ratios, matrix);
                lineTo(pageWidth, 0);
                lineTo(pageWidth, shadowHeight);
                lineTo(pageWidth - sw, shadowHeight);
                lineTo(pageWidth - sw, 0);
                endFill();
            } // End of with
            sw = 20;
            var colors = [this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsDarkColor, this._baseObject.staticShadowsDarkColor];
            var ratios = [0, 70, 170, 255];
            var alphas = [53 * this.ssd, 30 * this.ssd, 7 * this.ssd, 0];
            var matrix = {matrixType: "box", x: 0, y: 0, w: sw, h: shadowHeight, r: 0};
            with (mc2)
            {
                clear();
                moveTo(0, 0);
                beginGradientFill("linear", colors, alphas, ratios, matrix);
                lineTo(sw, 0);
                lineTo(sw, shadowHeight);
                lineTo(0, shadowHeight);
                lineTo(0, 0);
                endFill();
            } // End of with
            break;
        } 
    } // End of switch
};
FFlippingBookCache.prototype.__placePreloader = function (mc)
{
    var _loc2;
    switch (this._baseObject.preloaderType)
    {
        case "Progress Bar":
        {
            _loc2 = "FBStandardPreloader";
            break;
        } 
        case "Round":
        {
            _loc2 = "FBRoundPreloader";
            break;
        } 
        case "Thin":
        {
            _loc2 = "FBThinPreloader";
            break;
        } 
        case "Dots":
        {
            _loc2 = "FBDotsPreloader";
            break;
        } 
        case "Gradient Wheel":
        {
            _loc2 = "FBGradientWheelPreloader";
            break;
        } 
        case "Gear Wheel":
        {
            _loc2 = "FBGearWheelPreloader";
            break;
        } 
        case "Line":
        {
            _loc2 = "FBLinePreloader";
            break;
        } 
        case "Animated Book":
        {
            _loc2 = "FBAnimatedBookPreloader";
            break;
        } 
        case "User Defined":
        {
            _loc2 = this._baseObject.userPreloaderId;
            break;
        } 
    } // End of switch
    if (this._baseObject.preloaderType != "None")
    {
        var _loc3 = mc.attachMovie(_loc2, this._const.PAGE_PRELOADER_NAME, 2);
    }
    else
    {
        _loc3 = mc.createEmptyMovieClip(this._const.PAGE_PRELOADER_NAME, 2);
    } // end else if
    var _loc5 = this._pageWidth / 2;
    var _loc4 = this._pageHeight / 2;
    _loc3._x = Math.round(_loc5);
    _loc3._y = Math.round(_loc4);
    return (_loc3);
};
FFlippingBookCache.prototype.__redrawPreloaders = function ()
{
    if (this.loadOnDemand)
    {
        for (var _loc4 in this.__pagesHolders)
        {
            var _loc3 = this.__pagesProcess[_loc4];
            var _loc2 = this.__pagesLoaders[_loc4]._parent;
            if (_loc2)
            {
                this.__placePreloader(_loc2);
                this.__pagesLoaders[_loc4] = _loc2[this._const.PAGE_PRELOADER_NAME];
                this.__pagesLoaders[_loc4].setProgress(_loc3);
            } // end if
            if (_loc3 == 100)
            {
                this.__pagesLoaders[_loc4]._visible = false;
            } // end if
        } // end of for...in
    }
    else
    {
        this.__placeOverallPreloader();
        this.prealoder.setProgress(this._baseObject.progress);
    } // end else if
};
FFlippingBookCache.prototype.__placeOverallPreloader = function ()
{
    var _loc2;
    switch (this._baseObject.preloaderType)
    {
        case "Progress Bar":
        {
            _loc2 = "FBStandardPreloader";
            break;
        } 
        case "Round":
        {
            _loc2 = "FBRoundPreloader";
            break;
        } 
        case "Thin":
        {
            _loc2 = "FBThinPreloader";
            break;
        } 
        case "Dots":
        {
            _loc2 = "FBDotsPreloader";
            break;
        } 
        case "Gradient Wheel":
        {
            _loc2 = "FBGradientWheelPreloader";
            break;
        } 
        case "Gear Wheel":
        {
            _loc2 = "FBGearWheelPreloader";
            break;
        } 
        case "Line":
        {
            _loc2 = "FBLinePreloader";
            break;
        } 
        case "Animated Book":
        {
            _loc2 = "FBAnimatedBookPreloader";
            break;
        } 
        case "User Defined":
        {
            _loc2 = this._baseObject.userPreloaderId;
            break;
        } 
    } // End of switch
    this.preloader = this._baseObject.createEmptyMovieClip("overall_preloader", 20);
    if (this._baseObject.preloaderType != "None")
    {
        this.preloader = this.preloader.attachMovie(_loc2, this._const.PAGE_PRELOADER_NAME, 2);
    } // end if
    loader._x = 0;
    loader._y = 0;
};
FFlippingBookCache.prototype.__drawRect = function (mc, x, y, w, h, color, alpha)
{
    with (mc)
    {
        moveTo(x, y);
        beginFill(color, alpha);
        lineTo(x + this._pageWidth, y);
        lineTo(x + this._pageWidth, y + this._pageHeight);
        lineTo(x, y + this._pageHeight);
        lineTo(x, y);
        endFill();
    } // End of with
};
FFlippingBookCache.prototype.__drawBack = function (mc)
{
    var _loc3 = mc.createEmptyMovieClip("colorClip", 0);
    this.__drawRect(_loc3, 0, 0, this._pageWidth, this._pageHeight, this.bgColor, 100);
    if (this._baseObject.backgroundSymbol != undefined && this._baseObject.backgroundSymbol != "")
    {
        mc.attachMovie(this._baseObject.backgroundSymbol, "backgroundClip", 1);
        mc.backgroundClip._x = mc.backgroundClip._y = 0;
        mc.backgroundClip._width = this._pageWidth;
        mc.backgroundClip._height = this._pageHeight;
    } // end if
};
FFlippingBookCache.prototype.getPage = function (src, needToLoad)
{
    var _loc3 = this.__pagesLinks[src];
    if (!this.loadOnDemand)
    {
        return (_loc3);
    } // end if
    if (needToLoad && !this.__pagesLoading[src] && this.__pagesProcess[src] == 0 || !this.cachePages && this.__pagesExt[src] && this.__pagesProcess[src] == 100)
    {
        this.__pagesHolders[src]._parent._visible = false;
        this.__pagesHolders[src].loadMovie(this._stripItem(src));
        this.__pagesLoading[src] = true;
        if (!this._pagesInterval)
        {
            this.eventHolder.onEnterFrame = this.__checkPages;
        } // end if
    } // end if
    if (this.__pagesProcess[src] != 100)
    {
        this.__pagesLoaders[src]._visible = true;
        this.__pagesBacks[src]._visible = true;
    } // end if
    return (_loc3);
};
FFlippingBookCache.prototype.__playPage = function (page_mc)
{
    var _loc5 = this.__getBooleanValue(page_mc.params.playOnDemand);
    if (_loc5 != undefined)
    {
        var _loc6 = _loc5;
    }
    else
    {
        _loc6 = this._baseObject.playOnDemand;
    } // end else if
    if (!_loc6)
    {
        return;
    } // end if
    if (page_mc.params.wide == "true")
    {
        if (page_mc.isLeftPage)
        {
            var _loc3 = page_mc;
            var _loc4 = this._baseObject.getPageLink(page_mc.pageNumber + 1);
        }
        else
        {
            _loc4 = page_mc;
            _loc3 = this._baseObject.getPageLink(page_mc.pageNumber - 1);
        } // end else if
        var _loc7 = _loc3.visible && _loc4.visible;
        var _loc8 = _loc3.loaded && _loc4.loaded;
        if (_loc7 && _loc8)
        {
            _loc3.gotoAndPlay(1);
            _loc4.gotoAndPlay(1);
        }
        else
        {
            _loc3.gotoAndStop(1);
            _loc4.gotoAndStop(1);
        } // end else if
    }
    else if (page_mc.visible)
    {
        page_mc.gotoAndPlay(1);
    }
    else
    {
        page_mc.gotoAndStop(1);
    } // end else if
};
FFlippingBookCache.prototype.__getBooleanValue = function (strValue)
{
    var _loc1;
    if (typeof(strValue) == "Boolean")
    {
        return (strValue);
    } // end if
    if (strValue == "true")
    {
        _loc1 = true;
    }
    else if (strValue == "false")
    {
        _loc1 = false;
    } // end else if
    return (_loc1);
};
FFlippingBookCache.prototype.__resizeContent = function (link, w, h)
{
    var _loc14 = this._baseObject;
    var _loc2 = this.__pagesHolders[link];
    if (_loc2.media)
    {
        _loc2 = _loc2.media;
    } // end if
    var _loc10 = _loc2.originalWidth;
    var _loc11 = _loc2.originalHeight;
    var _loc33 = _loc14._originalBookWidth != undefined ? (w / _loc14._originalBookWidth) : (1);
    var _loc32 = _loc14._originalBookHeight != undefined ? (h / _loc14._originalBookHeight) : (1);
    var _loc20 = _loc14.frameWidth * _loc33;
    var _loc23 = _loc14.frameWidth * _loc32;
    var _loc18 = _loc2.params.wide == "true";
    if (_loc18)
    {
        var _loc5 = Math.round(w / 2) - _loc20;
    }
    else
    {
        _loc5 = Math.round(w / 2) - 2 * _loc20;
    } // end else if
    var _loc9 = Math.round(h) - 2 * _loc23;
    var _loc19 = _loc2.isLeftPage;
    var _loc26 = _loc14.preserveProportions;
    var _loc30 = _loc14.scaleContent && _loc2.params.scaleContent != "false" && this.__pagesProcess[link] == 100;
    var _loc29 = this.__getBooleanValue(_loc2.params.centerContent);
    var _loc16 = _loc29 != undefined ? (_loc29) : (_loc14.centerContent);
    var _loc7 = _loc20;
    var _loc13 = _loc23;
    if (_loc18 && !_loc19)
    {
        _loc7 = 0;
    } // end if
    var _loc8 = _loc10;
    var _loc6 = _loc11;
    var _loc22 = Number(_loc2.params.w);
    var _loc24 = Number(_loc2.params.h);
    var _loc31 = _loc22 != 0 && _loc24 != 0 && !isNaN(_loc22) && !isNaN(_loc24);
    var _loc4 = 1;
    var _loc3 = 1;
    if (_loc31)
    {
        _loc4 = _loc10 / _loc22;
        _loc3 = _loc11 / _loc24;
    } // end if
    var _loc12 = 0;
    if (_loc30)
    {
        if (!_loc18)
        {
            if (!_loc26)
            {
                _loc12 = 0;
            }
            else
            {
                _loc12 = 1;
            } // end else if
        }
        else if (!_loc26)
        {
            if (_loc19)
            {
                _loc12 = 2;
            }
            else
            {
                _loc12 = 3;
            } // end else if
        }
        else if (_loc19)
        {
            _loc12 = 4;
        }
        else
        {
            _loc12 = 5;
        } // end else if
    }
    else if (!_loc18)
    {
        _loc12 = 6;
    }
    else if (_loc19)
    {
        _loc12 = 7;
    }
    else
    {
        _loc12 = 8;
    } // end else if
    switch (_loc12)
    {
        case 0:
        {
            _loc8 = _loc5 * _loc4;
            _loc6 = _loc9 * _loc3;
            break;
        } 
        case 1:
        {
            var _loc28 = _loc10 / _loc5 / _loc4;
            var _loc27 = _loc11 / _loc9 / _loc3;
            var _loc25 = _loc28 > _loc27 ? (_loc28) : (_loc27);
            _loc8 = _loc10 / _loc25;
            _loc6 = _loc11 / _loc25;
            if (_loc16)
            {
                _loc7 = _loc7 + (_loc5 / 2 - _loc8 / 2 / _loc4);
                _loc13 = _loc13 + (_loc9 / 2 - _loc6 / 2 / _loc3);
            } // end if
            break;
        } 
        case 2:
        {
            _loc8 = 2 * _loc5 * _loc4;
            _loc6 = _loc9 * _loc3;
            break;
        } 
        case 3:
        {
            _loc8 = 2 * _loc5 * _loc4;
            _loc6 = _loc9 * _loc3;
            _loc7 = _loc7 - _loc5;
            break;
        } 
        case 4:
        {
            _loc28 = _loc10 / 2 / _loc5 / _loc4;
            _loc27 = _loc11 / _loc9 / _loc3;
            _loc25 = _loc28 > _loc27 ? (_loc28) : (_loc27);
            _loc8 = _loc10 / _loc25;
            _loc6 = _loc11 / _loc25;
            if (_loc16)
            {
                _loc7 = _loc7 + (_loc5 - _loc8 / 2 / _loc4);
                _loc13 = _loc13 + (_loc9 / 2 - _loc6 / 2 / _loc3);
            } // end if
            break;
        } 
        case 5:
        {
            _loc28 = _loc10 / 2 / _loc5 / _loc4;
            _loc27 = _loc11 / _loc9 / _loc3;
            _loc25 = _loc28 > _loc27 ? (_loc28) : (_loc27);
            _loc8 = _loc10 / _loc25;
            _loc6 = _loc11 / _loc25;
            if (_loc16)
            {
                _loc7 = _loc7 + -_loc8 / 2 / _loc4;
                _loc13 = _loc13 + (_loc9 / 2 - _loc6 / 2 / _loc3);
            }
            else
            {
                _loc7 = _loc7 + -_loc5;
            } // end else if
            break;
        } 
        case 6:
        {
            if (_loc16)
            {
                _loc7 = _loc7 + (_loc5 / 2 - _loc10 / 2 / _loc4);
                _loc13 = _loc13 + (_loc9 / 2 - _loc11 / 2 / _loc3);
            } // end if
            break;
        } 
        case 7:
        {
            if (_loc16)
            {
                _loc7 = _loc7 + (_loc5 - _loc10 / 2 / _loc4);
                _loc13 = _loc13 + (_loc9 / 2 - _loc11 / 2 / _loc3);
            } // end if
            break;
        } 
        case 8:
        {
            if (_loc16)
            {
                _loc7 = _loc7 + -_loc10 / 2 / _loc4;
                _loc13 = _loc13 + (_loc9 / 2 - _loc11 / 2 / _loc3);
            }
            else
            {
                _loc7 = _loc7 + -_loc5;
            } // end else if
            break;
        } 
    } // End of switch
    _loc2._width = _loc8;
    _loc2._height = _loc6;
    _loc2._x = _loc7;
    _loc2._y = _loc13;
    _loc2._parent.bitmapClip._width = _loc8;
    _loc2._parent.bitmapClip._height = _loc6;
    _loc2._parent.bitmapClip._x = _loc7;
    _loc2._parent.bitmapClip._y = _loc13;
    this.__drawFrame(link, _loc20, _loc23);
    this.__updateContentMask(link, _loc7, _loc13, _loc8 / _loc4, _loc6 / _loc3);
    this.__updatePageShadows(link, w, h);
    this.__updatePageBackground(link, w, h);
    this.__updatePagePreloader(link, w, h);
    this.__updatePageParameters(link, w, h);
};
FFlippingBookCache.prototype.__updatePageLayout = function ()
{
    var _loc3 = this._baseObject._bookWidth;
    var _loc2 = this._baseObject._bookHeight;
    for (var _loc4 in this.__pagesHolders)
    {
        if (this.__pagesHolders[_loc4])
        {
            this.__resizeContent(_loc4, _loc3, _loc2);
        } // end if
    } // end of for...in
};
FFlippingBookCache.prototype.__updatePageParameters = function (link, w, h)
{
    var _loc1 = holders[src];
    if (_loc1.media != undefined)
    {
        _loc1 = pageClipc.media;
    } // end if
    _loc1.width = w / 2;
    _loc1.height = h;
};
FFlippingBookCache.prototype.__updatePagePreloader = function (link, w, h)
{
    var _loc2 = this.__pagesLoaders[link];
    var _loc4 = w / 4;
    var _loc3 = h / 2;
    _loc2._x = _loc4;
    _loc2._y = _loc3;
};
FFlippingBookCache.prototype.__updatePageBackground = function (link, w, h)
{
    var _loc2 = this.__pagesBacks[link];
    _loc2._width = w / 2;
    _loc2._height = h;
};
FFlippingBookCache.prototype.__updatePageShadows = function (link, w, h)
{
    var _loc2 = this.__pagesShadows1[link];
    var _loc3 = this.__pagesShadows2[link];
    var _loc4 = w - _loc2._initialBookWidth;
    _loc2._x = _loc4 / 2;
    _loc2._height = h;
    _loc3._height = h;
};
FFlippingBookCache.prototype.__updateContentMask = function (link, x, y, w, h)
{
    var _loc2 = this.__pagesMasks[link];
    if (x < 0)
    {
        x = 0;
    } // end if
    if (y < 0)
    {
        y = 0;
    } // end if
    if (x + w > this._pageWidth)
    {
        w = this._pageWidth - x;
    } // end if
    if (y + h > this._pageHeight)
    {
        h = this._pageHeight - y;
    } // end if
    if (_loc2)
    {
        _loc2._x = x;
        _loc2._y = y;
        _loc2._width = w;
        _loc2._height = h;
    } // end if
    this.__pagesHolders[link]._parent.setMask(_loc2);
};
FFlippingBookCache.prototype.__freezeLoadedContent = function ()
{
    if (this._view._bookState != this._const.UNACTIVE_STATE)
    {
        this.__freezeContent();
    } // end if
};
FFlippingBookCache.prototype.__freezeContent = function ()
{
    var _loc12 = this._baseObject;
    for (var _loc4 = 1; _loc4 <= 4; ++_loc4)
    {
        var _loc2 = this._view["__page0" + _loc4].parent.parent.holder;
        if (_loc2.media != undefined)
        {
            _loc2 = _loc2.media;
        } // end if
        var _loc6 = this.__getBooleanValue(_loc2.params.freezeOnFlip);
        if (_loc6 != undefined)
        {
            var _loc10 = _loc6;
        }
        else
        {
            _loc10 = this._baseObject.globalFreezeOnFlip;
        } // end else if
        if (_loc10 && _loc2.loaded && !_loc2.frozen)
        {
            var _loc5 = _loc2._parent;
            var _loc3 = new flash.display.BitmapData(this._pageWidth, this._pageHeight, true, 16711680);
            if (_loc3 != undefined)
            {
                _loc2.freezeDataObject = _loc3;
                var _loc9 = _loc5;
                var _loc8 = _loc5.transform.matrix;
                _loc3.draw(_loc9, _loc8);
                var _loc7 = _loc5.getNextHighestDepth();
                _loc2.__freezeDepth = _loc7;
                var _loc11 = _loc5.createEmptyMovieClip("freezeBitmap", _loc7);
                _loc11.attachBitmap(_loc3, 0, "auto", true);
                _loc2._visible = false;
                this.__frozenPages[_loc4] = _loc2;
                _loc2.frozen = true;
            } // end if
        } // end if
    } // end of for
};
FFlippingBookCache.prototype.__restoreFrozenPages = function ()
{
    for (var _loc3 = 0; _loc3 < this.__frozenPages.length; ++_loc3)
    {
        var _loc2 = this.__frozenPages[_loc3];
        if (_loc2 == undefined)
        {
            continue;
        } // end if
        _loc2._parent.getInstanceAtDepth(_loc2.__freezeDepth).removeMovieClip();
        _loc2.freezeDataObject.dispose();
        _loc2._visible = true;
        _loc2.frozen = false;
        if (!_loc2.isExternal)
        {
            _loc2._parent._xscale = _loc2.__tsx;
            _loc2._parent._yscale = _loc2.__tsy;
            _loc2._width = _loc2.__tw;
            _loc2._height = _loc2.__th;
        } // end if
    } // end of for
};
FFlippingBookCache.prototype.__updateSmooth = function ()
{
    for (var _loc2 in this.__pagesHolders)
    {
        if (this.__pagesProcess[_loc2] == 100)
        {
            this.__smoothContent(_loc2);
            this.__resizeContent(_loc2, this._baseObject._bookWidth, this._baseObject._bookHeight);
        } // end if
    } // end of for...in
};
FFlippingBookCache.prototype.__smoothContent = function (link)
{
    var _loc2 = this.__pagesHolders[link];
    if (_loc2.media)
    {
        _loc2 = _loc2.media;
    } // end if
    var _loc4 = this.__getBooleanValue(_loc2.params.smooth);
    if (_loc4 != undefined)
    {
        var _loc6 = _loc4;
    }
    else
    {
        _loc6 = this._baseObject.globalSmooth;
    } // end else if
    if (_loc2.bitmapDataObject != undefined)
    {
        _loc2._parent.bitmapClip.removeMovieClip();
        _loc2.bitmapDataObject.dispose();
    } // end if
    if (_loc6)
    {
        var _loc3 = new flash.display.BitmapData(_loc2.originalWidth, _loc2.originalHeight, true, 16711680);
        if (_loc3 != undefined)
        {
            _loc2.bitmapDataObject = _loc3;
            _loc3.draw(_loc2);
            var _loc5 = _loc2._parent.createEmptyMovieClip("bitmapClip", _loc2._parent.getNextHighestDepth());
            _loc5.attachBitmap(_loc3, _loc5.getNextHighestDepth(), "auto", true);
        } // end if
    } // end if
};
FFlippingBookCache.prototype.__positionContent = function (src)
{
    var _loc3 = 1;
    if (this.__pagesHolders[src].params._w != undefined)
    {
        _loc3 = Number(this.__pagesHolders[src].params._w) / this.__pagesHolders[src]._width;
        this.__pagesHolders[src].params._kw = this._pageWidth / Number(this.__pagesHolders[src].params._w);
        this.__pagesHolders[src].params._sw = this._pageWidth / _loc3 / this.__pagesHolders[src]._width;
    } // end if
    var _loc4 = 1;
    if (this.__pagesHolders[src].params._h != undefined)
    {
        _loc4 = Number(this.__pagesHolders[src].params._h) / this.__pagesHolders[src]._height;
        this.__pagesHolders[src].params._kh = this._pageHeight / Number(this.__pagesHolders[src].params._h);
        this.__pagesHolders[src].params._sh = this._pageHeight / _loc4 / this.__pagesHolders[src]._height;
    } // end if
    var _loc9 = this.__pagesHolders[src]._width;
    var _loc8 = this.__pagesHolders[src]._height;
    this._originalPageWidth = this._pageWidth;
    this._originalPageHeight = this._pageHeight;
    if (this._baseObject.scaleContent && this.__pagesHolders[src].params.scaleContent != "false")
    {
        if (!this._baseObject.preserveProportions)
        {
            this.__pagesHolders[src]._width = this._pageWidth / _loc3;
            this.__pagesHolders[src]._height = this._pageHeight / _loc4;
            if (this.__pagesHolders[src].params.wide == "true")
            {
                this.__pagesHolders[src]._width = this._pageWidth * 2 / _loc3;
                this.__pagesHolders[src]._height = this._pageHeight / _loc4;
                if (this.__pagesHolders[src].isRightPage)
                {
                    this.__pagesHolders[src]._x = -this._pageWidth;
                } // end if
            } // end if
        }
        else
        {
            var _loc7 = this.__pagesHolders[src]._width / this._pageWidth * _loc3;
            var _loc6 = this.__pagesHolders[src]._height / this._pageHeight * _loc4;
            var _loc5 = _loc7 > _loc6 ? (_loc7) : (_loc6);
            this.__pagesHolders[src]._width = Math.round(this.__pagesHolders[src]._width / _loc5);
            this.__pagesHolders[src]._height = Math.round(this.__pagesHolders[src]._height / _loc5);
            this.__pagesHolders[src]._x = Math.round(this._pageWidth / 2) - Math.round(this.__pagesHolders[src]._width / 2 * _loc3);
            this.__pagesHolders[src]._y = Math.round(this._pageHeight / 2) - Math.round(this.__pagesHolders[src]._height / 2 * _loc4);
            if (this.__pagesHolders[src].params.wide == "true")
            {
                _loc7 = this.__pagesHolders[src]._width / (2 * this._pageWidth / _loc3);
                _loc6 = this.__pagesHolders[src]._height / this._pageHeight * _loc4;
                _loc5 = _loc7 > _loc6 ? (_loc7) : (_loc6);
                this.__pagesHolders[src]._width = Math.round(this.__pagesHolders[src]._width / _loc5);
                this.__pagesHolders[src]._height = Math.round(this.__pagesHolders[src]._height / _loc5);
                if (this.__pagesHolders[src].isLeftPage)
                {
                    this.__pagesHolders[src]._x = this._pageWidth - Math.round(this.__pagesHolders[src]._width / 2 * _loc3);
                }
                else
                {
                    this.__pagesHolders[src]._x = -Math.round(this.__pagesHolders[src]._width / 2 * _loc3);
                } // end else if
                this.__pagesHolders[src]._y = Math.round(this._pageHeight / 2) - Math.round(this.__pagesHolders[src]._height / 2 * _loc4);
            } // end if
        } // end else if
    }
    else
    {
        if (this.__pagesHolders[src]._width != this._pageWidth)
        {
            if (this.__pagesHolders[src].params.wide == "true")
            {
                if (this.__pagesHolders[src].isLeftPage)
                {
                    this.__pagesHolders[src]._x = Math.round(this._pageWidth - this.__pagesHolders[src]._width / 2 * _loc3);
                }
                else
                {
                    this.__pagesHolders[src]._x = Math.round(-this.__pagesHolders[src]._width / 2 * _loc3);
                } // end else if
                this.__playPage(this.__pagesHolders[src]);
            }
            else
            {
                this.__pagesHolders[src]._x = Math.round(this._pageWidth / 2 - this.__pagesHolders[src]._width / 2 * _loc3);
            } // end else if
            this.__pagesHolders[src].__wasCenteredX = true;
        } // end if
        if (this.__pagesHolders[src]._height != this._pageHeight)
        {
            this.__pagesHolders[src]._y = Math.round(this._pageHeight / 2 - this.__pagesHolders[src]._height / 2 * _loc4);
            this.__pagesHolders[src].__wasCenteredY = true;
        } // end if
    } // end else if
    this.__pagesHolders[src]._ws = this.__pagesHolders[src]._width / _loc9;
    this.__pagesHolders[src]._hs = this.__pagesHolders[src]._height / _loc8;
};
FFlippingBookCache.prototype.__checkPages = function ()
{
    var _loc2 = this.obj;
    for (var _loc9 in _loc2.__pagesLoading)
    {
        if (_loc2.__pagesLoading[_loc9])
        {
            var _loc4 = _loc2.__pagesHolders[_loc9].getBytesTotal();
            var _loc5 = _loc2.__pagesHolders[_loc9].getBytesLoaded();
            var _loc3 = _loc5 / _loc4 * 100;
            if (isNaN(_loc3))
            {
                _loc3 = 0;
            } // end if
            _loc2.__pagesLoaders[_loc9].setProgress(_loc3);
            _loc2.__pagesProcess[_loc9] = _loc3;
            _loc2.__pagesHolders[_loc9].progress = _loc3;
            if (_loc2.__checkCompleted[_loc9])
            {
                _loc2._baseObject._setPageParameters(_loc2.__pagesHolders[_loc9], _loc9, true);
                if (_loc2._baseObject._showUnderlyingPages)
                {
                    _loc2.__pagesBacks[_loc9]._visible = false;
                } // end if
                _loc2._baseObject._setVisible();
                _loc2.__pagesLoaders[_loc9]._visible = false;
                _loc2.__pagesProcess[_loc9] = 100;
                _loc2.__pagesHolders[_loc9].originalWidth = _loc2.__pagesHolders[_loc9]._width;
                _loc2.__pagesHolders[_loc9].originalHeight = _loc2.__pagesHolders[_loc9]._height;
                _loc2.__smoothContent(_loc9);
                _loc2.__resizeContent(_loc9, _loc2._pageWidth * 2, _loc2._pageHeight);
                _loc2.__playPage(_loc2.__pagesHolders[_loc9]);
                _loc2.__pagesHolders[_loc9]._parent._visible = true;
                _loc2.__pagesLoading[_loc9] = false;
                if (_loc2._model == undefined)
                {
                    _loc2._model = _loc2._broker.objects[_loc2._const.MODEL_OBJ_ID];
                } // end if
                _loc2._baseObject.onPageLoad(_loc2._stripItem(_loc9), _loc2.__pagesHolders[_loc9].pageNumber);
                _loc2._baseObject.dispatchEvent("onPageLoad", {target: _loc2._baseObject, URL: _loc2._stripItem(_loc9), pageNumber: _loc2.__pagesHolders[_loc9].pageNumber});
                _loc2.__freezeLoadedContent();
                _loc2.__automaticFlipCorner();
                if (--this.loadingQueueLen == 0)
                {
                    delete _loc2.eventHolder.onEnterFrame;
                } // end if
                _loc2.loadPage();
            } // end if
            if (_loc4 > 0 && _loc5 >= _loc4 && _loc2.__pagesHolders[_loc9]._width > 0)
            {
                _loc2.__checkCompleted[_loc9] = true;
            } // end if
        } // end if
    } // end of for...in
};
FFlippingBookCache.prototype.__automaticFlipCorner = function ()
{
    var _loc2 = this._baseObject;
    var _loc3 = _loc2.flipCornerPosition.indexOf("left") != -1 ? ("left") : ("right");
    var _loc5 = _loc2.flipCornerPosition;
    if (_loc3 == "left" && _loc2.leftPageNumber == undefined)
    {
        var _loc4 = _loc2.flipCornerPosition.substr(0, _loc2.flipCornerPosition.indexOf("-"));
        _loc2.flipCornerPosition = _loc4 + "-right";
    } // end if
    if (_loc3 == "right" && _loc2.rightPageNumber == undefined)
    {
        _loc4 = _loc2.flipCornerPosition.substr(0, _loc2.flipCornerPosition.indexOf("-"));
        _loc2.flipCornerPosition = _loc4 + "-left";
    } // end if
    switch (_loc2.flipCornerStyle)
    {
        case "first page only":
        {
            if (!_loc2.flipCornerFirstTime && (_loc2.leftPageNumber == _loc2.firstPage || _loc2.rightPageNumber == _loc2.firstPage))
            {
                if (_loc2.isPageLoaded(_loc2.firstPage) && this._view._bookState == this._const.UNACTIVE_STATE)
                {
                    _loc2.flipCorner();
                    _loc2.flipCornerFirstTime = true;
                } // end if
            } // end if
            break;
        } 
        case "each page":
        {
            if (this._view._bookState == this._const.UNACTIVE_STATE)
            {
                _loc2.flipCorner();
            } // end if
            break;
        } 
    } // End of switch
    _loc2.flipCornerPosition = _loc5;
};
FFlippingBookCache.prototype.sortPagesForLoad = function (originalArray, leftPage)
{
    var _loc3 = new Array();
    var _loc7 = new Array();
    for (var _loc2 = 0; _loc2 < originalArray.length; ++_loc2)
    {
        _loc3[_loc2] = {pageNumber: originalArray[_loc2], weight: this.getPageNumberWeight(originalArray[_loc2], leftPage)};
    } // end of for
    _loc3 = _loc3.sortOn("weight");
    for (var _loc2 = 0; _loc2 < _loc3.length; ++_loc2)
    {
        _loc7[_loc2] = _loc3[_loc2].pageNumber;
    } // end of for
    return (_loc7);
};
FFlippingBookCache.prototype.getPageNumberWeight = function (i, leftPage)
{
    if (i <= leftPage)
    {
        return (Math.abs(i - leftPage) * 2);
    }
    else
    {
        return (Math.abs(i - leftPage) * 2 - 1);
    } // end else if
};
FFlippingBookCache.prototype.processCache = function (pageNum)
{
    if (!this._baseObject.loadOnDemand)
    {
        return;
    } // end if
    var _loc3 = this._baseObject.cacheSize;
    var _loc4 = this._baseObject.totalPages;
    this.pagesForLoad = this.getPagesForLoad(pageNum, _loc3, _loc4);
    this.pagesForLoad = this.sortPagesForLoad(this.pagesForLoad, pageNum);
    this.pagesForUnload = this.getPagesForUnload(pageNum, _loc3, _loc4);
    for (var _loc2 = 0; _loc2 < this.pagesForUnload.length; ++_loc2)
    {
        this.unloadPage(this.pagesForUnload[_loc2]);
    } // end of for
    if (this.pagesForLoad.length > 0)
    {
        this.loadPage();
    } // end if
};
FFlippingBookCache.prototype.mustBeLoaded = function (i, size, maxPage, pageNum)
{
    if (pageNum == undefined)
    {
        pageNum = -1;
    } // end if
    var _loc2 = pageNum - Math.floor(size / 2) + 1;
    if (_loc2 < 0)
    {
        _loc2 = 0;
    } // end if
    var _loc1 = pageNum + Math.ceil(size / 2);
    if (_loc1 > maxPage)
    {
        _loc1 = maxPage;
    } // end if
    return (i >= _loc2 && i <= _loc1);
};
FFlippingBookCache.prototype.getPagesForLoad = function (pageNum, size, maxPage)
{
    var _loc9 = new Array();
    if (pageNum == undefined)
    {
        pageNum = -1;
    } // end if
    var _loc8 = pageNum - Math.floor(size / 2) + 1;
    if (_loc8 < 0)
    {
        _loc8 = 0;
    } // end if
    var _loc7 = pageNum + Math.ceil(size / 2);
    if (_loc7 > maxPage)
    {
        _loc7 = maxPage;
    } // end if
    for (var _loc2 = _loc8; _loc2 <= _loc7; ++_loc2)
    {
        var _loc3 = this._baseObject.pagesSet[_loc2];
        var _loc5 = this.__pagesExt[_loc3];
        var _loc4 = this.__pagesLoading[_loc3];
        var _loc6 = this.__pagesProcess[_loc3] == 100;
        if (_loc5 && !_loc4 && !_loc6)
        {
            _loc9.push(_loc2);
        } // end if
    } // end of for
    return (_loc9);
};
FFlippingBookCache.prototype.getPagesForUnload = function (pageNum, size, maxPage)
{
    var _loc11 = new Array();
    for (var _loc2 = 0; _loc2 < maxPage; ++_loc2)
    {
        var _loc3 = this._baseObject.pagesSet[_loc2];
        var _loc5 = this.__pagesExt[_loc3];
        var _loc4 = this.__pagesLoading[_loc3];
        var _loc6 = this.__pagesProcess[_loc3] == 100;
        var _loc8 = this.mustBeLoaded(_loc2, size, maxPage, pageNum);
        if (this._baseObject.allowPagesUnload && _loc5 && (_loc6 || _loc4) && !this.mustBeLoaded(_loc2, size, maxPage, pageNum))
        {
            _loc11.push(_loc2);
        } // end if
    } // end of for
    return (_loc11);
};
FFlippingBookCache.prototype.loadPage = function ()
{
    if (this.pagesForLoad.length > 0)
    {
        var _loc3 = this.pagesForLoad[0];
        this.pagesForLoad = this.pagesForLoad.splice(1);
        var _loc2 = this._baseObject.pagesSet[_loc3];
        this.getPage(_loc2, true);
        this.__pagesLoading[_loc2] = true;
        this.__checkCompleted[_loc2] = false;
        this.loadingQueueLen = this.loadingQueueLen + 1;
        this.eventHolder.onEnterFrame = this.__checkPages;
    } // end if
};
FFlippingBookCache.prototype.unloadPage = function (pageNum)
{
    var _loc3 = this._baseObject.pagesSet[pageNum];
    this.__pagesProcess[_loc3] = 0;
    this.__pagesLoading[_loc3] = false;
    this.__checkCompleted[_loc3] = 0;
    this.__pagesHolders[_loc3].loaded = false;
    this.__pagesLoaders[_loc3].setProgress(0);
    if (this.__pagesHolders[_loc3].bitmapDataObject != undefined)
    {
        this.__pagesHolders[_loc3].bitmapDataObject.dispose();
    } // end if
    var _loc2 = this.__pagesHolders[_loc3];
    if (_loc2.frozen)
    {
        _loc2._parent.getInstanceAtDepth(_loc2.__freezeDepth).removeMovieClip();
        _loc2.freezeDataObject.dispose();
        _loc2._visible = true;
        _loc2.frozen = false;
        if (!_loc2.isExternal)
        {
            _loc2._parent._xscale = _loc2.__tsx;
            _loc2._parent._yscale = _loc2.__tsy;
            _loc2._width = _loc2.__tw;
            _loc2._height = _loc2.__th;
        } // end if
    } // end if
    this.__pagesHolders[_loc3]._xscale = 100;
    this.__pagesHolders[_loc3]._yscale = 100;
    unloadMovie(this.__pagesHolders[_loc3]);
    this._baseObject.onPageUnload(pageNum);
    this._baseObject.dispatchEvent("onPageUnload", {target: this._baseObject, pageNumber: pageNum});
};
FFlippingBookCache.prototype.setPage = function (page, src, i, pageNum, dir, isPutPage)
{
    if (this._view == undefined)
    {
        this._view = this._broker.objects[this._const.VIEW_OBJ_ID];
    } // end if
    var _loc3 = this.getPage(src, false);
    var _loc4 = page;
    this.__pagesDepths[i] = _loc3.getDepth();
    _loc4.swapDepths(_loc3);
    _loc3._x = _loc4._x;
    _loc3._y = _loc4._y;
    _loc3._rotation = _loc4._rotation;
    _loc4._visible = false;
    if (i < 3)
    {
        _loc3._visible = true;
    } // end if
    if ((i == 1 || i == 2) && (src == this._const.TRANSPARENT_PAGE1 || src == this._const.TRANSPARENT_PAGE2))
    {
        this._view._transpPage = i;
    } // end if
    if (i == 4 && (src == this._const.TRANSPARENT_PAGE1 || src == this._const.TRANSPARENT_PAGE2))
    {
        this._view._transpPage04 = true;
    }
    else
    {
        this._view._transpPage04 = false;
    } // end else if
    switch (i)
    {
        case 1:
        {
            this._view.__page01 = _loc3;
            this.__pagesShadows1[src]._visible = true;
            this.__pagesShadows2[src]._visible = false;
            break;
        } 
        case 2:
        {
            this._view.__page02 = _loc3;
            this.__pagesShadows1[src]._visible = false;
            this.__pagesShadows2[src]._visible = true;
            break;
        } 
        case 3:
        {
            this._view.__page03 = _loc3;
            if (this._view.__ox > 0)
            {
                this.__pagesShadows1[src]._visible = true;
                this.__pagesShadows2[src]._visible = false;
            }
            else
            {
                this.__pagesShadows1[src]._visible = false;
                this.__pagesShadows2[src]._visible = true;
            } // end else if
            var _loc6 = _loc3.parent.parent.holder.media;
            if (_loc6 == undefined)
            {
                _loc6 = _loc3.parent.parent.holder;
            } // end if
            var _loc8 = this.__getBooleanValue(_loc6.params.dark);
            if (_loc8 != undefined)
            {
                var _loc9 = _loc8;
            }
            else
            {
                _loc9 = this._baseObject.globalDark;
            } // end else if
            if (_loc9)
            {
                this._view.__shadow03.light._visible = true;
                this._view.__shadow03.dark._visible = false;
            }
            else
            {
                this._view.__shadow03.light._visible = false;
                this._view.__shadow03.dark._visible = true;
            } // end else if
            break;
        } 
        case 4:
        {
            this._view.__page04 = _loc3;
            if (this._view.__ox < 0)
            {
                this.__pagesShadows1[src]._visible = true;
                this.__pagesShadows2[src]._visible = false;
            }
            else
            {
                this.__pagesShadows1[src]._visible = false;
                this.__pagesShadows2[src]._visible = true;
            } // end else if
            break;
        } 
    } // End of switch
    if (this.__isRigidPage(this.__pagesHolders[src]) && this.__pagesHolders[src].params._rigidNeighbor)
    {
        var _loc7 = this.__pagesShadows1[src]._parent;
        _loc7[this._const.PAGE_STATIC_SHADOW1_NAME]._visible = false;
        _loc7[this._const.PAGE_STATIC_SHADOW2_NAME]._visible = false;
    } // end if
};
FFlippingBookCache.prototype.setSize = function (w, h)
{
    this._pageWidth = Math.round(w / 2);
    this._pageHeight = h;
    for (link in this.__pagesLinks)
    {
        this.__resizeContent(link, w, h);
    } // end of for...in
    this.showUnderlyingPages();
};
FFlippingBookCache.prototype.restoreDirectGotoPages = function ()
{
    this._view.__page01.setMask(null);
    this._view.__page02.setMask(null);
    this._view.__mask12.clear();
    this._view.__page01._visible = false;
    this._view.__page02._visible = false;
    this._view.__page01.swapDepths(this.__pagesDepths[1]);
    this._view.__page02.swapDepths(this.__pagesDepths[2]);
    this._view.__page01 = this._view.tmp01;
    this._view.__page02 = this._view.tmp02;
    this._view._transpPage = 0;
};
FFlippingBookCache.prototype.showUnderlyingPages = function (direction, _pageNumber)
{
    var _loc2 = this._baseObject;
    if (!_loc2._showUnderlyingPages)
    {
        return;
    } // end if
    var _loc3 = _loc2.leftPageNumber;
    var _loc4 = _loc2.rightPageNumber;
    var _loc8 = _loc2.totalPages;
    var _loc7 = _loc2._view._bookState == _loc2._constants.GOTOPAGE_STATE;
    if (_loc7 && direction == undefined)
    {
        return;
    } // end if
    if (!this.misNaN(this.lv_n) && this.lv_n != _loc3 && !(_loc7 && this.lv_n == _loc3 - 2))
    {
        var _loc5 = _loc2.getPageLink(this.lv_n);
        if (_loc5._parent.media != undefined)
        {
            _loc5 = _loc5._parent;
        } // end if
        var _loc6 = _loc5._parent._parent._parent;
        _loc6._visible = false;
    } // end if
    if (!this.misNaN(this.rv_n) && this.rv_n != _loc4 && !(_loc7 && this.rv_n == _loc4 + 2))
    {
        _loc5 = _loc2.getPageLink(this.rv_n);
        if (_loc5._parent.media != undefined)
        {
            _loc5 = _loc5._parent;
        } // end if
        _loc6 = _loc5._parent._parent._parent;
        _loc6._visible = false;
    } // end if
    this.lv_n = this.rv_n = undefined;
    if (_loc3 != undefined && _loc3 - 2 >= 0)
    {
        this.lv_n = _loc3 - 2;
    } // end if
    if (_loc4 != undefined && _loc3 + 2 <= _loc8 - 1)
    {
        this.rv_n = _loc4 + 2;
    } // end if
    if (direction == "left")
    {
        this.lv_n = _pageNumber;
    }
    else if (direction == "right")
    {
        this.rv_n = _pageNumber;
    } // end else if
    if (!this.misNaN(this.lv_n))
    {
        _loc5 = _loc2.getPageLink(this.lv_n);
        if (_loc5._parent.media != undefined)
        {
            _loc5 = _loc5._parent;
        } // end if
        _loc6 = _loc5._parent._parent._parent;
        _loc6._visible = true;
        _loc6._x = -this._pageWidth;
        _loc6._y = -this._pageHeight / 2;
        _loc6.shadows.STATICSH2._visible = false;
    } // end if
    if (!this.misNaN(this.rv_n))
    {
        _loc5 = _loc2.getPageLink(this.rv_n);
        if (_loc5._parent.media != undefined)
        {
            _loc5 = _loc5._parent;
        } // end if
        _loc6 = _loc5._parent._parent._parent;
        _loc6._visible = true;
        _loc6._x = 0;
        _loc6._y = -this._pageHeight / 2;
        _loc6.shadows.STATICSH1._visible = false;
    } // end if
};
FFlippingBookCache.prototype.misNaN = function (val)
{
    if (isNaN(val) || val == undefined)
    {
        return (true);
    }
    else
    {
        return (false);
    } // end else if
};
FFlippingBookCache.prototype.restorePages = function ()
{
    if (this._view.__hardCoverFlip)
    {
        var _loc3 = new flash.geom.Transform(this._view.__page01);
        var _loc2 = _loc3.matrix;
        _loc2.identity();
        _loc3.matrix = _loc2;
        this._view.__page01._xscale = this._view.__page01._yscale = 100;
        this._view.__page01.parent._xscale = this._view.__page01.parent._yscale = 100;
        this._view.__page01._rotation = 0;
        this._view.__page01.parent._rotation = 0;
        this._view.__page01._y = -this._view._pageHeight / 2;
        _loc3 = new flash.geom.Transform(this._view.__page02);
        _loc2 = _loc3.matrix;
        _loc2.identity();
        _loc3.matrix = _loc2;
        this._view.highlightPage(this._view.__page01, 90);
        this._view.__page02._xscale = this._view.__page02._yscale = 100;
        this._view.__page02.parent._xscale = this._view.__page02.parent._yscale = 100;
        this._view.__page02._rotation = 0;
        this._view.__page02.parent._rotation = 0;
        this._view.__page02._y = -this._view._pageHeight / 2;
        _loc3 = new flash.geom.Transform(this._view.__page03);
        _loc2 = _loc3.matrix;
        _loc2.identity();
        _loc3.matrix = _loc2;
        this._view.highlightPage(this._view.__page02, 90);
        this._view.__page03._xscale = this._view.__page03._yscale = 100;
        this._view.__page03.parent._xscale = this._view.__page03.parent._yscale = 100;
        this._view.__page03._rotation = 0;
        this._view.__page03.parent._rotation = 0;
        _loc3 = new flash.geom.Transform(this._view.__page04);
        _loc2 = _loc3.matrix;
        _loc2.identity();
        _loc3.matrix = _loc2;
        this._view.highlightPage(this._view.__page03, 90);
        this._view.__page04._xscale = this._view.__page04._yscale = 100;
        this._view.__page04.parent._xscale = this._view.__page04._yscale = 100;
        this._view.__page04._rotation = 0;
        this._view.__page04.parent._rotation = 0;
        this._view.highlightPage(this._view.__page04, 90);
        this._view.__hardCoverShadow.pageShadowClip.clear();
        this._view.__hardCoverShadow.pageShadowClip.filters = [];
    } // end if
    this._view.__page01.setMask(null);
    this._view.__page02.setMask(null);
    this._view.__page03.setMask(null);
    this._view.__page04.setMask(null);
    this._view._drawShadow03();
    this._view.__mask03.clear();
    this._view.__mask12.clear();
    this._view.__page01._visible = false;
    this._view.__page02._visible = false;
    this._view.__page01.swapDepths(this.__pagesDepths[1]);
    this._view.__page02.swapDepths(this.__pagesDepths[2]);
    this._view.__page03.swapDepths(this.__pagesDepths[3]);
    this._view.__page04.swapDepths(this.__pagesDepths[4]);
    this._view.__page03._x = -this._view._pageWidth;
    this._view.__page03._y = -this._view._pageHeight / 2;
    this._view.__page03._rotation = 0;
    this._view.__page04._x = 0;
    this._view.__page04._y = -this._view._pageHeight / 2;
    this._view.__page04._rotation = 0;
    this._view.__page01 = this._view.tmp01;
    this._view.__page02 = this._view.tmp02;
    this._view.__page03 = this._view.tmp03;
    this._view.__page04 = this._view.tmp04;
    this._view._transpPage = 0;
};
FFlippingBookCache.prototype.restoreWorkPages = function (isSetSize)
{
    if (this._view.__hardCoverFlip)
    {
        this._view.__page01._x = -this._view._pageWidth;
        this._view.__page03._x = -this._view._pageWidth;
        this._view.__page02._x = 0;
        this._view.__page04._x = 0;
        this._view.__page01._xscale = this._view.__page01._yscale = 100;
        this._view.__page01.parent._xscale = this._view.__page01.parent._yscale = 100;
        this._view.__page01._rotation = 0;
        this._view.__page01.parent._rotation = 0;
        this._view.__page01._y = -this._view._pageHeight / 2;
        this._view.highlightPage(this._view.__page01, 90);
        this._view.__page02._xscale = this._view.__page02._yscale = 100;
        this._view.__page02.parent._xscale = this._view.__page02.parent._yscale = 100;
        this._view.__page02._rotation = 0;
        this._view.__page02.parent._rotation = 0;
        this._view.__page02._y = -this._view._pageHeight / 2;
        this._view.highlightPage(this._view.__page02, 90);
        this._view.__page03._xscale = this._view.__page03._yscale = 100;
        this._view.__page03.parent._xscale = this._view.__page03.parent._yscale = 100;
        this._view.__page03._rotation = 0;
        this._view.__page03.parent._rotation = 0;
        this._view.highlightPage(this._view.__page03, 90);
        this._view.__page04._xscale = this._view.__page04._yscale = 100;
        this._view.__page04.parent._xscale = this._view.__page04._yscale = 100;
        this._view.__page04._rotation = 0;
        this._view.__page04.parent._rotation = 0;
        this._view.highlightPage(this._view.__page04, 90);
        this._view.__hardCoverShadow.pageShadowClip.clear();
        this._view.__hardCoverShadow.pageShadowClip.filters = [];
        this._baseObject.hardCoverVerticalBorder.clear();
        this._baseObject.hardCoverHorizontalBorder.clear();
    } // end if
    this._view.__page01.setMask(null);
    this._view.__page02.setMask(null);
    this._view.__mask03.clear();
    this._view.__mask12.clear();
    this._view._drawShadow12();
    this._view._drawShadow03();
    this._view._drawShadow04();
    this._view.__page03._visible = false;
    this._view.__page04._visible = false;
    this._view.__page03.swapDepths(this.__pagesDepths[3]);
    this._view.__page04.swapDepths(this.__pagesDepths[4]);
    this._view.__page03._x = -this._view._pageWidth;
    this._view.__page03._y = -this._view._pageHeight / 2;
    this._view.__page03._rotation = 0;
    this._view.__page04._x = 0;
    this._view.__page04._y = -this._view._pageHeight / 2;
    this._view.__page04._rotation = 0;
    this._view.__page03 = this._view.tmp03;
    this._view.__page04 = this._view.tmp04;
    this.showUnderlyingPages();
};
FFlippingBookModel.prototype.getUserPageNumber = function (src)
{
    var _loc4 = this._userPages.length;
    for (var _loc2 = 0; _loc2 < _loc4; ++_loc2)
    {
        var _loc3 = this._userPages[_loc2];
        if (_loc3 == src)
        {
            return (_loc2);
        } // end if
    } // end of for
    if (src == this._const.EMPTY_PAGE)
    {
        return (_loc4);
    } // end if
};
FFlippingBookModel.prototype._markEqual = function ()
{
    var _loc10 = this._const.DELIMITER;
    var _loc7 = this._userPages.length;
    var _loc5 = new Array(_loc7);
    for (var _loc6 = 0; _loc6 < _loc7; ++_loc6)
    {
        _loc5[_loc6] = false;
    } // end of for
    for (var _loc4 = 0; _loc4 < _loc7; ++_loc4)
    {
        var _loc9 = this._userPages[_loc4];
        var _loc11 = _loc4;
        var _loc8 = 0;
        for (var _loc2 = 0; _loc2 < _loc7; ++_loc2)
        {
            var _loc3 = this._userPages[_loc2];
            if (_loc3 == _loc9 && !_loc5[_loc2])
            {
                this._userPages[_loc2] = _loc8++ + _loc10 + this._userPages[_loc2];
                _loc5[_loc2] = true;
            } // end if
        } // end of for
    } // end of for
};
FFlippingBookModel.prototype.getUserCurrentPage2 = function ()
{
    var _loc2 = this._userCurrentPage;
    if (this._view.__ox > 0)
    {
        _loc2 = _loc2 + 1;
    } // end if
    return (_loc2);
};
FFlippingBookModel.prototype.__addPage = function (index, pageSrc)
{
    this._realPages.splice(index, 0, pageSrc);
};
FFlippingBookModel.prototype._copyArray = function (src)
{
    var _loc3 = new Array();
    for (var _loc1 = 0; _loc1 < src.length; ++_loc1)
    {
        _loc3[_loc1] = src[_loc1];
    } // end of for
    return (_loc3);
};
FFlippingBookModel.prototype._makeItReal = function ()
{
    this._realPages = this._copyArray(this._userPages);
    var _loc2 = true;
    if (this._realPages.length % 2 == 0)
    {
        _loc2 = false;
    } // end if
    if (_loc2)
    {
        this.__addPage(this._realPages.length, this._const.EMPTY_PAGE);
    } // end if
    if (!this.alwaysOpened)
    {
        this.__addPage(0, this._const.TRANSPARENT_PAGE1);
        this.__addPage(this._realPages.length, this._const.TRANSPARENT_PAGE2);
    } // end if
};
FFlippingBookModel.prototype._realPageNumber = function (n)
{
    if (n < 0)
    {
        n = 0;
    }
    else if (n >= this._userPages.length)
    {
        n = this._userPages.length - 1;
        if (!this.alwaysOpened && this._userPages.length % 2 != 0)
        {
            ++n;
        } // end if
    } // end else if
    if (!this.alwaysOpened)
    {
        ++n;
    } // end if
    if (this._userPages.length == 0)
    {
        n = 0;
    } // end if
    if (n % 2 != 0)
    {
        --n;
    } // end if
    return (n);
};
FFlippingBookModel.prototype.putPage = function (isDirect, direct_dir)
{
    if (this._view == undefined)
    {
        this._view = this._broker.objects[this._const.VIEW_OBJ_ID];
    } // end if
    var _loc4 = this.__direction;
    this.__direction = -1;
    switch (_loc4)
    {
        case 0:
        {
            this._currentPage = this._currentPage - 2;
            this._userCurrentPage = this._userCurrentPage - 2;
            break;
        } 
        case 1:
        {
            this._currentPage = this._currentPage + 2;
            this._userCurrentPage = this._userCurrentPage + 2;
            break;
        } 
    } // End of switch
    this._cache.setPage(this._view.__page01, this._realPages[this._currentPage], 1, this._currentPage, _loc4, true);
    this._cache.setPage(this._view.__page02, this._realPages[this._currentPage + 1], 2, this._currentPage + 1, _loc4, true);
    this._curPageNumbers[0] = this.getUserPageNumber(this._realPages[this._currentPage]);
    this._curPageNumbers[1] = this.getUserPageNumber(this._realPages[this._currentPage + 1]);
    if (this._realPages[this._currentPage] == this._const.EMPTY_PAGE)
    {
        this._curPageNumbers[0] = this._userPages.length;
    } // end if
    vsrc = this._baseObj.pagesSet[this._userCurrentPage];
    if (this._view._bookState != this._const.FLIP_GOTOPAGE_STATE)
    {
        if (_loc4 == 1)
        {
            this._baseObj._setVisible();
            if (this._cache.__pagesExt[vsrc] == true)
            {
                this._baseObj.onPutPage(this._curPageNumbers[0], this._cache.__pagesHolders[this._userPages[this._curPageNumbers[0]]]);
                this._baseObj.dispatchEvent("onPutPage", {target: this._baseObj, pageNumber: this._curPageNumbers[0], page_mc: this._cache.__pagesHolders[this._userPages[this._curPageNumbers[0]]]});
                this._cache.processCache(this._baseObj.leftPageNumber);
            }
            else
            {
                this._baseObj.onPutPage(this._curPageNumbers[0], this._cache.__pagesHolders[this._userPages[this._curPageNumbers[0]]].media);
                this._baseObj.dispatchEvent("onPutPage", {target: this._baseObj, pageNumber: this._curPageNumbers[0], page_mc: this._cache.__pagesHolders[this._userPages[this._curPageNumbers[0]]].media});
                this._cache.processCache(this._baseObj.leftPageNumber);
            } // end else if
            this._cache.__restoreFrozenPages();
            this._cache.__automaticFlipCorner();
        }
        else
        {
            var _loc3 = this._cache.__pagesHolders[this._userPages[this._curPageNumbers[1]]];
            if (isDirect && direct_dir == 1)
            {
                _loc3 = this._cache.__pagesHolders[this._userPages[this._curPageNumbers[0]]];
            } // end if
            if (this._cache.__pagesExt[vsrc] == false)
            {
                _loc3 = _loc3.media;
            } // end if
            var _loc2 = this._curPageNumbers[1];
            if (_loc2 == undefined)
            {
                _loc2 = this._curPageNumbers[0] + 1;
            } // end if
            if (isDirect && direct_dir == 1)
            {
                --_loc2;
            } // end if
            if (!(_loc2 % 2))
            {
                this._userCurrentPage = _loc2;
            }
            else if (this._baseObj.alwaysOpened)
            {
                this._userCurrentPage = _loc2 - 1;
            }
            else
            {
                this._userCurrentPage = _loc2 + 1;
            } // end else if
            this._baseObj._setVisible();
            this._baseObj.onPutPage(_loc2, _loc3);
            this._baseObj.dispatchEvent("onPutPage", {target: this._baseObj, pageNumber: _loc2, page_mc: _loc3});
            this._cache.processCache(this._baseObj.leftPageNumber);
            this._cache.__restoreFrozenPages();
            this._cache.__automaticFlipCorner();
        } // end if
    } // end else if
    this._view.onSetPages(1, 2);
    if (this._currentPage + 2 > this._realPages.length - 1)
    {
        this._baseObj.onLastPage();
        this._baseObj.dispatchEvent("onLastPage", {target: this._baseObj});
    }
    else if (this._currentPage - 2 < 0)
    {
        this._baseObj.onFirstPage();
        this._baseObj.dispatchEvent("onFirstPage", {target: this._baseObj});
    } // end else if
    this._cache.showUnderlyingPages();
    this._view.__shMask04.clear();
    if (this._baseObj.leftPageNumber != undefined)
    {
        this._cache.__playPage(this._baseObj.getPageLink(this._baseObj.leftPageNumber));
    } // end if
    if (this._baseObj.rightPageNumber != undefined)
    {
        this._cache.__playPage(this._baseObj.getPageLink(this._baseObj.rightPageNumber));
    } // end if
};
FFlippingBookModel.prototype.flipGotoForward = function (n)
{
    var _loc2 = n - this._currentPage;
    if (this._currentPage != this._realPages.length - 2 && this._currentPage >= 0)
    {
        this._cache.setPage(this._view.__page03, this._realPages[this._currentPage + _loc2], 3, this._currentPage + _loc2, 1, false);
        this._cache.setPage(this._view.__page04, this._realPages[this._currentPage + _loc2 + 1], 4, this._currentPage + _loc2 + 1, 1, false);
        this._curPageNumbers[2] = this.getUserPageNumber(this._realPages[this._currentPage + _loc2]);
        this._curPageNumbers[3] = this.getUserPageNumber(this._realPages[this._currentPage + _loc2 + 1]);
        this.__direction = 1;
        if (this._curPageNumbers[3] == undefined)
        {
            var _loc3;
        }
        else
        {
            _loc3 = this._curPageNumbers[3] + 2;
        } // end else if
        this._cache.showUnderlyingPages("right", _loc3);
    }
    else
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookModel.prototype.goForward = function ()
{
    if (this._currentPage != this._realPages.length - 2 && this._currentPage >= 0)
    {
        this._cache.setPage(this._view.__page03, this._realPages[this._currentPage + 2], 3, this._currentPage + 2, 1, false);
        this._cache.setPage(this._view.__page04, this._realPages[this._currentPage + 3], 4, this._currentPage + 3, 1, false);
        this._curPageNumbers[2] = this.getUserPageNumber(this._realPages[this._currentPage + 2]);
        this._curPageNumbers[3] = this.getUserPageNumber(this._realPages[this._currentPage + 3]);
        this._cache.showUnderlyingPages("right", this._baseObj.rightPageNumber + 4);
        this.__direction = 1;
    }
    else
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookModel.prototype.flipGotoBack = function (n)
{
    var _loc2 = this._currentPage - n - 1;
    if (this._currentPage > 0)
    {
        this._cache.setPage(this._view.__page03, this._realPages[this._currentPage - _loc2], 3, this._currentPage - _loc2, 0, false);
        this._cache.setPage(this._view.__page04, this._realPages[this._currentPage - _loc2 - 1], 4, this._currentPage - _loc2 - 1, 0, false);
        this._curPageNumbers[2] = this.getUserPageNumber(this._realPages[this._currentPage - _loc2]);
        this._curPageNumbers[3] = this.getUserPageNumber(this._realPages[this._currentPage - _loc2 - 1]);
        this.__direction = 0;
        if (this._curPageNumbers[3] == undefined)
        {
            var _loc3;
        }
        else
        {
            _loc3 = this._curPageNumbers[3] - 2;
        } // end else if
        this._cache.showUnderlyingPages("left", _loc3);
    }
    else
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookModel.prototype.goBack = function ()
{
    if (this._currentPage > 0)
    {
        this._cache.setPage(this._view.__page03, this._realPages[this._currentPage - 1], 3, this._currentPage - 1, 0, false);
        this._cache.setPage(this._view.__page04, this._realPages[this._currentPage - 2], 4, this._currentPage - 2, 0, false);
        this._curPageNumbers[2] = this.getUserPageNumber(this._realPages[this._currentPage - 1]);
        this._curPageNumbers[3] = this.getUserPageNumber(this._realPages[this._currentPage - 2]);
        this._cache.showUnderlyingPages("left", this._baseObj.leftPageNumber - 4);
        this.__direction = 0;
    }
    else
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookModel.prototype.getFlipGotoPage = function (n, state)
{
    if (state)
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
        this._currentPage = this._last_current_page;
        this._view.directGotoPage(n);
        return;
    } // end if
    if (this._currentPage > n)
    {
        this.flipGotoBack(n);
    }
    else if (this._currentPage < n)
    {
        this.flipGotoForward(n);
    }
    else
    {
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookModel.prototype.getNextGotoPage = function (n)
{
    if (this._currentPage > n)
    {
        this.goBack();
    }
    else if (this._currentPage < n)
    {
        this.goForward();
    }
    else
    {
        this._baseObj.onEndGoto();
        this._baseObj.dispatchEvent("onEndGoto", {target: this._baseObj});
        this._view._bookState = this._const.UNACTIVE_STATE;
    } // end else if
};
FFlippingBookClass.prototype = new MovieClip();
FFlippingBookClass.prototype.addEventListener = function (listenerObj)
{
    if (!this.listenerExists(listenerObj))
    {
        this.listeners.push(listenerObj);
    } // end if
};
FFlippingBookClass.prototype.removeEventListener = function (listenerObj)
{
    var _loc2 = this.getListenerIndex(listenerObj);
    if (_loc2 != -1)
    {
        this.listeners.splice(_loc2, 1);
    } // end if
};
FFlippingBookClass.prototype.dispatchEvent = function (eventType, eventObj)
{
    var _loc5 = this.listeners.length;
    for (var _loc2 = 0; _loc2 < _loc5; ++_loc2)
    {
        var _loc3 = this.listeners[_loc2];
        var _loc4 = _loc3[eventType];
        _loc4.apply(_loc3, [eventObj]);
    } // end of for
};
FFlippingBookClass.prototype.listenerExists = function (listenerObj)
{
    var _loc3 = false;
    var _loc4 = this.listeners.length;
    for (var _loc2 = 0; _loc2 < _loc4; ++_loc2)
    {
        if (listenerObj == this.listeners[_loc2])
        {
            _loc3 = true;
            break;
        } // end if
    } // end of for
    return (_loc3);
};
FFlippingBookClass.prototype.getListenerIndex = function (listenerObj)
{
    var _loc3 = false;
    var _loc4 = this.listeners.length;
    for (var _loc2 = 0; _loc2 < _loc4; ++_loc2)
    {
        if (listenerObj == this.listeners[_loc2])
        {
            _loc3 = true;
            break;
        } // end if
    } // end of for
    if (_loc3)
    {
        return (_loc2);
    }
    else
    {
        return (-1);
    } // end else if
};
FFlippingBookClass.prototype.getEnabledProp = function ()
{
    return (this.enabled);
};
FFlippingBookClass.prototype.setEnabledProp = function (v)
{
    this.enabled = v;
};
FFlippingBookClass.prototype.getTotalPages = function ()
{
    return (this.pagesSet.length);
};
FFlippingBookClass.prototype.getLeftPageNumber = function ()
{
    var _loc2 = 0;
    if (this.alwaysOpened)
    {
        _loc2 = this._model._userCurrentPage;
    }
    else
    {
        _loc2 = this._model._userCurrentPage - 1;
    } // end else if
    if (_loc2 < 0)
    {
        _loc2 = undefined;
    } // end if
    return (_loc2);
};
FFlippingBookClass.prototype.getRightPageNumber = function ()
{
    var _loc2 = 0;
    if (!this.alwaysOpened)
    {
        _loc2 = this._model._userCurrentPage;
    }
    else
    {
        _loc2 = this._model._userCurrentPage + 1;
    } // end else if
    if (_loc2 >= this.totalPages)
    {
        _loc2 = undefined;
    } // end if
    return (_loc2);
};
FFlippingBookClass.prototype.getStaticShadowsDepth = function ()
{
    return (this._cache.ssd);
};
FFlippingBookClass.prototype.setStaticShadowsDepth = function (depth)
{
    this._cache.ssd = depth;
    this._cache.__redrawStaticShadows();
};
FFlippingBookClass.prototype.getDynamicShadowsDepth = function ()
{
    return (this._view.sd);
};
FFlippingBookClass.prototype.setDynamicShadowsDepth = function (depth)
{
    this._view.sd = depth;
    this._cache.__redrawDynamicShadows();
};
FFlippingBookClass.prototype.getPreloaderType = function ()
{
    return (this.preloaderType);
};
FFlippingBookClass.prototype.setPreloaderType = function (type)
{
    this.preloaderType = type;
    this._cache.__redrawPreloaders();
};
FFlippingBookClass.prototype.getPreserveProportions = function ()
{
    return (this.preserveProportions);
};
FFlippingBookClass.prototype.setPreserveProportions = function (preserve)
{
    this.preserveProportions = preserve;
    this._cache.__updatePageLayout();
};
FFlippingBookClass.prototype.getScaleContent = function ()
{
    return (this.scaleContent);
};
FFlippingBookClass.prototype.setScaleContent = function (scale)
{
    this.scaleContent = scale;
    this._cache.__updatePageLayout();
};
FFlippingBookClass.prototype.getCenterContent = function ()
{
    return (this.centerContent);
};
FFlippingBookClass.prototype.setCenterContent = function (center)
{
    this.centerContent = center;
    this._cache.__updatePageLayout();
};
FFlippingBookClass.prototype.getFrameWidth = function ()
{
    return (this.frameWidth);
};
FFlippingBookClass.prototype.setFrameWidth = function (width)
{
    this.frameWidth = width;
    this._cache.__updatePageLayout();
};
FFlippingBookClass.prototype.getFrameColor = function ()
{
    return (this.frameColor);
};
FFlippingBookClass.prototype.setFrameColor = function (color)
{
    this.frameColor = color;
    this._cache.__updatePageLayout();
};
FFlippingBookClass.prototype.getFrameAlpha = function ()
{
    return (this.frameAlpha);
};
FFlippingBookClass.prototype.setFrameAlpha = function (width)
{
    this.frameAlpha = width;
    this._cache.__updatePageLayout();
};
FFlippingBookClass.prototype.getFlipSound = function ()
{
    return (this.flipSound);
};
FFlippingBookClass.prototype.setFlipSound = function (URL)
{
    this.flipSound = URL;
    this._cache._soundSrc = this.flipSound;
    this._cache._sound = new Sound(this);
    this._cache._updateFlipSound();
    this._view._flipSound = this._cache._sound;
};
FFlippingBookClass.prototype.getHardcoverSound = function ()
{
    return (this.hardcoverSound);
};
FFlippingBookClass.prototype.setHardcoverSound = function (URL)
{
    this.hardcoverSound = URL;
    this._cache._hardcoverSoundSrc = this.hardcoverSound;
    this._cache._hardcoverSound = new Sound(this);
    this._cache._updateFlipSound();
    this._view._coverSound = this._cache._hardcoverSound;
};
FFlippingBookClass.prototype.getHardcover = function ()
{
    return (this.hardcover);
};
FFlippingBookClass.prototype.setHardcover = function (enable)
{
    this.hardcover = enable;
    var _loc3 = enable ? ("true") : ("false");
    this.pageParameters[0].rigid = _loc3;
    this.pageParameters[1].rigid = _loc3;
    this.pageParameters[2].rigid = _loc3;
    this.pageParameters[this.totalPages - 1].rigid = _loc3;
    this.pageParameters[this.totalPages - 2].rigid = _loc3;
    this.pageParameters[this.totalPages - 3].rigid = _loc3;
    this._cache.__markRigidPages();
    if (!enable)
    {
        var _loc4 = this.getPageLink(0);
        var _loc2 = _loc4._parent._parent.shadows;
        if (_loc2 == undefined)
        {
            _loc2 = _loc4._parent._parent._parent.shadows;
        } // end if
        if (_loc2 == undefined)
        {
            _loc2 = _loc4.parent.shadows;
        } // end if
        if (_loc4.isLeftPage)
        {
            _loc2[this._constants.PAGE_STATIC_SHADOW1_NAME]._visible = this.alwaysOpened;
            _loc2[this._constants.PAGE_STATIC_SHADOW2_NAME]._visible = !this.alwaysOpened;
        }
        else
        {
            _loc2[this._constants.PAGE_STATIC_SHADOW1_NAME]._visible = this.alwaysOpened;
            _loc2[this._constants.PAGE_STATIC_SHADOW2_NAME]._visible = !this.alwaysOpened;
        } // end else if
        _loc4 = this.getPageLink(this.totalPages - 1);
        _loc2 = _loc4._parent._parent.shadows;
        if (_loc2 == undefined)
        {
            _loc2 = _loc4._parent._parent._parent.shadows;
        } // end if
        if (_loc2 == undefined)
        {
            _loc2 = _loc4.parent.shadows;
        } // end if
        if (_loc4.isLeftPage)
        {
            _loc2[this._constants.PAGE_STATIC_SHADOW1_NAME]._visible = true;
            _loc2[this._constants.PAGE_STATIC_SHADOW2_NAME]._visible = false;
        }
        else
        {
            _loc2[this._constants.PAGE_STATIC_SHADOW1_NAME]._visible = false;
            _loc2[this._constants.PAGE_STATIC_SHADOW2_NAME]._visible = true;
        } // end else if
    }
    else if (this.alwaysOpened && enable)
    {
        _loc4 = this.getPageLink(0);
        _loc2 = _loc4._parent._parent.shadows;
        if (_loc2 == undefined)
        {
            _loc2 = _loc4._parent._parent._parent.shadows;
        } // end if
        if (_loc2 == undefined)
        {
            _loc2 = _loc4.parent.shadows;
        } // end if
        _loc2[this._constants.PAGE_STATIC_SHADOW1_NAME]._visible = false;
        _loc2[this._constants.PAGE_STATIC_SHADOW2_NAME]._visible = false;
    } // end else if
};
FFlippingBookClass.prototype.getHardcoverThickness = function ()
{
    return (this.hardcoverThickness);
};
FFlippingBookClass.prototype.setHardcoverThickness = function (thickness)
{
    this.hardcoverThickness = thickness;
};
FFlippingBookClass.prototype.getHardcoverEdgeColor = function ()
{
    return (this.hardcoverEdgeColor);
};
FFlippingBookClass.prototype.setHardcoverEdgeColor = function (color)
{
    this.hardcoverEdgeColor = color;
};
FFlippingBookClass.prototype.getHighlightHardcover = function ()
{
    return (this.highlightHardcover);
};
FFlippingBookClass.prototype.setHighlightHardcover = function (highlight)
{
    this.highlightHardcover = highlight;
};
FFlippingBookClass.prototype.getNavigationFlipOffset = function ()
{
    return (this.navigationFlipOffset);
};
FFlippingBookClass.prototype.setNavigationFlipOffset = function (offset)
{
    this.navigationFlipOffset = offset;
};
FFlippingBookClass.prototype.getStaticShadowsType = function ()
{
    return (this.staticShadowsType);
};
FFlippingBookClass.prototype.setStaticShadowsType = function (newType)
{
    this.staticShadowsType = newType;
    this._cache.__redrawStaticShadows();
};
FFlippingBookClass.prototype.getStaticShadowsLightColor = function ()
{
    return (this.staticShadowsLightColor);
};
FFlippingBookClass.prototype.setStaticShadowsLightColor = function (newColor)
{
    this.staticShadowsLightColor = newColor;
    this._cache.__redrawStaticShadows();
};
FFlippingBookClass.prototype.getStaticShadowsDarkColor = function ()
{
    return (this.staticShadowsDarkColor);
};
FFlippingBookClass.prototype.setStaticShadowsDarkColor = function (newColor)
{
    this.staticShadowsDarkColor = newColor;
    this._cache.__redrawStaticShadows();
};
FFlippingBookClass.prototype.getDynamicShadowsDarkColor = function ()
{
    return (this.dynamicShadowsDarkColor);
};
FFlippingBookClass.prototype.setDynamicShadowsDarkColor = function (newColor)
{
    this.dynamicShadowsDarkColor = newColor;
    this._cache.__redrawDynamicShadows();
};
FFlippingBookClass.prototype.getDynamicShadowsLightColor = function ()
{
    return (this.dynamicShadowsLightColor);
};
FFlippingBookClass.prototype.setDynamicShadowsLightColor = function (newColor)
{
    this.dynamicShadowsLightColor = newColor;
    this._cache.__redrawDynamicShadows();
};
FFlippingBookClass.prototype.getRigidPageSpeed = function ()
{
    return (this.rigidPageSpeed);
};
FFlippingBookClass.prototype.setRigidPageSpeed = function (newSpeed)
{
    this.rigidPageSpeed = newSpeed;
    this._view._rigidSpeed = this.rigidPageSpeed / this._constants.SPEED_DIV;
};
FFlippingBookClass.prototype.getPageBack = function ()
{
    return (this.pageBack);
};
FFlippingBookClass.prototype.setPageBack = function (newColor)
{
    this.pageBack = newColor;
    this._cache.bgColor = this.pageBack;
    this._cache.__redrawPageBackgrounds();
};
FFlippingBookClass.prototype.getBackgroundSymbol = function ()
{
    return (this.backgroundSymbol);
};
FFlippingBookClass.prototype.setBackgroundSymbol = function (newId)
{
    this.backgroundSymbol = newId;
    this._cache.__redrawPageBackgrounds();
};
FFlippingBookClass.prototype.getHandOverCorner = function ()
{
    return (this.handOverCorner);
};
FFlippingBookClass.prototype.setHandOverCorner = function (enable)
{
    this.handOverCorner = enable;
};
FFlippingBookClass.prototype.getHandOverPage = function ()
{
    return (this.handOverPage);
};
FFlippingBookClass.prototype.setHandOverPage = function (enable)
{
    this.handOverPage = enable;
};
FFlippingBookClass.prototype.getGlobalSmooth = function ()
{
    return (this.globalSmooth);
};
FFlippingBookClass.prototype.setGlobalSmooth = function (smooth)
{
    this.globalSmooth = smooth;
    this._cache.__updateSmooth();
};
FFlippingBookClass.prototype.getGlobalRigid = function ()
{
    return (this.globalRigid);
};
FFlippingBookClass.prototype.setGlobalRigid = function (rigid)
{
    this.globalRigid = rigid;
};
FFlippingBookClass.prototype.getGlobalDark = function ()
{
    return (this.globalDark);
};
FFlippingBookClass.prototype.setGlobalDark = function (dark)
{
    this.globalDark = dark;
    this._cache.__redrawStaticShadows();
};
FFlippingBookClass.prototype.getGlobalFreezeOnFlip = function ()
{
    return (this.globalFreezeOnFlip);
};
FFlippingBookClass.prototype.setGlobalFreezeOnFlip = function (freeze)
{
    this.globalFreezeOnFlip = freeze;
};
FFlippingBookClass.prototype.getAlwaysOpenedProp = function ()
{
    return (this.alwaysOpened);
};
FFlippingBookClass.prototype.getAlwaysOpenedProp = function ()
{
    return (this.alwaysOpened);
};
FFlippingBookClass.prototype.getAutoFlipProp = function ()
{
    return (this.autoFlip);
};
FFlippingBookClass.prototype.setAutoFlipProp = function (v)
{
    this.autoFlip = v;
    if (this._view != undefined)
    {
        this._view._autoFlip = v;
    } // end if
};
FFlippingBookClass.prototype.getFlipOnClick = function ()
{
    return (this.flipOnClick);
};
FFlippingBookClass.prototype.setFlipOnClick = function (v)
{
    this.flipOnClick = v;
    if (this._view != undefined)
    {
        this._view._flipOnClick = v;
    } // end if
};
FFlippingBookClass.prototype.getMoveSpeedProp = function ()
{
    return (this.moveSpeed);
};
FFlippingBookClass.prototype.setMoveSpeedProp = function (v)
{
    this.moveSpeed = v;
    if (this._view != undefined)
    {
        this._view._pageSpeed = v / this._constants.SPEED_DIV;
    } // end if
};
FFlippingBookClass.prototype.getCloseSpeedProp = function ()
{
    return (this.closeSpeed);
};
FFlippingBookClass.prototype.setCloseSpeedProp = function (v)
{
    this.closeSpeed = v;
    if (this._view != undefined)
    {
        this._view._closeSpeed = v / this._constants.SPEED_DIV;
    } // end if
};
FFlippingBookClass.prototype.getGotoSpeedProp = function ()
{
    return (this.gotoSpeed);
};
FFlippingBookClass.prototype.setGotoSpeedProp = function (v)
{
    this.gotoSpeed = v;
    if (this._view != undefined)
    {
        this._view._gotoSpeed = v / this._constants.SPEED_DIV;
    } // end if
};
FFlippingBookClass.prototype.getWidth = function ()
{
    return (this._bookWidth);
};
FFlippingBookClass.prototype.setWidth = function (w)
{
    var _loc2 = this._bookHeight;
    this.setSize(w, _loc2);
};
FFlippingBookClass.prototype.getHeight = function ()
{
    return (this._bookHeight);
};
FFlippingBookClass.prototype.setHeight = function (h)
{
    var _loc2 = this._bookWidth;
    this.setSize(_loc2, h);
};
FFlippingBookClass.prototype.getFlipCornerPosition = function ()
{
    return (this.flipCornerPosition);
};
FFlippingBookClass.prototype.setFlipCornerPosition = function (value)
{
    this.flipCornerPosition = value;
    if (this._view._flipCornerPosition != undefined)
    {
        this._view._flipCornerPosition = this.flipCornerPosition;
    } // end if
};
FFlippingBookClass.prototype.getFlipCornerStyle = function ()
{
    return (this.flipCornerStyle);
};
FFlippingBookClass.prototype.setFlipCornerStyle = function (value)
{
    this.flipCornerStyle = value;
};
FFlippingBookClass.prototype.getFlipCornerAmount = function ()
{
    return (this.flipCornerAmount);
};
FFlippingBookClass.prototype.setFlipCornerAmount = function (value)
{
    this.flipCornerAmount = value;
    if (this._view._flipCornerAmount != undefined)
    {
        this._view._flipCornerAmount = this.flipCornerAmount;
    } // end if
};
FFlippingBookClass.prototype.getFlipCornerAngle = function ()
{
    return (this.flipCornerAngle);
};
FFlippingBookClass.prototype.setFlipCornerAngle = function (value)
{
    this.flipCornerAngle = value;
    if (this._view._flipCornerAngle != undefined)
    {
        this._view._flipCornerAngle = this.flipCornerAngle;
    } // end if
};
FFlippingBookClass.prototype.getFlipCornerRelease = function ()
{
    return (this.flipCornerRelease);
};
FFlippingBookClass.prototype.setFlipCornerRelease = function (value)
{
    this.flipCornerRelease = value;
    if (this._view._flipCornerRelease != undefined)
    {
        this._view._flipCornerRelease = this.flipCornerRelease;
    } // end if
};
FFlippingBookClass.prototype.getFlipCornerVibrate = function ()
{
    return (this.flipCornerVibrate);
};
FFlippingBookClass.prototype.setFlipCornerVibrate = function (value)
{
    this.flipCornerVibrate = value;
    if (this._view._vibrate != undefined)
    {
        this._view._vibrate = this.flipCornerVibrate;
    } // end if
};
FFlippingBookClass.prototype.getFlipCornerPlaySound = function ()
{
    return (this.flipCornerPlaySound);
};
FFlippingBookClass.prototype.setFlipCornerPlaySound = function (value)
{
    this.flipCornerPlaySound = value;
    if (this._view._playSound != undefined)
    {
        this._view._playSound = this.flipCornerPlaySound;
    } // end if
};
FFlippingBookClass.prototype.getPageLink = function (pageNumber)
{
    var _loc2 = this.pagesSet[pageNumber];
    if (this._cache.__pagesExt[_loc2])
    {
        return (this._cache.__pagesHolders[_loc2]);
    }
    else
    {
        return (this._cache.__pagesHolders[_loc2].media);
    } // end else if
};
FFlippingBookClass.prototype.isPageVisible = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.visible);
};
FFlippingBookClass.prototype.isPageLoaded = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.loaded);
};
FFlippingBookClass.prototype.getPageURL = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.URL);
};
FFlippingBookClass.prototype.getPageParams = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.params);
};
FFlippingBookClass.prototype.isLeftPage = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.isLeftPage);
};
FFlippingBookClass.prototype.isRightPage = function (pageNumber)
{
    var _loc2 = this.getPageLink(pageNumber);
    return (_loc2.isRightPage);
};
FFlippingBookClass.prototype.flipCorner = function (cornerPosition, release, amount, angle, vibrate, playSound)
{
    if (cornerPosition == undefined)
    {
        cornerPosition = this.flipCornerPosition;
    } // end if
    if (release == undefined)
    {
        release = this.flipCornerRelease;
    } // end if
    if (amount == undefined)
    {
        amount = this.flipCornerAmount;
    } // end if
    if (angle == undefined)
    {
        angle = this.flipCornerAngle;
    } // end if
    if (vibrate == undefined)
    {
        vibrate = this.flipCornerVibrate;
    } // end if
    if (playSound == undefined)
    {
        playSound = this.flipCornerPlaySound;
    } // end if
    if (this._view != undefined)
    {
        this._view.flipCorner(cornerPosition, release, amount, angle, vibrate, playSound);
    } // end if
};
FFlippingBookClass.prototype.flipForward = function ()
{
    if (this._view != undefined)
    {
        if (!this._isZoomed)
        {
            var _loc2 = this._model._currentPage + 2;
            this.dispatchEvent("onNavigationFunctionCall", {target: this, functionName: "flipForward"});
            this._view.gotoPage(_loc2);
        }
        else
        {
            this.dispatchEvent("onNavigationFunctionCall", {target: this, functionName: "flipForward"});
        } // end if
    } // end else if
};
FFlippingBookClass.prototype.flipBack = function ()
{
    if (this._view != undefined)
    {
        if (!this._isZoomed)
        {
            var _loc2 = this._model._currentPage - 2;
            this.dispatchEvent("onNavigationFunctionCall", {target: this, functionName: "flipBack"});
            this._view.gotoPage(_loc2);
        }
        else
        {
            this.dispatchEvent("onNavigationFunctionCall", {target: this, functionName: "flipBack"});
        } // end if
    } // end else if
};
FFlippingBookClass.prototype.setSize = function (w, h)
{
    this._view.cancelFlipping();
    this._oldBookWidth = this._bookWidth;
    this._oldBookHeight = this._bookHeight;
    this._bookWidth = w;
    this._bookHeight = h;
    this._xscale = 100;
    this._yscale = 100;
    if (this._view != undefined)
    {
        this._view.setSize(w, h);
    } // end if
    this._cache.setSize(w, h);
};
FFlippingBookClass.prototype._initLibraryPages = function ()
{
    if (this.__alreadyInitialized)
    {
        return;
    } // end if
    var _loc3 = this._cache.__pagesHolders;
    for (var _loc7 in _loc3)
    {
        var _loc2 = _loc3[_loc7].media;
        if (_loc2)
        {
            _loc2.onInit();
            _loc2.onPageLoad();
            this.onPageLoad(_loc2.URL, _loc2.pageNumber);
            this.dispatchEvent("onPageLoad", {target: this, URL: _loc2.URL, pageNumber: _loc2.pageNumber});
        } // end if
    } // end of for...in
    this.__alreadyInitialized = true;
};
FFlippingBookClass.prototype._setPageParameters = function (page_mc, src, isLoaded)
{
    page_mc.params = this.pageParameters[this.pageIndexes[src]];
    page_mc.isExternal = this._cache.__pagesExt[src];
    page_mc.book = this;
    page_mc.URL = this._cache._stripItem(src);
    page_mc.pageNumber = this.pageIndexes[src];
    if (!page_mc.loaded && isLoaded)
    {
        page_mc.onPageLoad();
    } // end if
    page_mc.loaded = isLoaded;
    if (page_mc.visible == undefined)
    {
        page_mc.visible = false;
    } // end if
    page_mc.width = this._bookWidth / 2;
    page_mc.height = this._bookHeight;
    var _loc3 = false;
    var _loc4 = page_mc.pageNumber;
    if (this.alwaysOpened && !(_loc4 % 2) || !this.alwaysOpened && _loc4 % 2)
    {
        _loc3 = true;
    } // end if
    page_mc.isLeftPage = _loc3;
    page_mc.isRightPage = !_loc3;
    if (page_mc.isExternal == false)
    {
        page_mc.__holder = page_mc._parent._parent._parent;
    }
    else
    {
        page_mc.__holder = page_mc._parent._parent;
    } // end else if
    if (_loc3)
    {
        page_mc.neighborPage = this.getPageLink(page_mc.pageNumber + 1);
    }
    else
    {
        page_mc.neighborPage = this.getPageLink(page_mc.pageNumber - 1);
    } // end else if
    page_mc.onInit();
};
FFlippingBookClass.prototype._setVisible = function ()
{
    var _loc4 = this.totalPages;
    for (var _loc3 = 0; _loc3 < _loc4; ++_loc3)
    {
        var _loc2 = this.getPageLink(_loc3);
        if (_loc2.visible && _loc2.pageNumber != this.leftPageNumber && _loc2.pageNumber != this.rightPageNumber)
        {
            _loc2.visible = false;
            this._cache.__playPage(_loc2);
            _loc2.onClose();
        } // end if
    } // end of for
    var _loc5 = this.getPageLink(this.leftPageNumber);
    var _loc6 = this.getPageLink(this.rightPageNumber);
    if (!_loc5.visible)
    {
        _loc5.visible = true;
        if (_loc5.onOpen)
        {
            _loc5.onOpen();
            _loc5.onOpenCalled = true;
        } // end if
    } // end if
    if (!_loc6.visible)
    {
        _loc6.visible = true;
        if (_loc6.onOpen)
        {
            _loc6.onOpen();
            _loc6.onOpenCalled = true;
        } // end if
    } // end if
};
FFlippingBookClass.prototype._onXMLComplete = function ()
{
    this._initFromCachedXML();
    this._getMedia();
    this.onXMLComplete();
    this.dispatchEvent("onXMLComplete", {target: this});
};
FFlippingBookClass.prototype.__setDefaults = function ()
{
    if (this.flipCornerPosition == "" || this.flipCornerPosition == undefined)
    {
        this.flipCornerPosition = this._constants.DEF_FLIP_CORNER_POSITION;
    } // end if
    if (this.flipCornerStyle == "" || this.flipCornerStyle == undefined)
    {
        this.flipCornerStyle = this._constants.DEF_FLIP_CORNER_STYLE;
    } // end if
    this.flipCornerAngle = this._validateNumber(this.flipCornerAngle, 0, 90, this._constants.DEF_FLIP_CORNER_ANGLE);
    this.flipCornerAmount = this._validateNumber(this.flipCornerAmount, 0, Infinity, this._constants.DEF_FLIP_CORNER_AMOUNT);
    this.flipCornerRelease = this._validateBoolean(this.flipCornerRelease, this._constants.DEF_FLIP_CORNER_RELEASE);
    this.flipCornerVibrate = this._validateBoolean(this.flipCornerVibrate, this._constants.DEF_FLIP_CORNER_VIBRATE);
    this.flipCornerPlaySound = this._validateBoolean(this.flipCornerPlaySound, this._constants.DEF_FLIP_CORNER_PLAY_SOUND);
    this.globalSmooth = this._validateBoolean(this.globalSmooth, this._constants.DEF_GLOBAL_SMOOTH);
    this.globalFreezeOnFlip = this._validateBoolean(this.globalFreezeOnFlip, this._constants.DEF_GLOBAL_FREEZE);
    this.globalDark = this._validateBoolean(this.globalDark, this._constants.DEF_GLOBAL_DARK);
    this.globalRigid = this._validateBoolean(this.globalRigid, this._constants.DEF_GLOBAL_RIGID);
};
FFlippingBookClass.prototype._getMedia = function ()
{
    this.__setDefaults();
    var _loc12 = this.pagesSet.length;
    for (var _loc7 = 0; _loc7 < _loc12; ++_loc7)
    {
        var _loc4 = this.pagesSet[_loc7];
        this.pageParameters[_loc7] = new Object();
        if (this.hardcover && (_loc7 == 0 || _loc7 == _loc12 - 1))
        {
            this.pageParameters[_loc7].rigid = "true";
        } // end if
        if (_loc4.indexOf("?") != -1)
        {
            var _loc2 = _loc4.substr(_loc4.indexOf("?") + 1, _loc4.length);
            var _loc14 = _loc4.slice(0, _loc4.indexOf("?"));
            this.pagesSet[_loc7] = _loc14;
            do
            {
                var _loc8 = _loc2.substr(0, _loc2.indexOf("="));
                var _loc6 = _loc2.indexOf("&") == -1 ? (_loc2.length) : (_loc2.indexOf("&"));
                var _loc9 = _loc2.slice(_loc2.indexOf("=") + 1, _loc6);
                this.pageParameters[_loc7][_loc8] = _loc9;
                if (_loc2.indexOf("&") == -1)
                {
                    _loc2 = "";
                } // end if
                _loc2 = _loc2.substr(_loc2.indexOf("&") + 1, _loc2.length);
            } while (_loc2.indexOf("=") != -1)
        } // end if
    } // end of for
    var _loc15 = this._cache.extXML;
    var _loc16 = _loc15.firstChild;
    var _loc11 = _loc16.childNodes;
    for (var _loc10 = 0; _loc11[_loc10]; ++_loc10)
    {
        var _loc13 = _loc11[_loc10].nodeName.toUpperCase();
        if (_loc13 == this._constants.PAGES_NODE_NAME)
        {
            _loc7 = 0;
            var _loc5 = _loc11[_loc10].childNodes;
            while (_loc5[_loc7])
            {
                var _loc3 = _loc5[_loc7];
                for (attrKey in _loc3.attributes)
                {
                    this.pageParameters[_loc7][attrKey] = _loc3.attributes[attrKey];
                } // end of for...in
                ++_loc7;
            } // end while
            break;
        } // end if
    } // end of for
    this._model = new FFlippingBookModel(this.pagesSet, this.firstPage, this.alwaysOpened, this._broker);
    for (var _loc7 = 0; _loc7 < _loc12; ++_loc7)
    {
        this.pageIndexes[this.pagesSet[_loc7]] = _loc7;
    } // end of for
    this._cache.loadMedia(this._model._realPages, this.flipSound, this.pageBack, this._bookWidth, this._bookHeight);
};
FFlippingBookClass.prototype._onMediaComplete = function ()
{
    this._originalBookWidth = this._bookWidth;
    this._originalBookHeight = this._bookHeight;
    if (this._model._userPages.length > 0)
    {
        this._view = new FFlippingBookView(this._bookWidth, this._bookHeight, this.autoFlip, this.flipOnClick, this._broker);
    } // end if
    this.onInit();
    this.dispatchEvent("onInit", {target: this});
};
FFlippingBookClass.prototype._initFromCachedXML = function ()
{
    var _loc8 = this._cache.extXML;
    var _loc9 = _loc8.firstChild;
    var _loc3 = _loc9.childNodes;
    for (var _loc2 = 0; _loc3[_loc2]; ++_loc2)
    {
        var _loc7 = _loc3[_loc2].nodeName.toUpperCase();
        switch (_loc7)
        {
            case this._constants.WIDTH_NODE_NAME:
            {
                this._bookWidth = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.HEIGHT_NODE_NAME:
            {
                this._bookHeight = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.FRAME_NODE_NAME:
            {
                this.frameWidth = _loc3[_loc2].attributes.width;
                this.frameColor = _loc3[_loc2].attributes.color;
                this.frameAlpha = _loc3[_loc2].attributes.alpha;
                break;
            } 
            case this._constants.FIRST_PAGE_NODE_NAME:
            {
                this.firstPage = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.ALWAYS_OPENED_NODE_NAME:
            {
                this.alwaysOpened = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.AUTOFLIP_NODE_NAME:
            {
                this.autoFlip = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.FLIP_ON_CLICK_NODE_NAME:
            {
                this.flipOnClick = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.SCALE_CONTENT_NODE_NAME:
            {
                this.scaleContent = _loc3[_loc2].firstChild.nodeValue;
                this.preserveProportions = _loc3[_loc2].attributes.preserveProportions;
                break;
            } 
            case this._constants.CENTER_CONTENT_NODE_NAME:
            {
                this.centerContent = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.HARDCOVER_NODE_NAME:
            {
                this.hardcover = _loc3[_loc2].firstChild.nodeValue;
                this.hardcoverEdgeColor = _loc3[_loc2].attributes.edgeColor;
                this.hardcoverThickness = this._validateNumber(_loc3[_loc2].attributes.thickness, 0, 10, 3);
                this.hardcoverSound = _loc3[_loc2].attributes.sound;
                this.highlightHardcover = _loc3[_loc2].attributes.highlight;
                break;
            } 
            case this._constants.MOVE_SPEED_NODE_NAME:
            {
                this.moveSpeed = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.CLOSE_SPEED_NODE_NAME:
            {
                this.closeSpeed = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.GOTO_SPEED_NODE_NAME:
            {
                this.gotoSpeed = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.RIGID_SPEED_NODE_NAME:
            {
                this.rigidPageSpeed = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.FLIP_SOUND_NODE_NAME:
            {
                this.flipSound = this._removeWhite(_loc3[_loc2].firstChild.nodeValue);
                break;
            } 
            case this._constants.PAGE_BACK_NODE_NAME:
            {
                this.pageBack = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.BACKGROUND_SYMBOL_NODE_NAME:
            {
                this.backgroundSymbol = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.LOAD_ON_DEMAND_NODE_NAME:
            {
                this.loadOnDemand = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.ALLOW_PAGES_UNLOAD_NODE_NAME:
            {
                this.allowPagesUnload = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.SHOW_UNDERLYING_PAGES_NODE_NAME:
            {
                this._showUnderlyingPages = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.HAND_OVER_CORNER_NODE_NAME:
            {
                this.handOverCorner = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.HAND_OVER_PAGE_NODE_NAME:
            {
                this.handOverPage = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.NAVIGATION_FLIP_OFFSET_NODE_NAME:
            {
                this.navigationFlipOffset = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.CACHE_PAGES_NODE_NAME:
            {
                this.cachePages = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.USE_PRELOADER_NODE_NAME:
            {
                this.usePreloader = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.STATIC_SHADOWS_TYPE_NODE_NAME:
            {
                this.staticShadowsType = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.STATIC_SHADOWS_DEPTH_NODE_NAME:
            {
                this.staticShadowsDepth = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.STATIC_SHADOWS_LIGHT_COLOR_NODE_NAME:
            {
                this.staticShadowsLightColor = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.STATIC_SHADOWS_DARK_COLOR_NODE_NAME:
            {
                this.staticShadowsDarkColor = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.DYNAMIC_SHADOWS_DEPTH_NODE_NAME:
            {
                this.shadowsDepth = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.DYNAMIC_SHADOWS_LIGHT_COLOR_NODE_NAME:
            {
                this.dynamicShadowsLightColor = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.DYNAMIC_SHADOWS_DARK_COLOR_NODE_NAME:
            {
                this.dynamicShadowsDarkColor = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.PRELOADER_TYPE_NODE_NAME:
            {
                this.preloaderType = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.CACHE_SIZE_NODE_NAME:
            {
                this.cacheSize = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.USER_PRELOADER_NODE_NAME:
            {
                this.userPreloaderId = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.PLAY_ON_DEMAND_NODE_NAME:
            {
                this.playOnDemand = _loc3[_loc2].firstChild.nodeValue;
                break;
            } 
            case this._constants.FLIP_CORNER_NODE_NAME:
            {
                this.flipCornerStyle = _loc3[_loc2].firstChild.nodeValue;
                this.flipCornerAngle = _loc3[_loc2].attributes.angle;
                this.flipCornerAmount = _loc3[_loc2].attributes.amount;
                this.flipCornerRelease = _loc3[_loc2].attributes.release;
                this.flipCornerVibrate = _loc3[_loc2].attributes.vibrate;
                this.flipCornerPlaySound = _loc3[_loc2].attributes.playSound;
                this.flipCornerPosition = _loc3[_loc2].attributes.position;
                break;
            } 
            case this._constants.PAGES_NODE_NAME:
            {
                this.globalSmooth = _loc3[_loc2].attributes.smooth;
                this.globalFreezeOnFlip = _loc3[_loc2].attributes.freezeOnFlip;
                this.globalDark = _loc3[_loc2].attributes.dark;
                this.globalRigid = _loc3[_loc2].attributes.rigid;
                var _loc4 = 0;
                var _loc5 = _loc3[_loc2].childNodes;
                this.pagesSet = new Array();
                while (_loc5[_loc4])
                {
                    var _loc6 = this._removeWhite(_loc5[_loc4].firstChild.nodeValue);
                    this.pagesSet.push(_loc6);
                    ++_loc4;
                } // end while
                break;
            } 
        } // End of switch
    } // end of for
    this._validateParameters();
};
FFlippingBookClass.prototype._removeWhite = function (str)
{
    for (var _loc1 = str; _loc1.charAt(0) == " "; _loc1 = _loc1.substr(1, _loc1.length))
    {
    } // end of for
    while (_loc1.charAt(_loc1.length - 1) == " ")
    {
        _loc1 = _loc1.substr(0, _loc1.length - 1);
    } // end while
    return (_loc1);
};
FFlippingBookClass.prototype._validateNumber = function (param, min, max, def)
{
    if (typeof(param) != this._constants.NUM_TYPE_NAME)
    {
        param = this._removeWhite(param);
        if (!isNaN(Number(param)))
        {
            param = Number(param);
        }
        else
        {
            param = def;
        } // end if
    } // end else if
    if (param > max)
    {
        param = max;
    } // end if
    if (param < min)
    {
        param = min;
    } // end if
    return (param);
};
FFlippingBookClass.prototype._validateBoolean = function (param, def)
{
    if (param == undefined)
    {
        param = def;
    }
    else if (typeof(param) != this._constants.BOOL_TYPE_NAME)
    {
        param = param.toUpperCase();
        if (param.indexOf(this._constants.BOOL_TRUE_VAL) != -1)
        {
            param = true;
        }
        else if (param.indexOf(this._constants.BOOL_FALSE_VAL) != -1)
        {
            param = false;
        }
        else
        {
            param = def;
        } // end else if
    } // end else if
    return (param);
};
FFlippingBookClass.prototype._validateColor = function (param, def)
{
    param = Number(this._removeWhite(param));
    if (param < 0 || param > 16777215 || isNaN(param))
    {
        param = def;
    } // end if
    return (param);
};
FFlippingBookClass.prototype._validateParameters = function ()
{
    this._bookWidth = this._validateNumber(this._bookWidth, 0, Infinity, this._constants.DEF_WIDTH);
    this._bookHeight = this._validateNumber(this._bookHeight, 0, Infinity, this._constants.DEF_HEIGHT);
    this.frameWidth = this._validateNumber(this.frameWidth, 0, Infinity, this._constants.DEF_FRAME_WIDTH);
    this.frameColor = this._validateColor(this.frameColor, this._constants.DEF_FRAME_COLOR);
    this.frameAlpha = this._validateNumber(this.frameAlpha, 0, Infinity, this._constants.DEF_FRAME_ALPHA);
    this.firstPage = this._validateNumber(this.firstPage, 0, Infinity, this._constants.DEF_FIRST_PAGE);
    this.moveSpeed = this._validateNumber(this.moveSpeed, 0, Infinity, this._constants.DEF_MOVE_SPEED);
    this.closeSpeed = this._validateNumber(this.closeSpeed, 0, Infinity, this._constants.DEF_CLOSE_SPEED);
    this.gotoSpeed = this._validateNumber(this.gotoSpeed, 0, Infinity, this._constants.DEF_GOTO_SPEED);
    this.rigidPageSpeed = this._validateNumber(this.rigidPageSpeed, 0, Infinity, this._constants.DEF_RIGID_SPEED);
    this.autoFlip = this._validateNumber(this.autoFlip, 0, Infinity, this._constants.DEF_AUTOFLIP);
    this._cache.sd = this.shadowsDepth = this._validateNumber(this.shadowsDepth, 0, Infinity, this._constants.DEF_SHADOWS_DEPTH);
    this._cache.ssd = this.staticShadowsDepth = this._validateNumber(this.staticShadowsDepth, 0, Infinity, this._constants.DEF_SHADOWS_DEPTH);
    this.pageBack = this._validateColor(this.pageBack, this._constants.DEF_PAGEBACK);
    this.staticShadowsType = this._removeWhite(this.staticShadowsType);
    this.staticShadowsLightColor = this._validateColor(this.staticShadowsLightColor, this._constants.DEF_STATIC_SHADOWS_LIGHT_COLOR);
    this.staticShadowsDarkColor = this._validateColor(this.staticShadowsDarkColor, this._constants.DEF_STATIC_SHADOWS_DARK_COLOR);
    this.dynamicShadowsLightColor = this._validateColor(this.dynamicShadowsLightColor, this._constants.DEF_DYNAMIC_SHADOWS_LIGHT_COLOR);
    this.dynamicShadowsDarkColor = this._validateColor(this.dynamicShadowsDarkColor, this._constants.DEF_DYNAMIC_SHADOWS_DARK_COLOR);
    this.alwaysOpened = this._validateBoolean(this.alwaysOpened, this._constants.DEF_ALWAYS_OPENED);
    this.hardcover = this._validateBoolean(this.hardcover, this._constants.DEF_HARDCOVER);
    this.flipOnClick = this._validateBoolean(this.flipOnClick, this._constants.DEF_FLIP_ON_CLICK);
    this.loadOnDemand = this._validateBoolean(this.loadOnDemand, this._constants.DEF_LOAD_ON_DEMAND);
    this.allowPagesUnload = this._validateBoolean(this.allowPagesUnload, this._constants.DEF_ALLOW_PAGES_UNLOAD);
    this.handOverCorner = this._validateBoolean(this.handOverCorner, this._constants.DEF_HAND_OVER_CORNER);
    this.handOverPage = this._validateBoolean(this.handOverPage, this._constants.DEF_HAND_OVER_PAGE);
    this.navigationFlipOffset = this._validateNumber(this.navigationFlipOffset, 0, Infinity, this._constants.DEF_NAVIGATION_FLIP_OFFSET);
    this._showUnderlyingPages = this._validateBoolean(this._showUnderlyingPages, this._constants.DEF_SHOW_UNDERLYING_PAGES);
    this.cachePages = this._validateBoolean(this.cachePages, this._constants.DEF_CACHE_PAGES);
    this.usePreloader = this._validateBoolean(this.usePreloader, this._constants.DEF_USE_PRELOADER);
    this.scaleContent = this._validateBoolean(this.scaleContent, this._constants.DEF_SCALE_CONTENT);
    this.preserveProportions = this._validateBoolean(this.preserveProportions, false);
    this.centerContent = this._validateBoolean(this.centerContent, this._constants.DEF_CENTER_CONTENT);
    this.preloaderType = this._removeWhite(this.preloaderType);
    this.backgroundSymbol = this._removeWhite(this.backgroundSymbol);
    this.highlightHardcover = this._validateBoolean(this.highlightHardcover, this._constants.DEF_HIGHLIGHT_HARDCOVER);
    this.playOnDemand = this._validateBoolean(this.playOnDemand, this._constants.DEF_PLAY_ON_DEMAND);
    if (this.preloaderType == "")
    {
        this.preloaderType = this._constants.DEF_PRELOADER_TYPE;
    } // end if
    this.userPreloaderId = this._removeWhite(this.userPreloaderId);
    this.cacheSize = this._validateNumber(this.cacheSize, 4, 100, this._constants.DEF_CACHE_SIZE);
    this._cache.usePreloader = this.usePreloader;
    this._cache.cachePages = this.cachePages;
    this._cache.loadOnDemand = this.loadOnDemand;
    this._cache.bgColor = this.pageBack;
};
FFlippingBookClass.prototype.gotoPage = function (i)
{
    if (this._view != undefined)
    {
        if (!this._isZoomed)
        {
            this.dispatchEvent("onNavigationFunctionCall", {target: this, functionName: "gotoPage", targetPage: i});
            this._view.gotoPage(i);
        }
        else
        {
            this.dispatchEvent("onNavigationFunctionCall", {target: this, functionName: "gotoPage", targetPage: i});
        } // end if
    } // end else if
};
FFlippingBookClass.prototype.directGotoPage = function (i)
{
    var _loc3 = i != this.leftPageNumber && i != this.rightPageNumber;
    if (this._view != undefined && _loc3)
    {
        if (!this._isZoomed)
        {
            this.dispatchEvent("onNavigationFunctionCall", {target: this, functionName: "gotoPage", targetPage: i});
            this._view.directGotoPage(i);
        }
        else
        {
            this.dispatchEvent("onNavigationFunctionCall", {target: this, functionName: "directGotoPage", targetPage: i});
        } // end if
    } // end else if
};
FFlippingBookClass.prototype.flipGotoPage = function (i)
{
    if (this._view != undefined)
    {
        if (!this._isZoomed)
        {
            this.dispatchEvent("onNavigationFunctionCall", {target: this, functionName: "flipGotoPage", targetPage: i});
            this._view.flipGotoPage(i);
        }
        else
        {
            this.dispatchEvent("onNavigationFunctionCall", {target: this, functionName: "flipGotoPage", targetPage: i});
        } // end if
    } // end else if
};
FFlippingBookView.prototype.setSize = function (w, h)
{
    this._pageWidth = w / 2;
    this._pageHeight = h;
    this.tmp01._x = this.__page01._x = -this._pageWidth;
    this.tmp01._y = this.__page01._y = -this._pageHeight / 2;
    this.tmp02._x = this.__page02._x = 0;
    this.tmp02._y = this.__page02._y = -this._pageHeight / 2;
    this.tmp03._y = this.__page03._y = -this._pageHeight / 2;
    this.tmp04._y = this.__page04._y = -this._pageHeight / 2;
    this.__pagesShadowMask._x = -this._pageWidth;
    this.__pagesShadowMask._y = -this._pageHeight / 2;
    this.__mask03._y = -this._pageHeight / 2;
    this.__mask12._y = -this._pageHeight / 2;
    this.__shMask03._y = -this._pageHeight / 2;
    this.__shMask04._y = -this._pageHeight / 2;
    this.__shadowHeight = 2 * Math.sqrt(this._pageHeight * this._pageHeight + this._pageWidth * this._pageWidth);
    this.__pagesShadowHeight = 2 * Math.sqrt(4 * this._pageHeight * this._pageHeight + this._pageWidth * this._pageWidth);
    this._drawShadow12();
    this._drawShadow03();
    this._drawShadow04();
    this._drawActionsButton();
};
FFlippingBookView.prototype._drawBook = function ()
{
    this.__actionsButton = this._baseObj.createEmptyMovieClip(this._const.ACTIONS_BUTTON_NAME, 0);
    this.__actionsButton._view = this;
    this.__actionsButton._component = this._baseObj;
    this.__page04 = this.tmp04 = this._baseObj.createEmptyMovieClip(this._const.PAGE_04_MC_NAME, this._depth++);
    this.__shadow04 = this._baseObj.createEmptyMovieClip(this._const.SHADOW_04_MC_NAME, this._depth++);
    this.__shMask04 = this._baseObj.createEmptyMovieClip(this._const.SH_MASK_04_MC_NAME, this._depth++);
    this.__page01 = this.tmp01 = this._baseObj.createEmptyMovieClip(this._const.PAGE_01_MC_NAME, this._depth++);
    this.__page02 = this.tmp02 = this._baseObj.createEmptyMovieClip(this._const.PAGE_02_MC_NAME, this._depth++);
    this.__hardCoverShadow = this._baseObj.createEmptyMovieClip(this._const.HARDCOVER_SH_MC_NAME, this._depth++);
    this.__hardCoverShadowMask = this._baseObj.createEmptyMovieClip(this._const.HARDCOVER_SHM_MC_NAME, this._depth++);
    this.__staticShadow = this._baseObj.createEmptyMovieClip(this._const.STATIC_SHADOW_MC_NAME, this._depth++);
    this.__pagesShadow = this._baseObj.createEmptyMovieClip(this._const.PAGES_SH_MC_NAME, this._depth++);
    this.__pagesShadowMask = this._baseObj.createEmptyMovieClip(this._const.PAGES_SHM_MC_NAME, this._depth++);
    this.__mask12 = this._baseObj.createEmptyMovieClip(this._const.MASK_12_MC_NAME, this._depth++);
    this.__page03 = this.tmp03 = this._baseObj.createEmptyMovieClip(this._const.PAGE_03_MC_NAME, this._depth++);
    this.__mask03 = this._baseObj.createEmptyMovieClip(this._const.MASK_03_MC_NAME, this._depth++);
    this.__page03.setMask(this.__mask03);
    this.__shadow03 = this._baseObj.createEmptyMovieClip(this._const.SHADOW_03_MC_NAME, this._depth++);
    this.__shMask03 = this._baseObj.createEmptyMovieClip(this._const.SH_MASK_03_MC_NAME, this._depth++);
    this.__page01._x = -this._pageWidth;
    this.__page01._y = -this._pageHeight / 2;
    this.__page02._x = 0;
    this.__page02._y = -this._pageHeight / 2;
    this.__page03._y = -this._pageHeight / 2;
    this.__page04._y = -this._pageHeight / 2;
    this.__pagesShadowMask._x = -this._pageWidth;
    this.__pagesShadowMask._y = -this._pageHeight / 2;
    this.__mask03._y = -this._pageHeight / 2;
    this.__mask12._y = -this._pageHeight / 2;
    this.__shMask03._y = -this._pageHeight / 2;
    this.__shMask04._y = -this._pageHeight / 2;
    this._drawShadow12();
    this._drawShadow03();
    this._drawShadow04();
};
FFlippingBookView.prototype.__redrawBook = function ()
{
    this.__drawShadow03();
    this.__mask03._x = 0;
    this.__drawShadow04();
    this.__mask12._x = 0;
    this._drawShadow12();
};
FFlippingBookView.prototype._drawActionsButton = function ()
{
    var bw = this._baseObj.width;
    var bh = this._baseObj.height;
    var dx = 0;
    if (this._baseObj.leftPageNumber == undefined)
    {
        dx = this._pageWidth;
        bw = bw / 2;
    }
    else if (this._baseObj.rightPageNumber == undefined)
    {
        bw = bw / 2;
    } // end else if
    with (this.__actionsButton)
    {
        clear();
        moveTo(0, 0);
        beginFill(0, 0);
        lineTo(bw, 0);
        lineTo(bw, bh);
        lineTo(0, bh);
        lineTo(0, 0);
        endFill();
    } // End of with
    this.__actionsButton._x = -this._pageWidth + dx;
    this.__actionsButton._y = -this._pageHeight / 2;
};
FFlippingBookView.prototype._drawShadow12 = function ()
{
    this.__pagesShadow.clear();
    this.__pagesShadow._x = 0;
    this.__pagesShadow._y = 0;
    var sw = this._const.SH12_SCALE * this._pageWidth;
    var sh = this.__pagesShadowHeight;
    var colors = [0, 0];
    var ratios = [0, 255];
    var alphas = [0, 25 * this.sd];
    var matrix = {matrixType: "box", x: -sw, y: -sh / 2, w: sw, h: sh, r: 0};
    with (this.__pagesShadow)
    {
        moveTo(-sw, -sh / 2);
        beginGradientFill("linear", colors, alphas, ratios, matrix);
        lineTo(0, -sh / 2);
        lineTo(0, sh / 2);
        lineTo(-sw, sh / 2);
        lineTo(-sw, -sh / 2);
        endFill();
    } // End of with
    this.__pagesShadow._visible = false;
};
FFlippingBookView.prototype.__drawShadow12Mask = function ()
{
    this.__pagesShadowMask.clear();
    var ax = 0;
    var ay = this._pageHeight;
    var bx = 0;
    var by = 0;
    var cx = 2 * this._pageWidth;
    var cy = 0;
    var dx = 2 * this._pageWidth;
    var dy = this._pageHeight;
    if (this._transpPage == 1)
    {
        ax = ax + this._pageWidth;
        bx = bx + this._pageWidth;
    }
    else if (this._transpPage == 2)
    {
        cx = cx - this._pageWidth;
        dx = dx - this._pageWidth;
    } // end else if
    with (this.__pagesShadowMask)
    {
        moveTo(ax, ay);
        beginFill(0, 100);
        lineTo(bx, by);
        lineTo(cx, cy);
        lineTo(dx, dy);
        lineTo(ax, ay);
        endFill();
    } // End of with
    this.__pagesShadow.setMask(this.__pagesShadowMask);
};
FFlippingBookView.prototype._drawShadow03 = function ()
{
    this.__shadow03._x = 0;
    this.__shadow03._y = 0;
    this.__shadow03.clear();
    var lightShadow = this.__shadow03.createEmptyMovieClip("light", 0);
    var darkShadow = this.__shadow03.createEmptyMovieClip("dark", 1);
    var shadowK = Math.floor(this._pageWidth / 100) - 0.500000;
    if (shadowK <= 0)
    {
        shadowK = 0.250000;
    } // end if
    var sw = this._const.SH3_SCALE * this._pageWidth / shadowK;
    var sh = this.__shadowHeight;
    var colors = [this._baseObj.dynamicShadowsDarkColor, this._baseObj.dynamicShadowsDarkColor, this._baseObj.dynamicShadowsLightColor, this._baseObj.dynamicShadowsLightColor];
    var ratios = [0, 200, 242, 255];
    var alphas = [0, 5 * this.sd, 10 * this.sd, 5 * this.sd];
    var matrix = {matrixType: "box", x: -sw, y: -sh / 2, w: sw, h: sh, r: 0};
    with (lightShadow)
    {
        clear();
        moveTo(-sw, -sh / 2);
        beginGradientFill("linear", colors, alphas, ratios, matrix);
        lineTo(0, -sh / 2);
        lineTo(0, sh / 2);
        lineTo(-sw, sh / 2);
        lineTo(-sw, -sh / 2);
        endFill();
    } // End of with
    lightShadow._visible = false;
    shadowK = Math.floor(this._pageWidth / 100) - 1;
    if (shadowK <= 0)
    {
        shadowK = 0.500000;
    } // end if
    var sw = this._const.SH3_SCALE * this._pageWidth / shadowK;
    var sh = this.__shadowHeight;
    var colors = [this._baseObj.dynamicShadowsDarkColor, this._baseObj.dynamicShadowsDarkColor, this._baseObj.dynamicShadowsDarkColor, this._baseObj.dynamicShadowsDarkColor];
    var ratios = [0, 200, 242, 255];
    var alphas = [0, 10 * this.sd, 20 * this.sd, 0];
    var matrix = {matrixType: "box", x: -sw, y: -sh / 2, w: sw, h: sh, r: 0};
    with (darkShadow)
    {
        clear();
        moveTo(-sw, -sh / 2);
        beginGradientFill("linear", colors, alphas, ratios, matrix);
        lineTo(0, -sh / 2);
        lineTo(0, sh / 2);
        lineTo(-sw, sh / 2);
        lineTo(-sw, -sh / 2);
        endFill();
    } // End of with
    darkShadow._visible = false;
    this.__shadow03._visible = false;
};
FFlippingBookView.prototype._drawShadow04 = function ()
{
    this.__shadow04._x = 0;
    this.__shadow04._y = 0;
    this.__shadow04.clear();
    var sw = 0.600000 * this._pageWidth;
    var sh = this.__shadowHeight;
    var colors = [0, 0];
    var ratios = [0, 255];
    var alphas = [0, 35 * this.sd];
    var matrix = {matrixType: "box", x: -sw, y: -sh / 2, w: sw, h: sh, r: 0};
    with (this.__shadow04)
    {
        moveTo(-sw, -sh / 2);
        beginGradientFill("linear", colors, alphas, ratios, matrix);
        lineTo(0, -sh / 2);
        lineTo(0, sh / 2);
        lineTo(-sw, sh / 2);
        lineTo(-sw, -sh / 2);
        endFill();
    } // End of with
    this.__shadow04._visible = false;
};
FFlippingBookView.prototype.__isCorrectCorner = function (x, y)
{
    var _loc3 = this.__isCorner(Math.abs(x), Math.abs(y));
    var _loc2 = this.__oy * y > 0 && this.__ox * x > 0;
    return (_loc3 && _loc2);
};
FFlippingBookView.prototype.__isCorner = function (x, y)
{
    if (x > this._pageWidth - this._autoFlip)
    {
        if (x < this._pageWidth)
        {
            if (y > this._pageHeight / 2 - this._autoFlip)
            {
                if (y < this._pageHeight / 2)
                {
                    return (true);
                } // end if
            } // end if
        } // end if
    } // end if
    return (false);
};
FFlippingBookView.prototype.__onMouseUpOutside = function ()
{
    this._view.__onMouseUp.apply(this, true);
    this._component.dispatchEvent("onReleaseOutside", {target: targetObj._baseObj});
};
FFlippingBookView.prototype.__onRollOver = function ()
{
    this._component.dispatchEvent("onRollOver", {target: targetObj._baseObj});
};
FFlippingBookView.prototype.__onRollOut = function ()
{
    this._component.dispatchEvent("onRollOut", {target: targetObj._baseObj});
};
FFlippingBookView.prototype.playSound = function ()
{
    if (this.__hardCoverFlip)
    {
        this._coverSound.start(0, 1);
    }
    else
    {
        this._flipSound.start(0, 1);
    } // end else if
};
FFlippingBookView.prototype.__onMouseUp = function (outside)
{
    var _loc2 = this._view;
    _loc2.__isMouseDown = false;
    var _loc3 = this._component._xmouse;
    var _loc7 = this._component._ymouse;
    if (_loc2._bookState == this._component._constants.FLIPPING_STATE)
    {
        var _loc14 = _loc2.__isCorner(Math.abs(_loc2._baseObj._xmouse), Math.abs(_loc2._baseObj._ymouse));
        if (_loc2._flipOnClick || !_flipOnClick && !_loc14 && this._component.enabled && this._component._visible)
        {
            _loc2.playSound();
        } // end if
        var _loc5 = _loc2.__ox;
        if (_loc14 && this._component.enabled && this._component._visible)
        {
            _loc2._bookState = this._component._constants.FLIPOVER_STATE;
            _loc2.playSound();
            _loc2._baseObj.dispatchEvent("onFlipOver", {target: _loc2._baseObj, forward: _loc2.__ox > 0});
        }
        else if (this._component.enabled && this._component._visible)
        {
            _loc2._bookState = this._component._constants.FLIPBACK_STATE;
            _loc2._releasedByFlipCorner = false;
        } // end else if
        if (_loc5 < 0 && _loc3 > 0 || _loc5 > 0 && _loc3 < 0 && this._component.enabled && this._component._visible)
        {
            _loc2._bookState = this._component._constants.FLIPOVER_STATE;
            _loc2._baseObj.dispatchEvent("onFlipOver", {target: _loc2._baseObj, forward: _loc2.__ox > 0});
        } // end if
    } // end if
    var _loc12 = _loc2._baseObj.pagesSet[_loc2._model._userCurrentPage];
    if (_loc3 > -_loc2._pageWidth && _loc7 > -_loc2._pageHeight / 2 && _loc3 < _loc2._pageWidth && _loc7 < _loc2._pageHeight / 2)
    {
        if (_loc3 < 0)
        {
            var _loc6 = _loc2._model._curPageNumbers[0];
            var _loc4 = _loc2._cache.__pagesHolders[_loc2._model._userPages[_loc2._model._curPageNumbers[0]]];
            if (_loc4.media != undefined)
            {
                _loc4 = _loc4.media;
            } // end if
            if (_loc6 != undefined && !outside)
            {
                _loc2._baseObj.dispatchEvent("onRelease", {target: _loc2._baseObj, pageNumber: _loc6, page_mc: _loc4, isCorner: _loc14});
            } // end if
        }
        else if (_loc3 > 0)
        {
            _loc6 = _loc2._model._curPageNumbers[1];
            _loc4 = _loc2._cache.__pagesHolders[_loc2._model._userPages[_loc2._model._curPageNumbers[1]]];
            if (_loc4.media != undefined)
            {
                _loc4 = _loc4.media;
            } // end if
            if (_loc6 != undefined && !outside)
            {
                _loc2._baseObj.dispatchEvent("onRelease", {target: _loc2._baseObj, pageNumber: _loc6, page_mc: _loc4, isCorner: _loc14});
            } // end if
        } // end if
    } // end else if
};
FFlippingBookView.prototype.__onMouseDown = function ()
{
    var _loc2 = this._view;
    _loc2.__isMouseDown = true;
    var _loc5 = this._component._xmouse;
    var _loc6 = this._component._ymouse;
    if (_loc5 > -_loc2._pageWidth && _loc6 > -_loc2._pageHeight / 2 && _loc5 < _loc2._pageWidth && _loc6 < _loc2._pageHeight / 2)
    {
        var _loc3 = false;
        if (_loc2._bookState == this._component._constants.AUTOFLIP_STATE)
        {
            _loc3 = true;
        } // end if
        if (_loc5 < 0)
        {
            var _loc12 = _loc2._baseObj.pagesSet[_loc2._model._userCurrentPage];
            var _loc7 = _loc2._model._curPageNumbers[0];
            var _loc4 = _loc2._cache.__pagesHolders[_loc2._model._userPages[_loc2._model._curPageNumbers[0]]];
            if (_loc4.media != undefined)
            {
                _loc4 = _loc4.media;
            } // end if
            if (_loc7 != undefined)
            {
                _loc2._baseObj.onClick(_loc7, _loc4, _loc3);
                _loc2._baseObj.dispatchEvent("onClick", {target: _loc2._baseObj, pageNumber: _loc7, page_mc: _loc4, isCorner: _loc3});
            } // end if
        }
        else if (_loc5 > 0)
        {
            _loc12 = _loc2._baseObj.pagesSet[_loc2._model._userCurrentPage];
            _loc7 = _loc2._model._curPageNumbers[1];
            _loc4 = _loc2._cache.__pagesHolders[_loc2._model._userPages[_loc2._model._curPageNumbers[1]]];
            if (_loc4.media != undefined)
            {
                _loc4 = _loc4.media;
            } // end if
            if (_loc7 != undefined)
            {
                _loc2._baseObj.onClick(_loc7, _loc4, _loc3);
                _loc2._baseObj.dispatchEvent("onClick", {target: _loc2._baseObj, pageNumber: _loc7, page_mc: _loc4, isCorner: _loc3});
            } // end if
        } // end if
    } // end else if
    if (!this._component._visible || !this._component.enabled)
    {
        return;
    } // end if
    if (!_loc2._flipOnClick && _loc2._bookState != this._component._constants.AUTOFLIP_STATE)
    {
        return;
    } // end if
    if (_loc3)
    {
        if (_loc2._flipOnClick)
        {
            _loc2._bookState = this._component._constants.FLIPPING_STATE;
        }
        else
        {
            _loc2._bookState = this._component._constants.FLIPPING_STATE;
        } // end if
    } // end else if
    if (_loc5 != 0 && _loc5 > -_loc2._pageWidth && _loc6 > -_loc2._pageHeight / 2 && _loc5 < _loc2._pageWidth && _loc6 < _loc2._pageHeight / 2)
    {
        if (_loc2._bookState == this._component._constants.UNACTIVE_STATE)
        {
            if (!_loc2.__canDragPage)
            {
                _loc2.__startClickTrack(this, {target: _loc2._baseObj, pageNumber: _loc7, page_mc: _loc4, isCorner: _loc3, x: _loc5, y: _loc6});
                return;
            } // end if
            _loc2._bookState = this._component._constants.FLIPPING_STATE;
            var _loc8 = Math.sqrt(_loc5 * _loc5 + _loc6 * _loc6);
            var _loc9 = Math.asin(_loc6 / _loc8);
            _loc6 = Math.tan(_loc9) * _loc2._pageWidth;
            if (_loc6 > _loc2._pageHeight / 2)
            {
                _loc6 = _loc2._pageHeight / 2;
            } // end if
            if (_loc6 < -_loc2._pageHeight / 2)
            {
                _loc6 = -_loc2._pageHeight / 2;
            } // end if
            _loc2.__oy = _loc6;
            if (_loc5 < 0)
            {
                _loc2.__page04._x = -_loc2._pageWidth;
                _loc2.__ox = -_loc2._pageWidth;
                _loc2._model.goBack();
                _loc2.onStartFlip(_loc2._model._curPageNumbers[0], true);
            } // end if
            if (_loc5 > 0)
            {
                _loc2.__page04._x = 0;
                _loc2.__ox = _loc2._pageWidth;
                _loc2._model.goForward();
                _loc2.onStartFlip(_loc2._model._curPageNumbers[1], false);
            } // end if
            if (_loc2._bookState != this._component._constants.UNACTIVE_STATE)
            {
                _loc2.__drawShadow12Mask();
            } // end if
            _loc2.__oldX = _loc2.__ox;
            _loc2.__oldY = _loc2.__oy;
        }
        else if (_loc2._bookState == this._component._constants.FLIP_CORNER_FIXED_STATE || _loc2._bookState == this._component._constants.FLIP_CORNER_STATE || _loc2._bookState == this._component._constants.FLIPBACK_STATE)
        {
            _loc2._bookState = this._component._constants.FLIPPING_STATE;
            _loc8 = Math.sqrt(_loc5 * _loc5 + _loc6 * _loc6);
            _loc9 = Math.asin(_loc6 / _loc8);
            _loc6 = Math.tan(_loc9) * _loc2._pageWidth;
            if (_loc6 > _loc2._pageHeight / 2)
            {
                _loc6 = _loc2._pageHeight / 2;
            } // end if
            if (_loc6 < -_loc2._pageHeight / 2)
            {
                _loc6 = -_loc2._pageHeight / 2;
            } // end if
            _loc2.__oy = _loc6;
            _loc2.__oldX = _loc2.__ox;
            _loc2.__oldY = _loc2.__oy;
        } // end if
    } // end else if
};
FFlippingBookView.prototype.__startClickTrack = function (thisObject, parametersObject)
{
    clearInterval(this.__clickTrackingInterval);
    this.__clickTrackingInterval = setInterval(this, "__clickTrack", 100, thisObject, parametersObject);
};
FFlippingBookView.prototype.__clickTrack = function (thisObject, parametersObject)
{
    clearInterval(this.__clickTrackingInterval);
    var _loc5 = this._baseObj._xmouse - parametersObject.x;
    var _loc4 = this._baseObj._ymouse - parametersObject.y;
    var _loc3 = Math.abs(_loc5) > 5 || Math.abs(_loc4) > 5;
    if (this.__isMouseDown && _loc3)
    {
        this.__canDragPage = true;
        this.__onMouseDown.call(thisObject);
        this.__canDragPage = false;
    }
    else
    {
        this._baseObj.dispatchEvent("onClickWithoutDragging", {target: this._baseObj, pageNumber: parametersObject.pageNumber, page_mc: parametersObject.page_mc, isCorner: parametersObject.isCorner});
    } // end else if
};
FFlippingBookView.prototype.onStartFlip = function (p, isLeft)
{
    if (!this._baseObj.alwaysOpened)
    {
        if (isLeft && this._baseObj.leftPageNumber == undefined)
        {
            return;
        }
        else if (!isLeft && this._baseObj.rightPageNumber == undefined)
        {
            return;
        } // end else if
    }
    else
    {
        if (isLeft && this._baseObj.leftPageNumber == 0)
        {
            return;
        } // end if
        if (!isLeft && this._baseObj.rightPageNumber == this._baseObj.totalPages - 1)
        {
            return;
        } // end if
    } // end else if
    var _loc3 = this._baseObj.getPageLink(p);
    this._cache.__freezeContent();
    _loc3.onStartFlip();
    this._baseObj.onStartFlip(p);
    this._baseObj.dispatchEvent("onStartFlip", {target: this._baseObj, pageNumber: p});
};
FFlippingBookView.prototype.onSetPages = function (i, j)
{
    if (this._bookState == this._const.INIT_STATE)
    {
        this._bookState = this._const.UNACTIVE_STATE;
    }
    else if (this._bookState == this._const.UNACTIVE_STATE)
    {
        this.__redrawBook();
    }
    else if ((this._bookState == this._const.GOTOPAGE_STATE || this._bookState == this._const.FLIP_GOTOPAGE_STATE) && i == 1)
    {
        this.__redrawBook();
        this.__oldX = 0;
        this.__oldY = 0;
        if (this._bookState == this._const.GOTOPAGE_STATE)
        {
            this._model.getNextGotoPage(this.__gotoPageIndex);
        }
        else
        {
            this._model.getFlipGotoPage(this.__gotoPageIndex, true);
        } // end else if
        if (this._bookState != this._const.UNACTIVE_STATE)
        {
            this.__pagesShadow._visible = true;
            this.__shadow04._visible = true;
            this.__shadow03.setMask(this.__shMask03);
            this.__shadow04.setMask(this.__shMask04);
            this.__drawShadow12Mask();
        } // end else if
    } // end else if
    this._drawActionsButton();
};
FFlippingBookView.prototype.cancelFlipping = function ()
{
    if (this._bookState != this._const.UNACTIVE_STATE)
    {
        this._bookState = this._const.UNACTIVE_STATE;
        this._cache.__restoreFrozenPages();
        this._cache.restoreWorkPages();
    } // end if
};
FFlippingBookView.prototype.__onEnterFrame = function ()
{
    var _loc2 = this._view;
    var _loc3 = _loc2._baseObj;
    _loc3._view.__actionsButton.useHandCursor = _loc3.handOverPage;
    _loc3._initLibraryPages();
    var _loc8 = _loc3.getPageLink(_loc3.leftPageNumber);
    var _loc14 = _loc3.getPageLink(_loc3.rightPageNumber);
    if (_loc8.isExternal == true && _loc8.onOpenCalled == false)
    {
        _loc8.onOpen();
        _loc8.onOpenCalled = true;
    } // end if
    if (_loc14.isExternal == true && _loc14.onOpenCalled == false)
    {
        _loc14.onOpen();
        _loc14.onOpenCalled = true;
    } // end if
    if (!this._visible || !this.enabled)
    {
        return;
    } // end if
    var _loc4 = this._xmouse;
    var _loc5 = this._ymouse;
    if (_loc2._bookState == _loc2._const.START_FLIP_CORNER_STATE)
    {
        var _loc11 = _loc2._getFlipCornerCoords();
        _loc4 = _loc11.x;
        _loc5 = _loc11.y;
        _loc2._bookState = _loc2._const.FLIP_CORNER_STATE;
        var _loc27 = Math.sqrt(_loc4 * _loc4 + _loc5 * _loc5);
        var _loc28 = Math.asin(_loc5 / _loc27);
        _loc5 = Math.tan(_loc28) * _loc2._pageWidth;
        if (_loc5 > 0)
        {
            _loc5 = _loc2._pageHeight / 2;
        } // end if
        if (_loc5 < 0)
        {
            _loc5 = -_loc2._pageHeight / 2;
        } // end if
        _loc2.__oy = _loc5;
        _loc5 = -100;
        if (_loc4 < 0)
        {
            _loc2.__page04._x = -_loc2._pageWidth;
            _loc2.__ox = -_loc2._pageWidth;
            _loc2._model.goBack();
            _loc2.onStartFlip(_loc2._model._curPageNumbers[0], true);
        } // end if
        if (_loc4 > 0)
        {
            _loc2.__page04._x = 0;
            _loc2.__ox = _loc2._pageWidth;
            _loc2._model.goForward();
            _loc2.onStartFlip(_loc2._model._curPageNumbers[1], false);
        } // end if
        if (_loc2._bookState != this._constants.UNACTIVE_STATE)
        {
            _loc2.__pagesShadow._visible = true;
            _loc2.__shadow04._visible = true;
            _loc2.__shadow03.setMask(_loc2.__shMask03);
            _loc2.__shadow04.setMask(_loc2.__shMask04);
            _loc2.__drawShadow12Mask();
        } // end if
        _loc2.__oldX = _loc2.__ox;
        _loc2.__oldY = _loc2.__oy;
    }
    else if (_loc2._bookState == _loc2._const.AUTOFLIP_STATE)
    {
        _loc3._view.__actionsButton.useHandCursor = _loc3.handOverCorner;
        if (!_loc2.__isCorrectCorner(_loc4, _loc5))
        {
            _loc2._bookState = _loc2._const.FLIPBACK_STATE;
            _loc3.dispatchEvent("onCornerOut", {target: _loc3});
            _loc2.onCornerOut();
        } // end if
    }
    else if (_loc2._bookState == _loc2._const.UNACTIVE_STATE && _loc2._autoFlip != 0)
    {
        if (_loc2.__isCorner(Math.abs(_loc4), Math.abs(_loc5)))
        {
            _loc3.dispatchEvent("onCornerOver", {target: _loc3});
            _loc2.onCornerOver();
            _loc2._bookState = _loc2._const.AUTOFLIP_STATE;
            _loc2._releasedByFlipCorner = false;
            _loc27 = Math.sqrt(_loc4 * _loc4 + _loc5 * _loc5);
            _loc28 = Math.asin(_loc5 / _loc27);
            _loc5 = Math.tan(_loc28) * _loc2._pageWidth;
            if (_loc5 > 0)
            {
                _loc5 = _loc2._pageHeight / 2;
            } // end if
            if (_loc5 < 0)
            {
                _loc5 = -_loc2._pageHeight / 2;
            } // end if
            _loc2.__oy = _loc5;
            _loc5 = this._ymouse;
            if (_loc4 < 0)
            {
                _loc2.__page04._x = -_loc2._pageWidth;
                _loc2.__ox = -_loc2._pageWidth;
                _loc2._model.goBack();
                _loc2.onStartFlip(_loc2._model._curPageNumbers[0], true);
            } // end if
            if (_loc4 > 0)
            {
                _loc2.__page04._x = 0;
                _loc2.__ox = _loc2._pageWidth;
                _loc2._model.goForward();
                _loc2.onStartFlip(_loc2._model._curPageNumbers[1], false);
            } // end if
            if (_loc2._bookState != this._constants.UNACTIVE_STATE)
            {
                _loc2.__pagesShadow._visible = true;
                _loc2.__shadow04._visible = true;
                _loc2.__shadow03.setMask(_loc2.__shMask03);
                _loc2.__shadow04.setMask(_loc2.__shMask04);
                _loc2.__drawShadow12Mask();
            } // end if
            _loc2.__oldX = _loc2.__ox;
            _loc2.__oldY = _loc2.__oy;
        } // end else if
    } // end else if
    if (_loc2._bookState == _loc2._const.FLIP_CORNER_STATE)
    {
        _loc11 = _loc2._getFlipCornerCoords();
        _loc4 = _loc11.x;
        _loc5 = _loc11.y;
        if (_loc2.__hardCoverFlip)
        {
            _loc4 = _loc2.__oldX = _loc2.__oldX + (_loc4 - _loc2.__oldX) * _loc2._rigidSpeed;
            _loc5 = _loc2.__oldY = _loc2.__oldY + (_loc5 - _loc2.__oldY) * _loc2._rigidSpeed;
        }
        else
        {
            _loc4 = _loc2.__oldX = _loc2.__oldX + (_loc4 - _loc2.__oldX) * _loc2._pageSpeed;
            _loc5 = _loc2.__oldY = _loc2.__oldY + (_loc5 - _loc2.__oldY) * _loc2._pageSpeed;
        } // end else if
        _loc2.__movePage(_loc4, _loc5);
        var _loc19 = Math.abs(_loc4 - _loc11.x) < 1 && Math.abs(_loc5 - _loc11.y);
        if (_loc2._flipCornerRelease && _loc19)
        {
            _loc2._bookState = _loc2._const.AUTOFLIP_STATE;
            _loc2._releasedByFlipCorner = _loc2._vibrate;
        }
        else if (!_loc2._flipCornerRelease && _loc19)
        {
            _loc2._bookState = _loc2._const.FLIP_CORNER_FIXED_STATE;
        } // end else if
    }
    else if (_loc2._bookState == _loc2._const.FLIPPING_STATE || _loc2._bookState == _loc2._const.AUTOFLIP_STATE)
    {
        if (_loc2.__hardCoverFlip)
        {
            _loc4 = _loc2.__oldX = _loc2.__oldX + (_loc4 - _loc2.__oldX) * _loc2._rigidSpeed;
            _loc5 = _loc2.__oldY = _loc2.__oldY + (_loc5 - _loc2.__oldY) * _loc2._rigidSpeed;
        }
        else
        {
            _loc4 = _loc2.__oldX = _loc2.__oldX + (_loc4 - _loc2.__oldX) * _loc2._pageSpeed;
            _loc5 = _loc2.__oldY = _loc2.__oldY + (_loc5 - _loc2.__oldY) * _loc2._pageSpeed;
        } // end else if
        _loc2.__movePage(_loc4, _loc5);
    }
    else if (_loc2._bookState == _loc2._const.FLIP_CORNER_FIXED_STATE && _loc2._autoFlip != 0 && _loc2.__isCorrectCorner(_loc4, _loc5))
    {
        _loc2._bookState = _loc2._const.AUTOFLIP_STATE;
        if (_loc2.__hardCoverFlip)
        {
            _loc4 = _loc2.__oldX = _loc2.__oldX + (_loc4 - _loc2.__oldX) * _loc2._rigidSpeed;
            _loc5 = _loc2.__oldY = _loc2.__oldY + (_loc5 - _loc2.__oldY) * _loc2._rigidSpeed;
        }
        else
        {
            _loc4 = _loc2.__oldX = _loc2.__oldX + (_loc4 - _loc2.__oldX) * _loc2._pageSpeed;
            _loc5 = _loc2.__oldY = _loc2.__oldY + (_loc5 - _loc2.__oldY) * _loc2._pageSpeed;
        } // end else if
        _loc2.__movePage(_loc4, _loc5);
    }
    else if (_loc2._bookState == _loc2._const.FLIPOVER_STATE)
    {
        if (_loc2.__hardCoverFlip)
        {
            _loc4 = _loc2.__oldX = _loc2.__oldX + (-_loc2.__ox - _loc2.__oldX) * _loc2._rigidSpeed;
            _loc5 = _loc2.__oldY = _loc2.__oldY + (_loc2.__oy - _loc2.__oldY) * _loc2._rigidSpeed;
        }
        else
        {
            _loc4 = _loc2.__oldX = _loc2.__oldX + (-_loc2.__ox - _loc2.__oldX) * _loc2._closeSpeed;
            _loc5 = _loc2.__oldY = _loc2.__oldY + (_loc2.__oy - _loc2.__oldY) * _loc2._closeSpeed;
        } // end else if
        _loc2.__movePage(_loc4, _loc5);
        if (_loc4 / -_loc2.__ox > _loc2._minOffset)
        {
            _loc2._bookState = _loc2._const.UNACTIVE_STATE;
            _loc2._cache.restorePages();
            _loc2._model.putPage();
        } // end if
    }
    else if (_loc2._bookState == _loc2._const.FLIPBACK_STATE)
    {
        if (_loc2.__hardCoverFlip)
        {
            _loc4 = _loc2.__oldX = _loc2.__oldX + (_loc2.__ox - _loc2.__oldX) * _loc2._rigidSpeed;
            _loc5 = _loc2.__oldY = _loc2.__oldY + (_loc2.__oy - _loc2.__oldY) * _loc2._rigidSpeed;
        }
        else
        {
            _loc4 = _loc2.__oldX = _loc2.__oldX + (_loc2.__ox - _loc2.__oldX) * _loc2._closeSpeed;
            _loc5 = _loc2.__oldY = _loc2.__oldY + (_loc2.__oy - _loc2.__oldY) * _loc2._closeSpeed;
        } // end else if
        _loc2.__movePage(_loc4, _loc5);
        if (_loc4 / _loc2.__ox > _loc2._minOffset)
        {
            if (_loc4 > 0)
            {
                var _loc16 = _loc2._model._curPageNumbers[1];
                var _loc23 = _loc3.getPageLink(_loc16);
                _loc23.onFlipBack();
                _loc3.onFlipBack(_loc16);
                _loc3.dispatchEvent("onFlipBack", {target: _loc3, pageNumber: _loc16});
            }
            else
            {
                _loc16 = _loc2._model._curPageNumbers[0];
                _loc23 = _loc3.getPageLink(_loc16);
                _loc23.onFlipBack();
                _loc3.onFlipBack(_loc16);
                _loc3.dispatchEvent("onFlipBack", {target: _loc3, pageNumber: _loc16});
            } // end else if
            _loc3._cache.__restoreFrozenPages();
            _loc2._bookState = _loc2._const.UNACTIVE_STATE;
            _loc2._cache.restoreWorkPages();
            _loc2.redrawBook();
            if (_loc2._releasedByFlipCorner)
            {
                _loc2.flipCorner(_loc2._flipCornerPosition, _loc2._flipCornerRelease, _loc2._flipCornerAmount, _loc2._flipCornerAngle, _loc2._vibrate, _loc2._playSound);
            } // end if
        } // end if
    }
    else if (_loc2._bookState == _loc2._const.GOTOPAGE_STATE || _loc2._bookState == _loc2._const.FLIP_GOTOPAGE_STATE)
    {
        var _loc9 = _loc3.navigationFlipOffset;
        var _loc18 = _loc2._pageWidth;
        var _loc24 = _loc2._pageHeight;
        var _loc15 = (_loc18 * _loc18 + _loc9 * _loc9) / (2 * _loc9);
        var _loc17 = 0;
        var _loc22 = _loc24 / 2 + _loc15 - _loc9;
        if (_loc2.x1 == undefined)
        {
            _loc2.x1 = _loc2.__ox;
        }
        else
        {
            _loc2.x1 = _loc2.x1 + (-_loc2.__ox - _loc2.x1) * _loc2._gotoSpeed;
        } // end else if
        var _loc7 = _loc2.x1;
        var _loc21 = _loc22 - Math.sqrt(_loc15 * _loc15 - (_loc7 - _loc17) * (_loc7 - _loc17));
        _loc2.__movePage(_loc7, _loc21);
        if (_loc7 / -_loc2.__ox > _loc2._minOffset)
        {
            _loc2.x1 = undefined;
            _loc2._cache.restorePages();
            _loc2._model.putPage();
        } // end else if
    } // end else if
    var _loc12 = this._xmouse;
    var _loc13 = this._ymouse;
    var _loc31 = _loc12 > -_loc2._pageWidth && _loc13 > -_loc2._pageHeight / 2 && _loc12 < 0 && _loc13 < _loc2._pageHeight / 2;
    var _loc6 = _loc12 > 0 && _loc13 > -_loc2._pageHeight / 2 && _loc12 < _loc2._pageWidth && _loc13 < _loc2._pageHeight / 2;
    var _loc26 = _loc3.leftPageNumber != undefined;
    var _loc25 = _loc3.rightPageNumber != undefined;
    _loc31 = _loc31 && _loc26;
    _loc6 = _loc6 && _loc25;
    var _loc20 = _loc31 || _loc6;
    var _loc10 = _loc3._alreadyOver;
    if (_loc10 == undefined)
    {
        _loc10 = false;
    } // end if
    if (_loc3.alreadyOverLeftPage == undefined)
    {
        _loc3.alreadyOverLeftPage = false;
    } // end if
    if (_loc3.alreadyOverRightPage == undefined)
    {
        _loc3.alreadyOverRightPage = false;
    } // end if
    if (_loc31 && !_loc3.alreadyOverLeftPage)
    {
        _loc3.onPageOver(true, _loc3.leftPageNumber);
        _loc3.dispatchEvent("onPageOver", {target: _loc3, isLeftPage: true, pageNumber: _loc3.leftPageNumber});
        _loc3.alreadyOverLeftPage = true;
    }
    else if (_loc6 && !_loc3.alreadyOverRightPage)
    {
        _loc3.onPageOver(false, _loc3.rightPageNumber);
        _loc3.dispatchEvent("onPageOver", {target: _loc3, isLeftPage: false, pageNumber: _loc3.rightPageNumber});
        _loc3.alreadyOverRightPage = true;
    } // end else if
    if (!_loc31 && _loc3.alreadyOverLeftPage && _loc2._bookState != _loc2._const.FLIPPING_STATE)
    {
        _loc3.onPageOut(true, _loc3.leftPageNumber);
        _loc3.dispatchEvent("onPageOut", {target: _loc3, isLeftPage: true, pageNumber: _loc3.leftPageNumber});
        _loc3.alreadyOverLeftPage = false;
    }
    else if (!_loc6 && _loc3.alreadyOverRightPage && _loc2._bookState != _loc2._const.FLIPPING_STATE)
    {
        _loc3.onPageOut(false, _loc3.rightPageNumber);
        _loc3.dispatchEvent("onPageOut", {target: _loc3, isLeftPage: false, pageNumber: _loc3.rightPageNumber});
        _loc3.alreadyOverRightPage = false;
    } // end else if
    if (!_loc10 && _loc20)
    {
        _loc3.onBookOver(_loc31);
        _loc3.dispatchEvent("onBookOver", {target: _loc3, isLeftPage: _loc31});
        _loc3._alreadyOver = true;
    }
    else if (_loc10 && !_loc20 && _loc2._bookState != _loc2._const.FLIPPING_STATE)
    {
        _loc3.onBookOut(_loc31);
        _loc3.dispatchEvent("onBookOut", {target: _loc3, isLeftPage: _loc31});
        _loc3._alreadyOver = false;
        _loc3.alreadyOverLeftPage = false;
        _loc3.alreadyOverRightPage = false;
    } // end else if
};
FFlippingBookView.prototype.__movePage = function (x, y)
{
    var _loc5 = this.__page03.parent.parent.holder;
    if (_loc5.media)
    {
        _loc5 = _loc5.media;
    } // end if
    if (_loc5 == undefined)
    {
        _loc5 = this.__page03;
    } // end if
    if (this._cache.__isRigidPage(_loc5) || this._cache.__isRigidPage(_loc5._parent))
    {
        this.__hardCoverFlip = true;
        if (_loc5.params.perspective == "true")
        {
            this.__moveRigidPerspectivePage(x, y);
        }
        else
        {
            this.__moveRigidPage(x, y);
        } // end else if
        return;
    } // end if
    this.__hardCoverFlip = false;
    var _loc4 = this._pageHeight / 2;
    var _loc6 = this._pageWidth;
    var _loc8 = Math.sqrt((_loc4 + this.__oy) * (_loc4 + this.__oy) + _loc6 * _loc6);
    var _loc7 = Math.sqrt((_loc4 - this.__oy) * (_loc4 - this.__oy) + _loc6 * _loc6);
    var _loc12 = Math.sqrt((_loc4 + y) * (_loc4 + y) + x * x);
    var _loc11 = Math.sqrt((_loc4 - y) * (_loc4 - y) + x * x);
    if (_loc12 > _loc8 || _loc11 > _loc7)
    {
        if (y < this.__oy)
        {
            var _loc9 = Math.asin((_loc4 - y) / _loc11);
            y = _loc4 - Math.sin(_loc9) * _loc7;
            x = x < 0 ? (-Math.cos(_loc9) * _loc7) : (Math.cos(_loc9) * _loc7);
            if (y > this.__oy)
            {
                if (this.__ox * x > 0)
                {
                    y = this.__oy;
                    x = this.__ox;
                }
                else
                {
                    y = this.__oy;
                    x = -this.__ox;
                } // end if
            } // end else if
        }
        else
        {
            _loc9 = Math.asin((y + _loc4) / _loc12);
            y = Math.sin(_loc9) * _loc8 - _loc4;
            x = x < 0 ? (-Math.cos(_loc9) * _loc8) : (Math.cos(_loc9) * _loc8);
            if (y < this.__oy)
            {
                if (this.__ox * x > 0)
                {
                    y = this.__oy;
                    x = this.__ox;
                }
                else
                {
                    y = this.__oy;
                    x = -this.__ox;
                } // end if
            } // end if
        } // end else if
    } // end else if
    var _loc19 = this.__oy - y;
    var _loc20 = this.__ox - x;
    var _loc16 = Math.atan(_loc19 / _loc20);
    var _loc10 = 2 * _loc16;
    var _loc18 = _loc10 * 57.295780;
    var _loc17 = Math.sin(_loc10);
    var _loc15 = Math.cos(_loc10);
    var _loc14 = x + (_loc4 + this.__oy) * _loc17 - (_loc6 - this.__ox) / 2 * _loc15;
    var _loc13 = y - (_loc4 + this.__oy) * _loc15 - (_loc6 - this.__ox) / 2 * _loc17;
    this.__page03._rotation = _loc18;
    this.__page03._x = _loc14;
    this.__page03._y = _loc13;
    this.__drawMasks(_loc16, _loc14, _loc13, x, y);
    this.__page03._visible = true;
    this.__page04._visible = true;
};
FFlippingBookView.prototype.__moveRigidPerspectivePage = function (x, y)
{
    var _loc8 = 800;
    y = -this._pageHeight / 2;
    if (x >= this._pageWidth)
    {
        x = this._pageWidth;
    }
    else if (x <= -this._pageWidth)
    {
        x = -this._pageWidth;
    } // end else if
    var _loc12 = Math.sqrt(this._pageWidth * this._pageWidth - x * x);
    var _loc7 = _loc8 / (_loc8 + _loc12);
    var _loc2 = x * _loc7;
    var _loc4 = Math.abs(y * _loc7) - this._pageHeight;
    var _loc18 = 0;
    var _loc16 = -this._pageHeight / 2;
    var _loc17 = _loc2;
    var _loc14 = _loc4;
    var _loc15 = _loc2;
    var _loc21 = -_loc4;
    var _loc22 = 0;
    var _loc20 = this._pageHeight / 2;
    var _loc9 = this._baseObj.createEmptyMovieClip("workingClipPerspective", this._const.HARDCOVER_DEPTH + 3);
    var _loc5 = 90 - x / this._pageWidth * 90;
    if (_loc5 < 0)
    {
        _loc5 = 0;
    }
    else if (_loc5 > 180)
    {
        _loc5 = 180;
    } // end else if
    if (_loc5 <= 90)
    {
        if (this.__ox > 0)
        {
            var _loc6 = this.__page02;
            var _loc13 = this.__page03;
            var _loc11 = this.__page01;
            var _loc10 = this.__page04;
        }
        else
        {
            _loc6 = this.__page03;
            _loc13 = this.__page01;
            _loc11 = this.__page02;
            _loc10 = this.__page04;
        } // end else if
        _loc6._x = 0;
        _loc6._y = -this._pageHeight / 2;
    }
    else
    {
        if (this.__ox > 0)
        {
            _loc6 = this.__page03;
            _loc13 = this.__page02;
            _loc11 = this.__page01;
            _loc10 = this.__page04;
        }
        else
        {
            _loc6 = this.__page01;
            _loc13 = this.__page03;
            _loc11 = this.__page02;
            _loc10 = this.__page04;
        } // end else if
        _loc6._x = _loc2;
        _loc6._y = -this._pageHeight / 2;
    } // end else if
    _loc6._visible = true;
    _loc13._visible = false;
    _loc11._visible = true;
    _loc10._visible = true;
    this.__pagesShadow._visible = false;
    _loc2 = Math.round(_loc2);
    _loc4 = Math.round(_loc4);
    this.__distortObj8(_loc6, _loc9, _loc2, _loc4);
};
FFlippingBookView.prototype.__distortObj8Alt = function (targetClip, pageClip, x0, y0, x1, y1, x2, y2, x3, y3)
{
};
FFlippingBookView.prototype.__distortObj8 = function (pageClip, targetClip, xp, yp)
{
    var _loc15 = 48;
    var _loc28 = this._pageHeight / 2;
    var _loc27 = -_loc28 - yp;
    var _loc29 = Math.atan(_loc27 / xp);
    var _loc37 = Math.ceil(_loc27 / _loc15);
    var _loc6 = 0;
    var _loc36 = -_loc28;
    var _loc39 = 0;
    for (var _loc3 = 1; _loc3 <= _loc37; ++_loc3)
    {
        var _loc5 = _loc3 * _loc15;
        if (_loc5 > _loc27)
        {
            _loc5 = _loc27;
        } // end if
        var _loc11 = _loc5 - (_loc3 - 1) * _loc15;
        if (_loc29 != 0)
        {
            var _loc24 = _loc5 / Math.tan(_loc29);
        }
        else if (xp > 0)
        {
            _loc24 = this._pageWidth;
        }
        else
        {
            _loc24 = -this._pageWidth;
        } // end else if
        var _loc22 = -_loc28 - _loc5;
        var _loc34 = _loc24 - Math.floor(_loc24);
        var _loc21 = 5 * _loc11 / _loc15;
        _loc24 = Math.floor(_loc24);
        var _loc13 = Math.abs(_loc24 - _loc6);
        var _loc7 = -2 * _loc22;
        var _loc20 = 2 * _loc3 - 1;
        var _loc4 = targetClip.createEmptyMovieClip("piece" + _loc3, _loc20);
        var _loc14 = new flash.display.BitmapData(_loc13, _loc7, false, 65280);
        var _loc17 = new flash.geom.Matrix();
        var _loc18 = _loc7 / 2 / _loc28;
        var _loc12 = Math.abs(xp / this._pageWidth);
        _loc17.tx = -_loc6 / _loc12;
        _loc17.scale(_loc12, _loc18);
        var _loc35 = new flash.geom.Rectangle(_loc6, 0, _loc13, _loc7);
        _loc14.draw(pageClip, _loc17, new flash.geom.ColorTransform(), "normal");
        _loc4.attachBitmap(_loc14, 0, "auto", true);
        _loc4._x = _loc6;
        _loc4._y = _loc22;
        _loc20 = 2 * _loc3;
        var _loc2 = targetClip.createEmptyMovieClip("map" + _loc3, _loc20);
        var _loc9 = _loc4._width;
        var _loc8 = _loc4._height;
        var _loc25 = "linear";
        var _loc19 = [255, 0];
        var _loc16 = [100, 100];
        var _loc26 = [0, 255];
        _loc17 = {matrixType: "box", x: 0, y: 0, w: _loc9, h: _loc8, r: -1.570796};
        _loc2.lineStyle();
        _loc2.moveTo(0, 0);
        _loc2.beginGradientFill(_loc25, _loc19, _loc16, _loc26, _loc17);
        _loc2.lineTo(_loc9, 0);
        _loc2.lineTo(_loc9, _loc8);
        _loc2.lineTo(0, _loc8);
        _loc2.lineTo(0, 0);
        _loc2.endFill();
        _loc25 = "linear";
        _loc19 = [128, 128];
        _loc16 = [100, 0];
        _loc26 = [0, 255];
        _loc17 = {matrixType: "box", x: 0, y: 0, w: _loc9, h: _loc8, r: -3.141593};
        _loc2.lineStyle();
        _loc2.moveTo(0, 0);
        _loc2.beginGradientFill(_loc25, _loc19, _loc16, _loc26, _loc17);
        _loc2.lineTo(_loc9, 0);
        _loc2.lineTo(_loc9, _loc8);
        _loc2.lineTo(0, _loc8);
        _loc2.lineTo(0, 0);
        _loc2.endFill();
        _loc2._x = _loc4._x;
        _loc2._y = _loc4._y;
        var _loc10 = new flash.display.BitmapData(_loc9, _loc8, false, 0);
        _loc10.draw(_loc2);
        var _loc23 = 2 * (_loc11 + _loc21);
        _loc4.filters = [new flash.filters.DisplacementMapFilter(_loc10, new flash.geom.Point(), 1, 4, 0, _loc23, "color", 255, 0)];
        _loc2._visible = false;
        _loc6 = _loc24;
        _loc36 = _loc22;
    } // end of for
};
FFlippingBookView.prototype.__moveRigidPage = function (x, y)
{
    var _loc4 = this._pageHeight;
    var _loc5 = this._pageWidth;
    var _loc8 = this._baseObj.hardcoverThickness;
    var _loc9 = this._baseObj.hardcoverEdgeColor;
    pt0 = {x: 0, y: -_loc4 / 2};
    ptH = {x: 0, y: _loc4 / 2};
    var _loc3 = 90 - x / _loc5 * 90;
    if (_loc3 < 0)
    {
        _loc3 = 0;
    }
    else if (_loc3 > 180)
    {
        _loc3 = 180;
    } // end else if
    var _loc7 = _loc5;
    var _loc11 = Math.round(2 * _loc7 / 3);
    var _loc15 = _loc3 > 90 ? (180 - _loc3) : (_loc3);
    var _loc10 = Math.round(_loc7 + Math.sin(_loc3 / 180 * 3.141593) * (_loc11 - _loc7));
    var _loc2 = new Object();
    _loc2.x = pt0.x + _loc10 * Math.cos(_loc3 / 180 * 3.141593);
    _loc2.y = pt0.y - _loc10 * Math.sin(_loc3 / 180 * 3.141593);
    if (_loc3 <= 90)
    {
        if (this.__ox > 0)
        {
            var _loc6 = this.__page02;
            var _loc14 = this.__page03;
            var _loc13 = this.__page01;
            var _loc12 = this.__page04;
        }
        else
        {
            _loc6 = this.__page03;
            _loc14 = this.__page01;
            _loc13 = this.__page02;
            _loc12 = this.__page04;
        } // end else if
        var _loc16 = isLeftPage ? (this.__page02) : (this.__page03);
        if (this._baseObj.flash8Renderer)
        {
            this.skewObj8(_loc6, pt0, ptH, _loc2);
        }
        else
        {
            this.skewObj6(_loc6, _loc5, _loc4, pt0, ptH, _loc2);
        } // end else if
        if (this._bookState != this._const.FLIP_GOTOPAGE_STATE && this._bookState != this._const.GOTOPAGE_STATE)
        {
            this.drawHardcoverBorder(_loc8, _loc9, pt0, ptH, _loc2, true);
            if (this._baseObj.highlightHardcover)
            {
                this.highlightPage(_loc6, _loc3 - 90);
                this.drawCoverHighligh(pt0, ptH, _loc2, true, 3);
            } // end if
        } // end if
        this.drawHardcoverShadow(pt0, ptH, _loc2, true);
    }
    else
    {
        if (this.__ox > 0)
        {
            _loc6 = this.__page03;
            _loc14 = this.__page02;
            _loc13 = this.__page01;
            _loc12 = this.__page04;
        }
        else
        {
            _loc6 = this.__page01;
            _loc14 = this.__page03;
            _loc13 = this.__page02;
            _loc12 = this.__page04;
        } // end else if
        _loc16 = isLeftPage ? (this.__page03) : (this.__page02);
        if (this._baseObj.flash8Renderer)
        {
            this.skewObj8(_loc6, _loc2, {x: _loc2.x, y: _loc2.y + _loc4}, pt0);
        }
        else
        {
            this.skewObj6(_loc6, _loc5, _loc4, _loc2, {x: _loc2.x, y: _loc2.y + _loc4}, pt0);
        } // end else if
        if (this._bookState != this._const.FLIP_GOTOPAGE_STATE && this._bookState != this._const.GOTOPAGE_STATE)
        {
            this.drawHardcoverBorder(_loc8, _loc9, _loc2, {x: _loc2.x, y: _loc2.y + _loc4}, pt0, false);
            if (this._baseObj.highlightHardcover)
            {
                this.highlightPage(_loc6, _loc3 - 90);
                this.drawCoverHighligh(_loc2, {x: _loc2.x, y: _loc2.y + _loc4}, pt0, false, 3);
            } // end if
        } // end if
        this.drawHardcoverShadow(_loc2, {x: _loc2.x, y: _loc2.y + _loc4}, pt0, false);
    } // end else if
    _loc6._visible = true;
    _loc14._visible = false;
    _loc13._visible = true;
    _loc12._visible = true;
    this.__pagesShadow._visible = false;
};
FFlippingBookView.prototype.drawHardcoverShadow = function (pt0, ptH, ptW, rightFlip)
{
    var _loc7 = this.__hardCoverShadow;
    var _loc2 = this.__hardCoverShadowMask;
    var _loc3 = _loc7.createEmptyMovieClip("pageShadowClip", 0);
    _loc7._x = pt0.x;
    var _loc8 = ptW.x - pt0.x;
    var _loc6 = ptH.y - pt0.y;
    if (rightFlip)
    {
        _loc7._y = pt0.y;
        var _loc14 = [0, 0, 0];
        var _loc11 = [60, 40, 0];
        var _loc15 = [0, 80, 255];
    }
    else
    {
        _loc7._y = ptW.y;
        _loc14 = [0, 0, 0];
        _loc11 = [0, 40, 60];
        _loc15 = [0, 175, 255];
    } // end else if
    var _loc12 = {matrixType: "box", x: 0, y: 0, w: _loc8, h: _loc6, r: 0};
    _loc3.clear();
    _loc3.lineStyle(0, 0, 0);
    _loc3.moveTo(0, 0);
    _loc3.beginGradientFill("linear", _loc14, _loc11, _loc15, _loc12);
    _loc3.lineTo(_loc8, 0);
    _loc3.lineTo(_loc8, _loc6);
    _loc3.lineTo(0, _loc6);
    _loc3.moveTo(0, 0);
    _loc3.endFill();
    _loc2.clear();
    _loc2.lineStyle(0, 0, 0);
    if (rightFlip)
    {
        _loc2.moveTo(ptH.x, ptH.y);
        _loc2.beginFill(16711680, 100);
        _loc2.lineTo(ptW.x, ptW.y + _loc6);
        _loc2.lineTo(ptW.x, ptH.y + 10);
        _loc2.lineTo(ptH.x, ptH.y + 10);
    }
    else
    {
        _loc2.moveTo(ptH.x, ptH.y);
        _loc2.beginFill(16711680, 100);
        _loc2.lineTo(ptW.x, ptW.y + _loc6);
        _loc2.lineTo(ptW.x, ptW.y + _loc6 + 10);
        _loc2.lineTo(ptH.x, ptW.y + _loc6 + 10);
    } // end else if
    _loc2.endFill();
    _loc7.setMask(_loc2);
    var _loc13 = new flash.filters.BlurFilter(7, 7, 2);
    var _loc10 = new Array();
    _loc10.push(_loc13);
    _loc3.filters = _loc10;
};
FFlippingBookView.prototype.drawCoverHighligh = function (pt0, ptH, ptW, rightFlip, highlightType)
{
    function distance(pt1, pt2)
    {
        var _loc1 = pt2.y - pt1.y;
        var _loc2 = pt2.x - pt1.x;
        var _loc3 = Math.sqrt(_loc1 * _loc1 + _loc2 * _loc2);
        return (_loc3);
    } // End of the function
    var _loc8 = ptH.y - pt0.y;
    var _loc20 = ptW.x - pt0.x;
    var _loc6 = this._baseObj.createEmptyMovieClip("pageHighLightMask", this._const.HARDCOVER_DEPTH + 2);
    _loc6.lineStyle(0, 0, 0);
    _loc6.moveTo(pt0.x, pt0.y);
    _loc6.beginFill(2236962, 100);
    _loc6.lineTo(ptW.x, ptW.y);
    _loc6.lineTo(ptW.x, ptW.y + _loc8);
    _loc6.lineTo(ptH.x, ptH.y);
    _loc6.moveTo(pt0.x, pt0.y);
    _loc6.endFill();
    switch (highlightType)
    {
        case 1:
        {
            var _loc13 = [16777215, 16777215, 16777215, 16777215, 16777215, 16777215, 16777215];
            var _loc11 = [0, 25, 0, 10, 5, 15, 0];
            var _loc14 = [0, 20, 60, 127, 200, 240, 255];
            break;
        } 
        case 2:
        {
            _loc13 = [16777215, 16777215, 16777215];
            _loc11 = [0, 40, 0];
            _loc14 = [0, 127, 255];
            break;
        } 
        case 3:
        {
            _loc13 = [16777215, 16777215, 16777215, 16777215, 16777215];
            _loc11 = [0, 30, 40, 30, 0];
            _loc14 = [0, 60, 127, 200, 255];
            break;
        } 
    } // End of switch
    var _loc2 = this._baseObj.createEmptyMovieClip("pageHighLightGradient", this._const.HARDCOVER_DEPTH + 3);
    var _loc9 = 57.295780 * Math.abs(Math.atan((pt0.y - ptW.y) / (pt0.x - ptW.x)));
    _loc2._alpha = Math.abs(50 - 80 * _loc9 / 90 - 50);
    var _loc3 = _loc8 / 2.500000;
    if (rightFlip)
    {
        var _loc16 = pt0.y - ptW.y;
        var _loc7 = distance(ptH, ptW) + _loc3;
        _loc2._x = pt0.x;
        _loc2._y = ptH.y;
        _loc2._rotation = _loc9;
        var _loc15 = {matrixType: "box", x: 0, y: 0, w: _loc7, h: _loc3, r: 1.570796};
        _loc2.lineStyle(0, 0, 0);
        _loc2.moveTo(0, 0);
        _loc2.beginGradientFill("linear", _loc13, _loc11, _loc14, _loc15);
        _loc2.lineTo(_loc7, 0);
        _loc2.lineTo(_loc7, _loc3);
        _loc2.lineTo(0, _loc3);
        _loc2.moveTo(0, 0);
        _loc2.endFill();
    }
    else
    {
        _loc16 = ptW.y - pt0.y;
        _loc7 = distance(pt0, {x: ptW.x, y: ptW.y + _loc8}) + _loc3;
        _loc2._x = ptW.x + _loc3 * Math.sin(0.017453 * _loc9);
        _loc2._y = ptW.y + _loc8;
        _loc2._rotation = -_loc9;
        _loc15 = {matrixType: "box", x: -_loc7, y: -_loc3, w: _loc7, h: _loc3, r: 1.570796};
        _loc2.lineStyle(0, 0, 0);
        _loc2.moveTo(-_loc7, -_loc3);
        _loc2.beginGradientFill("linear", _loc13, _loc11, _loc14, _loc15);
        _loc2.lineTo(0, -_loc3);
        _loc2.lineTo(0, 0);
        _loc2.lineTo(-_loc7, 0);
        _loc2.moveTo(-_loc7, -_loc3);
        _loc2.endFill();
    } // end else if
    _loc2._y = _loc2._y - (_loc8 + _loc16 + _loc3) * _loc9 / 90;
    _loc2.setMask(_loc6);
};
FFlippingBookView.prototype.highlightPage = function (page, angle)
{
    var _loc2 = 90 * (90 - Math.abs(angle)) / 90;
    var _loc1 = new Color(page);
    _loc1.setBrightness(-_loc2);
};
FFlippingBookView.prototype.drawHardcoverBorder = function (thickness, color, pt0, ptH, ptW, rightFlip)
{
    var _loc3 = this._baseObj.createEmptyMovieClip("hardCoverVerticalBorder", this._const.HARDCOVER_DEPTH);
    var _loc2 = this._baseObj.createEmptyMovieClip("hardCoverHorizontalBorder", this._const.HARDCOVER_DEPTH + 1);
    var _loc7 = ptH.y - pt0.y;
    var _loc8 = ptW.x - pt0.x;
    var _loc9 = 57.295780 * Math.abs(Math.atan((pt0.y - ptW.y) / (pt0.x - ptW.x)));
    thickness = thickness * Math.sin(3.141593 * _loc9 / 180);
    if (_loc9 < 1)
    {
        return;
    } // end if
    if (rightFlip)
    {
        _loc3._x = ptW.x;
        _loc3._y = ptW.y;
        _loc3.lineStyle(0, 0, 0);
        _loc3.moveTo(0, 0);
        _loc3.beginFill(color, 100);
        _loc3.lineTo(thickness, 0);
        _loc3.lineTo(thickness, _loc7);
        _loc3.lineTo(0, _loc7);
        _loc3.lineTo(0, 0);
        _loc3.endFill();
        _loc2._x = ptW.x;
        _loc2._y = ptW.y + _loc7;
        _loc2.lineStyle(0, 0, 0);
        _loc2.moveTo(0, 0);
        _loc2.beginFill(color, 100);
        _loc2.lineTo(thickness, 0);
        _loc2.lineTo(thickness - _loc8 - 1, pt0.y - ptW.y);
        _loc2.lineTo(-_loc8, pt0.y - ptW.y);
        _loc2.lineTo(0, 0);
        _loc2.endFill();
    }
    else
    {
        _loc3._x = pt0.x - thickness + 0.300000;
        _loc3._y = pt0.y;
        _loc3.lineStyle(0, 0, 0);
        _loc3.moveTo(0, 0);
        _loc3.beginFill(color, 100);
        _loc3.lineTo(thickness, 0);
        _loc3.lineTo(thickness, _loc7);
        _loc3.lineTo(0, _loc7);
        _loc3.lineTo(0, 0);
        _loc3.endFill();
        _loc2._x = pt0.x - thickness + 0.300000;
        _loc2._y = pt0.y + _loc7;
        _loc2.lineStyle(0, 0, 0);
        _loc2.moveTo(0, 0);
        _loc2.beginFill(color, 100);
        _loc2.lineTo(thickness, 0);
        _loc2.lineTo(thickness + _loc8, -pt0.y + ptW.y);
        _loc2.lineTo(_loc8 + 1, -pt0.y + ptW.y);
        _loc2.lineTo(0, 0);
        _loc2.endFill();
    } // end else if
    var _loc12 = 50 * Math.sin(3.141593 * _loc9 / 180);
    var _loc11 = new Color(_loc2);
    _loc11.setBrightness(_loc12 - 35);
    _loc12 = 170 * Math.sin(3.141593 * _loc9 / 180);
    _loc11 = new Color(_loc3);
    _loc11.setBrightness(_loc12 - 95);
};
Color.prototype.setBrightness = function (bright)
{
    var _loc5 = 100 - Math.abs(bright);
    var _loc3 = 0;
    if (bright > 0)
    {
        _loc3 = 256 * (bright / 100);
    } // end if
    var _loc2 = new Object();
    _loc2.ra = _loc2.ga = _loc2.ba = _loc5;
    _loc2.rb = _loc2.gb = _loc2.bb = _loc3;
    this.setTransform(_loc2);
};
FFlippingBookView.prototype.skewObj8 = function (obj, pt0, ptH, ptW)
{
    function distance(pt1, pt2)
    {
        var _loc1 = pt2.y - pt1.y;
        var _loc2 = pt2.x - pt1.x;
        var _loc3 = Math.sqrt(_loc1 * _loc1 + _loc2 * _loc2);
        return (_loc3);
    } // End of the function
    var _loc8 = distance(ptW, pt0);
    var _loc11 = this._pageHeight;
    var _loc4 = Math.atan((pt0.y - ptW.y) / (pt0.x - ptW.x));
    var _loc7 = new flash.geom.Transform(obj);
    var _loc2 = _loc7.matrix;
    _loc2.identity();
    _loc2.a = _loc8 * Math.cos(_loc4) / this._pageWidth;
    _loc2.d = _loc11 / this._pageHeight;
    _loc2.b = _loc8 * Math.sin(_loc4) / this._pageWidth;
    _loc2.tx = pt0.x;
    _loc2.ty = pt0.y;
    _loc7.matrix = _loc2;
};
FFlippingBookView.prototype.skewObj6 = function (obj, mcW, mcH, pt0, ptH, ptW)
{
    function distance(pt1, pt2)
    {
        var _loc1 = pt2.y - pt1.y;
        var _loc2 = pt2.x - pt1.x;
        var _loc3 = Math.sqrt(_loc1 * _loc1 + _loc2 * _loc2);
        return (_loc3);
    } // End of the function
    obj._x = pt0.x;
    obj._y = pt0.y;
    obj._yscale = 100;
    var _loc10 = Math.atan2(ptW.y - pt0.y, ptW.x - pt0.x);
    var _loc4 = 1.570796;
    var _loc3 = (_loc4 - _loc10) / 2;
    var _loc7 = 0.707107 / Math.cos(_loc3);
    obj._rotation = 57.295780 * (_loc4 - _loc3);
    obj.parent._rotation = -45;
    obj._yscale = 100 * Math.tan(_loc3);
    obj.parent._xscale = distance(ptW, pt0) * 100 / _loc7 / mcW;
    obj.parent._yscale = distance(ptH, pt0) * 100 / _loc7 / mcH;
};
FFlippingBookView.prototype.__drawMasks = function (beta, x, y, _mx, _my)
{
    var pageH = this._pageHeight;
    var pageH2 = pageH / 2;
    var pageW = this._pageWidth;
    var r = Math.sqrt((this.__ox - _mx) * (this.__ox - _mx) + (this.__oy - _my) * (this.__oy - _my));
    var alpha = 2 * beta;
    var cos_a = Math.cos(alpha);
    var sin_a = Math.sin(alpha);
    var cos_b = Math.cos(beta);
    var sin_b = Math.sin(beta);
    var tan_a = sin_a / cos_a;
    var tan_b = Math.tan(beta);
    var bx = 0;
    var by = 0;
    var ax = 0;
    var ay = pageH;
    y = y + pageH2;
    bx = x - y / tan_a;
    ax = bx - pageH * tan_b;
    if (beta == 0)
    {
        if (this.__ox < 0 && x < 0)
        {
            x = ax = bx = -pageW;
        }
        else if (this.__ox > 0 && x > 0)
        {
            x = ax = bx = pageW;
        }
        else
        {
            ax = bx = 0;
        } // end else if
    } // end else if
    var cx = this.__ox > 0 ? (pageW) : (-pageW);
    var cy = 0;
    var dx = cx;
    var dy = pageH;
    var k = this.__ox > 0 ? (0) : (1);
    var px = x + k * pageW * cos_a;
    var py = y + k * pageW * sin_a;
    var fx = px - pageH * sin_a;
    var fy = py + pageH * cos_a;
    var lx = cx;
    var ly = beta != 0 ? ((bx - cx) / tan_b) : (-1);
    var tmpx = 0;
    var tmpy = 0;
    var ccx = cx;
    var ddx = dx;
    cx = 0;
    dx = 0;
    if (this._transpPage04)
    {
        ccx = ddx = cx;
    } // end if
    if (ly < 0 || ly > pageH && Math.abs(ly - pageH) > 0.000010)
    {
        with (this.__mask03)
        {
            clear();
            moveTo(ax, ay);
            beginFill(16776960, 100);
            lineTo(bx, by);
            lineTo(px, py);
            lineTo(fx, fy);
            lineTo(ax, ay);
            endFill();
        } // End of with
        with (this.__mask12)
        {
            clear();
            moveTo(ax, ay);
            beginFill(0, 100);
            lineTo(bx, by);
            lineTo(cx, cy);
            lineTo(dx, dy);
            lineTo(ax, ay);
            endFill();
        } // End of with
        with (this.__shMask03)
        {
            clear();
            moveTo(ax, ay);
            beginFill(16776960, 100);
            lineTo(bx, by);
            lineTo(px, py);
            lineTo(fx, fy);
            lineTo(ax, ay);
            endFill();
        } // End of with
        with (this.__shMask04)
        {
            clear();
            moveTo(ax, ay);
            beginFill(0, 100);
            lineTo(bx, by);
            lineTo(ccx, cy);
            lineTo(ddx, dy);
            lineTo(ax, ay);
            endFill();
        } // End of with
        with (this.__pagesShadow)
        {
            _rotation = beta * this.radIndex;
            _xscale = this.__ox > 0 ? (r / 4) : (-r / 4);
            ay = ay - pageH2;
            by = by - pageH2;
            var ab = Math.sqrt((ax - bx) * (ax - bx) + (ay - by) * (ay - by));
            _alpha = 2 * pageW - r < 50 ? (2 * (2 * pageW - r)) : (100);
            _x = bx - ab / 2 * sin_b;
            _y = by + ab / 2 * cos_b;
            _visible = true;
        } // End of with
        with (this.__shadow03)
        {
            _rotation = this.__pagesShadow._rotation;
            _xscale = this.__pagesShadow._xscale;
            _alpha = this.__pagesShadow._alpha;
            _x = this.__pagesShadow._x;
            _y = this.__pagesShadow._y;
        } // End of with
        with (this.__shadow04)
        {
            _rotation = this.__pagesShadow._rotation;
            _xscale = -this.__pagesShadow._xscale;
            _alpha = this.__pagesShadow._alpha;
            _x = this.__pagesShadow._x;
            _y = this.__pagesShadow._y;
        } // End of with
    }
    else
    {
        if (bx > pageW || bx < -pageW)
        {
            bx = ax;
            by = ay;
            tmpx = cx;
            tmpy = cy;
            cx = dx;
            cy = dy;
            dx = tmpx;
            dy = tmpy;
            px = fx;
            py = fy;
        } // end if
        with (this.__mask03)
        {
            clear();
            moveTo(lx, ly);
            beginFill(16711680, 100);
            lineTo(px, py);
            lineTo(bx, by);
            lineTo(lx, ly);
            endFill();
        } // End of with
        with (this.__mask12)
        {
            clear();
            moveTo(lx, ly);
            beginFill(0, 100);
            lineTo(bx, by);
            lineTo(cx, cy);
            lineTo(dx, dy);
            lineTo(lx, dy);
            lineTo(lx, ly);
            endFill();
        } // End of with
        with (this.__shMask03)
        {
            clear();
            moveTo(lx, ly);
            beginFill(16711680, 100);
            lineTo(px, py);
            lineTo(bx, by);
            lineTo(lx, ly);
            endFill();
        } // End of with
        with (this.__shMask04)
        {
            clear();
            moveTo(lx, ly);
            beginFill(16711680, 100);
            lineTo(ccx, cy);
            lineTo(bx, by);
            lineTo(lx, ly);
            endFill();
        } // End of with
        with (this.__pagesShadow)
        {
            _rotation = beta * this.radIndex;
            _xscale = this.__ox > 0 ? (r / 4) : (-r / 4);
            ly = ly - pageH2;
            by = by - pageH2;
            var bl = Math.sqrt((lx - bx) * (lx - bx) + (ly - by) * (ly - by));
            _alpha = 2 * pageW - r < 50 ? (2 * (2 * pageW - r)) : (100);
            _x = by < ly ? (bx - bl / 2 * sin_b) : (lx - bl / 2 * sin_b);
            _y = by < ly ? (by + bl / 2 * cos_b) : (ly + bl / 2 * cos_b);
            _visible = true;
        } // End of with
        with (this.__shadow03)
        {
            _rotation = this.__pagesShadow._rotation;
            _xscale = this.__pagesShadow._xscale;
            _alpha = this.__pagesShadow._alpha;
            _x = this.__pagesShadow._x;
            _y = this.__pagesShadow._y;
        } // End of with
        with (this.__shadow04)
        {
            _rotation = this.__pagesShadow._rotation;
            _xscale = -this.__pagesShadow._xscale;
            _alpha = this.__pagesShadow._alpha;
            _x = this.__pagesShadow._x;
            _y = this.__pagesShadow._y;
        } // End of with
    } // end else if
    this.__page03.setMask(this.__mask03);
    this.__shadow03.setMask(this.__shMask03);
    this.__shadow04.setMask(this.__shMask04);
    this.__ox > 0 ? (this.__page02.setMask(this.__mask12)) : (this.__page01.setMask(this.__mask12));
    this.__pagesShadow._visible = true;
    this.__shadow03._visible = true;
    this.__shadow04._visible = true;
};
FFlippingBookView.prototype.flipCorner = function (position, release, amount, angle, vibrate, playSound)
{
    if (this._bookState != this._const.UNACTIVE_STATE)
    {
        this.cancelFlipping();
    } // end if
    this._flipCornerPosition = position;
    if (release != undefined)
    {
        this._flipCornerRelease = release;
    }
    else
    {
        this._flipCornerRelease = true;
    } // end else if
    vibrate == undefined ? (this._vibrate = false) : (this._vibrate = vibrate);
    playSound == undefined ? (this._playSound = false) : (this._playSound = playSound);
    this._flipCornerAmount = amount;
    this._flipCornerAngle = angle;
    this._bookState = this._const.START_FLIP_CORNER_STATE;
    if (this._playSound)
    {
        if (this.__hardCoverFlip == undefined)
        {
            var _loc3 = position.indexOf("left") != -1;
            var _loc4 = _loc3 ? (this._baseObj.leftPageNumber) : (this._baseObj.rightPageNumber);
            var _loc2 = this._baseObj.getPageLink(_loc4);
            this.__hardCoverFlip = this._cache.isRigidPage(_loc2);
        } // end if
        this.playSound();
    } // end if
};
FFlippingBookView.prototype._getFlipCornerCoords = function ()
{
    var _loc2 = this._flipCornerAmount;
    if (_loc2 == undefined)
    {
        _loc2 = this._autoFlip;
    } // end if
    var _loc4 = 0;
    var _loc3 = 0;
    if (this._flipCornerAngle == undefined)
    {
        this._flipCornerAngle = 45;
    } // end if
    var _loc5 = this._flipCornerAngle;
    _loc5 = _loc5 % 90;
    tan = Math.tan(3.141593 * _loc5 / 180);
    dy = _loc2 * tan;
    if (_loc5 >= 45)
    {
        dy = _loc2;
        _loc2 = dy / tan;
    } // end if
    switch (this._flipCornerPosition)
    {
        case "top-left":
        {
            _loc4 = -this._pageWidth + _loc2;
            _loc3 = -this._pageHeight / 2 + dy;
            break;
        } 
        case "top-right":
        {
            _loc4 = this._pageWidth - _loc2;
            _loc3 = -this._pageHeight / 2 + dy;
            break;
        } 
        case "bottom-left":
        {
            _loc4 = -this._pageWidth + _loc2;
            _loc3 = this._pageHeight / 2 - dy;
            break;
        } 
        case "bottom-right":
        {
            _loc4 = this._pageWidth - _loc2;
            _loc3 = this._pageHeight / 2 - dy;
            break;
        } 
    } // End of switch
    return ({x: _loc4, y: _loc3});
};
FFlippingBookView.prototype.directGotoPage = function (n)
{
    if (this._bookState != this._const.UNACTIVE_STATE)
    {
        return;
    } // end if
    var _loc3 = this._model._currentPage;
    this._model._currentPage = this._model._realPageNumber(n);
    this._cache.restoreDirectGotoPages();
    this._model.__direction = -1;
    var _loc2 = 0;
    if (_loc3 < this._model._currentPage)
    {
        _loc2 = 1;
    } // end if
    this._model.putPage(true, _loc2);
    this.__page01.setMask(null);
    this.__page02.setMask(null);
    this._baseObj.onEndGoto();
    this._baseObj.dispatchEvent("onEndGoto", {target: this._baseObj});
};
FFlippingBookView.prototype.flipGotoPage = function (n)
{
    if (this._bookState != this._const.UNACTIVE_STATE && this._bookState != this._const.FLIP_CORNER_FIXED_STATE && this._bookState != this._const.FLIP_CORNER_STATE && this._bookState != this._const.FLIPBACK_STATE)
    {
        return;
    } // end if
    if (this._bookState == this._const.FLIP_CORNER_FIXED_STATE || this._bookState == this._const.FLIP_CORNER_STATE || this._bookState == this._const.FLIPBACK_STATE)
    {
        this._cache.restoreWorkPages();
        this.redrawBook();
    } // end if
    this._bookState = this._const.FLIP_GOTOPAGE_STATE;
    this.__gotoPageIndex = this._model._realPageNumber(n);
    this._model._last_current_page = this._model._currentPage;
    if (this._model._currentPage > this.__gotoPageIndex)
    {
        this.__page04._x = -this._pageWidth;
        this.__ox = -this._pageWidth;
        this.__oy = this._pageHeight / 2;
        var _loc2 = true;
    } // end if
    if (this._model._currentPage < this.__gotoPageIndex)
    {
        this.__page04._x = 0;
        this.__ox = this._pageWidth;
        this.__oy = this._pageHeight / 2;
        _loc2 = false;
    } // end if
    this.__oldX = 0;
    this.__oldY = 0;
    this._model.getFlipGotoPage(this.__gotoPageIndex, false);
    if (this._bookState != this._const.UNACTIVE_STATE)
    {
        this.playSound();
        this.__drawShadow12Mask();
        this.onStartFlip(this._model._curPageNumbers[_loc2 ? (0) : (1)], _loc2);
    } // end if
};
FFlippingBookView.prototype.gotoPage = function (n)
{
    if (this._bookState != this._const.UNACTIVE_STATE && this._bookState != this._const.FLIP_CORNER_FIXED_STATE && this._bookState != this._const.FLIP_CORNER_STATE && this._bookState != this._const.FLIPBACK_STATE)
    {
        return;
    } // end if
    if (this._bookState == this._const.FLIP_CORNER_FIXED_STATE || this._bookState == this._const.FLIP_CORNER_STATE || this._bookState == this._const.FLIPBACK_STATE)
    {
        this._cache.restoreWorkPages();
        this.redrawBook();
    } // end if
    this._bookState = this._const.GOTOPAGE_STATE;
    this.__gotoPageIndex = this._model._realPageNumber(n);
    if (this._model._currentPage > this.__gotoPageIndex)
    {
        this.__page04._x = -this._pageWidth;
        this.__ox = -this._pageWidth;
        this.__oy = this._pageHeight / 2;
        var _loc3 = true;
    } // end if
    if (this._model._currentPage < this.__gotoPageIndex)
    {
        this.__page04._x = 0;
        this.__ox = this._pageWidth;
        this.__oy = this._pageHeight / 2;
        _loc3 = false;
    } // end if
    this._model.getNextGotoPage(this.__gotoPageIndex);
    if (this._bookState != this._const.UNACTIVE_STATE)
    {
        var _loc2 = this.__page03.parent.parent.holder;
        if (_loc2.media)
        {
            _loc2 = _loc2.media;
        } // end if
        if (_loc2 == undefined)
        {
            _loc2 = this.__page03;
        } // end if
        if (this._cache.isRigidPage(_loc2) || this._cache.isRigidPage(_loc2._parent))
        {
            this.__hardCoverFlip = true;
        }
        else
        {
            this.__hardCoverFlip = false;
        } // end else if
        this.playSound();
        this.__drawShadow12Mask();
        this.onStartFlip(this._model._curPageNumbers[_loc3 ? (0) : (1)], _loc3);
    } // end if
};
Object.registerClass("FFlippingBookSymbol", FFlippingBookClass);
#endinitclip
