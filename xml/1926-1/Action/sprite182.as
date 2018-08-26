// Action script...

// [Initial MovieClip Action of sprite 182]
#initclip 78
class com.fbpublisher.basicskin.viewclasses.windows.BookmarkScrollView extends com.fbpublisher.basicskin.viewclasses.ScrollView
{
    var layout, _settings, urls, __set__Fixed, _pages, contentClip, __get___height, __get___width, __get__bookmarkPages, __get__bookmarks, __get__contentHeight, __get__items;
    function BookmarkScrollView(settings, clip)
    {
        super(settings, clip, settings.__get__skinColor());
        mx.events.EventDispatcher.initialize(this);
        layout = new com.fbpublisher.basicskin.viewclasses.DynamicBoxLayout();
        _settings = settings;
        urls = settings.thumbnails;
        if (settings.__get__invertPagesSet())
        {
            urls.reverse();
        } // end if
        this.__set__Fixed(false);
        _pages = new Array();
    } // End of the function
    function addEventListener()
    {
    } // End of the function
    function removerEventListener()
    {
    } // End of the function
    function dispatchEvent()
    {
    } // End of the function
    function updateStyles()
    {
        for (var _loc2 = 0; _loc2 < layout.__get___items().length; ++_loc2)
        {
            layout.__get___items()[_loc2].updateStyles();
        } // end of for
    } // End of the function
    function updateTexts()
    {
        for (var _loc2 = 0; _loc2 < layout.__get___items().length; ++_loc2)
        {
            layout.__get___items()[_loc2].updateTexts();
        } // end of for
    } // End of the function
    function reloadImages()
    {
        urls = _settings.thumbnails;
        if (_settings.__get__invertPagesSet())
        {
            urls.reverse();
        } // end if
        this.removeBookmarks();
        _pages.splice(0, _pages.length);
    } // End of the function
    function invertImages()
    {
        var _loc4 = new Array();
        for (var _loc2 = 0; _loc2 < _pages.length; ++_loc2)
        {
            _loc4[_loc2] = _pages[_loc2];
            if (_pages[_loc2].left)
            {
                this.removeItem(_pages[_loc2].left);
            } // end if
            if (_pages[_loc2].right)
            {
                this.removeItem(_pages[_loc2].right);
            } // end if
        } // end of for
        _pages.splice(0, _pages.length);
        for (var _loc3 = 0; _loc3 < _loc4.length; ++_loc3)
        {
            var _loc7 = urls.length - _loc4[_loc3].left;
            var _loc6 = urls.length - _loc4[_loc3].right;
            var _loc5 = _loc4[_loc3].text;
            this.addItem(_loc7, _loc6, _loc5);
        } // end of for
    } // End of the function
    function removeBookmarks()
    {
        for (var _loc3 = 0; _loc3 < layout.__get___items().length; ++_loc3)
        {
            var _loc4 = layout.__get___items()[_loc3].pageNumber;
            layout.__get___items()[_loc3].deleteClip();
            layout.removeAt(_loc3);
            for (var _loc2 = 0; _loc2 < _pages.length; ++_loc2)
            {
                if (_pages[_loc2].left == _loc4 || _pages[_loc2].right == _loc4)
                {
                    _pages.splice(_loc2, 1);
                    break;
                } // end if
            } // end of for
            this.dispatchEvent({type: "onContentChanged"});
            return;
        } // end of for
    } // End of the function
    function addItem(left, right, title)
    {
        var _loc3;
        if (left)
        {
            _loc3 = left;
        }
        else if (right)
        {
            _loc3 = right;
        } // end else if
        for (var _loc2 = 0; _loc2 < layout.__get___items().length; ++_loc2)
        {
            if (layout.__get___items()[_loc2].pageNumber == _loc3)
            {
                layout.__get___items()[_loc2].text = title;
                return;
            } // end if
        } // end of for
        var _loc6 = contentClip.createEmptyMovieClip("clip" + level, level++);
        var _loc5 = new com.fbpublisher.basicskin.viewclasses.buttons.BookmarkButton(urls[left - 1], urls[right - 1], title, _loc3, _settings, _loc6);
        _loc5.addEventListener("onClick", mx.utils.Delegate.create(this, onBookmarkClick));
        _pages.push({left: left, right: right, text: title});
        layout.push(_loc5);
        this.dispatchEvent({type: "onContentChanged"});
    } // End of the function
    function get bookmarks()
    {
        return (_pages);
    } // End of the function
    function get items()
    {
        //return (layout.length());
    } // End of the function
    function onBookmarkClick(object)
    {
        this.dispatchEvent({type: "onBookmarkClick", pageNumber: object.pageNumber});
    } // End of the function
    function removeItem(pageNumber)
    {
        for (var _loc3 = 0; _loc3 < layout.__get___items().length; ++_loc3)
        {
            if (layout.__get___items()[_loc3].pageNumber == pageNumber)
            {
                layout.__get___items()[_loc3].deleteClip();
                layout.removeAt(_loc3);
                for (var _loc2 = 0; _loc2 < _pages.length; ++_loc2)
                {
                    if (_pages[_loc2].left == pageNumber || _pages[_loc2].right == pageNumber)
                    {
                        _pages.splice(_loc2, 1);
                        break;
                    } // end if
                } // end of for
                this.dispatchEvent({type: "onContentChanged"});
                return;
            } // end if
        } // end of for
    } // End of the function
    function get contentHeight()
    {
        if (layout.__get___height() > this.__get___height())
        {
            //return (layout._height());
        }
        else
        {
            //return (this._height());
        } // end else if
    } // End of the function
    function setSize(width, height)
    {
        if (width == this.__get___width() && height == this.__get___height())
        {
            return;
        } // end if
        layout.__set___height(height);
        layout.__set___width(width);
        super.setSize(width, height);
        this.dispatchEvent({type: "onContentChanged"});
    } // End of the function
    function get bookmarkPages()
    {
        return (_pages);
    } // End of the function
    var level = 0;
} // End of Class
#endinitclip
