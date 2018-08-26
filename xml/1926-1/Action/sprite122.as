// Action script...

// [Initial MovieClip Action of sprite 122]
#initclip 18
class com.fbpublisher.utils.search.PageInfo extends com.fbpublisher.utils.EventDispatcher
{
    var _pageNumber, _xml, __get__pageNumber, _bookCanvas, _this, __get__bookCanvas, _zoomerCanvas, __get__zoomerCanvas, dispatchEvent, index, __set__bookCanvas, __get__boxes, __set__zoomerCanvas;
    function PageInfo(pageNumber)
    {
        super();
        _pageNumber = pageNumber;
        words = new Array();
        _xml = new XML();
    } // End of the function
    function get pageNumber()
    {
        return (_pageNumber);
    } // End of the function
    function get boxes()
    {
        var _loc5 = words.length;
        var _loc6 = new Array();
        if (!loaded)
        {
            return (_loc6);
        } // end if
        for (var _loc2 = 0; _loc2 < _loc5 && _loc5 != undefined; ++_loc2)
        {
            var _loc4 = words[_loc2];
            var _loc3 = _loc4.__get__box();
            if (_loc3)
            {
                _loc6.push(_loc3);
            } // end if
        } // end of for
        return (_loc6);
    } // End of the function
    function set bookCanvas(value)
    {
        tracer.information("PageInfo set bookCanvas" + this.__get__pageNumber());
        _bookCanvas = value;
        _bookCanvas._this = this;
        _bookCanvas.onUnload = function ()
        {
            _this._bookCanvas = undefined;
        };
        this.highlight();
        //return (this.bookCanvas());
        null;
    } // End of the function
    function set zoomerCanvas(value)
    {
        tracer.information("PageInfo set zoomerCanvas" + this.__get__pageNumber());
        _zoomerCanvas = value;
        _zoomerCanvas._this = this;
        _zoomerCanvas.onUnload = function ()
        {
            _this._zoomerCanvas = undefined;
        };
        this.highlight();
        //return (this.zoomerCanvas());
        null;
    } // End of the function
    function highlight()
    {
        tracer.information("PageInfo highlight" + this.__get__pageNumber());
        if (_bookCanvas || _zoomerCanvas)
        {
            if (!loaded && !loading)
            {
                this.load();
            }
            else if (loaded)
            {
                com.fbpublisher.utils.search.Highlighter.highlight(_bookCanvas, this);
                com.fbpublisher.utils.search.Highlighter.highlight(_zoomerCanvas, this);
            } // end if
        } // end else if
    } // End of the function
    function clear()
    {
        _zoomerCanvas.clear();
        _bookCanvas.clear();
    } // End of the function
    function load()
    {
        tracer.information("PageInfo load started" + this.__get__pageNumber());
        if (loaded)
        {
            this.dispatchEvent(new com.fbpublisher.utils.Event(com.fbpublisher.utils.search.PageInfo.LOAD_COMPLETE, this));
            return;
        } // end if
        if (com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchEnabled() && !loading)
        {
            tracer.information("PageInfo load started...");
            loading = true;
            loaded = false;
            _xml.load(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchUrl() + "/" + "search" + (this.__get__pageNumber() + 1) + ".xml");
            _xml.index = this;
            _xml.onLoad = function (success)
            {
                index.onLoad(success);
            };
        } // end if
        if (!loading)
        {
        } // end if
    } // End of the function
    function onLoad(success)
    {
        tracer.information("search index load complete:" + success);
        if (!success)
        {
            loading = false;
            this.dispatchEvent(new com.fbpublisher.utils.Event(com.fbpublisher.utils.search.PageInfo.LOAD_COMPLETE, this));
            return;
        } // end if
        loaded = true;
        loading = false;
        var _loc5 = com.fbpublisher.utils.StringUtils.getLines(_xml.firstChild.nodeValue);
        tracer.information("PageInfo loaded getLines(data)");
        var _loc3 = _loc5[0];
        for (var _loc2 = 1; _loc2 <= _loc3 && _loc3 > 0 && _loc3 != undefined; ++_loc2)
        {
            var _loc4 = _loc5[_loc2];
            words.push(new com.fbpublisher.utils.search.WordInfo(_loc4));
        } // end of for
        tracer.information("PageInfo constructed" + this.__get__pageNumber());
        this.highlight();
        this.dispatchEvent(new com.fbpublisher.utils.Event(com.fbpublisher.utils.search.PageInfo.LOAD_COMPLETE, this));
    } // End of the function
    static var LOAD_COMPLETE = "PageInfo_LOAD_COMPLETE";
    var words = new Array();
    var loaded = false;
    var loading = false;
} // End of Class
#endinitclip
