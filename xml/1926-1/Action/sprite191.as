// Action script...

// [Initial MovieClip Action of sprite 191]
#initclip 87
class com.fbpublisher.basicskin.viewclasses.windows.PrintWindow extends com.fbpublisher.basicskin.viewclasses.Window
{
    var _library, _bookmarksWindow, _settings, _backgroundShape, _headerShape, _content, _headerContent, _contentClip, __set__content, _headerContentClip, __set__headerContent, _headerHeight, _width, __get__headerContent;
    function PrintWindow(parentClip, settings, library, bookmarksWindow)
    {
        super(parentClip, settings);
        _library = library;
        _bookmarksWindow = bookmarksWindow;
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
    function updateStyles()
    {
        _headerContent.updateStyles();
        _content.updateStyles();
    } // End of the function
    function updateTitle()
    {
        _headerContent.__set__title(_settings.printWindowTitle);
        _content.updateText();
    } // End of the function
    function updatePrintOptions()
    {
        _content.updatePrintOptions();
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
        this.__set__content(new com.fbpublisher.basicskin.viewclasses.windows.PrintWindowContent(_contentClip, _settings, _library, _bookmarksWindow));
        _content.addEventListener("onObjectReady", this);
        _content.addEventListener("switchToDownloadWindow", this);
        _content.addEventListener("downloadPDFVersion", this);
        this.__set__headerContent(new com.fbpublisher.basicskin.viewclasses.windows.GenericWindowHeader(_headerContentClip, _settings, "printIcon"));
        _headerContent.__set__title(_settings.printWindowTitle);
        _headerContent.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, _onCloseButtonClick));
        this.__get__headerContent().setSize(_width, _headerHeight);
        _backgroundShape.__set__dropShadowSize(17);
        _backgroundShape.__set__dropShadowDistance(10);
        _backgroundShape.__set__dropShadowQuality(3);
        _backgroundShape.__set__dropShadowAngle(90);
        _backgroundShape.__set__dropShadowOpacity(60);
        _backgroundShape.__set__gradientFromAlpha(75 * _settings.__get__windowBackgroundOpacity());
        _backgroundShape.__set__gradientToAlpha(80 * _settings.__get__windowBackgroundOpacity());
    } // End of the function
    function onObjectReady()
    {
        this.dispatchEvent({type: "onObjectReady"});
    } // End of the function
    function _onCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseButtonClick"});
    } // End of the function
    function switchToDownloadWindow(eventObject)
    {
        this.dispatchEvent({type: "switchToDownloadWindow"});
    } // End of the function
    function downloadPDFVersion()
    {
        this.dispatchEvent({type: "downloadPDFVersion"});
    } // End of the function
    var _ready = false;
} // End of Class
#endinitclip
