// Action script...

// [Initial MovieClip Action of sprite 201]
#initclip 97
class com.fbpublisher.basicskin.viewclasses.windows.SaveWindow extends com.fbpublisher.basicskin.viewclasses.Window
{
    var _library, _settings, _backgroundShape, _headerShape, _headerContent, _content, _headerHeight, _contentClip, __set__content, _headerContentClip, __set__headerContent, _width, __get__headerContent, __get__contentHeight, __get__contentWidth;
    function SaveWindow(parentClip, settings, library)
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
    function updateStyles()
    {
        _headerContent.updateStyles();
        _content.updateStyles();
    } // End of the function
    function updateTitle()
    {
        _headerContent.__set__title(_settings.saveWindowTitle);
    } // End of the function
    function updateDownloadButtonText()
    {
        _content.updateDownloadButtonText();
    } // End of the function
    function updateDownloadFileSizeText()
    {
        _content.updateDownloadFileSizeText();
    } // End of the function
    function updateDownloadHintText()
    {
        _content.updateDownloadHintText();
    } // End of the function
    function get contentWidth()
    {
        //return (_content.contentWidth());
    } // End of the function
    function get contentHeight()
    {
        //return (_content.contentHeight() + _headerHeight);
    } // End of the function
    function _create()
    {
        this.__set__content(new com.fbpublisher.basicskin.viewclasses.windows.SaveWindowContent(_contentClip, _settings, _library));
        _content.addEventListener("downloadPDFVersion", this);
        this.__set__headerContent(new com.fbpublisher.basicskin.viewclasses.windows.GenericWindowHeader(_headerContentClip, _settings, "saveIcon"));
        _headerContent.__set__title(_settings.saveWindowTitle);
        _headerContent.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, _onCloseButtonClick));
        this.__get__headerContent().setSize(_width, _headerHeight);
        _backgroundShape.__set__dropShadowSize(17);
        _backgroundShape.__set__dropShadowDistance(10);
        _backgroundShape.__set__dropShadowQuality(3);
        _backgroundShape.__set__dropShadowAngle(90);
        _backgroundShape.__set__dropShadowOpacity(60);
    } // End of the function
    function downloadPDFVersion()
    {
        this.dispatchEvent({type: "downloadPDFVersion"});
    } // End of the function
    function _onCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseButtonClick"});
    } // End of the function
    var _ready = false;
} // End of Class
#endinitclip
