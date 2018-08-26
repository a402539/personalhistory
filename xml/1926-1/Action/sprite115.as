// Action script...

// [Initial MovieClip Action of sprite 115]
#initclip 11
class com.fbpublisher.utils.EventDispatcher
{
    function EventDispatcher()
    {
        mx.events.EventDispatcher.initialize(dispatcher);
    } // End of the function
    function addEventListener(type, listener)
    {
        dispatcher.addEventListener(type, listener);
    } // End of the function
    function removeEventListener(type, listener)
    {
        dispatcher.removeEventListener(type, listener);
    } // End of the function
    function dispatchEvent(event)
    {
        dispatcher.dispatchEvent(event);
    } // End of the function
    var dispatcher = new Object();
} // End of Class
#endinitclip
