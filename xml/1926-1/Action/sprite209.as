// Action script...

// [Initial MovieClip Action of sprite 209]
#initclip 105
class com.fbpublisher.basicskin.ExternalSettings
{
    var _settings, _view, wasSuccessful, label;
    function ExternalSettings(settings, view)
    {
        _settings = settings;
        _view = view;
        mx.events.EventDispatcher.initialize(this);
        wasSuccessful = flash.external.ExternalInterface.addCallback("setExternalParameter", this, externalCall);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setZoomPageWidth", this, setZoomPageWidth);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setZoomFitWidth", this, setZoomFitWidth);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookZoomedIn", this, setBookZoomedIn);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setZoomedTargetPageNumber", this, setZoomedTargetPageNumber);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setZoomedPageNumber", this, setZoomedPageNumber);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookSizeScale", this, setBookSizeScale);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookCentered", this, setBookCentered);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookShadowEnabled", this, setBookShadowEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookShadowHideWhenFlipping", this, setBookShadowHideWhenFlipping);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookCenterX", this, setBookCenterX);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookCenterY", this, setBookCenterY);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookAreaWidth", this, setBookAreaWidth);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookAreaHeight", this, setBookAreaHeight);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setRealBookWidth", this, setRealBookWidth);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setRealBookHeight", this, setRealBookHeight);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setNavigationButtonWidth", this, setNavigationButtonWidth);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setMainWindowBackgroundColor", this, setMainWindowBackgroundColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setMainWindowBackgroundImage", this, setMainWindowBackgroundImage);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setMainWindowBackgroundImagePlacement", this, setMainWindowBackgroundImagePlacement);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setHeaderGradientColor", this, setHeaderGradientColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setHeaderGradientAlphaTo", this, setHeaderGradientAlphaTo);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setHeaderGradientAlphaFrom", this, setHeaderGradientAlphaFrom);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setWindowSubHeaderGradientColor", this, setWindowSubHeaderGradientColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setWindowSubHeaderGradientAlphaFrom", this, setWindowSubHeaderGradientAlphaFrom);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setWindowSubHeaderGradientAlphaTo", this, setWindowSubHeaderGradientAlphaTo);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setMenuGradientColor", this, setMenuGradientColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setMenuGradientAlphaFrom", this, setMenuGradientAlphaFrom);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setMenuGradientAlphaTo", this, setMenuGradientAlphaTo);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSearchMinLenWarning", this, setSearchMinLenWarning);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSearchInProgressText", this, setSearchInProgressText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSearchEntryPageText", this, setSearchEntryPageText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setAudioAuto", this, setAudioAuto);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSearchLoadingText", this, setSearchLoadingText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSearchResultTitle", this, setSearchResultTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSearchFolderURL", this, setSearchFolderURL);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSearchPagesFoundText", this, setSearchPagesFoundText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSearchEntryHighlightColor", this, setSearchEntryHighlightColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSearchButtonHint", this, setSearchButtonHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSearchEnabled", this, setSearchEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSaveEnabled", this, setSaveEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPrintEnabled", this, setPrintEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSendEnabled", this, setSendEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPermalinkEnabled", this, setPermalinkEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setThumbnailsEnabled", this, setThumbnailsEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setThumbnailsSelectedColor", this, setThumbnailsSelectedColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksEnabled", this, setBookmarksEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksHint", this, setBookmarksHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setThumbnailsHint", this, setThumbnailsHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setThumbnailsWindowTitle", this, setThumbnailsWindowTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksWindowTitle", this, setBookmarksWindowTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSearchWindowTitle", this, setSearchWindowTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPermalinkHint", this, setPermalinkHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPermalinkLabel", this, setPermalinkLabel);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPermalinkBaseURL", this, setPermalinkBaseURL);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPermalinkShareLabel", this, setPermalinkShareLabel);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPermalinkCopyLabel", this, setPermalinkCopyLabel);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setTitleLabel", this, setTitleLabel);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setTitleEnabled", this, setTitleEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPaginationEnabled", this, setPaginationEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPaginationLabel", this, setPaginationLabel);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPaginationTotalPages", this, setPaginationTotalPages);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPaginationPageNumbers", this, setPaginationPageNumbers);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setZoomEnabled", this, setZoomEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setZoomInHint", this, setZoomInHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setZoomOutHint", this, setZoomOutHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setNavigationEnabled", this, setNavigationEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setNavigationType", this, setNavigationType);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setNavigationPreviousHint", this, setNavigationPreviousHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setNavigationNextHint", this, setNavigationNextHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setNavigationMenuEnabled", this, setNavigationMenuEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setNavMenuBeginHint", this, setNavMenuBeginHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setNavMenuLeftHint", this, setNavMenuLeftHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setNavMenuRightHint", this, setNavMenuRightHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setNavMenuEndHint", this, setNavMenuEndHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSendHint", this, setSendHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSendWindowTitle", this, setSendWindowTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPrintHint", this, setPrintHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPrintWindowTitle", this, setPrintWindowTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSaveHint", this, setSaveHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setDownloadButtonText", this, setDownloadButtonText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setDownloadFileSizeText", this, setDownloadFileSizeText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setDownloadFileSize", this, setDownloadFileSize);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setDownloadFileURL", this, setDownloadFileURL);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setDownloadHintText", this, setDownloadHintText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSaveWindowTitle", this, setSaveWindowTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setXMLFile", this, setXMLFile);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setApplicationBackgroundColor", this, setApplicationBackgroundColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setApplicationBackgroundImage", this, setApplicationBackgroundImage);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setApplicationBackgroundPlacement", this, setApplicationBackgroundPlacement);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSkinColor", this, setSkinColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setApplicationWidth", this, setApplicationWidth);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setApplicationHeight", this, setApplicationHeight);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setWindowWidth", this, setWindowWidth);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setWindowHeight", this, setWindowHeight);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setWindowCornerRadius", this, setWindowCornerRadius);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setInfoFile", this, setInfoFile);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setHandOverCorner", this, setHandOverCorner);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setHandOverPage", this, setHandOverPage);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setMoveSpeed", this, setMoveSpeed);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setFlipSound", this, setFlipSound);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPreloadAllPages", this, setPreloadAllPages);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setStaticShadowsDepth", this, setStaticShadowsDepth);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setDynamicShadowsDepth", this, setDynamicShadowsDepth);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookHardCover", this, setBookHardCover);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setFreezeOnFlip", this, setFreezeOnFlip);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setFlipCorner", this, setFlipCorner);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setFlipCornerPosition", this, setFlipCornerPosition);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setHardcover", this, setHardcover);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setTextEditBGColor", this, setTextEditBGColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setTextEditFocusBGColor", this, setTextEditFocusBGColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setMainTextColor", this, setMainTextColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setMainTextShadowColor", this, setMainTextShadowColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setMainTextShadowOpacity", this, setMainTextShadowOpacity);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSecondaryTextColor", this, setSecondaryTextColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSecondaryTextShadowColor", this, setSecondaryTextShadowColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setSecondaryTextShadowOpacity", this, setSecondaryTextShadowOpacity);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setFullScreenEnabled", this, setFullScreenEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setFullScreenEnableHint", this, setFullScreenEnableHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setFullScreenDisableHint", this, setFullScreenDisableHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setFullScreenEnableOnStart", this, setFullScreenEnableOnStart);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setZoomButtonEnabled", this, setZoomButtonEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setZoomInButtonHint", this, setZoomInButtonHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setZoomOutButtonHint", this, setZoomOutButtonHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookSize", this, setBookSize);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookWidth", this, setBookWidth);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookHeight", this, setBookHeight);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksAddTitle", this, setBookmarksAddTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksItemsTitle", this, setBookmarksItemsTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksCountTitle", this, setBookmarksCountTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPreloadingMessage", this, setPreloadingMessage);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPageBackgroundColor", this, setPageBackgroundColor);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksDeafaultText", this, setBookmarksDeafaultText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksAddText", this, setBookmarksAddText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksEditText", this, setBookmarksEditText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksRemoveText", this, setBookmarksRemoveText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksPageText", this, setBookmarksPageText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setBookmarksShortPageText", this, setBookmarksShortPageText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPrintSelectPagesTitle", this, setPrintSelectPagesTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPrintPreviewTitle", this, setPrintPreviewTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPrintButtonText", this, setPrintButtonText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPrintButtonDownloadText", this, setPrintButtonDownloadText);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPrintComboboxItem0", this, setPrintComboboxItem0);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPrintComboboxItem1", this, setPrintComboboxItem1);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPrintComboboxItem2", this, setPrintComboboxItem2);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPrintComboboxItem3", this, setPrintComboboxItem3);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setAudioEnabled", this, setAudioEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setPlayButtonHint", this, setPlayButtonHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setStopButtonHint", this, setStopButtonHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setAudioFileURL", this, setAudioFileURL);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setAudioLoop", this, setAudioLoop);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setFileLabel", this, setFileLabel);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setMBLabel", this, setMBLabel);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("goToPage", this, goToPage);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setLinkEnabled", this, setLinkEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setLinkLabel", this, setLinkLabel);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setLinkURL", this, setLinkURL);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setTocTreeFile", this, setTocTreeFile);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setTocEnabled", this, setTocEnabled);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setTocHint", this, setTocHint);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setTocWindowTitle", this, setTocWindowTitle);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("tocAddNode", this, tocAddNode);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("tocRemoveNode", this, tocRemoveNode);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("tocEditNode", this, tocEditNode);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("tocMoveNode", this, tocMoveNode);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("getPage", this, getPage);
        wasSuccessful = wasSuccessful | flash.external.ExternalInterface.addCallback("setRightToLeft", this, setRightToLeft);
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
    function stringToBoolean(value)
    {
        switch (value)
        {
            case "True":
            case "true":
            case "TRUE":
            case "1":
            {
                return (true);
            } 
            case "False":
            case "false":
            case "FALSE":
            case "0":
            {
                return (false);
            } 
        } // End of switch
        return (true);
        return (true);
    } // End of the function
    function externalCall(name, value)
    {
        if (!initialized)
        {
            label = new com.fbpublisher.utils.graphics.StyleableLabel(_root.createEmptyMovieClip("TestClip123123", _root.getNextHighestDepth()));
            label.__set__width(200);
            initialized = true;
        } // end if
        label.__set__text("" + wasSuccessful + "name = " + name + "; value = " + value);
        switch (name)
        {
            case "scale":
            {
                _settings.__set__bookSizeScale(50);
                break;
            } 
        } // End of switch
    } // End of the function
    function setRightToLeft(value)
    {
        _settings.__set__rightToLeft(this.stringToBoolean(value));
    } // End of the function
    function tocAddNode(parent, index, id, label, page)
    {
        com.fbpublisher.basicskin.TOCController.getInstance().addNode(Number(parent), Number(index), Number(id), label, Number(page));
    } // End of the function
    function tocRemoveNode(id)
    {
        com.fbpublisher.basicskin.TOCController.getInstance().removeNode(Number(id));
    } // End of the function
    function tocEditNode(id, label, page)
    {
        com.fbpublisher.basicskin.TOCController.getInstance().editNode(Number(id), label, Number(page));
    } // End of the function
    function tocMoveNode(id, parent, index)
    {
        com.fbpublisher.basicskin.TOCController.getInstance().moveNode(Number(id), Number(parent), Number(index));
    } // End of the function
    function getPage()
    {
        if (_settings.__get__bookZoomedIn())
        {
            //return (_settings.zoomedPageNumber());
        }
        else
        {
            //return (_settings.leftPageNumber() ? (_settings.__get__leftPageNumber()) : (_settings.__get__rightPageNumber()));
        } // end else if
    } // End of the function
    function setZoomPageWidth(newWidth)
    {
        _settings.__set__zoomPageWidth(Number(newWidth));
    } // End of the function
    function setZoomFitWidth(value)
    {
        _settings.__set__zoomFitWidth(this.stringToBoolean(value));
    } // End of the function
    function setBookZoomedIn(zoomedIn)
    {
        _settings.__set__bookZoomedIn(this.stringToBoolean(zoomedIn));
    } // End of the function
    function setZoomedTargetPageNumber(pageNumber)
    {
        _settings.__set__zoomedTargetPageNumber(Number(pageNumber));
    } // End of the function
    function setZoomedPageNumber(pageNumber)
    {
        _settings.__set__zoomedPageNumber(Number(pageNumber));
    } // End of the function
    function setBookSizeScale(newScale)
    {
        _settings.__set__bookSizeScale(Number(newScale));
    } // End of the function
    function setBookCentered(centered)
    {
        _settings.__set__bookCentered(this.stringToBoolean(centered));
    } // End of the function
    function setBookShadowEnabled(enabled)
    {
        _settings.__set__bookShadowEnabled(this.stringToBoolean(enabled));
    } // End of the function
    function setBookShadowHideWhenFlipping(hide)
    {
        _settings.__set__bookShadowHideWhenFlipping(this.stringToBoolean(hide));
    } // End of the function
    function setBookCenterX(newX)
    {
        _settings.__set__bookCenterX(Number(newX));
    } // End of the function
    function setBookCenterY(newY)
    {
        _settings.__set__bookCenterY(Number(newY));
    } // End of the function
    function setBookAreaWidth(newWidth)
    {
        _settings.__set__bookAreaWidth(Number(newWidth));
    } // End of the function
    function setBookAreaHeight(newHeight)
    {
        _settings.__set__bookAreaHeight(Number(newHeight));
    } // End of the function
    function setRealBookWidth(newWidth)
    {
        _settings.__set__realBookWidth(Number(newWidth));
    } // End of the function
    function setRealBookHeight(newHeight)
    {
        _settings.__set__realBookHeight(Number(newHeight));
    } // End of the function
    function setNavigationButtonWidth(newWidth)
    {
        _settings.__set__navigationButtonWidth(Number(newWidth));
    } // End of the function
    function setMainWindowBackgroundColor(newColor)
    {
        _settings.__set__mainWindowBackgroundColor(Number(newColor));
    } // End of the function
    function setMainWindowBackgroundImage(newImage)
    {
        _settings.__set__mainWindowBackgroundImage(newImage);
    } // End of the function
    function setMainWindowBackgroundImagePlacement(placement)
    {
        _settings.__set__mainWindowBackgroundImagePlacement(placement);
    } // End of the function
    function setHeaderGradientColor(value)
    {
        _settings.__set__windowHeaderGradientColor(Number(value));
    } // End of the function
    function setHeaderGradientAlphaTo(value)
    {
        _settings.__set__windowHeaderGradientAlphaTo(Number(value));
    } // End of the function
    function setHeaderGradientAlphaFrom(value)
    {
        _settings.__set__windowHeaderGradientAlphaFrom(Number(value));
    } // End of the function
    function setWindowSubHeaderGradientColor(value)
    {
        _settings.__set__windowSubHeaderGradientColor(Number(value));
    } // End of the function
    function setWindowSubHeaderGradientAlphaFrom(value)
    {
        _settings.__set__windowSubHeaderGradientAlphaFrom(Number(value));
    } // End of the function
    function setWindowSubHeaderGradientAlphaTo(value)
    {
        _settings.__set__windowSubHeaderGradientAlphaTo(Number(value));
    } // End of the function
    function setMenuGradientColor(value)
    {
        _settings.__set__menuGradientColor(Number(value));
    } // End of the function
    function setMenuGradientAlphaFrom(value)
    {
        _settings.__set__menuGradientAlphaFrom(Number(value));
    } // End of the function
    function setMenuGradientAlphaTo(value)
    {
        _settings.__set__menuGradientAlphaTo(Number(value));
    } // End of the function
    function setSearchEnabled(isEnabled)
    {
        _settings.__set__searchEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setSearchEntryHighlightColor(value)
    {
        _settings.__set__searchColor(Number(value));
    } // End of the function
    function setSearchMinLenWarning(value)
    {
        _settings.__set__searchMinLenWarning(value);
    } // End of the function
    function setSearchInProgressText(value)
    {
        _settings.__set__searchSearchingText(value);
    } // End of the function
    function setAudioAuto(value)
    {
        _settings.__set__audioAuto(value);
    } // End of the function
    function setSearchEntryPageText(value)
    {
        _settings.__set__searchEntryPageText(value);
    } // End of the function
    function setSearchLoadingText(value)
    {
        _settings.__set__searchLoadingText(value);
    } // End of the function
    function setSearchResultTitle(value)
    {
        _settings.__set__searchResultTitle(value);
    } // End of the function
    function setSearchPagesFoundText(value)
    {
        _settings.__set__searchPagesFoundText(value);
    } // End of the function
    function setSearchFolderURL(newHint)
    {
        _settings.__set__searchUrl(newHint);
    } // End of the function
    function setSearchButtonHint(newHint)
    {
        _settings.__set__searchButtonHint(newHint);
    } // End of the function
    function setSaveEnabled(isEnabled)
    {
        _settings.__set__saveEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setPrintEnabled(isEnabled)
    {
        _settings.__set__printEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setSendEnabled(isEnabled)
    {
        _settings.__set__sendEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setTocWindowTitle(title)
    {
        _settings.__set__tocWindowTitle(title);
    } // End of the function
    function setTocTreeFile(fileName)
    {
        _settings.__set__tocTreeFile(fileName);
    } // End of the function
    function setTocEnabled(isEnabled)
    {
        _settings.__set__tocEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setPermalinkEnabled(isEnabled)
    {
        _settings.__set__permalinkEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setThumbnailsEnabled(isEnabled)
    {
        _settings.__set__thumbnailsEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setThumbnailsSelectedColor(value)
    {
        _settings.__set__thumbnailsSelectedColor(Number(value));
    } // End of the function
    function setBookmarksEnabled(isEnabled)
    {
        _settings.__set__bookmarksEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setBookmarksHint(newHint)
    {
        _settings.__set__bookmarksHint(newHint);
    } // End of the function
    function setThumbnailsHint(newHint)
    {
        _settings.__set__thumbnailsHint(newHint);
    } // End of the function
    function setThumbnailsWindowTitle(newTitle)
    {
        _settings.__set__thumbnailsWindowTitle(newTitle);
    } // End of the function
    function setBookmarksWindowTitle(newTitle)
    {
        _settings.__set__bookmarksWindowTitle(newTitle);
    } // End of the function
    function setSearchWindowTitle(newTitle)
    {
        _settings.__set__searchWindowTitle(newTitle);
    } // End of the function
    function setTocHint(newHint)
    {
        _settings.__set__tocHint(newHint);
    } // End of the function
    function setPermalinkHint(newHint)
    {
        _settings.__set__permalinkHint(newHint);
    } // End of the function
    function setPermalinkLabel(newLabel)
    {
        _settings.__set__permalinkLabel(newLabel);
    } // End of the function
    function setPermalinkBaseURL(newURL)
    {
        _settings.__set__permalinkBaseURL(newURL);
    } // End of the function
    function setPermalinkShareLabel(newLabel)
    {
        _settings.__set__permalinkShareLabel(newLabel);
    } // End of the function
    function setPermalinkCopyLabel(newLabel)
    {
        _settings.__set__permalinkCopyLabel(newLabel);
    } // End of the function
    function setPermalinkFocusColor(newColor)
    {
        _settings.__set__permalinkFocusColor(Number(newColor));
    } // End of the function
    function setTitleLabel(newLabel)
    {
        _settings.__set__titleLabel(newLabel);
    } // End of the function
    function setTitleEnabled(isEnabled)
    {
        _settings.__set__titleEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setPaginationEnabled(isEnabled)
    {
        _settings.__set__paginationEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setPaginationLabel(newLabel)
    {
        _settings.__set__paginationLabel(newLabel);
    } // End of the function
    function setPaginationTotalPages(totalPages)
    {
        _settings.__set__paginationTotalPages(Number(totalPages));
    } // End of the function
    function setPaginationPageNumbers(newPageNumbers)
    {
        _settings.__set__paginationPageNumbers(newPageNumbers);
    } // End of the function
    function setZoomEnabled(isEnabled)
    {
        _settings.__set__zoomEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setZoomInHint(newHint)
    {
        _settings.__set__zoomInHint(newHint);
    } // End of the function
    function setZoomOutHint(newHint)
    {
        _settings.__set__zoomOutHint(newHint);
    } // End of the function
    function setNavigationEnabled(isEnabled)
    {
        _settings.__set__navigationEnabled(this.stringToBoolean(isEnabled));
    } // End of the function
    function setNavigationType(newType)
    {
        _settings.__set__navigationType(newType);
    } // End of the function
    function setNavigationPreviousHint(newHint)
    {
        _settings.__set__navigationPreviousHint(newHint);
    } // End of the function
    function setNavigationNextHint(newHint)
    {
        _settings.__set__navigationNextHint(newHint);
    } // End of the function
    function setNavigationMenuEnabled(value)
    {
        _settings.__set__navigationMenuEnabled(this.stringToBoolean(value));
    } // End of the function
    function setNavMenuBeginHint(newHint)
    {
        _settings.__set__navigationMenuBeginButtonHint(newHint);
    } // End of the function
    function setNavMenuLeftHint(newHint)
    {
        _settings.__set__navigationMenuLeftButtonHint(newHint);
    } // End of the function
    function setNavMenuRightHint(newHint)
    {
        _settings.__set__navigationMenuRightButtonHint(newHint);
    } // End of the function
    function setNavMenuEndHint(newHint)
    {
        _settings.__set__navigationMenuEndButtonHint(newHint);
    } // End of the function
    function setSendHint(newHint)
    {
        _settings.__set__sendHint(newHint);
    } // End of the function
    function setSendWindowTitle(newTitle)
    {
        _settings.__set__sendWindowTitle(newTitle);
    } // End of the function
    function setPrintHint(newHint)
    {
        _settings.__set__printHint(newHint);
    } // End of the function
    function setPrintWindowTitle(newTitle)
    {
        _settings.__set__printWindowTitle(newTitle);
    } // End of the function
    function setSaveHint(newHint)
    {
        _settings.__set__saveHint(newHint);
    } // End of the function
    function setDownloadButtonText(newText)
    {
        _settings.__set__downloadButtonText(newText);
    } // End of the function
    function setDownloadFileSizeText(newText)
    {
        _settings.__set__downloadFileSizeText(newText);
    } // End of the function
    function setDownloadFileSize(newText)
    {
        _settings.__set__downloadFileSize(newText);
    } // End of the function
    function setDownloadFileURL(newURL)
    {
        _settings.__set__downloadFileURL(newURL);
    } // End of the function
    function setDownloadHintText(newText)
    {
        _settings.__set__downloadHintText(newText);
    } // End of the function
    function setSaveWindowTitle(newTitle)
    {
        _settings.__set__saveWindowTitle(newTitle);
    } // End of the function
    function setXMLFile(XMLURL)
    {
        _settings.__set__XMLFile(XMLURL);
    } // End of the function
    function setApplicationBackgroundColor(newColor)
    {
        _settings.__set__applicationBackgroundColor(Number(newColor));
    } // End of the function
    function setApplicationBackgroundImage(newURL)
    {
        _settings.__set__applicationBackgroundImage(newURL);
    } // End of the function
    function setApplicationBackgroundPlacement(placementType)
    {
        _settings.__set__applicationBackgroundPlacement(placementType);
    } // End of the function
    function setSkinColor(newColor)
    {
        _settings.__set__skinColor(Number(newColor));
    } // End of the function
    function setApplicationWidth(newWidth)
    {
        _settings.__set__applicationWidth(newWidth);
    } // End of the function
    function setApplicationHeight(newHeight)
    {
        _settings.__set__applicationHeight(newHeight);
    } // End of the function
    function setWindowWidth(newWidth)
    {
        _settings.__set__windowWidth(newWidth);
    } // End of the function
    function setWindowHeight(newHeight)
    {
        _settings.__set__windowHeight(newHeight);
    } // End of the function
    function setWindowCornerRadius(newRadius)
    {
        _settings.__set__windowCornerRadius(Number(newRadius));
    } // End of the function
    function setInfoFile(value)
    {
        _settings.__set__infoFile(value);
    } // End of the function
    function setHandOverCorner(value)
    {
        _settings.__set__handOverCorner(this.stringToBoolean(value));
    } // End of the function
    function setHandOverPage(value)
    {
        _settings.__set__handOverPage(this.stringToBoolean(value));
    } // End of the function
    function setMoveSpeed(value)
    {
        _settings.__set__moveSpeed(Number(value));
    } // End of the function
    function setFlipSound(value)
    {
        _settings.__set__flipSound(value);
    } // End of the function
    function setPreloadAllPages(value)
    {
        _settings.__set__loadOnDemand(this.stringToBoolean(value));
    } // End of the function
    function setStaticShadowsDepth(value)
    {
        _settings.__set__staticShadowDepth(Number(value));
    } // End of the function
    function setDynamicShadowsDepth(value)
    {
        _settings.__set__dynamicShadowDepth(Number(value));
    } // End of the function
    function setBookHardCover(value)
    {
        _settings.__set__hardcover(this.stringToBoolean(value));
    } // End of the function
    function setFreezeOnFlip(value)
    {
        _settings.__set__freezeOnFlip(this.stringToBoolean(value));
    } // End of the function
    function setFlipCorner(value)
    {
        _settings.__set__flipCorner(this.stringToBoolean(value));
    } // End of the function
    function setFlipCornerPosition(value)
    {
        _settings.__set__flipCornerPosition(value);
    } // End of the function
    function setHardcover(value)
    {
        _settings.__set__hardcover(this.stringToBoolean(value));
    } // End of the function
    function loadingFinished()
    {
        flash.external.ExternalInterface.call("SWFLoaded");
    } // End of the function
    function setTextEditBGColor(value)
    {
        _settings.__set__textEditBG(Number(value));
    } // End of the function
    function setTextEditFocusBGColor(value)
    {
        _settings.__set__textEditFocusBG(Number(value));
    } // End of the function
    function setMainTextColor(value)
    {
        _settings.__set__mainTextColor(Number(value));
    } // End of the function
    function setMainTextShadowColor(value)
    {
        _settings.__set__mainTextShadowColor(Number(value));
    } // End of the function
    function setMainTextShadowOpacity(value)
    {
        _settings.__set__mainTextShadowOpacity(Number(value));
    } // End of the function
    function setSecondaryTextColor(value)
    {
        _settings.__set__secondaryTextColor(Number(value));
    } // End of the function
    function setSecondaryTextShadowColor(value)
    {
        _settings.__set__secondaryTextShadowColor(Number(value));
    } // End of the function
    function setSecondaryTextShadowOpacity(value)
    {
        _settings.__set__secondaryTextShadowOpacity(Number(value));
    } // End of the function
    function setFullScreenEnabled(value)
    {
        _settings.__set__fullScreenEnabled(this.stringToBoolean(value));
    } // End of the function
    function setFullScreenEnableHint(value)
    {
        _settings.__set__fullScreenEnableHint(value);
    } // End of the function
    function setFullScreenDisableHint(value)
    {
        _settings.__set__fullScreenDisableHint(value);
    } // End of the function
    function setFullScreenEnableOnStart(value)
    {
    } // End of the function
    function setZoomButtonEnabled(value)
    {
        _settings.__set__zoomButtonEnabled(this.stringToBoolean(value));
    } // End of the function
    function setZoomInButtonHint(value)
    {
        _settings.__set__zoomInButtonHint(value);
    } // End of the function
    function setZoomOutButtonHint(value)
    {
        _settings.__set__zoomOutButtonHint(value);
    } // End of the function
    function setBookSize(value)
    {
        var _loc2 = value.split(";");
        _settings.__set__bookWidth(_loc2[0]);
        _settings.__set__bookHeight(_loc2[1]);
    } // End of the function
    function setBookWidth(value)
    {
        _settings.__set__bookWidth(value);
    } // End of the function
    function setBookHeight(value)
    {
        _settings.__set__bookHeight(value);
    } // End of the function
    function setBookmarksAddTitle(value)
    {
        _settings.__set__bookmarksAddTitle(value);
    } // End of the function
    function setBookmarksItemsTitle(value)
    {
        _settings.__set__bookmarksItemsTitle(value);
    } // End of the function
    function setBookmarksCountTitle(value)
    {
        _settings.__set__bookmarksCountTitle(value);
    } // End of the function
    function setBookmarksDeafaultText(value)
    {
        _settings.__set__bookmarkDeafaultText(value);
    } // End of the function
    function setBookmarksAddText(value)
    {
        _settings.__set__bookmarkAddText(value);
    } // End of the function
    function setBookmarksEditText(value)
    {
        _settings.__set__bookmarkEditText(value);
    } // End of the function
    function setBookmarksRemoveText(value)
    {
        _settings.__set__bookmarkRemoveText(value);
    } // End of the function
    function setBookmarksPageText(value)
    {
        _settings.__set__bookmarkPageText(value);
    } // End of the function
    function setBookmarksShortPageText(value)
    {
        _settings.__set__bookmarkShortPageText(value);
    } // End of the function
    function setPreloadingMessage(value)
    {
        _settings.__set__preloadingMessage(value);
    } // End of the function
    function setPageBackgroundColor(value)
    {
        _settings.__set__pageBackgroundColor(Number(value));
    } // End of the function
    function setPrintSelectPagesTitle(value)
    {
        _settings.__set__printSelectPagesTitle(value);
    } // End of the function
    function setPrintPreviewTitle(value)
    {
        _settings.__set__printPreviewTitle(value);
    } // End of the function
    function setPrintButtonText(value)
    {
        _settings.__set__printButtonText(value);
    } // End of the function
    function setPrintButtonDownloadText(value)
    {
        _settings.__set__printButtonDownloadText(value);
    } // End of the function
    function setPrintComboboxItem0(value)
    {
        _settings.setPrintComboboxItem(0, value);
    } // End of the function
    function setPrintComboboxItem1(value)
    {
        _settings.setPrintComboboxItem(1, value);
    } // End of the function
    function setPrintComboboxItem2(value)
    {
        _settings.setPrintComboboxItem(2, value);
    } // End of the function
    function setPrintComboboxItem3(value)
    {
        _settings.setPrintComboboxItem(3, value);
    } // End of the function
    function setAudioEnabled(value)
    {
        _settings.__set__playButtonEnabled(this.stringToBoolean(value));
    } // End of the function
    function setPlayButtonHint(value)
    {
        _settings.__set__playButtonHint(value);
    } // End of the function
    function setStopButtonHint(value)
    {
        _settings.__set__stopButtonHint(value);
    } // End of the function
    function setAudioFileURL(value)
    {
        _settings.__set__musicFileURL(value);
    } // End of the function
    function setAudioLoop(value)
    {
        _settings.__set__audioLoop(this.stringToBoolean(value));
    } // End of the function
    function setFileLabel(value)
    {
        _settings.__set__fileLabel(value);
    } // End of the function
    function setMBLabel(value)
    {
        _settings.__set__MBLabel(value);
    } // End of the function
    function goToPage(value)
    {
        _settings.goToPage(Number(value));
    } // End of the function
    function setLinkEnabled(value)
    {
        _settings.__set__linkButtonEnabled(this.stringToBoolean(value));
    } // End of the function
    function setLinkLabel(value)
    {
        _settings.__set__linkButtonLabel(value);
    } // End of the function
    function setLinkURL(value)
    {
        _settings.__set__linkButtonURL(value);
    } // End of the function
    var initialized = false;
} // End of Class
#endinitclip
