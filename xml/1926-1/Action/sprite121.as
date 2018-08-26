// Action script...

// [Initial MovieClip Action of sprite 121]
#initclip 17
class com.fbpublisher.utils.search.BookInfo extends com.fbpublisher.utils.EventDispatcher
{
    var delegate, pages;
    static var _singleton, __get__singleton;
    function BookInfo()
    {
        super();
        delegate = mx.utils.Delegate.create(this, loadComplete);
    } // End of the function
    function clear()
    {
        for (var _loc2 = 0; _loc2 < count && count != undefined; ++_loc2)
        {
            pages[_loc2].clear();
        } // end of for
    } // End of the function
    function update()
    {
        for (var _loc2 = 0; _loc2 < count && count != undefined; ++_loc2)
        {
            var _loc3 = pages[_loc2];
            _loc3.highlight();
        } // end of for
    } // End of the function
    function setZoomerCanvas(pageNumber, canvas)
    {
        var _loc2 = pages[pageNumber];
        _loc2.__set__zoomerCanvas(canvas);
    } // End of the function
    function setBookCanvas(pageNumber, canvas)
    {
        var _loc2 = pages[pageNumber];
        _loc2.__set__bookCanvas(canvas);
    } // End of the function
    function highlight(pageNumber)
    {
        var _loc2 = pages[pageNumber];
        _loc2.highlight();
    } // End of the function
    static function get singleton()
    {
        if (!com.fbpublisher.utils.search.BookInfo._singleton)
        {
            _singleton = new com.fbpublisher.utils.search.BookInfo();
        } // end if
        return (com.fbpublisher.utils.search.BookInfo._singleton);
    } // End of the function
    function init(count)
    {
        this.count = count;
        pages = new Array(count);
        for (var _loc2 = 0; _loc2 < count && count != undefined; ++_loc2)
        {
            pages[_loc2] = new com.fbpublisher.utils.search.PageInfo(_loc2);
        } // end of for
    } // End of the function
    function loadComplete(event)
    {
        var _loc2 = (com.fbpublisher.utils.search.PageInfo)(event.target);
        _loc2.removeEventListener(com.fbpublisher.utils.search.PageInfo.LOAD_COMPLETE, delegate);
        _loc2.highlight();
    } // End of the function
    function load(pageNumber)
    {
        if (pageNumber < count)
        {
            var _loc2 = (com.fbpublisher.utils.search.PageInfo)(pages[pageNumber]);
            _loc2.addEventListener(com.fbpublisher.utils.search.PageInfo.LOAD_COMPLETE, delegate);
            _loc2.load();
            return (true);
        }
        else
        {
            return (false);
        } // end else if
    } // End of the function
    var count = 0;
} // End of Class
#endinitclip
