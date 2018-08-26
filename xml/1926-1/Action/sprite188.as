// Action script...

// [Initial MovieClip Action of sprite 188]
#initclip 84
class com.fbpublisher.basicskin.viewclasses.buttons.TOCButton extends com.fbpublisher.basicskin.viewclasses.LayoutItem
{
    var _multiplicity, loader, _settings, currentTextColor, skinColor, _number, _clip, backgrndClip, backShadowClip, button, label, numberClip, line, selectClip, arrowClip, _arrow, stylableLabel, __get__multiplicity, __get___height, __get___width, __get__expandable, __set___height, backShadow, _button, backgrnd, select, pageNumberLabel, __get__collapsed, __get__text, __get__pageNumber, __set__collapsed, __set__expandable, __get__id, __set__multiplicity, __set__pageNumber, __set__text;
    function TOCButton(page, title, multiplicity, id, settings, clip)
    {
        super(clip);
        _multiplicity = multiplicity;
        _id = id;
        mx.events.EventDispatcher.initialize(this);
        loader = new MovieClipLoader();
        loader.addListener(this);
        _settings = settings;
        currentTextColor = _settings.secondaryTextColor;
        skinColor = _settings.skinColor;
        _number = page;
        backgrndClip = _clip.createEmptyMovieClip("bgClip", level++);
        backShadowClip = _clip.createEmptyMovieClip("backShadow", level++);
        button = _clip.createEmptyMovieClip("buttonData", level++);
        label = _clip.createEmptyMovieClip("label1", level++);
        numberClip = _clip.createEmptyMovieClip("label2", level++);
        line = _clip.createEmptyMovieClip("line", 1);
        selectClip = _clip.createEmptyMovieClip("selectClip", level++);
        arrowClip = _clip.createEmptyMovieClip("arrowClip", level++);
        var _loc3 = arrowClip.createEmptyMovieClip("innerArrowClip", level++);
        _loc3._x = -8;
        _loc3._y = -8;
        _arrow = new com.fbpublisher.basicskin.viewclasses.IconButton(_loc3, "TOCArrowIcon");
        _arrow.__set__width(16);
        _arrow.__set__height(16);
        stylableLabel = new com.fbpublisher.utils.graphics.StyleableLabel(label);
        stylableLabel.__set__fontColor(currentTextColor);
        stylableLabel.__set__fontSize(10);
        stylableLabel.__set__text(title);
        stylableLabel.__set__fill(50);
        stylableLabel.__set__dropShadowDistance(1);
        stylableLabel.__set__dropShadowSize(0);
        stylableLabel.__set__dropShadowAngle(45);
        stylableLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
        stylableLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        stylableLabel.__set__antiAliasType("advanced");
        stylableLabel.__set__fontName(_settings.font2);
        stylableLabel.__set__embedFonts(true);
        this._create();
        this.setSize(100, 32);
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
    function updateStyles()
    {
        currentTextColor = _settings.secondaryTextColor;
        stylableLabel.__set__fontColor(currentTextColor);
        stylableLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        stylableLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
    } // End of the function
    function get multiplicity()
    {
        return (_multiplicity);
    } // End of the function
    function set multiplicity(newM)
    {
        _multiplicity = newM;
        currentTextColor = _settings.secondaryTextColor;
        //return (this.multiplicity());
        null;
    } // End of the function
    function get expandable()
    {
        return (_expandable);
    } // End of the function
    function set expandable(newEx)
    {
        _expandable = newEx;
        if (_expandable)
        {
            arrowClip._visible = true;
        }
        else
        {
            arrowClip._visible = false;
        } // end else if
        this.setSize(this.__get___width(), this.__get___height());
        //return (this.expandable());
        null;
    } // End of the function
    function onLoadInit(_mc)
    {
        var _loc3 = 30 / _mc._width;
        _mc._height = Math.floor(_mc._height * _loc3);
        _mc._width = 30;
        _mc._y = 10;
        this.setShadowSize();
        this.__set___height(_mc._height + 20);
    } // End of the function
    function setShadowSize()
    {
        var _loc4;
        var _loc3;
        var _loc2;
        backShadow.__set__y(_loc2);
        backShadow.__set__x(_loc3);
    } // End of the function
    function finishedTween()
    {
    } // End of the function
    function _create()
    {
        _button = new com.fbpublisher.basicskin.viewclasses.SimpleButton(button);
        _button.addEventListener("onRollOver", this);
        _button.addEventListener("onRollOut", this);
        _button.addEventListener("onPress", this);
        _button.addEventListener("onRelease", this);
        _button.addEventListener("onReleaseOutside", this);
        _arrow.addEventListener("onPress", mx.utils.Delegate.create(this, onArrowPress));
        backgrnd = new com.fbpublisher.utils.graphics.StyleableRectangle(backgrndClip, 0, 0, 200, 20);
        backgrnd.__set__cornerRadius(0);
        backgrnd.__set__color(skinColor);
        backgrnd.__set__fill(80);
        backgrnd.__set__dropShadowDistance(1);
        backgrnd.__set__strokeSize(1);
        backgrnd.__set__strokeColor(16777215);
        backgrnd.__set__dropShadowDistance(1);
        backgrnd.__set__dropShadowSize(4);
        backgrnd.__set__dropShadowAngle(90);
        backgrnd.__set__dropShadowOpacity(50);
        select = new com.fbpublisher.utils.graphics.StyleableRectangle(selectClip, 0, 0, 200, 20);
        select.__set__cornerRadius(0);
        select.__set__color(0);
        select.__set__fill(8);
        select.__set__opacity(0);
        select.__set__dropShadowColor(16777215);
        select.__set__dropShadowDistance(1);
        select.__set__dropShadowSize(0);
        select.__set__dropShadowAngle(90);
        select.__set__dropShadowOpacity(75);
        select.__set__dropShadowColor(0);
        select.__set__dropShadowDistance(1);
        select.__set__dropShadowSize(0);
        select.__set__dropShadowAngle(90);
        select.__set__dropShadowOpacity(20);
    } // End of the function
    function onArrowPress(obj)
    {
        if (_collapsed)
        {
            var _loc2 = new com.timwalling.TweenDelay(arrowClip, "_rotation", mx.transitions.easing.Regular.easeInOut, 0, 90, animationTime, 0, true);
            this.dispatchEvent({type: "onExpand", target: this});
            _collapsed = false;
        }
        else
        {
            this.dispatchEvent({type: "onCollapse", target: this});
            _loc2 = new com.timwalling.TweenDelay(arrowClip, "_rotation", mx.transitions.easing.Regular.easeInOut, 90, 0, animationTime, 0, true);
            _collapsed = true;
        } // end else if
    } // End of the function
    function onRollOver()
    {
        select.opacityTo(50, 200);
    } // End of the function
    function onRollOut()
    {
        select.opacityTo(0, 200);
    } // End of the function
    function onPress()
    {
        select.opacityTo(100, 200);
        this.dispatchEvent({type: "onClick", pageNumber: _number});
    } // End of the function
    function onRelease()
    {
        select.opacityTo(50, 200);
    } // End of the function
    function onReleaseOutside()
    {
        select.opacityTo(0, 200);
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _button.__set__width(newWidth);
        _button.__set__height(newHeight);
        stylableLabel.__set__x(25 + _multiplicity * xMultiplier);
        stylableLabel.__set__y(Math.round(newHeight / 2 - 8));
        stylableLabel.__set__width(newWidth - stylableLabel.__get__x() - 4);
        arrowClip._x = 17 + _multiplicity * xMultiplier;
        arrowClip._y = Math.round(newHeight / 2);
        pageNumberLabel.__set__x(80);
        pageNumberLabel.__set__y(Math.round(newHeight / 2 - 5));
        pageNumberLabel.__set__width(newWidth - 105);
        backgrnd.__set__width(newWidth);
        backgrnd.__set__height(newHeight - 2);
        select.__set__x(0);
        select.__set__y(0);
        select.__set__width(newWidth);
        select.__set__height(newHeight - 2);
        line.clear();
        line.lineStyle(1, 0, 15);
        line.moveTo(0, newHeight - 1);
        line.lineTo(newWidth, newHeight - 1);
        line.lineStyle(1, 16777215, 100);
        line.moveTo(0, newHeight);
        line.lineTo(newWidth, newHeight);
        super.setSize(newWidth, newHeight);
    } // End of the function
    function set collapsed(value)
    {
        if (value)
        {
            arrowClip._rotation = 0;
        }
        else
        {
            arrowClip._rotation = 90;
        } // end else if
        _collapsed = value;
        //return (this.collapsed());
        null;
    } // End of the function
    function get collapsed()
    {
        return (_collapsed);
    } // End of the function
    function deleteClip()
    {
        _clip.unloadMovie();
    } // End of the function
    function set text(value)
    {
        stylableLabel.__set__text(value);
        //return (this.text());
        null;
    } // End of the function
    function get text()
    {
        //return (stylableLabel.text());
    } // End of the function
    function set pageNumber(value)
    {
        _number = value;
        //return (this.pageNumber());
        null;
    } // End of the function
    function get pageNumber()
    {
        return (_number);
    } // End of the function
    function get id()
    {
        return (_id);
    } // End of the function
    var level = 1;
    var _selected = false;
    var alpha = 10;
    var tintMiddle = 2;
    var shadowMiddle = 80;
    var shadowAlpha = 70;
    var _collapsed = true;
    var _expandable = true;
    var xMultiplier = 8;
    var animationTime = 0.500000;
    var _id = 0;
} // End of Class
#endinitclip
