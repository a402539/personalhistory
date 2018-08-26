// Action script...

// [Initial MovieClip Action of sprite 193]
#initclip 89
class com.fbpublisher.basicskin.viewclasses.PagePreloader extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _width, _height, _backgroundShape, _wheelClip, __get__skinColor, __get__width, __get__height, _clip, _backgroundClip, _settings, __set__height, __set__skinColor, __set__width;
    function PagePreloader(parentClip, settings)
    {
        super(parentClip, settings);
        this._create();
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function remove()
    {
        _backgroundShape.opacityTo(0, 200);
        var _loc2 = new com.timwalling.TweenDelay(_wheelClip, "_alpha", mx.transitions.easing.Regular.easeInOut, _wheelClip._alpha, 0, 0.200000, 0, true);
        _loc2.onMotionFinished = mx.utils.Delegate.create(this, removeFinished);
    } // End of the function
    function set skinColor(newColor)
    {
        _backgroundShape.__set__color(newColor);
        //return (this.skinColor());
        null;
    } // End of the function
    function get width()
    {
        return (_width);
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
        return (_height);
    } // End of the function
    function set height(newHeight)
    {
        _height = newHeight;
        this._arrangeElements();
        //return (this.height());
        null;
    } // End of the function
    function _create()
    {
        this._createBackground();
        this._createWheel();
    } // End of the function
    function _createBackground()
    {
        _backgroundClip = _clip.createEmptyMovieClip("background", _clip.getNextHighestDepth());
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_backgroundClip, 0, 0, _width, _height);
        _backgroundShape.__set__color(_settings.skinColor);
        _backgroundShape.__set__cornerRadius(7);
        _backgroundShape.__set__opacity(50);
    } // End of the function
    function _createWheel()
    {
        _wheelClip = _clip.attachMovie("PreloaderClip", "wheel", _clip.getNextHighestDepth());
        _wheelClip._x = _width / 2;
        _wheelClip._y = _height / 2;
    } // End of the function
    function _arrangeElements()
    {
        _backgroundShape.setSize(_width, _height);
        _wheelClip._x = _width / 2;
        _wheelClip._y = _height / 2;
    } // End of the function
    function removeFinished()
    {
        _wheelClip.removeMovieClip();
        _backgroundClip.removeMovieClip();
        delete this._backgroundShape;
    } // End of the function
    var _componentClipName = "pagePreloader";
} // End of Class
#endinitclip
