// Action script...

// [Initial MovieClip Action of sprite 106]
#initclip 2
class com.fbpublisher.basicskin.View
{
    var _clip, _settings, _library, _layoutManager, _book, _preloader, _background, _mainWindow, _bottomMenu, _bookNavigator, _pageZoomer, _thumbnailsWindow, _bookmarksWindow, _tocWindow, _searchWindow, _modalWindowButton, _alertWindow, _sendWindow, _printWindow, _saveWindow, _hint, _musicPlaying, mySound, __get__book;
    static var _singleton, static_searchWindow, __get__singleton;
    function View(clip, library, settings)
    {
        _singleton = this;
        _clip = clip;
        _settings = settings;
        _library = library;
        _layoutManager = new com.fbpublisher.basicskin.viewclasses.LayoutManager(_settings, this, Stage.width, Stage.height);
        _settings.stageWidth = Stage.width;
        _settings.stageHeight = Stage.height;
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
    static function get singleton()
    {
        return (com.fbpublisher.basicskin.View._singleton);
    } // End of the function
    function get book()
    {
        return (_book);
    } // End of the function
    function getPreloader()
    {
        _preloader = new com.fbpublisher.basicskin.viewclasses.Preloader(_clip, _settings);
        _layoutManager.__set__preloader(_preloader);
        return (_preloader);
    } // End of the function
    function allObjectsReady()
    {
        var _loc2 = true;
        _loc2 = _loc2 && _background.ready && _mainWindow.__get__ready() && _book.__get__ready();
        return (_loc2);
    } // End of the function
    function createAllWindows()
    {
        _global._focusLooser = _clip.createTextField("focusLooser", _clip.getNextHighestDepth(), 0, 0, 10, 10);
        _background = new com.fbpublisher.basicskin.viewclasses.Background(_clip, _settings, _library);
        _layoutManager.__set__background(_background);
        _background.addEventListener("onObjectReady", this);
        _bottomMenu = new com.fbpublisher.basicskin.viewclasses.BottomMenu(_clip, _settings);
        _layoutManager.__set__bottomMenu(_bottomMenu);
        _bottomMenu.addEventListener("onMenuItemRelease", this);
        _bottomMenu.addEventListener("onSearchText", mx.utils.Delegate.create(this, _onSearchText));
        _mainWindow = new com.fbpublisher.basicskin.viewclasses.windows.MainWindow(_clip, _settings, _library);
        _mainWindow.addEventListener("onObjectReady", this);
        _mainWindow.addEventListener("onPermalinkShare", mx.utils.Delegate.create(this, _onPermalinkShare));
        _mainWindow.addEventListener("onPermalinkCopy", mx.utils.Delegate.create(this, _onPermalinkCopy));
        _mainWindow.addEventListener("onGotoPage", mx.utils.Delegate.create(this, _onGotoPage));
        _mainWindow.addEventListener("onPermalinkSizeChanged", mx.utils.Delegate.create(this, _onPermalinkSizeChanged));
        _mainWindow.addEventListener("onMouseWheelOnBook", mx.utils.Delegate.create(this, _onMouseWheelOnBook));
        _mainWindow.addEventListener("onSearchText", mx.utils.Delegate.create(this, _onSearchText));
        _layoutManager.__set__mainWindow(_mainWindow);
        _bookNavigator = new com.fbpublisher.basicskin.viewclasses.BookNavigation(_clip, _settings);
        _bookNavigator.addEventListener("onNavigationButtonRelease", this);
        _layoutManager.__set__bookNavigator(_bookNavigator);
        _book = new com.fbpublisher.basicskin.viewclasses.Book(_clip, _settings);
        _book.addEventListener("onBookInit", this);
        _book.addEventListener("onObjectReady", this);
        _book.addEventListener("onPutPage", this);
        _book.addEventListener("onPageLoad", this);
        _book.addEventListener("onClickWithoutDragging", this);
        _book.addEventListener("zoomNavigationCall", this);
        _book.addEventListener("onBookOver", this);
        _book.addEventListener("onBookOut", this);
        _book.addEventListener("bookCenterChanged", this);
        _book.addEventListener("onStartFlip", this);
        _book.addEventListener("onFlipBack", this);
        _layoutManager.__set__book(_book);
        _pageZoomer = new com.fbpublisher.basicskin.viewclasses.PageZoomer(_clip, _settings, _library, _mainWindow);
        _pageZoomer.addEventListener("onZoomPageRelease", this);
        _pageZoomer.addEventListener("zoomOutAnimationStarted", this);
        _pageZoomer.addEventListener("zoomOutAnimationFinished", this);
        _pageZoomer.addEventListener("zoomInAnimationFinished", this);
        _layoutManager.__set__pageZoomer(_pageZoomer);
        _thumbnailsWindow = new com.fbpublisher.basicskin.viewclasses.windows.ThumbnailsWindow(_clip, _settings, _library, _book);
        _thumbnailsWindow.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, onThumbnailsCloseButtonClick));
        _thumbnailsWindow.addEventListener("onThumbnailClick", mx.utils.Delegate.create(this, onPageIconClick));
        _settings.addEventListener("pageNumbersChanged", _thumbnailsWindow);
        _layoutManager.__set__thumbnailsWindow(_thumbnailsWindow);
        _bookmarksWindow = new com.fbpublisher.basicskin.viewclasses.windows.BookmarksWindow(_clip, _settings, _library);
        _bookmarksWindow.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, onBookmarksCloseButtonClick));
        _bookmarksWindow.addEventListener("onBookmarkClick", mx.utils.Delegate.create(this, onPageIconClick));
        _layoutManager.__set__bookmarksWindow(_bookmarksWindow);
        _settings.addEventListener("pageNumbersChanged", _bookmarksWindow);
        _tocWindow = new com.fbpublisher.basicskin.viewclasses.windows.TOCWindow(_clip, _settings, _library);
        _tocWindow.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, onTOCCloseButtonClick));
        _tocWindow.addEventListener("onItemClick", mx.utils.Delegate.create(this, onPageIconClick));
        _layoutManager.__set__tocWindow(_tocWindow);
        static_searchWindow = _searchWindow = new com.fbpublisher.basicskin.viewclasses.windows.SearchWindow(_clip, _settings, _library);
        _searchWindow.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, onSearchCloseButtonClick));
        _searchWindow.addEventListener("onResultClick", mx.utils.Delegate.create(this, onPageIconClick));
        _layoutManager.__set__searchWindow(_searchWindow);
        _modalWindowButton = new com.fbpublisher.basicskin.viewclasses.ModalButton(_clip);
        _modalWindowButton.__set__useHandCursor(false);
        _layoutManager.__set__modalWindowButton(_modalWindowButton);
        _alertWindow = new com.fbpublisher.basicskin.viewclasses.windows.AlertWindow(_clip, _settings, _library);
        _alertWindow.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, onAlertCloseButtonClick));
        _layoutManager.__set__alertWindow(_alertWindow);
        _sendWindow = new com.fbpublisher.basicskin.viewclasses.windows.SendWindow(_clip, _settings, _library);
        _sendWindow.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, onSendCloseButtonClick));
        _layoutManager.__set__sendWindow(_sendWindow);
        _printWindow = new com.fbpublisher.basicskin.viewclasses.windows.PrintWindow(_clip, _settings, _library, _bookmarksWindow);
        _printWindow.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, onPrintCloseButtonClick));
        _printWindow.addEventListener("switchToDownloadWindow", mx.utils.Delegate.create(this, onSwitchToDownloadWindow));
        _printWindow.addEventListener("downloadPDFVersion", mx.utils.Delegate.create(this, onDownloadPDFVersion));
        _layoutManager.__set__printWindow(_printWindow);
        _saveWindow = new com.fbpublisher.basicskin.viewclasses.windows.SaveWindow(_clip, _settings, _library);
        _saveWindow.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, onSaveCloseButtonClick));
        _saveWindow.addEventListener("downloadPDFVersion", mx.utils.Delegate.create(this, onDownloadPDFVersion));
        _layoutManager.__set__saveWindow(_saveWindow);
        _hint = new com.fbpublisher.basicskin.viewclasses.Hint(_clip, _settings);
        _layoutManager.__set__hint(_hint);
        _bottomMenu.__set__hint(_hint);
        _searchWindow.__set__hint(_hint);
        _mainWindow.__set__hint(_hint);
    } // End of the function
    static function getSearchWindow()
    {
        return (com.fbpublisher.basicskin.View.static_searchWindow);
    } // End of the function
    function onObjectReady()
    {
        this.dispatchEvent({type: "onObjectReady"});
        switch (_settings.__get__defaultSideWindow())
        {
            case "TOC":
            {
                this.toggleTOCWindow();
                _tocWindow.hide();
                break;
            } 
            case "Thumbnails":
            {
                this.toggleThumbnailsWindow();
                _thumbnailsWindow.hide();
                break;
            } 
        } // End of switch
        _book.updateFlipCorner();
        if (_settings.__get__fullScreenEnableOnStart())
        {
            this.changeScreenView();
        } // end if
    } // End of the function
    function showInitialWindows()
    {
        _background.show();
        _bottomMenu.show();
        _mainWindow.show();
        _book.show();
        if (_settings.__get__navigationEnabled() && _settings.__get__navigationType() == "sideButtons")
        {
            _bookNavigator.show();
        } // end if
        switch (_settings.__get__defaultSideWindow())
        {
            case "TOC":
            {
                _tocWindow.show();
                break;
            } 
            case "Thumbnails":
            {
                _thumbnailsWindow.show();
                break;
            } 
        } // End of switch
        this.resize(Stage.width, Stage.height);
    } // End of the function
    function toggleThumbnailsWindow()
    {
        if (!_thumbnailsWindow.__get__visible())
        {
            this._closeSideWindows();
            _thumbnailsWindow.show();
            _layoutManager.arrangeWindows();
        }
        else
        {
            this.hideThumbnailsWindow();
        } // end else if
    } // End of the function
    function hideThumbnailsWindow()
    {
        if (_thumbnailsWindow.__get__visible())
        {
            _thumbnailsWindow.hide();
            _layoutManager.arrangeWindows();
        } // end if
    } // End of the function
    function toggleBookmarksWindow()
    {
        if (!_bookmarksWindow.__get__visible())
        {
            this._closeSideWindows();
            _bookmarksWindow.show();
            _layoutManager.arrangeWindows();
        }
        else
        {
            this.hideBookmarksWindow();
        } // end else if
    } // End of the function
    function hideBookmarksWindow()
    {
        if (_bookmarksWindow.__get__visible())
        {
            _bookmarksWindow.hide();
            _layoutManager.arrangeWindows();
        } // end if
    } // End of the function
    function toggleTOCWindow()
    {
        if (!_tocWindow.__get__visible())
        {
            this._closeSideWindows();
            _tocWindow.show();
            _layoutManager.arrangeWindows();
        }
        else
        {
            this.hideTOCWindow();
        } // end else if
    } // End of the function
    function hideTOCWindow()
    {
        if (_tocWindow.__get__visible())
        {
            _tocWindow.hide();
            _layoutManager.arrangeWindows();
        } // end if
    } // End of the function
    function toggleSearchWindow()
    {
        if (!_searchWindow.__get__visible())
        {
            this._closeSideWindows();
            _searchWindow.show();
            _layoutManager.arrangeWindows();
            
        } // end if
    } // End of the function
    function hideSearchWindow()
    {
        if (_searchWindow.__get__visible())
        {
            _searchWindow.hide();
            _layoutManager.arrangeWindows();
        } // end if
    } // End of the function
    function showAlertWindow(title, message)
    {
        if (!_alertWindow.__get__visible())
        {
            _alertWindow.__set__title(title);
            _alertWindow.__set__message(message);
            _alertWindow.show();
            _layoutManager.repositionToolWindows();
        } // end if
    } // End of the function
    function hideAlertWindow()
    {
        if (_alertWindow.__get__visible())
        {
            _alertWindow.hide();
            _layoutManager.repositionToolWindows();
        } // end if
    } // End of the function
    function toggleSendWindow()
    {
        if (!_sendWindow.__get__visible())
        {
            _sendWindow.show();
            _layoutManager.repositionToolWindows();
        }
        else
        {
            this.hideSendWindow();
        } // end else if
    } // End of the function
    function hideSendWindow()
    {
        if (_sendWindow.__get__visible())
        {
            _sendWindow.hide();
            _layoutManager.repositionToolWindows();
        } // end if
    } // End of the function
    function togglePrintWindow()
    {
        if (!_printWindow.__get__visible())
        {
            _printWindow.show();
            _layoutManager.repositionToolWindows();
        }
        else
        {
            this.hidePrintWindow();
        } // end else if
    } // End of the function
    function hidePrintWindow()
    {
        if (_printWindow.__get__visible())
        {
            _printWindow.hide();
            _layoutManager.repositionToolWindows();
        } // end if
    } // End of the function
    function toggleSaveWindow()
    {
        if (!_saveWindow.__get__visible())
        {
            _saveWindow.show();
            _layoutManager.repositionToolWindows();
        }
        else
        {
            this.hideSaveWindow();
        } // end else if
    } // End of the function
    function hideSaveWindow()
    {
        if (_saveWindow.__get__visible())
        {
            _saveWindow.hide();
            _layoutManager.repositionToolWindows();
        } // end if
    } // End of the function
    function togglePermalinkPanel()
    {
        _mainWindow.showPermalinkPanel();
    } // End of the function
    function resize(width, height)
    {
        _settings.stageWidth = width;
        _settings.stageHeight = height;
        _layoutManager.resizeStage(width, height);
    } // End of the function
    function flipForward()
    {
        if (_settings.__get__rightToLeft())
        {
            if (_settings.__get__leftPageNumber() == 1 || _settings.__get__rightPageNumber() == 1)
            {
                return;
            } // end if
        } // end if
        _book.flipForward();
    } // End of the function
    function flipBack()
    {
        if (!_settings.__get__rightToLeft())
        {
            if (_settings.__get__leftPageNumber() == 1 || _settings.__get__rightPageNumber() == 1)
            {
                return;
            } // end if
        } // end if
        _book.flipBack();
    } // End of the function
    function gotoPage(pageNumber)
    {
        if (pageNumber < 1)
        {
            pageNumber = 1;
        } // end if
        var _loc3 = _settings.__get__rightToLeft() ? (-1) : (1);
        if (_book.isLeftPage(pageNumber))
        {
            _bookNavigator.updateButtons(pageNumber - _loc3, pageNumber + 2 * _loc3, "startFlip", _pageZoomer.__get__zoomedIn());
        }
        else
        {
            _bookNavigator.updateButtons(pageNumber - 2 * _loc3, pageNumber + _loc3, "startFlip", _pageZoomer.__get__zoomedIn());
        } // end else if
        _book.flipGotoPage(pageNumber);
    } // End of the function
    function pageNumbersChanged()
    {
        _mainWindow.pageNumbersChanged();
    } // End of the function
    function zoomIn(zoomLeftPage)
    {
        var _loc2;
        if (!_settings.__get__zoomEnabled())
        {
            return;
        } // end if
        if (zoomLeftPage)
        {
            _loc2 = _settings.leftPageNumber;
        }
        else
        {
            _loc2 = _settings.rightPageNumber;
        } // end else if
        if (_loc2 > _settings.__get__totalVisiblePages())
        {
            return;
        } // end if
        var _loc3 = _book.isPageLoaded(_loc2);
        if (_loc3)
        {
            _settings.__set__zoomedPageNumber(_loc2);
            _settings.__set__zoomed(true);
            _book.zoomIn();
            _pageZoomer.zoomIn(_book, zoomLeftPage);
        } // end if
    } // End of the function
    function zoomOut()
    {
        _settings.__set__zoomed(false);
        _book.show();
        _book.zoomOut();
        _pageZoomer.zoomOut();
        _layoutManager.repositionNavigator();
    } // End of the function
    function switchZoom()
    {
        if (!_pageZoomer.__get__zoomedIn())
        {
            if (_settings.__get__leftPageNumber())
            {
                this.zoomIn(true);
            }
            else if (_settings.__get__rightPageNumber())
            {
                this.zoomIn(false);
            } // end else if
        }
        else
        {
            this.zoomOut();
        } // end else if
    } // End of the function
    function changeScreenView()
    {
        Stage.displayState = Stage.displayState == "normal" ? ("fullScreen") : ("normal");
        if (Stage.displayState == "normal")
        {
            _settings.__set__fullScreenHint(_settings.fullScreenEnableHint);
        }
        else
        {
            _settings.__set__fullScreenHint(_settings.fullScreenDisableHint);
        } // end else if
    } // End of the function
    function _closeSideWindows()
    {
        if (_thumbnailsWindow.__get__visible())
        {
            _thumbnailsWindow.hide();
        } // end if
        if (_bookmarksWindow.__get__visible())
        {
            _bookmarksWindow.hide();
        } // end if
        if (_searchWindow.__get__visible())
        {
            _searchWindow.hide();
        } // end if
        if (_tocWindow.__get__visible())
        {
            _tocWindow.hide();
        } // end if
    } // End of the function
    function onMenuItemRelease(eventObject)
    {
        this.dispatchEvent({type: "onMenuItemRelease", id: eventObject.id});
    } // End of the function
    function windowCornerRadiusChanged()
    {
        _mainWindow.__set__cornerRadius(_settings.windowCornerRadius);
        _thumbnailsWindow.__set__cornerRadius(_settings.windowCornerRadius);
        _bookmarksWindow.__set__cornerRadius(_settings.windowCornerRadius);
        _searchWindow.__set__cornerRadius(_settings.windowCornerRadius);
        _saveWindow.__set__cornerRadius(_settings.windowCornerRadius);
        _printWindow.__set__cornerRadius(_settings.windowCornerRadius);
        _sendWindow.__set__cornerRadius(_settings.windowCornerRadius);
        _alertWindow.__set__cornerRadius(_settings.windowCornerRadius);
        _bottomMenu.__set__cornerRadius(_settings.windowCornerRadius);
    } // End of the function
    function rightToLeftChanged()
    {
        _book.__set__pages(_settings.pages);
        _bottomMenu.updateNavigationMenu();
        _book.switchToPage(0);
        _thumbnailsWindow.rightToLeftChanged();
    } // End of the function
    function skinColorChanged()
    {
        _pageZoomer.__set__skinColor(_settings.skinColor);
        _mainWindow.__set__skinColor(_settings.skinColor);
        _thumbnailsWindow.__set__skinColor(_settings.skinColor);
        _bookmarksWindow.__set__skinColor(_settings.skinColor);
        _searchWindow.__set__skinColor(_settings.skinColor);
        _saveWindow.__set__skinColor(_settings.skinColor);
        _printWindow.__set__skinColor(_settings.skinColor);
        _sendWindow.__set__skinColor(_settings.skinColor);
        _bottomMenu.__set__skinColor(_settings.skinColor);
        _bookNavigator.__set__skinColor(_settings.skinColor);
        _tocWindow.__set__skinColor(_settings.skinColor);
        _alertWindow.__set__skinColor(_settings.skinColor);
    } // End of the function
    function windowWidthChanged()
    {
        _layoutManager.arrangeWindows();
    } // End of the function
    function windowHeightChanged()
    {
        _layoutManager.arrangeWindows();
    } // End of the function
    function applicationWidthChanged()
    {
        _layoutManager.resizeStage(Stage.width, Stage.height);
    } // End of the function
    function applicationHeightChanged()
    {
        _layoutManager.resizeStage(Stage.width, Stage.height);
    } // End of the function
    function applicationBackgroundPlacementChanged()
    {
        _layoutManager.resizeStage(Stage.width, Stage.height);
    } // End of the function
    function applicationBackgroundColorChanged()
    {
        _background.setColor(_settings.__get__applicationBackgroundColor());
    } // End of the function
    function applicationBackgroundImageChanged()
    {
        _background.loadBackgroundImage();
    } // End of the function
    function playMusic()
    {
        _settings.__set__playButtonEnabled(false);
        _settings.__set__stopButtonEnabled(true);
        if (_musicPlaying)
        {
        }
        else
        {
            mySound = new Sound();
            mySound.onLoad = mx.utils.Delegate.create(this, onSoundLoaded);
            mySound.loadSound(_settings.__get__musicFileURL(), !_settings.__get__audioLoop());
            if (!_settings.__get__audioLoop())
            {
                mySound.start();
            } // end if
        } // end else if
        _musicPlaying = true;
    } // End of the function
    function onSoundLoaded(success)
    {
        if (success)
        {
            if (_settings.__get__audioLoop())
            {
                mySound.start(0, 999999);
            } // end if
        } // end if
    } // End of the function
    function stopMusic()
    {
        _settings.__set__playButtonEnabled(true);
        _settings.__set__stopButtonEnabled(false);
        if (_musicPlaying)
        {
            mySound.stop();
            
        } // end if
        _musicPlaying = false;
    } // End of the function
    function playStopButtonChanged()
    {
        _bottomMenu.updateMenuItem("playbutton");
        _bottomMenu.updateMenuItem("stopbutton");
    } // End of the function
    function tocTreeChanged()
    {
        _tocWindow.updateTree();
    } // End of the function
    function bookmarksEnabledChanged()
    {
        _bottomMenu.updateMenuItem("bookmarks");
        if (!_settings.__get__bookmarksEnabled())
        {
            this.hideBookmarksWindow();
        } // end if
        _printWindow.updatePrintOptions();
    } // End of the function
    function thumbnailsEnabledChanged()
    {
        _bottomMenu.updateMenuItem("thumbnails");
        if (!_settings.__get__thumbnailsEnabled())
        {
            this.hideThumbnailsWindow();
        } // end if
    } // End of the function
    function tocEnabledChanged()
    {
        _bottomMenu.updateMenuItem("toc");
        if (!_settings.__get__tocEnabled())
        {
            this.hideTOCWindow();
        } // end if
    } // End of the function
    function permalinkEnabledChanged()
    {
        _mainWindow.disablePermalink();
        _bottomMenu.updateMenuItem("permalink");
    } // End of the function
    function sendEnabledChanged()
    {
        _bottomMenu.updateMenuItem("send");
    } // End of the function
    function saveEnabledChanged()
    {
        _bottomMenu.updateMenuItem("save");
        if (!_settings.__get__saveEnabled())
        {
            this.hideSaveWindow();
        } // end if
        _printWindow.updatePrintOptions();
    } // End of the function
    function fullScreenEnabledChanged()
    {
        _bottomMenu.updateMenuItem("fullscreen");
    } // End of the function
    function playStopButtonEnabledChanged()
    {
        _bottomMenu.updateMenuItem("playbutton");
        _bottomMenu.updateMenuItem("stopbutton");
    } // End of the function
    function playStopButtonHintChanged()
    {
        _bottomMenu.updateMenuItem("playbutton");
        _bottomMenu.updateMenuItem("stopbutton");
    } // End of the function
    function audioLoopChanged()
    {
        if (_musicPlaying)
        {
            this.stopMusic();
            this.playMusic();
        } // end if
    } // End of the function
    function musicFileURLChanged()
    {
        if (_musicPlaying)
        {
            this.stopMusic();
            this.playMusic();
        } // end if
    } // End of the function
    function zoomButtonEnabledChanged()
    {
        _bottomMenu.updateMenuItem("zoombutton");
    } // End of the function
    function printEnabledChanged()
    {
        _bottomMenu.updateMenuItem("print");
    } // End of the function
    function searchColorChanged()
    {
        com.fbpublisher.utils.search.BookInfo.__get__singleton().update();
    } // End of the function
    function searchEnabledChanged()
    {
        _bottomMenu.updateSearch();
        _mainWindow.updateSearch();
        if (!_settings.__get__searchEnabled())
        {
            this.hideSearchWindow();
        } // end if
    } // End of the function
    function bookmarksHintChanged()
    {
        _bottomMenu.updateMenuItem("bookmarks");
    } // End of the function
    function bookmarksTextChanged()
    {
        _bookmarksWindow.updateTexts();
    } // End of the function
    function thumbnailsHintChanged()
    {
        _bottomMenu.updateMenuItem("thumbnails");
    } // End of the function
    function fullScreenHintChanged()
    {
        _bottomMenu.updateMenuItem("fullscreen");
    } // End of the function
    function zoomButtonHintChanged()
    {
        _bottomMenu.updateMenuItem("zoombutton");
    } // End of the function
    function thumbnailsWindowTitleChanged()
    {
        _thumbnailsWindow.updateTitle();
    } // End of the function
    function bookmarksWindowTitleChanged()
    {
        _bookmarksWindow.updateTitle();
    } // End of the function
    function searchWindowTitleChanged()
    {
        _searchWindow.updateTitle();
    } // End of the function
    function sendWindowTitleChanged()
    {
        _sendWindow.updateTitle();
    } // End of the function
    function printWindowTitleChanged()
    {
        _printWindow.updateTitle();
    } // End of the function
    function tocHintChanged()
    {
        _bottomMenu.updateMenuItem("toc");
    } // End of the function
    function permalinkHintChanged()
    {
        _bottomMenu.updateMenuItem("permalink");
    } // End of the function
    function permalinkLabelChanged()
    {
        _mainWindow.updatePermalinkLabel();
    } // End of the function
    function permalinkShareLabelChanged()
    {
        _mainWindow.updatePermalinkShareLabel();
    } // End of the function
    function permalinkCopyLabelChanged()
    {
        _mainWindow.updatePermalinkCopyLabel();
    } // End of the function
    function permalinkBaseURLChanged()
    {
        _mainWindow.updatePermalinkBaseURL();
    } // End of the function
    function permalinkFocusColorChanged()
    {
    } // End of the function
    function sendHintChanged()
    {
        _bottomMenu.updateMenuItem("send");
    } // End of the function
    function printHintChanged()
    {
        _bottomMenu.updateMenuItem("print");
    } // End of the function
    function saveHintChanged()
    {
        _bottomMenu.updateMenuItem("save");
    } // End of the function
    function downloadButtonTextChanged()
    {
        _saveWindow.updateDownloadButtonText();
    } // End of the function
    function downloadFileSizeTextChanged()
    {
        _saveWindow.updateDownloadFileSizeText();
    } // End of the function
    function downloadFileSizeChanged()
    {
        _saveWindow.updateDownloadFileSizeText();
    } // End of the function
    function downloadHintTextChanged()
    {
        _saveWindow.updateDownloadHintText();
    } // End of the function
    function saveWindowTitleChanged()
    {
        _saveWindow.updateTitle();
    } // End of the function
    function tocTitleChanged()
    {
        _tocWindow.updateTitle();
    } // End of the function
    function mainWindowBackgroundColorChanged()
    {
        _mainWindow.changeBackgroundColor();
    } // End of the function
    function mainWindowBackgroundImageChanged()
    {
        _mainWindow.changeBackgroundImage();
    } // End of the function
    function mainWindowBackgroundImagePlacementChanged()
    {
        _mainWindow.changeBackgroundImagePlacement();
    } // End of the function
    function headerGradientChanged()
    {
        _mainWindow.updateHeader();
        _thumbnailsWindow.updateHeader();
        _bookmarksWindow.updateHeader();
        _searchWindow.updateHeader();
        _saveWindow.updateHeader();
        _printWindow.updateHeader();
        _sendWindow.updateHeader();
        _tocWindow.updateHeader();
        _alertWindow.updateHeader();
    } // End of the function
    function menuChanged()
    {
        _bottomMenu.updateBackground();
    } // End of the function
    function subHeaderChanged()
    {
        _bookmarksWindow.updateSubHeader();
    } // End of the function
    function titleEnabledChanged()
    {
        _mainWindow.updateTitle();
    } // End of the function
    function titleLabelChanged()
    {
        _mainWindow.updateTitle();
    } // End of the function
    function _onPermalinkShare(eventObject)
    {
        this.dispatchEvent({type: "onPermalinkShare", URL: eventObject.URL});
    } // End of the function
    function _onPermalinkCopy(eventObject)
    {
        this.dispatchEvent({type: "onPermalinkCopy", URL: eventObject.URL});
    } // End of the function
    function paginationEnabledChanged()
    {
        _mainWindow.updatePaginationEnabled();
    } // End of the function
    function paginationLabelChanged()
    {
        _mainWindow.updatePaginationLabel();
    } // End of the function
    function paginationTotalPagesChanged()
    {
        _mainWindow.updatePaginationTotalPages();
    } // End of the function
    function paginationPageNumbersChanged()
    {
        _mainWindow.updatePaginationPageNumbers();
    } // End of the function
    function _onGotoPage(eventObject)
    {
        this.dispatchEvent({type: "onGotoPage", pageNumber: eventObject.pageNumber});
    } // End of the function
    function _onSearchText(eventObject)
    {
        _searchWindow.search(eventObject.query);
        this.dispatchEvent({type: "onSearchText", query: eventObject.query});
    } // End of the function
    function navigationEnabledChanged(eventObject)
    {
        _bookNavigator.hide();
        if (_settings.__get__navigationEnabled())
        {
            if (_settings.__get__navigationType() == "sideButtons")
            {
                _bookNavigator.show();
            } // end if
        } // end if
        _layoutManager.repositionBook();
    } // End of the function
    function navigationMenuChanged(eventObject)
    {
        _bottomMenu.updateNavigationMenu();
    } // End of the function
    function navigationTypeChanged(eventObject)
    {
        this.navigationEnabledChanged();
    } // End of the function
    function flipCornerChanged(eventObject)
    {
        _book.__set__flipCorner(_settings.flipCorner);
        _book.__set__flipCornerPosition(_settings.flipCornerPosition);
    } // End of the function
    function hardcoverChanged(eventObject)
    {
        _book.__set__hardcover(_settings.hardcover);
    } // End of the function
    function linkButtonChanged(eventObject)
    {
        _mainWindow.updateLink();
    } // End of the function
    function zoomFitWidthChanged(eventObject)
    {
        _layoutManager.resizeStage(Stage.width, Stage.height);
    } // End of the function
    function navigationPreviousHintChanged(eventObject)
    {
    } // End of the function
    function navigationNextHintChanged(eventObject)
    {
    } // End of the function
    function zoomEnabledChanged(eventObject)
    {
    } // End of the function
    function zoomInHintChanged(eventObject)
    {
    } // End of the function
    function zoomOutHintChanged(eventObject)
    {
    } // End of the function
    function onPutPage(eventObject)
    {
        this.dispatchEvent(eventObject);
        var _loc3 = _settings.__get__rightToLeft() ? (-1) : (1);
        _bookNavigator.updateButtons(_settings.__get__leftPageNumber() - _loc3, _settings.__get__rightPageNumber() + _loc3, "putPage", _pageZoomer.__get__zoomedIn());
        if (_pageZoomer.__get__zoomedIn())
        {
            trace ("PutPage");
            if (_pageZoomer.__get__Animating())
            {
                return;
            } // end if
            var _loc2 = _settings.__get__zoomedTargetPageNumber() > _settings.__get__zoomedPageNumber();
            if (_settings.__get__rightToLeft())
            {
                _loc2 = !_loc2;
            } // end if
            _settings.__set__zoomedPageNumber(_settings.zoomedTargetPageNumber);
            _pageZoomer.switchPages(_settings.__get__zoomedTargetPageNumber(), _loc2, _book.isLeftPage(_settings.__get__zoomedTargetPageNumber()));
            this._updateZoomNavigator(_settings.__get__zoomedTargetPageNumber());
        } // end if
    } // End of the function
    function onBookInit(eventObject)
    {
        if (_settings.__get__rightToLeft())
        {
            _book.switchToPage(1);
        } // end if
        this.zoomOutAnimationFinished();
        if (_root.pageNumber)
        {
            _book.switchToPage(_root.pageNumber);
        } // end if
        _thumbnailsWindow.pageNumbersChanged();
        this.dispatchEvent(eventObject);
    } // End of the function
    function bookShadowEnabledChanged(eventObject)
    {
        _book.updateShadow();
    } // End of the function
    function bookShadowHideWhenFlippingChanged(eventObject)
    {
        _book.updateShadow();
    } // End of the function
    function bookCenteredChanged(eventObject)
    {
        _book.updateBookCentering();
    } // End of the function
    function _onPermalinkSizeChanged(eventObject)
    {
        _layoutManager.repositionBook();
    } // End of the function
    function _onMouseWheelOnBook(eventObject)
    {
        trace ("_onMouseWheelOnBook" + eventObject.sign);
        if (eventObject.sign > 0)
        {
            this.flipForward();
        }
        else
        {
            this.flipBack();
        } // end else if
    } // End of the function
    function onClickWithoutDragging(eventObject)
    {
        this.dispatchEvent(eventObject);
    } // End of the function
    function onZoomPageRelease(eventObject)
    {
        if (_pageZoomer.__get__Animating())
        {
            return;
        } // end if
        this.zoomOut();
    } // End of the function
    function zoomNavigationCall(eventObject)
    {
        var _loc3 = _settings.__get__zoomedPageNumber();
        var _loc2;
        switch (eventObject.functionName)
        {
            case "flipGotoPage":
            {
                _loc2 = eventObject.pageNumber;
                break;
            } 
            case "gotoPage":
            {
                _loc2 = eventObject.pageNumber;
                break;
            } 
            case "directGotoPage":
            {
                _loc2 = eventObject.pageNumber;
                break;
            } 
            case "flipForward":
            {
                if (_loc3 >= _book.__get__component().totalPages)
                {
                    return;
                } // end if
                _loc2 = _settings.__get__rightToLeft() ? (_loc3 - 1) : (_loc3 + 1);
                break;
            } 
            case "flipBack":
            {
                _loc2 = _settings.__get__rightToLeft() ? (_loc3 + 1) : (_loc3 - 1);
                break;
            } 
        } // End of switch
        if (_loc2 > _book.__get__component().totalPages)
        {
            _loc2 = _book.__get__component().totalPages;
        } // end if
        if (_loc2 < 1)
        {
            _loc2 = 1;
        } // end if
        var _loc4 = _loc2 > _loc3;
        if (_settings.__get__rightToLeft())
        {
            _loc4 = !_loc4;
        } // end if
        if (_pageZoomer.__get__Animating())
        {
            return;
        } // end if
        if (_book.neighborPages(_loc3, _loc2))
        {
            _settings.__set__zoomedPageNumber(_loc2);
            _pageZoomer.switchPages(_loc2, _loc4, _book.isLeftPage(_loc2));
            this._updateZoomNavigator(_loc2);
        }
        else
        {
            _settings.__set__zoomedTargetPageNumber(_loc2);
            _book.switchToPage(_loc2);
        } // end else if
    } // End of the function
    function updateStyles()
    {
        _mainWindow.updateStyles();
        _thumbnailsWindow.updateStyles();
        _hint.updateStyles();
        _bookmarksWindow.updateStyles();
        _searchWindow.updateStyles();
        _saveWindow.updateStyles();
        _printWindow.updateStyles();
        _sendWindow.updateStyles();
        _bottomMenu.updateStyles();
        _tocWindow.updateStyles();
        _alertWindow.updateStyles();
    } // End of the function
    function thumbnailsSelectedColorChanged()
    {
        _thumbnailsWindow.updateStyles();
    } // End of the function
    function secondaryTextChanged()
    {
        this.updateStyles();
    } // End of the function
    function textEditChanged()
    {
        _mainWindow.updateTextEditColor();
        _printWindow.updateTextEditColor();
        _bookmarksWindow.updateTextEditColor();
        _searchWindow.updateTextEditColor();
        com.fbpublisher.basicskin.viewclasses.SearchField.__get__singleton().updateTextEditColor();
    } // End of the function
    function mainTextChanged()
    {
        this.updateStyles();
    } // End of the function
    function pageBackgroundColorChanged()
    {
        _book.__set__pageBackgroundColor(_settings.pageBackgroundColor);
    } // End of the function
    function _updateZoomNavigator(targetPage)
    {
        if (_book.isLeftPage(targetPage))
        {
            var _loc2 = targetPage - 1;
            var _loc4 = targetPage + 1;
        }
        else
        {
            _loc2 = targetPage - 1;
            _loc4 = targetPage + 1;
        } // end else if
        if (_settings.__get__rightToLeft())
        {
            var _loc5 = _loc2;
            _loc2 = _loc4;
            _loc4 = _loc5;
        } // end if
        _bookNavigator.updateButtons(_loc2, _loc4, "zoomSwitch", _pageZoomer.__get__zoomedIn());
    } // End of the function
    function zoomInAnimationFinished(eventObject)
    {
        _settings.updatePageNumbers(_book.__get__component());
        _book.hide();
        _layoutManager.repositionNavigatorZoomed();
        _bookNavigator.__set__zoomedIn(true);
        this._updateZoomNavigator(_settings.__get__zoomedPageNumber());
    } // End of the function
    function zoomOutAnimationFinished(eventObject)
    {
        _settings.updatePageNumbers(_book.__get__component());
        _bookNavigator.__set__zoomedIn(false);
        var _loc2 = _settings.__get__rightToLeft() ? (-1) : (1);
        if (_flipping)
        {
            _bookNavigator.updateButtons(_settings.__get__leftPageNumber() - 2 - _loc2, _settings.__get__rightPageNumber() - 1 + _loc2, "zoomOut", _pageZoomer.__get__zoomedIn());
        }
        else
        {
            _bookNavigator.updateButtons(_settings.__get__leftPageNumber() - _loc2, _settings.__get__rightPageNumber() + _loc2, "zoomOut", _pageZoomer.__get__zoomedIn());
        } // end else if
    } // End of the function
    function bookCenterChanged(eventObject)
    {
        _layoutManager.repositionNavigator();
    } // End of the function
    function onNavigationButtonRelease(eventObject)
    {
        if (eventObject.forward)
        {
            _book.flipForward();
        }
        else
        {
            _book.flipBack();
        } // end else if
    } // End of the function
    function onStartFlip(eventObject)
    {
        _flipping = true;
        if (_pageZoomer.__get__zoomedIn())
        {
            return;
        } // end if
        var _loc5 = _settings.__get__rightToLeft() ? (0) : (3);
        var _loc4 = _settings.__get__rightToLeft() ? (3) : (0);
        var _loc2 = _book.isLeftPage(eventObject.pageNumber) || _book.isLeftPage(eventObject.pageNumber) == undefined && _settings.__get__totalPages() <= 2;
        _loc2 = _settings.__get__rightToLeft() ? (!_loc2) : (_loc2);
        if (_loc2)
        {
            _bookNavigator.updateButtons(eventObject.pageNumber - _loc5, eventObject.pageNumber - _loc4, "startFlip", _pageZoomer.__get__zoomedIn());
        }
        else
        {
            _bookNavigator.updateButtons(eventObject.pageNumber + _loc4, eventObject.pageNumber + _loc5, "startFlip", _pageZoomer.__get__zoomedIn());
        } // end else if
    } // End of the function
    function onFlipBack(eventObject)
    {
        _flipping = false;
        if (_pageZoomer.__get__zoomedIn())
        {
            return;
        } // end if
        var _loc2 = _settings.__get__rightToLeft() ? (-1) : (1);
        _bookNavigator.updateButtons(_settings.__get__leftPageNumber() - _loc2, _settings.__get__rightPageNumber() + _loc2, "flipBack", _pageZoomer.__get__zoomedIn());
    } // End of the function
    function zoomOutAnimationStarted(eventObject)
    {
    } // End of the function
    function onBookOut(eventObject)
    {
        _flipping = false;
    } // End of the function
    function onThumbnailsCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseThumbnailsWindow"});
    } // End of the function
    function onPageIconClick(eventObject)
    {
        if (_searchWindow.__get__query() && _searchWindow.__get__visible())
        {
            com.fbpublisher.utils.search.BookInfo.__get__singleton().load(eventObject.pageNumber - 1);
        } // end if
        this.gotoPage(eventObject.pageNumber);
    } // End of the function
    function onTOCCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseTOCWindow"});
    } // End of the function
    function onBookmarksCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseBookmarksWindow"});
    } // End of the function
    function onSearchCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseSearchWindow"});
    } // End of the function
    function onAlertCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseAlertWindow"});
    } // End of the function
    function onSendCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseSendWindow"});
    } // End of the function
    function onPrintCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onClosePrintWindow"});
    } // End of the function
    function onSaveCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseSaveWindow"});
    } // End of the function
    function onDownloadPDFVersion(eventObject)
    {
        getURL(_settings.__get__downloadFileURL(), "_blank");
        this.dispatchEvent({type: "downloadPDFVersion"});
    } // End of the function
    function onSwitchToDownloadWindow(eventObject)
    {
        _printWindow.hide();
        this.toggleSaveWindow();
    } // End of the function
    function reloadPages()
    {
        _book.__set__hardcover(false);
        _book.__set__pages(_settings.pages);
        if (_settings.__get__invertPagesSet())
        {
            _book.__get__pages().reverse();
        } // end if
        _book.__set__hardcover(_settings.hardcover);
        _settings.updatePageNumbers(_book.__get__component());
        _pageZoomer.clearHistory();
        _thumbnailsWindow.reloadImages();
        _bookmarksWindow.reloadImages();
        _printWindow.reloadImages();
        _layoutManager.arrangeWindows();
        _settings.__set__zoomedTargetPageNumber(1);
        _book.switchToPage(1);
        _bookNavigator.updateButtons(_settings.__get__leftPageNumber() - 1, _settings.__get__rightPageNumber() + 1, "zoomSwitch", _pageZoomer.__get__zoomedIn());
    } // End of the function
    function bookSizeScaleChanged(eventObject)
    {
        _layoutManager.arrangeWindows();
    } // End of the function
    function updateLayout()
    {
        _layoutManager.arrangeWindows();
    } // End of the function
    function onTocAddNode(obj)
    {
        _tocWindow.addNode(obj.parent, obj.index, obj.id, obj.label, obj.page);
    } // End of the function
    function onTocRemoveNode(obj)
    {
        _tocWindow.removeNode(obj.id);
    } // End of the function
    function onTocEditNode(obj)
    {
        _tocWindow.editNode(obj.id, obj.label, obj.page);
    } // End of the function
    function onTocMoveNode(obj)
    {
        _tocWindow.moveNode(obj.id, obj.parent, obj.index);
    } // End of the function
    var _flipping = false;
    var iSfullScreen = false;
} // End of Class
#endinitclip
