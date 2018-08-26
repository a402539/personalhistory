// Action script...

// [Initial MovieClip Action of sprite 178]
#initclip 74
class com.fbpublisher.basicskin.viewclasses.buttons.ThumbnailButton extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var number, fileName, _clip, shadow, button, label, stylableLabel, _settings, imageClip, __get___height, __get___width, dispatchEvent, stRect, _button, __get__selected, shadowTween, __set__selected;
    function ThumbnailButton(_fileName, _number, clip, settings)
    {
        super(clip, settings);
        mx.events.EventDispatcher.initialize(this);
        number = _number;
        fileName = _fileName;
        shadow = _clip.createEmptyMovieClip("shadow", level++);
        button = _clip.createEmptyMovieClip("buttonData", level++);
        label = _clip.createEmptyMovieClip("label", level++);
        stylableLabel = new com.fbpublisher.utils.graphics.StyleableLabel(label);
        stylableLabel.__set__fontColor(_settings.secondaryTextColor);
        stylableLabel.__set__fontSize(10);
        stylableLabel.__set__text(number.toString());
        stylableLabel.__set__align("center");
        stylableLabel.__set__fill(50);
        stylableLabel.__set__dropShadowDistance(1);
        stylableLabel.__set__dropShadowSize(0);
        stylableLabel.__set__dropShadowAngle(45);
        stylableLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        stylableLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        stylableLabel.__set__antiAliasType("advanced");
        stylableLabel.__set__fontName(_settings.font2);
        stylableLabel.__set__embedFonts(true);
        this._createButton();
        this.setSize(110, 145);
        this.fillRect();
    } // End of the function
    function init()
    {
        if (_initialized)
        {
            return;
        } // end if
        var _loc2 = new MovieClipLoader();
        _loc2.addListener(this);
        _loc2.loadClip(fileName, button);
    } // End of the function
    function onLoadInit(target_mc)
    {
        imageClip = target_mc;
        var _loc3 = this.__get___height() / target_mc._height;
        var _loc5 = this.__get___width() / target_mc._width;
        var _loc4 = _loc3 >= 1 ? (_loc5) : (_loc3);
        target_mc._height = target_mc._height * _loc4;
        target_mc._width = target_mc._width * _loc4;
        target_mc._x = (this.__get___width() - target_mc._width) / 2;
        target_mc._y = (this.__get___height() - target_mc._height) / 2;
        target_mc._quality = "BEST";
        this.fillRect();
        _initialized = true;
        this.dispatchEvent({type: "onThumbnailInited", pageNumber: number});
    } // End of the function
    function updateStyles()
    {
        stylableLabel.__set__fontColor(_settings.secondaryTextColor);
        stylableLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        stylableLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        if (_selected)
        {
            stRect.__set__strokeColor(_settings.thumbnailsSelectedColor);
        } // end if
    } // End of the function
    function finishedTween()
    {
    } // End of the function
    function get _height()
    {
        //return (_button.height());
    } // End of the function
    function get _width()
    {
        //return (_button.width());
    } // End of the function
    function _createButton()
    {
        _button = new com.fbpublisher.basicskin.viewclasses.SimpleButton(_clip);
        _button.addEventListener("onRollOver", this);
        _button.addEventListener("onRollOut", this);
        _button.addEventListener("onPress", this);
        _button.addEventListener("onRelease", this);
        _button.addEventListener("onReleaseOutside", this);
    } // End of the function
    function onRollOver()
    {
        if (this.__get__selected())
        {
            return;
        } // end if
        var _loc2 = new mx.transitions.Tween(stRect, "dropShadowDistance", mx.transitions.easing.Regular.easeOut, stRect.__get__dropShadowDistance(), 2, 0.500000, true);
        var _loc3 = new mx.transitions.Tween(stRect, "dropShadowSize", mx.transitions.easing.Regular.easeOut, stRect.__get__dropShadowSize(), 10, 0.500000, true);
        var _loc4 = new mx.transitions.Tween(stRect, "dropShadowOpacity", mx.transitions.easing.Regular.easeOut, stRect.__get__dropShadowOpacity(), shadowAlpha + 10, 0.500000, true);
    } // End of the function
    function onRollOut()
    {
        if (this.__get__selected())
        {
            return;
        } // end if
        var _loc2 = new mx.transitions.Tween(stRect, "dropShadowDistance", mx.transitions.easing.Regular.easeOut, stRect.__get__dropShadowDistance(), 1, 0.500000, true);
        var _loc3 = new mx.transitions.Tween(stRect, "dropShadowSize", mx.transitions.easing.Regular.easeOut, stRect.__get__dropShadowSize(), 4, 0.500000, true);
        var _loc4 = new mx.transitions.Tween(stRect, "dropShadowOpacity", mx.transitions.easing.Regular.easeOut, stRect.__get__dropShadowOpacity(), shadowAlpha, 0.500000, true);
    } // End of the function
    function onPress()
    {
        this.dispatchEvent({type: "onThumbnailClick", pageNumber: number});
    } // End of the function
    function onRelease()
    {
    } // End of the function
    function onReleaseOutside()
    {
        shadowTween = new mx.transitions.Tween(stRect, "dropShadowDistance", mx.transitions.easing.Regular.easeOut, stRect.__get__dropShadowDistance(), 1, 0.500000, true);
    } // End of the function
    function setSize(width, height)
    {
        _button.__set__width(width);
        _button.__set__height(height);
        stRect.__set__width(width);
        stRect.__set__height(height);
        stylableLabel.__set__width(width);
        label._y = height + 5;
        super.setSize(width, height);
    } // End of the function
    function fillRect()
    {
        stRect = new com.fbpublisher.utils.graphics.StyleableRectangle(shadow, 0, 0, _button.__get__width(), _button.__get__height());
        stRect.__set__dropShadowDistance(1);
        stRect.__set__strokeSize(1);
        stRect.__set__strokeColor(16777215);
        stRect.__set__color(_settings.pageBackgroundColor);
        stRect.__set__dropShadowDistance(1);
        stRect.__set__dropShadowSize(4);
        stRect.__set__dropShadowAngle(90);
        stRect.__set__dropShadowOpacity(shadowAlpha);
    } // End of the function
    function set selected(value)
    {
        if (value == _selected)
        {
            return;
        } // end if
        _selected = value;
        if (_selected)
        {
            _button.__set__useHandCursor(false);
            stRect.__set__strokeColor(_settings.thumbnailsSelectedColor);
            stRect.__set__strokeSize(2);
            var _loc3 = new mx.transitions.Tween(stRect, "dropShadowDistance", mx.transitions.easing.Regular.easeOut, stRect.__get__dropShadowDistance(), 1, 0.500000, true);
            var _loc4 = new mx.transitions.Tween(stRect, "dropShadowSize", mx.transitions.easing.Regular.easeOut, stRect.__get__dropShadowSize(), 4, 0.500000, true);
            var _loc5 = new mx.transitions.Tween(stRect, "dropShadowOpacity", mx.transitions.easing.Regular.easeOut, stRect.__get__dropShadowOpacity(), shadowAlpha, 0.500000, true);
        }
        else
        {
            _button.__set__useHandCursor(true);
            stRect.__set__strokeColor(16777215);
            stRect.__set__strokeSize(1);
        } // end else if
        //return (this.selected());
        null;
    } // End of the function
    function get selected()
    {
        return (_selected);
    } // End of the function
    function deleteClip()
    {
        _clip = null;
    } // End of the function
    var level = 1;
    var _selected = false;
    var alpha = 10;
    var tintMiddle = 2;
    var shadowMiddle = 80;
    var shadowAlpha = 50;
    var _initialized = false;
} // End of Class
#endinitclip
