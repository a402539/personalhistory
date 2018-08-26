// Action script...

// [Initial MovieClip Action of sprite 127]
#initclip 23
class com.fbpublisher.utils.animation.AnimationQueue
{
    var animationQueue, renderGroups, now, previousTime, timeChange;
    function AnimationQueue()
    {
        animationQueue = new Array();
        renderGroups = new Array();
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
    function getAnimationObject(parameterName)
    {
        return (new com.fbpublisher.utils.animation.AnimationObject(parameterName, String(++idCounter), this));
    } // End of the function
    function updateObjects()
    {
        var _loc4 = new Date();
        now = _loc4.getTime();
        if (previousTime == undefined)
        {
            previousTime = now;
        } // end if
        timeChange = now - previousTime;
        previousTime = now;
        for (var _loc3 = 0; _loc3 < animationQueue.length; ++_loc3)
        {
            animationQueue[_loc3].time = animationQueue[_loc3].time + timeChange;
        } // end of for
        for (var _loc2 = 0; _loc2 < renderGroups.length; ++_loc2)
        {
            renderGroups[_loc2].render();
        } // end of for
    } // End of the function
    function stopTimer()
    {
        previousTime = undefined;
    } // End of the function
    function removeCompetitors(animationObject)
    {
        for (var _loc2 = 0; _loc2 < animationQueue.length; ++_loc2)
        {
            if (this.competitionBetween(animationObject, animationQueue[_loc2]))
            {
                animationQueue[_loc2].stopAnimation();
            } // end if
        } // end of for
    } // End of the function
    function competitionBetween(newObject, existingObject)
    {
        var _loc2 = newObject.parameterName == existingObject.parameterName;
        var _loc1 = existingObject.__get__remaining() > newObject.delay;
        return (_loc2 && _loc1);
    } // End of the function
    function addToQueue(animationObject)
    {
        var _loc5 = this.getItemIndex(animationQueue, "id", animationObject.id);
        if (_loc5 == -1)
        {
            animationQueue.push(animationObject);
            var _loc4 = this.getItemIndex(renderGroups, "name", animationObject.renderGroupName);
            var _loc3;
            if (_loc4 == -1)
            {
                _loc3 = new com.fbpublisher.utils.animation.RenderGroup(animationObject.renderGroupName, animationObject.functionReference, animationObject.thisObject);
                renderGroups.push(_loc3);
            }
            else
            {
                _loc3 = renderGroups[_loc4];
            } // end else if
            ++_loc3.objectsCount;
        } // end if
    } // End of the function
    function removeFromQueue(animationObject)
    {
        var _loc3 = this.getItemIndex(animationQueue, "id", animationObject.id);
        if (_loc3 != undefined)
        {
            animationQueue.splice(_loc3, 1);
            var _loc2 = this.getItemIndex(renderGroups, "name", animationObject.renderGroupName);
            var _loc4 = renderGroups[_loc2];
            if (--_loc4.objectsCount == 0)
            {
                renderGroups.splice(_loc2, 1);
            } // end if
        } // end if
        if (animationQueue.length == 0)
        {
            this.dispatchEvent({type: "animationFinished"});
        } // end if
    } // End of the function
    function stopAnimation()
    {
        for (var _loc2 = 0; _loc2 < animationQueue.length; ++_loc2)
        {
            var _loc3 = animationQueue[_loc2];
            this.removeFromQueue(_loc3);
        } // end of for
    } // End of the function
    function queueIsEmpty()
    {
        return (animationQueue.length == 0);
    } // End of the function
    function getItemIndex(searhArray, itemKey, itemId)
    {
        for (var _loc1 = 0; _loc1 < searhArray.length; ++_loc1)
        {
            if (searhArray[_loc1][itemKey] == itemId)
            {
                return (_loc1);
            } // end if
        } // end of for
        return (-1);
    } // End of the function
    var idCounter = 0;
} // End of Class
#endinitclip
