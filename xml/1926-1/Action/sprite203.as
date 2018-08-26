// Action script...

// [Initial MovieClip Action of sprite 203]
#initclip 99
class com.fbpublisher.basicskin.viewclasses.windows.AlertWindow extends com.fbpublisher.basicskin.viewclasses.Window
{
    var _settings, _headerContentClip, __set__headerContent, _headerContent, _headerHeight, _width, __get__headerContent, _clip, label, stylableLabel, _height, __get__headerHeight, dispatchEvent, __get__title, __get__message, __set__message, __set__title;
    function AlertWindow(parentClip, settings, library)
    {
        super(parentClip, settings);
        this.__set__headerContent(new com.fbpublisher.basicskin.viewclasses.windows.GenericWindowHeader(_headerContentClip, _settings, "warningIcon"));
        _headerContent.__set__title("Empty");
        _headerContent.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, _onCloseButtonClick));
        this.__get__headerContent().setSize(_width, _headerHeight);
        label = _clip.createEmptyMovieClip("label1", _clip.getNextHighestDepth());
        stylableLabel = new com.fbpublisher.utils.graphics.StyleableLabel(label);
        stylableLabel.__set__x(10);
        stylableLabel.__set__y(_headerHeight + 10);
        stylableLabel.__set__fontColor(_settings.secondaryTextColor);
        stylableLabel.__set__fontSize(16);
        stylableLabel.__set__align("center");
        stylableLabel.__set__fill(100);
        stylableLabel.__set__dropShadowDistance(1);
        stylableLabel.__set__dropShadowSize(0);
        stylableLabel.__set__dropShadowAngle(45);
        stylableLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        stylableLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        stylableLabel.__set__antiAliasType("advanced");
        stylableLabel.__set__fontName(_settings.font1);
        stylableLabel.__set__embedFonts(true);
        stylableLabel.__set__multiline(true);
        stylableLabel.__set__wordWrap(true);
        stylableLabel.__set__autoSize(false);
        trace ("stylableLabel.width=" + stylableLabel.__get__width());
        trace ("stylableLabel.height=" + stylableLabel.__get__height());
    } // End of the function
    function setSize(width, height)
    {
        super.setSize(width, height);
        stylableLabel.setSize(_width - 20, _height - this.__get__headerHeight() - 10);
    } // End of the function
    function _onCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseButtonClick"});
    } // End of the function
    function updateStyles()
    {
        _headerContent.updateStyles();
        stylableLabel.__set__fontColor(_settings.secondaryTextColor);
        stylableLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        stylableLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
    } // End of the function
    function set title(value)
    {
        _headerContent.__set__title(value);
        trace (value);
        //return (this.title());
        null;
    } // End of the function
    function set message(value)
    {
        stylableLabel.__set__text(value);
        trace (value);
        //return (this.message());
        null;
    } // End of the function
} // End of Class
#endinitclip
