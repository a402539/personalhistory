// Action script...

// [Initial MovieClip Action of sprite 194]
#initclip 90
class com.fbpublisher.basicskin.viewclasses.GroupPanel extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _title, _clip, _width, __get__width, _height, __get__height, __get__titleText, __get__titleShiftX, _backgroundShape, _settings, _maskClip, __set__height, __get__title, __set__titleShiftX, __set__titleText, __set__width;
    function GroupPanel(parentClip, settings)
    {
        super(parentClip, settings);
        this.create();
    } // End of the function
    function get title()
    {
        return (_title);
    } // End of the function
    function get width()
    {
        return (_clip._width);
    } // End of the function
    function set width(newWidth)
    {
        _width = newWidth;
        this._arrangeElements();
        //return (this.width());
        null;
    } // End of the function
    function get height()
    {
        return (_clip._height);
    } // End of the function
    function set height(newHeight)
    {
        _height = newHeight;
        this._arrangeElements();
        //return (this.height());
        null;
    } // End of the function
    function get titleText()
    {
        //return (_title.text());
    } // End of the function
    function set titleText(newText)
    {
        _title.__set__text(newText);
        this._arrangeElements();
        //return (this.titleText());
        null;
    } // End of the function
    function get titleShiftX()
    {
        return (_titleShiftX);
    } // End of the function
    function set titleShiftX(newShift)
    {
        _titleShiftX = newShift;
        this._arrangeElements();
        //return (this.titleShiftX());
        null;
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function create()
    {
        this._createBackgroundFrame();
        this._createLabel();
        this._createFrameMask();
    } // End of the function
    function _createBackgroundFrame()
    {
        var _loc2 = _clip.createEmptyMovieClip("frame", _clip.getNextHighestDepth());
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, _width, _height);
        _backgroundShape.__set__cornerRadius(_settings.windowCornerRadius);
        _backgroundShape.__set__fill(2);
        _backgroundShape.__set__dropShadowSize(0);
        _backgroundShape.__set__dropShadowDistance(1);
        _backgroundShape.__set__dropShadowColor(16777215);
        _backgroundShape.__set__dropShadowOpacity(55);
        _backgroundShape.__set__innerShadowSize(0);
        _backgroundShape.__set__innerShadowDistance(1);
        _backgroundShape.__set__innerShadowOpacity(15);
    } // End of the function
    function _createLabel()
    {
        var _loc2 = _clip.createEmptyMovieClip("title", _clip.getNextHighestDepth());
        _title = new com.fbpublisher.utils.graphics.StyleableLabel(_loc2);
        _title.__set__antiAliasType("advanced");
        _title.__set__embedFonts(true);
        _title.__set__fontName(_settings.font2);
        _title.__set__fontSize(11);
        _title.__set__autoSize(true);
        _title.__set__dropShadowColor(16777215);
        _title.__set__dropShadowOpacity(90);
        _title.__set__dropShadowDistance(1);
        _title.__set__dropShadowQuality(2);
        _title.__set__dropShadowSize(0);
        _title.__set__fill(75);
        _title.__set__text("Select Pages");
    } // End of the function
    function _createFrameMask()
    {
        _maskClip = _clip.createEmptyMovieClip("mask", _clip.getNextHighestDepth());
        this._redrawMask();
    } // End of the function
    function _redrawMask()
    {
        _maskClip.clear();
        var _loc3 = 0;
        var _loc2 = _title.__get__y();
        var _loc7 = _width + 1;
        var _loc6 = _height + 1;
        var _loc9 = _title.__get__x() - _maskShiftX + 2;
        var _loc8 = _loc2;
        var _loc4 = _title.__get__x() + _title.__get__textWidth() + _maskShiftX + 4;
        var _loc5 = _titleShiftY + 1;
        _maskClip.lineStyle(0, 0, 0);
        _maskClip.beginFill(0, 100);
        _maskClip.moveTo(_loc3, _loc2);
        _maskClip.lineTo(_loc9, _loc8);
        _maskClip.lineTo(_loc9, _loc5);
        _maskClip.lineTo(_loc4, _loc5);
        _maskClip.lineTo(_loc4, _loc8);
        _maskClip.lineTo(_loc7, _loc2);
        _maskClip.lineTo(_loc7, _loc6);
        _maskClip.lineTo(_loc3, _loc6);
        _maskClip.moveTo(_loc3, _loc2);
        _maskClip.endFill();
        _backgroundShape.__get__clip().setMask(_maskClip);
    } // End of the function
    function _arrangeElements()
    {
        _backgroundShape.__set__x(0);
        _backgroundShape.__set__y(_titleShiftY);
        _title.__set__x(_titleShiftX);
        _title.__set__y(-3);
        _backgroundShape.setSize(_width, _height - _titleShiftY);
        this._redrawMask();
    } // End of the function
    var _componentClipName = "groupPanel";
    var _titleShiftY = 5;
    var _titleShiftX = 22;
    var _maskShiftX = 5;
} // End of Class
#endinitclip
