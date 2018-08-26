// Action script...

// [Initial MovieClip Action of sprite 107]
#initclip 3
class com.fbpublisher.basicskin.MediaLibrary
{
    var _queueManager;
    function MediaLibrary()
    {
        _queueManager = new com.fbpublisher.basicskin.LoadQueueManager();
        _queueManager.addListener(this);
    } // End of the function
    function loadXML(targetObj, path, listener)
    {
        _queueManager.load(targetObj, path, listener);
    } // End of the function
    function loadImage(targetObj, path, listener)
    {
        _queueManager.load(targetObj, path, listener);
    } // End of the function
} // End of Class
#endinitclip
