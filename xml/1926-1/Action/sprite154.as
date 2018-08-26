// Action script...

// [Initial MovieClip Action of sprite 154]
#initclip 50
class com.fbpublisher.basicskin.viewclasses.buttons.SearchButton extends com.fbpublisher.basicskin.viewclasses.LayoutItem
{
    var _left, _right, _page, loader, _settings, skinColor, _number, _clip, backgrndClip, backShadowClip, leftBookPage, button, label, numberClip, line, selectClip, rightBookPage, stylableLabel, __set___height, backShadow, _button, backgrnd, select, dispatchEvent, __get__selected, __get__text, __get__pageNumber, __set__selected, __set__text;
    function SearchButton(page, title, settings, clip, left, right)
    {
        super(clip);
        _left = left;
        _right = right;
        _page = page;
        mx.events.EventDispatcher.initialize(this);
        loader = new MovieClipLoader();
        loader.addListener(this);
        _settings = settings;
        skinColor = _settings.skinColor;
        _number = page;
        backgrndClip = _clip.createEmptyMovieClip("bgClip", level++);
        backShadowClip = _clip.createEmptyMovieClip("backShadow", level++);
        leftBookPage = _clip.createEmptyMovieClip("leftPageClip", level++);
        button = _clip.createEmptyMovieClip("buttonData", level++);
        label = _clip.createEmptyMovieClip("label1", level++);
        numberClip = _clip.createEmptyMovieClip("label2", level++);
        line = _clip.createEmptyMovieClip("line", 1);
        selectClip = _clip.createEmptyMovieClip("selectClip", level++);
        rightBookPage = _clip.createEmptyMovieClip("rightPageClip", level++);
        leftBookPage._x = 8;
        stylableLabel = new com.fbpublisher.utils.graphics.StyleableLabel(label);
        stylableLabel.__set__x(5);
        stylableLabel.__set__y(5);
        stylableLabel.__set__fontColor(_settings.secondaryTextColor);
        stylableLabel.__set__fontSize(10);
        stylableLabel.__set__align("left");
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
        stylableLabel.__set__html(true);
        stylableLabel.__set__wordWrap(true);
        stylableLabel.__set__autoSize(false);
        stylableLabel.__set__text("<font size=\"+2\"><b>" + com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchEntryPageText() + page + "</b></font> " + title);
        this.setSize(100, 50);
        this.loadImage(left, right);
        this._create();
    } // End of the function
    function updateStyles()
    {
        stylableLabel.__set__fontColor(_settings.secondaryTextColor);
        stylableLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
        stylableLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
    } // End of the function
    function loadImage(leftPage, rightPage)
    {
        loader.loadClip(rightPage, rightBookPage);
        loader.loadClip(leftPage, leftBookPage);
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
        if (leftBookPage._height == 0)
        {
            rightBookPage._x = leftBookPage._x + rightBookPage._width;
            _loc4 = rightBookPage._height;
            _loc3 = rightBookPage._x;
            _loc2 = rightBookPage._y;
        }
        else
        {
            rightBookPage._x = leftBookPage._x + leftBookPage._width;
            _loc4 = leftBookPage._height;
            _loc3 = leftBookPage._x;
            _loc2 = leftBookPage._y;
        } // end else if
        backShadow.__set__y(_loc2);
        backShadow.__set__x(_loc3);
        backShadow.setSize(leftBookPage._width + rightBookPage._width, _loc4);
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
        backShadow = new com.fbpublisher.utils.graphics.StyleableRectangle(backShadowClip, leftBookPage._x, leftBookPage._y, leftBookPage._width, leftBookPage._height);
        backShadow.__set__dropShadowColor(0);
        backShadow.__set__dropShadowDistance(1);
        backShadow.__set__dropShadowSize(2);
        backShadow.__set__dropShadowAngle(45);
        backShadow.__set__dropShadowOpacity(50);
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
        stylableLabel.__set__x(13);
        stylableLabel.__set__y(5);
        stylableLabel.__set__width(newWidth - 18);
        stylableLabel.__set__height(newHeight - 10);
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
        }
        else
        {
            _button.__set__useHandCursor(true);
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
    function get pageNumber()
    {
        return (_number);
    } // End of the function
    var level = 1;
    var _selected = false;
    var alpha = 10;
    var tintMiddle = 2;
    var shadowMiddle = 80;
    var shadowAlpha = 70;
} // End of Class
#endinitclip
