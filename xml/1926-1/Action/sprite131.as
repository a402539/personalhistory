// Action script...

// [Initial MovieClip Action of sprite 131]
#initclip 27
class com.fbpublisher.utils.graphics.StyleableShape extends com.fbpublisher.utils.graphics.StyleableObject
{
    var _contentClip, _contentShape, _rootClip, __get__cornerRadius, activateAnimationObject, _strokeSize, __get__strokeSize, _strokeColor, __get__strokeColor, _strokeOpacity, __get__strokeOpacity, _strokeBlendMode, __get__strokeBlendMode, _strokePosition, __get__strokePosition, _contentColor, _strokeClip, _dropShadowClip, _dropShadowShape, _innerShadowClip, _innerShadowShape, _gradientMaskClip, _gradientMaskShape, _drawGradient, _dropShadowDepth, _innerShadowDepth, _gradientMaskDepth, _strokeDepth, _strokeShape, __get__contentClip, __set__cornerRadius, __get__height, __set__strokeBlendMode, __set__strokeColor, __set__strokeOpacity, __set__strokePosition, __set__strokeSize, __get__width;
    function StyleableShape(clip)
    {
        super(clip);
        _contentShape = new com.fbpublisher.utils.graphics.CustomShape(_contentClip);
    } // End of the function
    function get contentClip()
    {
        return (_contentClip);
    } // End of the function
    function draw()
    {
        this.redrawShape();
    } // End of the function
    function get width()
    {
        return (_rootClip._width);
    } // End of the function
    function get height()
    {
        return (_rootClip._height);
    } // End of the function
    function get cornerRadius()
    {
        return (_cornerRadius);
    } // End of the function
    function set cornerRadius(newRadius)
    {
        _cornerRadius = newRadius;
        this._drawCornerRadius();
        //return (this.cornerRadius());
        null;
    } // End of the function
    function cornerRadiusTo(newRadius, duration, delay)
    {
        this.activateAnimationObject("_cornerRadius", _drawCornerRadius, "shapeRadius", newRadius, duration, delay);
    } // End of the function
    function addPoint(x, y, customCornerRadius)
    {
        _contentShape.addNode(x, y, customCornerRadius);
    } // End of the function
    function get strokeSize()
    {
        return (_strokeSize);
    } // End of the function
    function set strokeSize(newSize)
    {
        _strokeSize = newSize;
        this._drawStroke();
        //return (this.strokeSize());
        null;
    } // End of the function
    function strokeSizeTo(newSize, duration, delay)
    {
        this.activateAnimationObject("_strokeSize", _drawStroke, "stroke", newSize, duration, delay);
    } // End of the function
    function get strokeColor()
    {
        return (_strokeColor);
    } // End of the function
    function set strokeColor(newColor)
    {
        _strokeColor = newColor;
        this._drawStrokeColor();
        //return (this.strokeColor());
        null;
    } // End of the function
    function strokeColorTo(newColor, duration, delay)
    {
        this.activateAnimationObject("_strokeColor", _drawStrokeColor, "strokeColor", newColor, duration, delay);
    } // End of the function
    function get strokeOpacity()
    {
        return (_strokeOpacity);
    } // End of the function
    function set strokeOpacity(newOpacity)
    {
        _strokeOpacity = newOpacity;
        this._drawStrokeOpacity();
        //return (this.strokeOpacity());
        null;
    } // End of the function
    function strokeOpacityTo(newOpacity, duration, delay)
    {
        this.activateAnimationObject("_strokeOpacity", _drawStrokeOpacity, "strokeOpacity", newOpacity, duration, delay);
    } // End of the function
    function get strokeBlendMode()
    {
        return (_strokeBlendMode);
    } // End of the function
    function set strokeBlendMode(newBlendMode)
    {
        _strokeBlendMode = newBlendMode;
        this._drawStrokeBlendMode();
        //return (this.strokeBlendMode());
        null;
    } // End of the function
    function get strokePosition()
    {
        return (_strokePosition);
    } // End of the function
    function set strokePosition(newPosition)
    {
        _strokePosition = newPosition;
        this._drawStroke();
        //return (this.strokePosition());
        null;
    } // End of the function
    function movePoint(pointIndex, newX, newY)
    {
        var _loc2 = _contentShape._nodes[pointIndex];
        _loc2.x = newX;
        _loc2.y = newY;
    } // End of the function
    function pointX(pointIndex, newX)
    {
        _contentShape._nodes[pointIndex].x = newX;
    } // End of the function
    function pointY(pointIndex, newY)
    {
        _contentShape._nodes[pointIndex].y = newY;
    } // End of the function
    function getPoint(pointIndex)
    {
        return (_contentShape._nodes[pointIndex]);
    } // End of the function
    function movePointTo(pointIndex, newX, newY, duration, delay)
    {
        this.activateAnimationObject("point_X__" + pointIndex, redrawShape, "points", newX, duration, delay);
        this.activateAnimationObject("point_Y__" + pointIndex, redrawShape, "points", newY, duration, delay);
    } // End of the function
    function _drawCornerRadius()
    {
        _contentShape.__set__cornerRadius(_cornerRadius);
        this.redrawShape();
    } // End of the function
    function redrawShape()
    {
        _contentClip.clear();
        _contentClip.lineStyle(0, 0, 0);
        _contentClip.beginFill(_contentColor, 100);
        _contentShape.draw();
        _contentClip.endFill();
        if (_strokeClip != undefined)
        {
            this._drawStroke();
        } // end if
        this.redrawFilterClips();
    } // End of the function
    function redrawFilterClips()
    {
        if (_dropShadowClip != undefined)
        {
            this._copyShape(_dropShadowShape, _contentShape, _dropShadowClip, "outer");
        } // end if
        if (_innerShadowClip != undefined)
        {
            this._copyShape(_innerShadowShape, _contentShape, _innerShadowClip, "inner");
        } // end if
        if (_gradientMaskClip != undefined)
        {
            this._copyShape(_gradientMaskShape, _contentShape, _gradientMaskClip, "inner");
            this._drawGradient();
        } // end if
    } // End of the function
    function _createDropShadowClip()
    {
        if (_dropShadowClip == undefined)
        {
            _dropShadowClip = _rootClip.createEmptyMovieClip("dropShadow", _dropShadowDepth);
            _dropShadowShape = new com.fbpublisher.utils.graphics.CustomShape(_dropShadowClip);
            this._copyShape(_dropShadowShape, _contentShape, _dropShadowClip, "outer");
        } // end if
    } // End of the function
    function _createInnerShadowClip()
    {
        if (_innerShadowClip == undefined)
        {
            _innerShadowClip = _rootClip.createEmptyMovieClip("innerShadow", _innerShadowDepth);
            _innerShadowShape = new com.fbpublisher.utils.graphics.CustomShape(_innerShadowClip);
            this._copyShape(_innerShadowShape, _contentShape, _innerShadowClip, "inner");
        } // end if
    } // End of the function
    function _createGradientMaskClip()
    {
        if (_gradientMaskClip == undefined)
        {
            _gradientMaskClip = _rootClip.createEmptyMovieClip("gradientMask", _gradientMaskDepth);
            _gradientMaskShape = new com.fbpublisher.utils.graphics.CustomShape(_gradientMaskClip);
            this._copyShape(_gradientMaskShape, _contentShape, _gradientMaskClip, "inner");
        } // end if
    } // End of the function
    function _createStrokeClip()
    {
        if (_strokeClip == undefined)
        {
            _strokeClip = _rootClip.createEmptyMovieClip("stroke", _strokeDepth);
            _strokeShape = new com.fbpublisher.utils.graphics.CustomShape(_strokeClip);
            _strokeShape.copyNodesFrom(_contentShape);
        } // end if
    } // End of the function
    function _drawStroke()
    {
        this._createStrokeClip();
        _strokeShape.__set__cornerRadius(_cornerRadius);
        _strokeShape.strokeSize = _strokeSize;
        _strokeShape.strokePosition = _strokePosition;
        _strokeShape.copyNodesFrom(_contentShape);
        _strokeClip.clear();
        _strokeClip.lineStyle(0, 0, 0);
        _strokeClip.beginFill(0, 100);
        _strokeShape.draw();
        _strokeClip.endFill();
        this.redrawFilterClips();
    } // End of the function
    function _drawStrokeOpacity()
    {
        this._createStrokeClip();
        _strokeClip._alpha = _strokeOpacity;
    } // End of the function
    function _drawStrokeColor()
    {
        this._createStrokeClip();
        var _loc2 = new Color(_strokeClip);
        _loc2.setRGB(_strokeColor);
    } // End of the function
    function _drawStrokeBlendMode()
    {
        this._createStrokeClip();
        _strokeClip.blendMode = _strokeBlendMode;
    } // End of the function
    function _copyShape(destination, source, drawClip, shapeType)
    {
        if (_strokeClip != undefined)
        {
            source = _strokeShape;
        } // end if
        destination.copySegmentsFrom(source, shapeType);
        drawClip.clear();
        drawClip.lineStyle(0, 0, 0);
        drawClip.beginFill(0, 100);
        destination._drawSegments(1);
        drawClip.endFill();
    } // End of the function
    var _cornerRadius = 0;
} // End of Class
#endinitclip
