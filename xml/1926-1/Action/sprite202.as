// Action script...

// [Initial MovieClip Action of sprite 202]
#initclip 98
class com.fbpublisher.basicskin.viewclasses.windows.SaveWindowContent extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _library, _settings, _downloadButtonText, _fileSizeText, _hintText, _width, _height, _backgroundShape, _downloadButtonShape, _pdfIcon, _clip, __get__contentHeight, __get__contentWidth;
    function SaveWindowContent(parentClip, settings, library)
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
    function updateStyles()
    {
        _downloadButtonText.__set__fontColor(_settings.secondaryTextColor);
        _downloadButtonText.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _downloadButtonText.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _fileSizeText.__set__fontColor(_settings.secondaryTextColor);
        _fileSizeText.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _fileSizeText.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _hintText.__set__fontColor(_settings.secondaryTextColor);
        _hintText.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _hintText.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function updateSkinColor()
    {
        _backgroundShape.__set__color(_settings.skinColor);
    } // End of the function
    function updateDownloadButtonText()
    {
        _downloadButtonText.__set__text(_settings.downloadButtonText);
    } // End of the function
    function updateDownloadFileSizeText()
    {
        _fileSizeText.__set__text(_settings.__get__downloadFileSizeText() + _settings.__get__downloadFileSize());
    } // End of the function
    function updateDownloadHintText()
    {
        _hintText.__set__text(_settings.downloadHintText);
    } // End of the function
    function get contentHeight()
    {
        //return (_hintText.y() + _hintText.__get__textHeight() + _bottomPadding);
    } // End of the function
    function get contentWidth()
    {
        return (_downloadButtonWidth + _downloadButtonPadding * 2);
    } // End of the function
    function _create()
    {
        this._createBackground();
        this._createDownloadButton();
        this._arrangeElements();
    } // End of the function
    function _arrangeElements()
    {
        _backgroundShape.setSize(_width, _height);
        _downloadButtonShape.__set__x(Math.round(_width / 2 - _downloadButtonShape.__get__width() / 2));
        _downloadButtonShape.__set__y(_downloadButtonPadding);
        _pdfIcon.__set__x(_downloadButtonShape.__get__x() + _pdfIconPadding);
        _pdfIcon.__set__y(Math.round(_downloadButtonShape.__get__y() + _downloadButtonShape.__get__height() / 2 - _pdfIcon.__get__height() / 2 - 2));
        _downloadButtonText.__set__x(_pdfIcon.__get__x() + _pdfIcon.__get__width() + _downloadTextPadding);
        _downloadButtonText.__set__y(_downloadButtonShape.__get__y() + _downloadTextTopPadding);
        _fileSizeText.__set__x(_downloadButtonText.x);
        _fileSizeText.__set__y(_downloadButtonText.__get__y() + _lineHeight);
        _hintText.__set__x(_downloadButtonShape.x);
        _hintText.__set__y(_downloadButtonShape.__get__y() + _downloadButtonShape.__get__height() + 10);
    } // End of the function
    function _createBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("background", 0);
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, _width, _height);
        _backgroundShape.__set__cornerRadius(0);
        _backgroundShape.__set__color(_settings.skinColor);
        _backgroundShape.__set__gradientFromColor(16777215);
        _backgroundShape.__set__gradientFromAlpha(75 * _settings.__get__windowBackgroundOpacity());
        _backgroundShape.__set__gradientToColor(16777215);
        _backgroundShape.__set__gradientToAlpha(80 * _settings.__get__windowBackgroundOpacity());
    } // End of the function
    function _createDownloadButton()
    {
        var _loc6 = _clip.createEmptyMovieClip("downloadBackground", 1);
        _downloadButtonShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc6, 0, 0, _downloadButtonWidth, _downloadButtonHeight);
        _downloadButtonShape.__set__cornerRadius(5);
        _downloadButtonShape.__set__fill(8);
        _downloadButtonShape.__set__strokePosition("inner");
        _downloadButtonShape.__set__strokeSize(1);
        _downloadButtonShape.__set__strokeOpacity(12);
        _downloadButtonShape.__set__gradientFromColor(12441586);
        _downloadButtonShape.__set__gradientToColor(8631783);
        _downloadButtonShape.__set__gradientOpacity(0);
        _downloadButtonShape.__get__clip().onRollOver = mx.utils.Delegate.create(this, onDownloadButtonRollOver);
        _downloadButtonShape.__get__clip().onRollOut = mx.utils.Delegate.create(this, onDownloadButtonRollOut);
        _downloadButtonShape.__get__clip().onRelease = mx.utils.Delegate.create(this, onDownloadButtonRelease);
        var _loc4 = _clip.createEmptyMovieClip("icon", 2);
        _pdfIcon = new com.fbpublisher.basicskin.viewclasses.BitmapIcon(_loc4, "pdfIcon");
        var _loc5 = _clip.createEmptyMovieClip("downloadText", 3);
        _downloadButtonText = new com.fbpublisher.utils.graphics.StyleableLabel(_loc5);
        _downloadButtonText.__set__antiAliasType("advanced");
        _downloadButtonText.__set__embedFonts(true);
        _downloadButtonText.__set__fontColor(_settings.secondaryTextColor);
        _downloadButtonText.__set__fontName(_settings.font2);
        _downloadButtonText.__set__fontSize(11);
        _downloadButtonText.__set__autoSize(true);
        _downloadButtonText.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _downloadButtonText.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _downloadButtonText.__set__dropShadowDistance(1);
        _downloadButtonText.__set__dropShadowQuality(1);
        _downloadButtonText.__set__dropShadowSize(0);
        _downloadButtonText.__set__fill(65);
        _downloadButtonText.__set__text(_settings.downloadButtonText);
        var _loc3 = _clip.createEmptyMovieClip("fileSizeText", 4);
        _fileSizeText = new com.fbpublisher.utils.graphics.StyleableLabel(_loc3);
        _fileSizeText.__set__antiAliasType("advanced");
        _fileSizeText.__set__embedFonts(true);
        _fileSizeText.__set__fontColor(_settings.secondaryTextColor);
        _fileSizeText.__set__fontName(_settings.font1);
        _fileSizeText.__set__fontSize(11);
        _fileSizeText.__set__autoSize(true);
        _fileSizeText.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _fileSizeText.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _fileSizeText.__set__dropShadowDistance(1);
        _fileSizeText.__set__dropShadowQuality(1);
        _fileSizeText.__set__dropShadowSize(0);
        _fileSizeText.__set__fill(65);
        _fileSizeText.__set__text(_settings.__get__downloadFileSizeText() + _settings.__get__downloadFileSize());
        var _loc2 = _clip.createEmptyMovieClip("hintText", 5);
        _hintText = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        _hintText.__set__antiAliasType("advanced");
        _hintText.__set__embedFonts(true);
        _hintText.__set__fontColor(_settings.secondaryTextColor);
        _hintText.__set__fontName(_settings.font1);
        _hintText.__set__fontSize(11);
        _hintText.__set__autoSize(false);
        _hintText.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        _hintText.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        _hintText.__set__dropShadowDistance(1);
        _hintText.__set__dropShadowQuality(1);
        _hintText.__set__dropShadowSize(0);
        _hintText.__set__fill(65);
        _hintText.__set__text(_settings.downloadHintText);
        _hintText.__set__width(_downloadButtonWidth - 20);
        _hintText.__set__height(_height);
        _hintText.__set__multiline(true);
        _hintText.__set__wordWrap(true);
    } // End of the function
    function onDownloadButtonRollOver()
    {
        _downloadButtonShape.gradientOpacityTo(100, 300);
    } // End of the function
    function onDownloadButtonRollOut()
    {
        _downloadButtonShape.gradientOpacityTo(0, 300);
    } // End of the function
    function onDownloadButtonRelease()
    {
        this.dispatchEvent({type: "downloadPDFVersion"});
    } // End of the function
    var _componentClipName = "saveWindowContent";
    var ready = false;
    var _downloadButtonWidth = 320;
    var _downloadButtonHeight = 86;
    var _downloadButtonPadding = 15;
    var _pdfIconPadding = 10;
    var _downloadTextPadding = 15;
    var _downloadTextTopPadding = 25;
    var _lineHeight = 14;
    var _bottomPadding = 40;
} // End of Class
#endinitclip
