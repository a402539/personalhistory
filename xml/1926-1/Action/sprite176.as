// Action script...

// [Initial MovieClip Action of sprite 176]
#initclip 72
class com.fbpublisher.basicskin.viewclasses.windows.ThumbnailsScrollView extends com.fbpublisher.basicskin.viewclasses.ScrollView
{
    var layout, _settings, thumbNails, urls, __set__Fixed, totalPages, index, contentClip, myInterval, __get___height, __get___width, __get__contentY, __get__contentHeight, __get__lineHeight;
    function ThumbnailsScrollView(settings, clip, _totalPages)
    {
        super(settings, clip, settings.__get__skinColor());
        mx.events.EventDispatcher.initialize(this);
        layout = new com.fbpublisher.basicskin.viewclasses.StaticGridLayout(0, 2);
        var _loc4 = buttonWidth / (settings.__get__bookWidth() / 2);
        buttonHeight = settings.__get__bookHeight() * _loc4;
        layout.setItemSize(buttonWidth + 5, buttonHeight + 25);
        layout.__set__rightToLeft(_settings.rightToLeft);
        layout.__set___x(20);
        layout.__set___y(10);
        _settings = settings;
        thumbNails = new Array();
        urls = settings.thumbnails;
        if (settings.__get__invertPagesSet())
        {
            urls.reverse();
        } // end if
        this.__set__Fixed(false);
        totalPages = _totalPages;
        index = 0;
        this._createThumbnails();
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
        for (var _loc2 = 0; _loc2 < thumbNails.length; ++_loc2)
        {
            thumbNails[_loc2].updateStyles();
        } // end of for
    } // End of the function
    function reloadImages()
    {
        for (var _loc2 = 0; _loc2 < thumbNails.length; ++_loc2)
        {
            thumbNails[_loc2].clip.removeMovieClip();
        } // end of for
        layout.clear();
        thumbNails.splice(0, thumbNails.length);
        urls = _settings.thumbnails;
        var _loc3 = buttonWidth / (_settings.__get__bookWidth() / 2);
        buttonHeight = _settings.__get__bookHeight() * _loc3;
        layout.setItemSize(buttonWidth + 5, buttonHeight + 25);
        this._createThumbnails();
    } // End of the function
    function _createThumbnails()
    {
        var _loc2 = contentClip.createEmptyMovieClip("pageButtonSpacer", level++);
        var _loc3 = new com.fbpublisher.basicskin.viewclasses.VisualComponent(_loc2, _settings);
        _loc3.setSize(buttonWidth, buttonHeight);
        layout.push(_loc2);
        index = 0;
        myInterval = setInterval(this, "thumbnailsCreator", 20);
    } // End of the function
    function thumbnailsCreator()
    {
        for (var _loc4 = 0; index < urls.length && _loc4 < 20; ++_loc4)
        {
            var _loc3 = contentClip.createEmptyMovieClip("pageButton" + level, level++);
            var _loc2 = new com.fbpublisher.basicskin.viewclasses.buttons.ThumbnailButton(urls[index], index + 1, _loc3, _settings);
            _loc2.addEventListener("onThumbnailClick", this);
            _loc2.addEventListener("onThumbnailInited", this);
            _loc2.setSize(buttonWidth, buttonHeight);
            thumbNails.push(_loc2);
            layout.push(_loc3);
            (++index);
        } // end of for
        if (index >= urls.length)
        {
            clearInterval(myInterval);
            this.thumbnailsCreated();
        } // end if
    } // End of the function
    function thumbnailsCreated()
    {
        for (var _loc2 = 0; _loc2 < 20; ++_loc2)
        {
            thumbNails[_loc2].init();
        } // end of for
    } // End of the function
    function loadImages(page)
    {
        for (var _loc2 = 0; _loc2 < 10; ++_loc2)
        {
            if (page + _loc2 < thumbNails.length)
            {
                thumbNails[page + _loc2].init();
            } // end if
            if (page - _loc2 >= 0)
            {
                thumbNails[page - _loc2].init();
            } // end if
        } // end of for
    } // End of the function
    function loadCenterImages()
    {
        var _loc2 = this.centerThumbnail();
        this.loadImages(_loc2);
    } // End of the function
    function loadImagesForPosition(_newContentY)
    {
        var _loc2 = this.centerThumbnailForPosition(_newContentY);
        this.loadImages(_loc2);
    } // End of the function
    function line(value)
    {
        return (layout.line(value));
    } // End of the function
    function get lineHeight()
    {
        //return (layout.lineHeight());
    } // End of the function
    function updateHighLight()
    {
        this.setHighLight(_settings.__get__leftPageNumber(), _settings.__get__rightPageNumber());
    } // End of the function
    function setHighLight(leftPage, rightPage)
    {
        for (var _loc2 = 0; _loc2 < thumbNails.length; ++_loc2)
        {
            if (_loc2 + 1 == leftPage || _loc2 + 1 == rightPage)
            {
                thumbNails[_loc2].selected = true;
                continue;
            } // end if
            thumbNails[_loc2].selected = false;
        } // end of for
    } // End of the function
    function onThumbnailClick(eventObject)
    {
        this.dispatchEvent({type: "onThumbnailClick", thumbnail: eventObject, pageNumber: eventObject.pageNumber});
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
        layout.update();
        super.setSize(width, height);
        this.dispatchEvent({type: "onContentChanged"});
    } // End of the function
    function centerThumbnail()
    {
        var _loc2 = -this.__get__contentY() / layout.__get__lineHeight();
        //return (Math.round(_loc2 * layout.colums()));
    } // End of the function
    function centerThumbnailForPosition(_newContentY)
    {
        var _loc2 = -_newContentY / layout.__get__lineHeight();
        //return (Math.round(_loc2 * layout.colums()));
    } // End of the function
    function rightToLeftChanged()
    {
        layout.__set__rightToLeft(_settings.rightToLeft);
    } // End of the function
    var level = 0;
    var buttonWidth = 110;
    var buttonHeight = 145;
    var initItterator = 0;
} // End of Class
#endinitclip
