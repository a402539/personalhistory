// Action script...

// [Initial MovieClip Action of sprite 168]
#initclip 64
class com.fbpublisher.basicskin.viewclasses.windows.MainWindow extends com.fbpublisher.basicskin.viewclasses.Window
{
    var _library, _content, _headerContent, _width, _height, _settings, _backgroundShape, _headerShape, _contentClip, __set__content, _headerContentClip, __set__headerContent, _headerHeight, __get__headerContent, __get__hint, __get__bookCenterPointX, __get__bookCenterPointY, __set__hint, __get__permalinkHeight, __get__ready;
    function MainWindow(parentClip, settings, library)
    {
        super(parentClip, settings);
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
        _content.updatePermalinkFocusColor();
        _headerContent.updateTextEditColor();
    } // End of the function
    function get permalinkHeight()
    {
        //return (_content.permalinkHeight());
    } // End of the function
    function get ready()
    {
        return (_content.ready);
    } // End of the function
    function get bookCenterPointX()
    {
        return (_width);
    } // End of the function
    function get bookCenterPointY()
    {
        return (_height);
    } // End of the function
    function updateLink()
    {
        _headerContent.updateLink();
    } // End of the function
    function updateStyles()
    {
        _headerContent.updateStyles();
        _content.updateStyles();
    } // End of the function
    function updatePermalinkLabel()
    {
        _content.updatePermalinkLabel();
    } // End of the function
    function updatePermalinkShareLabel()
    {
        _content.updatePermalinkShareLabel();
    } // End of the function
    function updatePermalinkCopyLabel()
    {
        _content.updatePermalinkCopyLabel();
    } // End of the function
    function updatePermalinkBaseURL()
    {
        _content.updatePermalinkBaseURL();
    } // End of the function
    function showPermalinkPanel()
    {
        _content.showPermalinkPanel();
    } // End of the function
    function changeBackgroundColor()
    {
        _backgroundShape.__set__color(_settings.mainWindowBackgroundColor);
        _headerShape.__set__strokeColor(_settings.mainWindowBackgroundColor);
    } // End of the function
    function changeBackgroundImage()
    {
        _content.__set__backgroundImage(_settings.mainWindowBackgroundImage);
    } // End of the function
    function changeBackgroundImagePlacement()
    {
        _content.__set__backgroundImagePlacement(_settings.mainWindowBackgroundImagePlacement);
    } // End of the function
    function updateTitle()
    {
        _headerContent.updateTitle();
    } // End of the function
    function updatePaginationEnabled()
    {
        _headerContent.updatePaginationEnabled();
    } // End of the function
    function updatePaginationLabel()
    {
        _headerContent.updatePaginationLabel();
    } // End of the function
    function updatePaginationTotalPages()
    {
        _headerContent.updatePaginationTotalPages();
    } // End of the function
    function updatePaginationPageNumbers()
    {
        _headerContent.updatePaginationPageNumbers();
    } // End of the function
    function pageNumbersChanged()
    {
        _headerContent.pageNumbersChanged();
        _content.pageNumbersChanged();
    } // End of the function
    function disablePermalink()
    {
        _content.disablePermalink();
    } // End of the function
    function _create()
    {
        this.__set__content(new com.fbpublisher.basicskin.viewclasses.windows.MainWindowContent(_contentClip, _settings, _library));
        _content.addEventListener("onObjectReady", this);
        _content.addEventListener("onPermalinkShare", mx.utils.Delegate.create(this, _onPermalinkShare));
        _content.addEventListener("onPermalinkCopy", mx.utils.Delegate.create(this, _onPermalinkCopy));
        _content.addEventListener("onPermalinkSizeChanged", mx.utils.Delegate.create(this, _onPermalinkSizeChanged));
        _content.addEventListener("onMouseWheelOnBook", mx.utils.Delegate.create(this, _onMouseWheelOnBook));
        this.__set__headerContent(new com.fbpublisher.basicskin.viewclasses.windows.MainWindowHeader(_headerContentClip, _settings, _library));
        _headerContent.addEventListener("onGotoPage", mx.utils.Delegate.create(this, _onGotoPage));
        _headerContent.addEventListener("onSearchText", mx.utils.Delegate.create(this, _onSearchText));
        this.__get__headerContent().setSize(_width, _headerHeight);
        _backgroundShape.__set__color(_settings.mainWindowBackgroundColor);
    } // End of the function
    function updateSearch()
    {
        _headerContent.updateSearch();
    } // End of the function
    function set hint(newHint)
    {
        _headerContent.__set__hint(newHint);
        //return (this.hint());
        null;
    } // End of the function
    function onObjectReady()
    {
        this.dispatchEvent({type: "onObjectReady"});
    } // End of the function
    function _onPermalinkShare(eventObject)
    {
        this.dispatchEvent({type: "onPermalinkShare", URL: eventObject.URL});
    } // End of the function
    function _onPermalinkCopy(eventObject)
    {
        this.dispatchEvent({type: "onPermalinkCopy", URL: eventObject.URL});
    } // End of the function
    function _onGotoPage(eventObject)
    {
        this.dispatchEvent({type: "onGotoPage", pageNumber: eventObject.pageNumber});
    } // End of the function
    function _onSearchText(eventObject)
    {
        this.dispatchEvent({type: "onSearchText", query: eventObject.query});
    } // End of the function
    function _onMouseWheelOnBook(eventObject)
    {
        this.dispatchEvent({type: "onMouseWheelOnBook", sign: eventObject.sign});
    } // End of the function
    function _onPermalinkSizeChanged(eventObject)
    {
        this.dispatchEvent({type: "onPermalinkSizeChanged"});
    } // End of the function
    var _ready = false;
} // End of Class
#endinitclip
