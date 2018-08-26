// Action script...

// [Initial MovieClip Action of sprite 111]
#initclip 7
class com.fbpublisher.utils.XMLLoader extends LoadVars
{
    function XMLLoader()
    {
        super();
        mx.events.EventDispatcher.initialize(this);
        function onData(data)
        {
            this.dispatchEvent({type: "onData", data: data});
        } // End of the function
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
} // End of Class
#endinitclip
