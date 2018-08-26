// Action script...

// [Initial MovieClip Action of sprite 174]
#initclip 70
class com.fbpublisher.basicskin.viewclasses.windows.ThumbnailsWindow extends com.fbpublisher.basicskin.viewclasses.Window
{
    var book, _library, _settings, _backgroundShape, _headerShape, _content, _headerContent, _contentClip, __set__content, _headerContentClip, __set__headerContent, _headerHeight, _width, __get__headerContent;
    function ThumbnailsWindow(parentClip, settings, library, _book)
    {
        super(parentClip, settings);
        book = _book;
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
    function invertThumbnails()
    {
        _content.invertThumbnails();
    } // End of the function
    function reloadImages()
    {
        _content.reloadImages();
    } // End of the function
    function updateStyles()
    {
        _headerContent.updateStyles();
        _content.updateStyles();
    } // End of the function
    function updateTitle()
    {
        _headerContent.__set__title(_settings.thumbnailsWindowTitle);
    } // End of the function
    function _create()
    {
        this.__set__content(new com.fbpublisher.basicskin.viewclasses.windows.ThumbnailsWindowContent(_contentClip, _settings, _library, book));
        _content.addEventListener("onObjectReady", this);
        _content.addEventListener("onThumbnailClick", mx.utils.Delegate.create(this, _onThumbnailClick));
        this.__set__headerContent(new com.fbpublisher.basicskin.viewclasses.windows.GenericWindowHeader(_headerContentClip, _settings, "thumbnailsIcon"));
        _headerContent.__set__title(_settings.thumbnailsWindowTitle);
        _headerContent.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, _onCloseButtonClick));
        this.__get__headerContent().setSize(_width, _headerHeight);
    } // End of the function
    function onObjectReady()
    {
        this.dispatchEvent({type: "onObjectReady"});
    } // End of the function
    function _onThumbnailClick(eventObject)
    {
        this.dispatchEvent({type: "onThumbnailClick", pageNumber: eventObject.pageNumber});
    } // End of the function
    function _onCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseButtonClick"});
    } // End of the function
    function pageNumbersChanged(eventObject)
    {
        _content.onPageChanged();
    } // End of the function
    function rightToLeftChanged()
    {
        _content.rightToLeftChanged();
    } // End of the function
    var _ready = false;
} // End of Class
#endinitclip
