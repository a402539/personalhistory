// Action script...

// [Initial MovieClip Action of sprite 116]
#initclip 12
class com.fbpublisher.utils.search.Index extends com.fbpublisher.utils.EventDispatcher
{
    var _xml, __get__loaded, dispatchEvent, _pages, index, __get__loading;
    static var _singleton, __get__singleton;
    function Index()
    {
        super();
        _xml = new XML();
        this.load();
    } // End of the function
    function addEventListener(type, listener)
    {
        super.addEventListener(type, listener);
        if (type == com.fbpublisher.utils.search.Index.LOAD_COMPLETE && this.__get__loaded())
        {
            this.dispatchEvent(new com.fbpublisher.utils.Event(com.fbpublisher.utils.search.Index.LOAD_COMPLETE, this));
        } // end if
    } // End of the function
    function get loaded()
    {
        return (_loaded);
    } // End of the function
    function get loading()
    {
        return (_loading);
    } // End of the function
    function buildFragment(content, i0, i1, query)
    {
        var _loc8 = Math.abs(i1 - i0);
        var _loc4 = Math.max(com.fbpublisher.utils.search.Index.MAX_SEGMENT_SIZE - _loc8, 0) / 2;
        var _loc3 = com.fbpublisher.utils.StringUtils.replaceAll(com.fbpublisher.utils.StringUtils.replaceAll(content.substring(Math.max(0, i0 - _loc4), Math.min(content.length, i1 + _loc4)), String.fromCharCode(10), " "), String.fromCharCode(13), "");
        if (i0 - _loc4 > 0)
        {
            _loc3 = "..." + _loc3;
        } // end if
        if (content.length - 1 > i1 + _loc4)
        {
            _loc3 = _loc3 + "...";
        } // end if
        for (var _loc1 = 0; _loc1 < query.length && query != undefined; ++_loc1)
        {
            _loc3 = com.fbpublisher.utils.StringUtils.replaceAll(_loc3, query[_loc1], "<font size=\"+2\"><b>" + query[_loc1] + "</b></font>");
        } // end of for
        return (_loc3);
    } // End of the function
    function searchFullCoincidence(result, query, content, pageNumber)
    {
        var _loc6 = -1;
        var _loc4 = -1;
        while (_loc6 = content.indexOf(query, _loc6 + 1), content.indexOf(query, _loc6 + 1) >= 0)
        {
            _loc4 = _loc6;
            if (_loc6 > 0 && _loc6 < content.length - 1 && !(com.fbpublisher.utils.StringUtils.isSplitter(content.charAt(_loc6 - 1)) && com.fbpublisher.utils.StringUtils.isSplitter(content.charAt(_loc6 + query.length))))
            {
                continue;
            } // end if
            var _loc8 = this.buildFragment(content, _loc6, _loc6 + query.length, [query]);
            result.push(new com.fbpublisher.utils.search.ResultItem(pageNumber, _loc8, 0));
            return (true);
        } // end while
        if (_loc4 >= 0)
        {
            _loc8 = this.buildFragment(content, _loc4, _loc4 + query.length, [query]);
            result.push(new com.fbpublisher.utils.search.ResultItem(pageNumber, _loc8, 1));
            return (true);
        } // end if
        return (false);
        _loc6 = content.indexOf(query);
        if (_loc6 >= 0)
        {
            _loc8 = this.buildFragment(content, _loc6, _loc6 + query.length, [query]);
            if (_loc6 > 0 && _loc6 < content.length - 1 && !(com.fbpublisher.utils.StringUtils.isSplitter(content.charAt(_loc6 - 1)) && com.fbpublisher.utils.StringUtils.isSplitter(content.charAt(_loc6 + query.length))))
            {
                result.push(new com.fbpublisher.utils.search.ResultItem(pageNumber, _loc8, 1));
            }
            else
            {
                result.push(new com.fbpublisher.utils.search.ResultItem(pageNumber, _loc8, 0));
            } // end else if
            return (true);
        } // end if
        return (false);
    } // End of the function
    function buildIndexes(query, wordArrayLength, content)
    {
        var _loc7 = new Array();
        for (var _loc3 = 0; _loc3 < wordArrayLength && wordArrayLength != undefined; ++_loc3)
        {
            var _loc2 = new Array();
            var _loc4 = query[_loc3];
            var _loc1 = -com.fbpublisher.utils.search.Index.MIN_WORD;
            while (_loc1 != -1)
            {
                _loc1 = content.indexOf(_loc4, _loc1 + com.fbpublisher.utils.search.Index.MIN_WORD);
                if (_loc1 != -1)
                {
                    _loc2.push(_loc1);
                } // end if
            } // end while
            if (_loc2.length > 0)
            {
                _loc7.push(_loc2);
            } // end if
        } // end of for
        return (_loc7);
    } // End of the function
    function searchPartiallyCoincidence(result, query, content, pageNumber, wordArrayLength, queryLength)
    {
        var _loc12 = this.buildIndexes(query, wordArrayLength, content);
        if (_loc12.length == 0 || _loc12 == undefined)
        {
            return;
        } // end if
        var _loc20 = 0;
        var _loc7 = new Array(_loc12.length);
        for (var _loc13 = 0; _loc13 < _loc12.length; ++_loc13)
        {
            _loc7[_loc13] = _loc12[_loc13][0];
        } // end of for
        for (var _loc6 = 0; _loc6 < _loc12.length - 1; ++_loc6)
        {
            var _loc9 = 1000;
            var _loc16 = _loc12[_loc6];
            var _loc14 = _loc12[_loc6 + 1];
            var _loc17 = _loc16.length;
            var _loc11 = _loc14.length;
            for (var _loc8 = 0; _loc8 < _loc17 && _loc17 != undefined; ++_loc8)
            {
                for (var _loc4 = 0; _loc4 < _loc11 && _loc11 != undefined; ++_loc4)
                {
                    var _loc3 = _loc16[_loc8];
                    var _loc2 = _loc14[_loc4];
                    var _loc15 = _loc2 > _loc3 ? (1) : (2);
                    var _loc10 = _loc2 > _loc3 ? (_loc2 - _loc3) : (_loc3 - _loc2);
                    var _loc5 = _loc10 * _loc15;
                    if (_loc5 < _loc9)
                    {
                        _loc7[_loc6] = _loc3;
                        _loc7[_loc6 + 1] = _loc2;
                        _loc9 = _loc5;
                    } // end if
                } // end of for
            } // end of for
            _loc20 = _loc20 + _loc9;
        } // end of for
        var _loc19 = 10000;
        var _loc18 = 0;
        for (var _loc15 = 0; _loc15 < _loc7.length && _loc7 != undefined; ++_loc15)
        {
            _loc19 = Math.min(_loc19, _loc7[_loc15]);
            _loc18 = Math.max(_loc18, _loc7[_loc15]);
        } // end of for
        var _loc21 = this.buildFragment(content, _loc19, _loc18 + queryLength, query);
        _loc20 = _loc20 + (wordArrayLength - _loc12.length) * 1000;
        result.push(new com.fbpublisher.utils.search.ResultItem(pageNumber, _loc21, _loc20));
    } // End of the function
    function search(query)
    {
        tracer.information("search started...");
        var _loc11 = new Date().getTime();
        if (query.length < com.fbpublisher.utils.search.Index.MIN_WORD)
        {
            return ([]);
        } // end if
        var _loc8 = com.fbpublisher.utils.StringUtils.getWordArray(query, com.fbpublisher.utils.search.Index.MIN_WORD);
        var _loc5 = _loc8.length;
        var _loc6 = _pages.length;
        var _loc4 = new Array();
        for (var _loc2 = 0; _loc2 < _loc6 && _loc6 != undefined; ++_loc2)
        {
            var _loc3 = _pages[_loc2];
            if (_loc3 == undefined || this.searchFullCoincidence(_loc4, query, _loc3, _loc2))
            {
                continue;
            } // end if
            if (_loc5 > 1)
            {
                this.searchPartiallyCoincidence(_loc4, _loc8, _loc3, _loc2, _loc5, query.length);
            } // end if
        } // end of for
        var _loc10 = new Date().getTime();
        _loc4.sort(compare);
        var _loc9 = new Date().getTime();
        tracer.information("search ended...");
        return (_loc4);
    } // End of the function
    function compare(A, B)
    {
        if (A.__get__relevant() < B.__get__relevant())
        {
            return (-1);
        } // end if
        if (A.__get__relevant() > B.__get__relevant())
        {
            return (1);
        } // end if
        if (A.__get__page() < B.__get__page())
        {
            return (-1);
        } // end if
        if (A.__get__page() > B.__get__page())
        {
            return (1);
        } // end if
        return (0);
    } // End of the function
    function onLoad(success)
    {
        tracer.information("search index load complete:" + success);
        if (!success)
        {
            _loading = false;
            this.dispatchEvent(new com.fbpublisher.utils.Event(com.fbpublisher.utils.search.Index.LOAD_COMPLETE, this));
            return;
        } // end if
        var _loc4 = _xml.firstChild;
        var _loc7;
        var _loc3;
        for (var _loc3 = 0; _loc3 < _loc4.childNodes.length; ++_loc3)
        {
            if (_loc4.childNodes[_loc3].nodeType == 1)
            {
                _loc7 = _loc4.childNodes[_loc3];
            } // end if
        } // end of for
        var _loc8 = _loc7.childNodes;
        var _loc6 = _loc7.childNodes.length;
        _pages = new Array(_loc7.attributes.Count);
        for (var _loc3 = 0; _loc3 < _loc6 && _loc6 != undefined; ++_loc3)
        {
            var _loc2 = _loc8[_loc3];
            if (_loc2.nodeType == 1)
            {
                var _loc5 = _loc2.attributes.Number;
                _pages[_loc5 - 1] = _loc2.firstChild.nodeValue;
            } // end if
        } // end of for
        _loaded = true;
        _loading = false;
        com.fbpublisher.utils.search.BookInfo.__get__singleton().init(_loc7.attributes.Count);
        tracer.information("search index constructed...");
        this.dispatchEvent(new com.fbpublisher.utils.Event(com.fbpublisher.utils.search.Index.LOAD_COMPLETE, this));
    } // End of the function
    function load()
    {
        if (com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchEnabled())
        {
            tracer.information("search index load started...");
            _loading = true;
            _loaded = false;
            this.dispatchEvent(new com.fbpublisher.utils.Event(com.fbpublisher.utils.search.Index.LOAD_START, this));
            _xml.load(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchUrl() + "/" + com.fbpublisher.utils.search.Index.INDEX_XML);
            _xml.index = this;
            _xml.onLoad = function (success)
            {
                index.onLoad(success);
            };
        } // end if
    } // End of the function
    static function get singleton()
    {
        if (!com.fbpublisher.utils.search.Index._singleton)
        {
            _singleton = new com.fbpublisher.utils.search.Index();
        } // end if
        return (com.fbpublisher.utils.search.Index._singleton);
    } // End of the function
    static var LOAD_COMPLETE = "Index_LOAD_COMPLETE";
    static var LOAD_START = "Index_LOAD_START";
    static var INDEX_XML = "searchtext.xml";
    static var MAX_SEGMENT_SIZE = 80;
    var _loaded = false;
    var _loading = false;
    static var MIN_WORD = 3;
} // End of Class
#endinitclip
