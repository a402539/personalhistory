// Action script...

// [Initial MovieClip Action of sprite 105]
#initclip 1
class com.fbpublisher.basicskin.BasicSkin
{
    var _clip, _library, _settings, _view, _externalController, __get__XMLFile, __get__XMLString, _preloader, __set__XMLFile, __set__XMLString, __get__hasFocus, __get__settings;
    function BasicSkin(clip)
    {
        _clip = clip;
        Stage.scaleMode = "noScale";
        Stage.align = "TL";
        _library = new com.fbpublisher.basicskin.MediaLibrary();
        _settings = new com.fbpublisher.basicskin.ApplicationSettings(_library);
        _view = new com.fbpublisher.basicskin.View(_clip, _library, _settings);
        this.subscribeToEvents();
        _settings.setDefaultSettings();
        _externalController = new com.fbpublisher.basicskin.ExternalSettings(_settings, _view);
    } // End of the function
    function get hasFocus()
    {
        trace (com.fbpublisher.basicskin.View.getSearchWindow().__get__hasFocus() + ", " + com.fbpublisher.basicskin.viewclasses.SearchField.__get__singleton().__get__hasFocus());
        //return (!com.fbpublisher.basicskin.View.getSearchWindow().hasFocus() && !com.fbpublisher.basicskin.viewclasses.SearchField.__get__singleton().__get__hasFocus());
    } // End of the function
    function get settings()
    {
        return (_settings);
    } // End of the function
    function set XMLFile(XMLFile)
    {
        _settings.__set__XMLFile(XMLFile);
        //return (this.XMLFile());
        null;
    } // End of the function
    function set XMLString(XMLString)
    {
        //return (this.XMLString());
        null;
    } // End of the function
    function flipLeft()
    {
        _view.flipBack();
    } // End of the function
    function flipRight()
    {
        _view.flipForward();
    } // End of the function
    function zoomIn()
    {
        _view.zoomIn();
    } // End of the function
    function zoomOut()
    {
        _view.zoomOut();
    } // End of the function
    function subscribeToEvents()
    {
        _settings.addEventListener("onSettingsReady", this);
        _settings.addEventListener("applicationWidthChanged", _view);
        _settings.addEventListener("applicationHeightChanged", _view);
        _settings.addEventListener("applicationBackgroundPlacementChanged", _view);
        _settings.addEventListener("applicationBackgroundColorChanged", _view);
        _settings.addEventListener("applicationBackgroundImageChanged", _view);
        _settings.addEventListener("windowCornerRadiusChanged", _view);
        _settings.addEventListener("skinColorChanged", _view);
        _settings.addEventListener("rightToLeftChanged", _view);
        _settings.addEventListener("bookmarksEnabledChanged", _view);
        _settings.addEventListener("bookmarksHintChanged", _view);
        _settings.addEventListener("bookmarksWindowTitleChanged", _view);
        _settings.addEventListener("bookmarksTextChanged", _view);
        _settings.addEventListener("thumbnailsEnabledChanged", _view);
        _settings.addEventListener("thumbnailsSelectedColorChanged", _view);
        _settings.addEventListener("thumbnailsHintChanged", _view);
        _settings.addEventListener("thumbnailsWindowTitleChanged", _view);
        _settings.addEventListener("permalinkEnabledChanged", _view);
        _settings.addEventListener("permalinkHintChanged", _view);
        _settings.addEventListener("permalinkLabelChanged", _view);
        _settings.addEventListener("permalinkShareLabelChanged", _view);
        _settings.addEventListener("permalinkCopyLabelChanged", _view);
        _settings.addEventListener("permalinkBaseURLChanged", _view);
        _settings.addEventListener("permalinkFocusColorChanged", _view);
        _settings.addEventListener("saveEnabledChanged", _view);
        _settings.addEventListener("saveHintChanged", _view);
        _settings.addEventListener("downloadButtonTextChanged", _view);
        _settings.addEventListener("downloadFileSizeTextChanged", _view);
        _settings.addEventListener("downloadFileSizeChanged", _view);
        _settings.addEventListener("downloadHintTextChanged", _view);
        _settings.addEventListener("saveWindowTitleChanged", _view);
        _settings.addEventListener("printEnabledChanged", _view);
        _settings.addEventListener("printHintChanged", _view);
        _settings.addEventListener("printWindowTitleChanged", _view);
        _settings.addEventListener("sendEnabledChanged", _view);
        _settings.addEventListener("sendHintChanged", _view);
        _settings.addEventListener("sendWindowTitleChanged", _view);
        _settings.addEventListener("searchEnabledChanged", _view);
        _settings.addEventListener("searchColorChanged", _view);
        _settings.addEventListener("searchWindowTitleChanged", _view);
        _settings.addEventListener("mainWindowBackgroundColorChanged", _view);
        _settings.addEventListener("mainWindowBackgroundImageChanged", _view);
        _settings.addEventListener("mainWindowBackgroundImagePlacementChanged", _view);
        _settings.addEventListener("headerGradientChanged", _view);
        _settings.addEventListener("menuChanged", _view);
        _settings.addEventListener("subHeaderChanged", _view);
        _settings.addEventListener("titleEnabledChanged", _view);
        _settings.addEventListener("titleLabelChanged", _view);
        _settings.addEventListener("paginationEnabledChanged", _view);
        _settings.addEventListener("paginationLabelChanged", _view);
        _settings.addEventListener("paginationTotalPagesChanged", _view);
        _settings.addEventListener("paginationPageNumbersChanged", _view);
        _settings.addEventListener("zoomEnabledChanged", _view);
        _settings.addEventListener("zoomInHintChanged", _view);
        _settings.addEventListener("zoomOutHintChanged", _view);
        _settings.addEventListener("navigationEnabledChanged", _view);
        _settings.addEventListener("navigationTypeChanged", _view);
        _settings.addEventListener("navigationPreviousHintChanged", _view);
        _settings.addEventListener("navigationNextHintChanged", _view);
        _settings.addEventListener("pageNumbersChanged", _view);
        _settings.addEventListener("bookShadowEnabledChanged", _view);
        _settings.addEventListener("bookShadowHideWhenFlippingChanged", _view);
        _settings.addEventListener("bookCenteredChanged", _view);
        _settings.addEventListener("windowWidthChanged", _view);
        _settings.addEventListener("windowHeightChanged", _view);
        _settings.addEventListener("bookSizeScaleChanged", _view);
        _settings.addEventListener("textEditChanged", _view);
        _settings.addEventListener("mainTextChanged", _view);
        _settings.addEventListener("secondaryTextChanged", _view);
        _settings.addEventListener("pagesChanged", this);
        _settings.addEventListener("bookHandOverCornerChanged", this);
        _settings.addEventListener("bookHandOverPageChanged", this);
        _settings.addEventListener("bookMoveSpeedChanged", this);
        _settings.addEventListener("bookFlipSoundChanged", this);
        _settings.addEventListener("bookLoadOnDemandChanged", this);
        _settings.addEventListener("bookStaticShadowDepthChanged", this);
        _settings.addEventListener("bookDynamicShadowDepthChanged", this);
        _settings.addEventListener("freezeOnFlipChanged", this);
        _settings.addEventListener("hardCoverChanged", this);
        _settings.addEventListener("fullScreenEnabledChanged", _view);
        _settings.addEventListener("playStopButtonEnabledChanged", _view);
        _settings.addEventListener("playStopButtonHintChanged", _view);
        _settings.addEventListener("audioLoopChanged", _view);
        _settings.addEventListener("musicFileURLChanged", _view);
        _settings.addEventListener("zoomButtonEnabledChanged", _view);
        _settings.addEventListener("fullScreenHintChanged", _view);
        _settings.addEventListener("playStopButtonHintChanged", _view);
        _settings.addEventListener("zoomButtonHintChanged", _view);
        _settings.addEventListener("pageBackgroundColorChanged", _view);
        _settings.addEventListener("navigationMenuChanged", _view);
        _settings.addEventListener("flipCornerChanged", _view);
        _settings.addEventListener("hardcoverChanged", _view);
        _settings.addEventListener("linkButtonChanged", _view);
        _settings.addEventListener("zoomFitWidthChanged", _view);
        _settings.addEventListener("tocEnabledChanged", _view);
        _settings.addEventListener("tocHintChanged", _view);
        _settings.addEventListener("tocTitleChanged", _view);
        _settings.addEventListener("tocTreeChanged", this);
        _settings.addEventListener("bookWidthChanged", mx.utils.Delegate.create(this, bookSizeChanged));
        _settings.addEventListener("bookHeightChanged", mx.utils.Delegate.create(this, bookSizeChanged));
        _settings.addEventListener("goToPage", this);
        _settings.addEventListener("thumbnailsSelectedColorChanged", _view);
        _view.addEventListener("onObjectReady", this);
        _view.addEventListener("onMenuItemRelease", this);
        _view.addEventListener("onPermalinkShare", this);
        _view.addEventListener("onPermalinkCopy", this);
        _view.addEventListener("onGotoPage", this);
        _view.addEventListener("onSearchText", this);
        _view.addEventListener("onPutPage", this);
        _view.addEventListener("onBookInit", this);
        _view.addEventListener("onClickWithoutDragging", this);
        _view.addEventListener("onCloseThumbnailsWindow", this);
        _view.addEventListener("onCloseTOCWindow", this);
        _view.addEventListener("onCloseBookmarksWindow", this);
        _view.addEventListener("onCloseSearchWindow", this);
        _view.addEventListener("onCloseSendWindow", this);
        _view.addEventListener("onClosePrintWindow", this);
        _view.addEventListener("onCloseSaveWindow", this);
        _view.addEventListener("downloadPDFVersion", this);
        _view.addEventListener("onCloseAlertWindow", this);
        _externalController.addEventListener("onTocAddNode", _view);
        _externalController.addEventListener("onTocRemoveNode", _view);
        _externalController.addEventListener("onTocEditNode", _view);
        _externalController.addEventListener("onTocMoveNode", _view);
        Stage.addListener(this);
    } // End of the function
    function onSettingsReady()
    {
        tracer.information("Settings Ready");
        com.fbpublisher.utils.search.Index.__get__singleton();
        _preloader = _view.getPreloader();
        _preloader.addEventListener("onPreloaderOpen", this);
        _preloader.addEventListener("onPreloaderClose", this);
        tracer.information("FULL start" + new Date().getTime());
        _preloader.open(_settings.__get__preloadingMessage());
    } // End of the function
    function onPreloaderOpen()
    {
        _view.createAllWindows();
    } // End of the function
    function onObjectReady()
    {
        if (_view.allObjectsReady() && _initialState)
        {
            _initialState = false;
            _preloader.close();
            tracer.information("FULL end" + new Date().getTime());
        } // end if
    } // End of the function
    function onPreloaderClose()
    {
        _view.showInitialWindows();
        _externalController.loadingFinished();
        if (com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__audioAuto())
        {
            tracer.information("_view.playMusic()" + _view);
            _view.playMusic();
        } // end if
    } // End of the function
    function onResize()
    {
        _view.resize(Stage.width, Stage.height);
    } // End of the function
    function onMenuItemRelease(eventObject)
    {
        var _loc2 = eventObject.id;
        var _loc3 = _settings.__get__rightToLeft() ? (-1) : (1);
        switch (_loc2)
        {
            case "permalink":
            {
                _view.togglePermalinkPanel();
                break;
            } 
            case "thumbnails":
            {
                _view.toggleThumbnailsWindow();
                break;
            } 
            case "bookmarks":
            {
                _view.toggleBookmarksWindow();
                break;
            } 
            case "toc":
            {
                _view.toggleTOCWindow();
                break;
            } 
            case "send":
            {
                _view.toggleSendWindow();
                break;
            } 
            case "print":
            {
                _view.togglePrintWindow();
                break;
            } 
            case "save":
            {
                _view.toggleSaveWindow();
                break;
            } 
            case "zoomIn":
            {
                tracer.information("zoom in");
                break;
            } 
            case "zoomOut":
            {
                tracer.information("zoom out");
                break;
            } 
            case "previous":
            {
                _view.flipBack();
                break;
            } 
            case "next":
            {
                _view.flipForward();
                break;
            } 
            case "fullscreen":
            {
                _view.changeScreenView();
                break;
            } 
            case "zoominbutton":
            case "zoomoutbutton":
            {
                _view.switchZoom();
                break;
            } 
            case "playbutton":
            {
                _view.playMusic();
                break;
            } 
            case "stopbutton":
            {
                _view.stopMusic();
                break;
            } 
            case "pagebegin":
            {
                _settings.goToPage(_settings.__get__rightToLeft() ? (_settings.__get__totalPages()) : (0));
                break;
            } 
            case "pageleft":
            {
                _view.flipBack();
                break;
            } 
            case "pageright":
            {
                _view.flipForward();
                break;
            } 
            case "pageend":
            {
                _settings.goToPage(_settings.__get__rightToLeft() ? (0) : (_settings.__get__totalPages()));
                break;
            } 
        } // End of switch
    } // End of the function
    function onPutPage(eventObject)
    {
        _settings.updatePageNumbers(eventObject.target);
    } // End of the function
    function onBookInit(eventObject)
    {
        _settings.updatePageNumbers(eventObject.target);
    } // End of the function
    function onPermalinkShare(eventObject)
    {
    } // End of the function
    function onPermalinkCopy(eventObject)
    {
        System.setClipboard(eventObject.URL);
    } // End of the function
    function goToPage(eventObject)
    {
        _view.gotoPage(eventObject.pageNumber);
    } // End of the function
    function onGotoPage(eventObject)
    {
        _view.gotoPage(eventObject.pageNumber);
    } // End of the function
    function onSearchText(eventObject)
    {
        tracer.information("BasicSkin.as:onSearchText()");
        _view.toggleSearchWindow();
    } // End of the function
    function pageNumbersChanged()
    {
        _view.pageNumbersChanged();
    } // End of the function
    function onClickWithoutDragging(eventObject)
    {
        _view.zoomIn(eventObject.isLeftPage);
    } // End of the function
    function onCloseThumbnailsWindow(eventObject)
    {
        _view.hideThumbnailsWindow();
    } // End of the function
    function onCloseTOCWindow(eventObject)
    {
        _view.hideTOCWindow();
    } // End of the function
    function onCloseBookmarksWindow(eventObject)
    {
        _view.hideBookmarksWindow();
    } // End of the function
    function onCloseSearchWindow(eventObject)
    {
        _view.hideSearchWindow();
    } // End of the function
    function onCloseSendWindow(eventObject)
    {
        _view.hideSendWindow();
    } // End of the function
    function onCloseAlertWindow(eventObject)
    {
        _view.hideAlertWindow();
    } // End of the function
    function onClosePrintWindow(eventObject)
    {
        _view.hidePrintWindow();
    } // End of the function
    function onCloseSaveWindow(eventObject)
    {
        _view.hideSaveWindow();
    } // End of the function
    function downloadPDFVersion(eventObject)
    {
    } // End of the function
    function pagesChanged(eventObject)
    {
        _view.reloadPages();
        _view.tocTreeChanged();
    } // End of the function
    function tocTreeChanged(eventObject)
    {
        _view.tocTreeChanged();
    } // End of the function
    function bookHandOverCornerChanged(eventObject)
    {
        _view.__get__book().__set__handOverCorner(_settings.handOverCorner);
    } // End of the function
    function bookHandOverPageChanged(eventObject)
    {
        _view.__get__book().__set__handOverPage(_settings.handOverPage);
    } // End of the function
    function bookMoveSpeedChanged(eventObject)
    {
        _view.__get__book().__set__moveSpeed(_settings.moveSpeed);
    } // End of the function
    function bookFlipSoundChanged(eventObject)
    {
        _view.__get__book().__set__flipSound(_settings.flipSound);
    } // End of the function
    function bookLoadOnDemandChanged(eventObject)
    {
        _view.__get__book().__set__loadOnDemand(_settings.loadOnDemand);
    } // End of the function
    function bookStaticShadowDepthChanged(eventObject)
    {
        _view.__get__book().__set__staticShadowDepth(_settings.staticShadowDepth);
    } // End of the function
    function bookDynamicShadowDepthChanged(eventObject)
    {
        _view.__get__book().__set__dynamicShadowDepth(_settings.dynamicShadowDepth);
    } // End of the function
    function freezeOnFlipChanged(eventObject)
    {
        _view.__get__book().__set__freezeOnFlip(_settings.freezeOnFlip);
    } // End of the function
    function hardCoverChanged(eventObject)
    {
        _view.__get__book().__set__hardcover(_settings.hardcover);
    } // End of the function
    function bookSizeChanged(eventObject)
    {
        _view.updateLayout();
    } // End of the function
    var _initialState = true;
} // End of Class
#endinitclip
