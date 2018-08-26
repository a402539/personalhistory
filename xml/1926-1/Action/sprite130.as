// Action script...

// [Initial MovieClip Action of sprite 130]
#initclip 26
class com.fbpublisher.utils.animation.RenderGroup
{
    var functionReference, thisObject, name;
    function RenderGroup(groupName, functionReference, thisObject)
    {
        this.functionReference = functionReference;
        this.thisObject = thisObject;
        name = groupName;
    } // End of the function
    function render()
    {
        functionReference.call(thisObject);
    } // End of the function
    var objectsCount = 0;
} // End of Class
#endinitclip
