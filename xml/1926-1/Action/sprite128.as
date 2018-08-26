// Action script...

// [Initial MovieClip Action of sprite 128]
#initclip 24
class com.fbpublisher.utils.animation.AnimationObject
{
    var parameterName, animationManager, id, pointIndex, pointX, duration, __get__time, __get__animationDelay, stopValue, thisObject, startValue, valueChange, __set__animationDelay, __get__remaining, __set__time;
    function AnimationObject(parameterName, id, animationManager)
    {
        this.parameterName = parameterName;
        this.animationManager = animationManager;
        this.id = id;
        isColorParameter = parameterName.toUpperCase().indexOf("COLOR") != -1;
        isPointParameter = parameterName.toUpperCase().indexOf("POINT") != -1;
        if (isPointParameter)
        {
            pointIndex = Number(parameterName.substring(parameterName.indexOf("__") + 2, parameterName.length));
            pointX = parameterName.toUpperCase().indexOf("_X_") != -1;
        } // end if
    } // End of the function
    function startAnimation()
    {
        animationManager.removeCompetitors(this);
        animationManager.addToQueue(this);
    } // End of the function
    function stopAnimation()
    {
        animationManager.removeFromQueue(this);
    } // End of the function
    function get remaining()
    {
        return (delay + duration - elapsed);
    } // End of the function
    function get time()
    {
        return (elapsed);
    } // End of the function
    function set time(newTime)
    {
        elapsed = newTime;
        this.update();
        //return (this.time());
        null;
    } // End of the function
    function get animationDelay()
    {
        return (delay);
    } // End of the function
    function set animationDelay(newDelay)
    {
        if (newDelay != undefined)
        {
            delay = newDelay;
        } // end if
        //return (this.animationDelay());
        null;
    } // End of the function
    function update()
    {
        if (finished)
        {
            this.stopAnimation();
            return;
        } // end if
        if (elapsed >= delay)
        {
            if (!started)
            {
                this.prepareAnimation();
            } // end if
            this.setNewParameterValue(this.getNewParameterValue());
        } // end if
        if (elapsed - delay >= duration)
        {
            this.setNewParameterValue(stopValue);
            finished = true;
        } // end if
    } // End of the function
    function setNewParameterValue(value)
    {
        if (isPointParameter)
        {
            if (pointX)
            {
                thisObject.pointX(pointIndex, value);
            }
            else
            {
                thisObject.pointY(pointIndex, value);
            } // end else if
        }
        else
        {
            thisObject[parameterName] = value;
        } // end else if
    } // End of the function
    function getNewParameterValue()
    {
        if (isColorParameter)
        {
            var _loc2 = startValue >> 16;
            var _loc7 = stopValue >> 16;
            var _loc6 = com.robertpenner.easing.Quad.easeOut(elapsed - delay, _loc2, _loc7 - _loc2, duration);
            var _loc4 = startValue >> 8 & 255;
            var _loc9 = stopValue >> 8 & 255;
            var _loc10 = com.robertpenner.easing.Quad.easeOut(elapsed - delay, _loc4, _loc9 - _loc4, duration);
            var _loc3 = startValue & 255;
            var _loc8 = stopValue & 255;
            var _loc5 = com.robertpenner.easing.Quad.easeOut(elapsed - delay, _loc3, _loc8 - _loc3, duration);
            return (_loc6 << 16 | _loc10 << 8 | _loc5);
        }
        else
        {
            return (com.robertpenner.easing.Quad.easeOut(elapsed - delay, startValue, valueChange, duration));
        } // end else if
    } // End of the function
    function getCurrentParameterValue()
    {
        if (isPointParameter)
        {
            if (pointX)
            {
                return (thisObject.getPoint(pointIndex).x);
            }
            else
            {
                return (thisObject.getPoint(pointIndex).y);
            } // end if
        } // end else if
        return (thisObject[parameterName]);
    } // End of the function
    function prepareAnimation()
    {
        var _loc2 = stopValue - startValue;
        startValue = this.getCurrentParameterValue();
        valueChange = stopValue - startValue;
        started = true;
    } // End of the function
    var delay = 0;
    var elapsed = 0;
    var started = false;
    var finished = false;
    var isColorParameter = false;
    var isPointParameter = false;
} // End of Class
#endinitclip
