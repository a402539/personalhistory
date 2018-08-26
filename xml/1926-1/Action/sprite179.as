// Action script...

// [Initial MovieClip Action of sprite 179]
#initclip 75
class com.fbpublisher.basicskin.viewclasses.windows.BookmarksWindow extends com.fbpublisher.basicskin.viewclasses.Window
{
    var _library, _settings, _backgroundShape, _headerShape, _content, _headerContent, _contentClip, __set__content, _headerContentClip, __set__headerContent, _headerHeight, _width, __get__headerContent, __get__bookmarkPages;
    function BookmarksWindow(parentClip, settings, library)
    {
        super(parentClip, settings);
        _library = library;
        mx.events.EventDispatcher.initialize(this);
        this._create();
        this.changeBackgroundColor();
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
    function changeBackgroundColor()
    {
        _backgroundShape.__set__color(_settings.windowBackgroundColor);
        _headerShape.__set__strokeColor(_settings.windowBackgroundColor);
    } // End of the function
    function updateTextEditColor()
    {
        _content.updateTextEditColor();
    } // End of the function
    function updateTexts()
    {
        _content.updateTexts();
    } // End of the function
    function updateStyles()
    {
        _headerContent.updateStyles();
        _content.updateStyles();
    } // End of the function
    function updateSubHeader()
    {
        _content.updateSubHeader();
    } // End of the function
    function updateTitle()
    {
        _headerContent.__set__title(_settings.bookmarksWindowTitle);
    } // End of the function
    function reloadImages()
    {
        _content.reloadImages();
    } // End of the function
    function invertImages()
    {
        _content.invertImages();
    } // End of the function
    function _create()
    {
        this.__set__content(new com.fbpublisher.basicskin.viewclasses.windows.BookmarksWindowContent(_contentClip, _settings, _library));
        _content.addEventListener("onObjectReady", this);
        _content.addEventListener("onBookmarkClick", this);
        this.__set__headerContent(new com.fbpublisher.basicskin.viewclasses.windows.GenericWindowHeader(_headerContentClip, _settings, "bookmarksIcon"));
        _headerContent.__set__title(_settings.bookmarksWindowTitle);
        _headerContent.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, _onCloseButtonClick));
        this.__get__headerContent().setSize(_width, _headerHeight);
    } // End of the function
    function onBookmarkClick(object)
    {
        this.dispatchEvent({type: "onBookmarkClick", pageNumber: object.pageNumber});
    } // End of the function
    function onObjectReady()
    {
        this.dispatchEvent({type: "onObjectReady"});
    } // End of the function
    function _onCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseButtonClick"});
    } // End of the function
    function pageNumbersChanged(eventObject)
    {
        _content.onPageChanged();
    } // End of the function
    function get bookmarkPages()
    {
        //return (_content.bookmarkPages());
    } // End of the function
    var _ready = false;
} // End of Class
#endinitclip
