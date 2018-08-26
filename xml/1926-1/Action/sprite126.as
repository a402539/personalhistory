// Action script...

// [Initial MovieClip Action of sprite 126]
#initclip 22
class com.fbpublisher.utils.graphics.StyleableObject
{
    var _rootClip, _contentClip, _animationQueue, __get__x, __get__y, __get__blendMode, __get__color, __get__opacity, __get__fill, __get__dropShadowSize, __get__dropShadowDistance, __get__dropShadowColor, __get__dropShadowBlendMode, __get__dropShadowOpacity, __get__dropShadowQuality, __get__dropShadowAngle, __get__innerShadowSize, __get__innerShadowDistance, __get__innerShadowBlendMode, __get__innerShadowOpacity, __get__innerShadowColor, __get__innerShadowQuality, __get__innerShadowAngle, __get__gradientAngle, __get__updateEnable, _gradientOpacity, __get__gradientOpacity, __get__gradientScale, __get__gradientBlendMode, __get__gradientFromColor, __get__gradientFromAlpha, __get__gradientToColor, __get__gradientToAlpha, __get__gradientReverse, _dropShadowClip, _innerShadowClip, _gradientClip, _gradientMaskClip, __set__blendMode, __get__clip, __set__color, __set__dropShadowAngle, __set__dropShadowBlendMode, __set__dropShadowColor, __set__dropShadowDistance, __set__dropShadowOpacity, __set__dropShadowQuality, __set__dropShadowSize, __set__fill, __set__gradientAngle, __set__gradientBlendMode, __set__gradientFromAlpha, __set__gradientFromColor, __set__gradientOpacity, __set__gradientReverse, __set__gradientScale, __set__gradientToAlpha, __set__gradientToColor, __set__innerShadowAngle, __set__innerShadowBlendMode, __set__innerShadowColor, __set__innerShadowDistance, __set__innerShadowOpacity, __set__innerShadowQuality, __set__innerShadowSize, __set__opacity, __set__updateEnable, __set__x, __set__y;
    function StyleableObject(clip)
    {
        _rootClip = clip;
        _contentClip = _rootClip.createEmptyMovieClip("content", _contentDepth);
        _animationQueue = new com.fbpublisher.utils.animation.AnimationQueue();
        _animationQueue.addEventListener("animationFinished", this);
        mx.events.EventDispatcher.initialize(this);
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
    function get clip()
    {
        return (_rootClip);
    } // End of the function
    function get x()
    {
        return (_x);
    } // End of the function
    function set x(newX)
    {
        _x = newX;
        this._repositionObject();
        //return (this.x());
        null;
    } // End of the function
    function xTo(newX, duration, delay)
    {
        this.activateAnimationObject("_x", _repositionObject, "position", newX, duration, delay);
    } // End of the function
    function get y()
    {
        return (_y);
    } // End of the function
    function set y(newY)
    {
        _y = newY;
        this._repositionObject();
        //return (this.y());
        null;
    } // End of the function
    function yTo(newY, duration, delay)
    {
        this.activateAnimationObject("_y", _repositionObject, "position", newY, duration, delay);
    } // End of the function
    function set blendMode(newMode)
    {
        _rootClip.blendMode = newMode;
        //return (this.blendMode());
        null;
    } // End of the function
    function get blendMode()
    {
        return (String(_rootClip.blendMode));
    } // End of the function
    function get color()
    {
        return (_contentColor);
    } // End of the function
    function set color(newColor)
    {
        _contentColor = newColor;
        this._drawColor();
        //return (this.color());
        null;
    } // End of the function
    function colorTo(newColor, duration, delay)
    {
        this.activateAnimationObject("_contentColor", _drawColor, "shapeColor", newColor, duration, delay);
    } // End of the function
    function set opacity(newOpacity)
    {
        _contentOpacity = newOpacity;
        this._drawOpacity();
        //return (this.opacity());
        null;
    } // End of the function
    function get opacity()
    {
        return (_contentOpacity);
    } // End of the function
    function opacityTo(newOpacity, duration, delay)
    {
        this.activateAnimationObject("_contentOpacity", _drawOpacity, "shapeOpacity", newOpacity, duration, delay);
    } // End of the function
    function set fill(newFill)
    {
        _contentFill = newFill;
        this._drawFill();
        //return (this.fill());
        null;
    } // End of the function
    function get fill()
    {
        return (_contentFill);
    } // End of the function
    function fillTo(newFill, duration, delay)
    {
        this.activateAnimationObject("_contentFill", _drawFill, "shapeFill", newFill, duration, delay);
    } // End of the function
    function get dropShadowSize()
    {
        return (_dsSize);
    } // End of the function
    function set dropShadowSize(newSize)
    {
        _dsSize = newSize;
        this._drawDropShadow();
        //return (this.dropShadowSize());
        null;
    } // End of the function
    function dropShadowSizeTo(newSize, duration, delay)
    {
        this.activateAnimationObject("_dsSize", _drawDropShadow, "dropShadow", newSize, duration, delay);
    } // End of the function
    function get dropShadowDistance()
    {
        return (_dsDistance);
    } // End of the function
    function set dropShadowDistance(newDistance)
    {
        _dsDistance = newDistance;
        this._drawDropShadow();
        //return (this.dropShadowDistance());
        null;
    } // End of the function
    function dropShadowDistanceTo(newDistance, duration, delay)
    {
        this.activateAnimationObject("_dsDistance", _drawDropShadow, "dropShadow", newDistance, duration, delay);
    } // End of the function
    function get dropShadowColor()
    {
        return (_dsColor);
    } // End of the function
    function set dropShadowColor(newColor)
    {
        _dsColor = newColor;
        this._drawDropShadow();
        //return (this.dropShadowColor());
        null;
    } // End of the function
    function dropShadowColorTo(newColor, duration, delay)
    {
        this.activateAnimationObject("_dsColor", _drawDropShadow, "dropShadow", newColor, duration, delay);
    } // End of the function
    function get dropShadowBlendMode()
    {
        return (_dsBlendMode);
    } // End of the function
    function set dropShadowBlendMode(newBlendMode)
    {
        _dsBlendMode = newBlendMode;
        this._drawDropShadow();
        //return (this.dropShadowBlendMode());
        null;
    } // End of the function
    function get dropShadowOpacity()
    {
        return (_dsAlpha * 100);
    } // End of the function
    function set dropShadowOpacity(newOpacity)
    {
        _dsAlpha = newOpacity / 100;
        this._drawDropShadow();
        //return (this.dropShadowOpacity());
        null;
    } // End of the function
    function dropShadowOpacityTo(newOpacity, duration, delay)
    {
        newOpacity = newOpacity / 100;
        this.activateAnimationObject("_dsAlpha", _drawDropShadow, "dropShadow", newOpacity, duration, delay);
    } // End of the function
    function get dropShadowQuality()
    {
        return (_dsQuality);
    } // End of the function
    function set dropShadowQuality(newQuality)
    {
        _dsQuality = newQuality;
        this._drawDropShadow();
        //return (this.dropShadowQuality());
        null;
    } // End of the function
    function get dropShadowAngle()
    {
        return (_dsAngle);
    } // End of the function
    function set dropShadowAngle(newAngle)
    {
        _dsAngle = newAngle;
        this._drawDropShadow();
        //return (this.dropShadowAngle());
        null;
    } // End of the function
    function dropShadowAngleTo(newAngle, duration, delay)
    {
        this.activateAnimationObject("_dsAngle", _drawDropShadow, "dropShadow", newAngle, duration, delay);
    } // End of the function
    function get innerShadowSize()
    {
        return (_isSize);
    } // End of the function
    function set innerShadowSize(newSize)
    {
        _isSize = newSize;
        this._drawInnerShadow();
        //return (this.innerShadowSize());
        null;
    } // End of the function
    function innerShadowSizeTo(newSize, duration, delay)
    {
        this.activateAnimationObject("_isSize", _drawInnerShadow, "innerShadow", newSize, duration, delay);
    } // End of the function
    function get innerShadowDistance()
    {
        return (_isDistance);
    } // End of the function
    function set innerShadowDistance(newDistance)
    {
        _isDistance = newDistance;
        this._drawInnerShadow();
        //return (this.innerShadowDistance());
        null;
    } // End of the function
    function innerShadowDistanceTo(newDistance, duration, delay)
    {
        this.activateAnimationObject("_isDistance", _drawInnerShadow, "innerShadow", newDistance, duration, delay);
    } // End of the function
    function get innerShadowBlendMode()
    {
        return (_isBlendMode);
    } // End of the function
    function set innerShadowBlendMode(newBlendMode)
    {
        _isBlendMode = newBlendMode;
        this._drawInnerShadow();
        //return (this.innerShadowBlendMode());
        null;
    } // End of the function
    function get innerShadowOpacity()
    {
        return (_isAlpha * 100);
    } // End of the function
    function set innerShadowOpacity(newOpacity)
    {
        _isAlpha = newOpacity / 100;
        this._drawInnerShadow();
        //return (this.innerShadowOpacity());
        null;
    } // End of the function
    function innerShadowOpacityTo(newOpacity, duration, delay)
    {
        newOpacity = newOpacity / 100;
        this.activateAnimationObject("_isAlpha", _drawInnerShadow, "innerShadow", newOpacity, duration, delay);
    } // End of the function
    function get innerShadowColor()
    {
        return (_isColor);
    } // End of the function
    function set innerShadowColor(newColor)
    {
        _isColor = newColor;
        this._drawInnerShadow();
        //return (this.innerShadowColor());
        null;
    } // End of the function
    function innerShadowColorTo(newColor, duration, delay)
    {
        this.activateAnimationObject("_isColor", _drawInnerShadow, "innerShadow", newColor, duration, delay);
    } // End of the function
    function get innerShadowQuality()
    {
        return (_isQuality);
    } // End of the function
    function set innerShadowQuality(newQuality)
    {
        _isQuality = newQuality;
        this._drawInnerShadow();
        //return (this.innerShadowQuality());
        null;
    } // End of the function
    function get innerShadowAngle()
    {
        return (_isAngle);
    } // End of the function
    function set innerShadowAngle(newAngle)
    {
        _isAngle = newAngle;
        this._drawInnerShadow();
        //return (this.innerShadowAngle());
        null;
    } // End of the function
    function innerShadowAngleTo(newAngle, duration, delay)
    {
        this.activateAnimationObject("_isAngle", _drawInnerShadow, "innerShadow", newAngle, duration, delay);
    } // End of the function
    function get gradientAngle()
    {
        return (_gradientAngle);
    } // End of the function
    function set gradientAngle(newAngle)
    {
        _gradientAngle = newAngle;
        this._drawGradient();
        //return (this.gradientAngle());
        null;
    } // End of the function
    function set updateEnable(value)
    {
        _updateEnable = value;
        if (_updateEnable)
        {
            if (_drawDropShadowSetted)
            {
                this._drawDropShadow();
            } // end if
            if (_drawGradientSetted)
            {
                this._drawGradient();
            } // end if
            if (_drawInnerShadowSetted)
            {
                this._drawInnerShadow();
            } // end if
        } // end if
        //return (this.updateEnable());
        null;
    } // End of the function
    function gradientAngleTo(newAngle, duration, delay)
    {
        this.activateAnimationObject("_gradientAngle", _drawGradient, "gradient", newAngle, duration, delay);
    } // End of the function
    function get gradientOpacity()
    {
        return (_gradientOpacity);
    } // End of the function
    function set gradientOpacity(newOpacity)
    {
        _gradientOpacity = newOpacity;
        this._drawGradient();
        //return (this.gradientOpacity());
        null;
    } // End of the function
    function gradientOpacityTo(newOpacity, duration, delay)
    {
        this.activateAnimationObject("_gradientOpacity", _drawGradient, "gradient", newOpacity, duration, delay);
    } // End of the function
    function get gradientScale()
    {
        return (_gradientScale);
    } // End of the function
    function set gradientScale(newScale)
    {
        _gradientScale = newScale;
        this._drawGradient();
        //return (this.gradientScale());
        null;
    } // End of the function
    function gradientScaleTo(newScale, duration, delay)
    {
        this.activateAnimationObject("_gradientScale", _drawGradient, "gradient", newScale, duration, delay);
    } // End of the function
    function get gradientBlendMode()
    {
        return (_gradientBlendMode);
    } // End of the function
    function set gradientBlendMode(newBlendMode)
    {
        _gradientBlendMode = newBlendMode;
        this._drawGradient();
        //return (this.gradientBlendMode());
        null;
    } // End of the function
    function get gradientFromColor()
    {
        return (_gradientFromColor);
    } // End of the function
    function set gradientFromColor(newColor)
    {
        _gradientFromColor = newColor;
        this._drawGradient();
        //return (this.gradientFromColor());
        null;
    } // End of the function
    function gradientFromColorTo(newColor, duration, delay)
    {
        this.activateAnimationObject("_gradientFromColor", _drawGradient, "gradient", newColor, duration, delay);
    } // End of the function
    function get gradientFromAlpha()
    {
        return (_gradientFromAlpha);
    } // End of the function
    function set gradientFromAlpha(newAlpha)
    {
        _gradientFromAlpha = newAlpha;
        this._drawGradient();
        //return (this.gradientFromAlpha());
        null;
    } // End of the function
    function gradientFromAlphaTo(newAlpha, duration, delay)
    {
        this.activateAnimationObject("_gradientFromAlpha", _drawGradient, "gradient", newAlpha, duration, delay);
    } // End of the function
    function get gradientToColor()
    {
        return (_gradientToColor);
    } // End of the function
    function set gradientToColor(newColor)
    {
        _gradientToColor = newColor;
        this._drawGradient();
        //return (this.gradientToColor());
        null;
    } // End of the function
    function gradientToColorTo(newColor, duration, delay)
    {
        this.activateAnimationObject("_gradientToColor", _drawGradient, "gradient", newColor, duration, delay);
    } // End of the function
    function get gradientToAlpha()
    {
        return (_gradientToAlpha);
    } // End of the function
    function set gradientToAlpha(newAlpha)
    {
        _gradientToAlpha = newAlpha;
        this._drawGradient();
        //return (this.gradientToAlpha());
        null;
    } // End of the function
    function gradientToAlphaTo(newAlpha, duration, delay)
    {
        this.activateAnimationObject("_gradientToAlpha", _drawGradient, "gradient", newAlpha, duration, delay);
    } // End of the function
    function get gradientReverse()
    {
        return (_gradientReverse);
    } // End of the function
    function set gradientReverse(reverse)
    {
        _gradientReverse = reverse;
        this._drawGradient();
        //return (this.gradientReverse());
        null;
    } // End of the function
    function stopAnimation()
    {
        _animationQueue.stopAnimation();
    } // End of the function
    function show()
    {
        _rootClip._visible = true;
    } // End of the function
    function hide()
    {
        _rootClip._visible = false;
    } // End of the function
    function _drawFill()
    {
        _contentClip._alpha = _contentFill;
    } // End of the function
    function _drawOpacity()
    {
        _rootClip._alpha = _contentOpacity;
    } // End of the function
    function _drawColor()
    {
        var _loc2 = new Color(_contentClip);
        _loc2.setRGB(_contentColor);
    } // End of the function
    function _repositionObject()
    {
        _rootClip._x = _x;
        _rootClip._y = _y;
    } // End of the function
    function _drawDropShadow()
    {
        _drawDropShadowSetted = true;
        if (!_updateEnable)
        {
            return;
        } // end if
        var _loc2 = new flash.filters.DropShadowFilter(_dsDistance, _dsAngle, _dsColor, _dsAlpha, _dsSize, _dsSize, _dsStrength, _dsQuality, false, true, false);
        this._createDropShadowClip();
        _dropShadowClip.filters = [_loc2];
        _dropShadowClip.blendMode = _dsBlendMode;
    } // End of the function
    function _drawInnerShadow()
    {
        _drawInnerShadowSetted = true;
        if (!_updateEnable)
        {
            return;
        } // end if
        var _loc2 = new flash.filters.DropShadowFilter(_isDistance, _isAngle, _isColor, _isAlpha, _isSize, _isSize, _isStrength, _isQuality, true, true, false);
        this._createInnerShadowClip();
        _innerShadowClip.filters = [_loc2];
        _innerShadowClip.blendMode = _isBlendMode;
    } // End of the function
    function _drawGradient()
    {
        _drawGradientSetted = true;
        if (!_updateEnable)
        {
            return;
        } // end if
        this._createGradientClip();
        this._createGradientMaskClip();
        _gradientClip.clear();
        var _loc3 = _rootClip._width;
        var _loc2 = _rootClip._height;
        var _loc6 = _gradientReverse ? (180 + _gradientAngle) : (_gradientAngle);
        var _loc7 = [_gradientFromColor, _gradientToColor];
        var _loc5 = [_gradientFromAlpha, _gradientToAlpha];
        var _loc8 = [128 - 128 * _gradientScale / 100, 128 + 127 * _gradientScale / 100];
        var _loc4 = new flash.geom.Matrix();
        _loc4.createGradientBox(_loc3, _loc2, 0.017453 * _loc6);
        _gradientClip.beginGradientFill("linear", _loc7, _loc5, _loc8, _loc4);
        _gradientClip.moveTo(0, 0);
        _gradientClip.lineTo(_loc3, 0);
        _gradientClip.lineTo(_loc3, _loc2);
        _gradientClip.lineTo(0, _loc2);
        _gradientClip.lineTo(0, 0);
        _gradientClip.endFill();
        _gradientClip._alpha = _gradientOpacity;
        _gradientClip.blendMode = _gradientBlendMode;
        _gradientClip.setMask(_gradientMaskClip);
    } // End of the function
    function _createGradientClip()
    {
        if (_gradientClip == undefined)
        {
            _gradientClip = _rootClip.createEmptyMovieClip("gradient", _gradientDepth);
        } // end if
    } // End of the function
    function startAnimation()
    {
        if (_rootClip.onEnterFrame == undefined)
        {
            _rootClip.onEnterFrame = mx.utils.Delegate.create(this, animateStyles);
        } // end if
    } // End of the function
    function animateStyles()
    {
        _animationQueue.updateObjects();
        if (_animationQueue.queueIsEmpty())
        {
            _animationQueue.stopTimer();
            delete _rootClip.onEnterFrame;
        } // end if
    } // End of the function
    function activateAnimationObject(parameterName, functionReference, renderGroupName, stopValue, duration, delay)
    {
        var _loc2 = _animationQueue.getAnimationObject(parameterName);
        _loc2.functionReference = functionReference;
        _loc2.thisObject = this;
        if (_loc2.isPointParameter)
        {
            if (_loc2.pointX)
            {
                _loc2.startValue = this.getPoint(_loc2.pointIndex).x;
            }
            else
            {
                _loc2.startValue = this.getPoint(_loc2.pointIndex).y;
            } // end else if
        }
        else
        {
            _loc2.startValue = this[parameterName];
        } // end else if
        _loc2.renderGroupName = renderGroupName;
        _loc2.stopValue = stopValue;
        _loc2.duration = duration;
        _loc2.__set__animationDelay(delay);
        _loc2.startAnimation();
        this.startAnimation();
    } // End of the function
    function animationFinished()
    {
        this.dispatchEvent({type: "animationFinished", target: this});
    } // End of the function
    function _createDropShadowClip()
    {
    } // End of the function
    function _createInnerShadowClip()
    {
    } // End of the function
    function _createGradientMaskClip()
    {
    } // End of the function
    function _createStrokeClip()
    {
    } // End of the function
    function getPoint()
    {
    } // End of the function
    var animationId = "default";
    var _x = 0;
    var _y = 0;
    var _contentColor = 0;
    var _contentFill = 100;
    var _contentOpacity = 100;
    var _contentBlendMode = "normal";
    var _contentDepth = 2;
    var _dsDistance = 5;
    var _dsAngle = 45;
    var _dsColor = 0;
    var _dsAlpha = 1;
    var _dsSize = 5;
    var _dsStrength = 1;
    var _dsQuality = 1;
    var _dsBlendMode = "normal";
    var _dropShadowDepth = 0;
    var _isDistance = 5;
    var _isAngle = 45;
    var _isColor = 0;
    var _isAlpha = 1;
    var _isSize = 5;
    var _isStrength = 1;
    var _isQuality = 1;
    var _isBlendMode = "normal";
    var _innerShadowDepth = 3;
    var _gradientAngle = 90;
    var _gradientScale = 50;
    var _gradientBlendMode = "normal";
    var _gradientFromColor = 16777215;
    var _gradientToColor = 0;
    var _gradientFromAlpha = 100;
    var _gradientToAlpha = 100;
    var _gradientReverse = false;
    var _gradientDepth = 4;
    var _gradientMaskDepth = 5;
    var _strokeSize = 3;
    var _strokeColor = 16711680;
    var _strokePosition = "outer";
    var _strokeBlendMode = "normal";
    var _strokeOpacity = 100;
    var _strokeDepth = 6;
    var _updateEnable = true;
    var _drawDropShadowSetted = false;
    var _drawInnerShadowSetted = false;
    var _drawGradientSetted = false;
} // End of Class
#endinitclip
