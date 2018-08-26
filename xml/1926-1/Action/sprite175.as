// Action script...

// [Initial MovieClip Action of sprite 175]
#initclip 71
class com.fbpublisher.basicskin.viewclasses.windows.ThumbnailsWindowContent extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var book, _library, layout, _scrollWindow, _clip, _width, _height, _settings, _backgroundShape, _pageDown, _pageUp, layoutTween;
    function ThumbnailsWindowContent(parentClip, settings, library, _book)
    {
        super(parentClip, settings);
        book = _book;
        _library = library;
        layout = new com.fbpublisher.basicskin.viewclasses.DynamicBoxLayout();
        mx.events.EventDispatcher.initialize(this);
        Mouse.addListener(this);
        this._create();
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
    function onMouseWheel(delta)
    {
        if (this._mouseOutside())
        {
            return;
        } // end if
        var _loc2 = _scrollWindow.__get__contentY() + delta * 200;
        if (_loc2 > 0)
        {
            _loc2 = 0;
        } // end if
        if (_loc2 < _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight())
        {
            _loc2 = _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight();
        } // end if
        var _loc3 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _loc2, 0.500000, true);
        _scrollWindow.loadImagesForPosition(_loc2);
    } // End of the function
    function _mouseOutside()
    {
        var _loc3 = {x: _root._xmouse, y: _root._ymouse};
        _clip.globalToLocal(_loc3);
        return (_loc3.x < 0 || _loc3.y < 0 || _loc3.x > _width || _loc3.y > _height);
    } // End of the function
    function reloadImages()
    {
        _scrollWindow.reloadImages();
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function updateStyles()
    {
        _scrollWindow.updateStyles();
    } // End of the function
    function updateSkinColor()
    {
        _backgroundShape.__set__color(_settings.skinColor);
        _scrollWindow.__set__color(_settings.skinColor);
        _pageDown.__set__color(_settings.skinColor);
        _pageUp.__set__color(_settings.skinColor);
    } // End of the function
    function _create()
    {
        this._createBackground();
        this._createLayoutContent();
    } // End of the function
    function invertThumbnails()
    {
    } // End of the function
    function _onDownButtonPress()
    {
    } // End of the function
    function _createLayoutContent()
    {
        var _loc3 = _clip.createEmptyMovieClip("pageDown", level++);
        _pageDown = new com.fbpublisher.basicskin.viewclasses.buttons.PageDownButton(_loc3, _settings);
        _pageDown.addEventListener("onButtonPress", mx.utils.Delegate.create(this, _onDownButtonPress));
        _pageDown.addEventListener("onButtonPress", mx.utils.Delegate.create(this, onDownButtonPress));
        var _loc4 = _clip.createEmptyMovieClip("scrollW", level++);
        _scrollWindow = new com.fbpublisher.basicskin.viewclasses.windows.ThumbnailsScrollView(_settings, _loc4, book.__get__totalPages());
        _scrollWindow.addEventListener("onThumbnailClick", this);
        var _loc2 = _clip.createEmptyMovieClip("pageUp", level++);
        _pageUp = new com.fbpublisher.basicskin.viewclasses.buttons.PageUpButton(_loc2, _settings);
        _pageUp.addEventListener("onButtonPress", mx.utils.Delegate.create(this, onUpButtonPress));
        _pageDown.__set___height(buttonHeight + 2);
        _pageUp.__set___height(buttonHeight);
        layout.push(_pageUp);
        layout.push(_scrollWindow);
        layout.push(_pageDown);
    } // End of the function
    function onThumbnailClick(eventObject)
    {
        var _loc4 = !(eventObject.pageNumber % 2);
        var _loc2 = eventObject.pageNumber;
        var _loc3 = eventObject.pageNumber + 1;
        if (_loc4 || _loc4 == undefined)
        {
            _scrollWindow.setHighLight(_loc2, _loc3);
            this.tweenContentToThumbnail(_loc2, _loc3);
        }
        else
        {
            _scrollWindow.setHighLight(_loc2 - 1, _loc3 - 1);
            this.tweenContentToThumbnail(_loc2 - 1, _loc3 - 1);
        } // end else if
        this.dispatchEvent({type: "onThumbnailClick", pageNumber: eventObject.pageNumber});
        custom = true;
    } // End of the function
    function tweenContentToThumbnail(leftPage, rightPage)
    {
        var _loc7;
        if (!leftPage)
        {
            _loc7 = 0;
        } // end if
        if (!rightPage && !leftPage)
        {
            return;
        } // end if
        var _loc2;
        var _loc3 = 0;
        var _loc4 = 0;
        if (leftPage)
        {
            _loc3 = _loc3 + _scrollWindow.line(leftPage);
            ++_loc4;
        } // end if
        if (rightPage)
        {
            _loc3 = _loc3 + _scrollWindow.line(rightPage);
            ++_loc4;
        } // end if
        _loc3 = _loc3 / _loc4;
        _loc2 = _scrollWindow.__get___height() / 2 - (_loc3 - 0.500000) * _scrollWindow.__get__lineHeight();
        if (_loc2 > 0)
        {
            _loc2 = 0;
        } // end if
        if (_loc2 < _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight())
        {
            _loc2 = _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight();
        } // end if
        layoutTween = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _loc2, 0.500000, true);
        _scrollWindow.loadImagesForPosition(_loc2);
        custom = true;
    } // End of the function
    function onUpButtonPress(event)
    {
        var _loc3 = _scrollWindow.__get___height();
        var _loc2 = _scrollWindow.__get__contentY() + _loc3;
        if (_loc2 > 0)
        {
            _loc2 = 0;
        } // end if
        var _loc4 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _loc2, 0.500000, true);
        _scrollWindow.loadImagesForPosition(_loc2);
        custom = true;
    } // End of the function
    function onDownButtonPress(event)
    {
        var _loc3 = _scrollWindow.__get___height();
        var _loc2 = _scrollWindow.__get__contentY() - _loc3;
        if (_loc2 < _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight())
        {
            _loc2 = _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight();
        } // end if
        var _loc4 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _loc2, 0.500000, true);
        _scrollWindow.loadImagesForPosition(_loc2);
        custom = true;
    } // End of the function
    function _arrangeElements()
    {
        _backgroundShape.setSize(_width, _height);
        layout.__set___width(_width);
        layout.__set___height(_height);
        this.tweenContentToThumbnail(_settings.__get__leftPageNumber(), _settings.__get__rightPageNumber());
    } // End of the function
    function _createBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("background", 0);
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, _width, _height);
        _backgroundShape.__set__cornerRadius(0);
        _backgroundShape.__set__color(_settings.skinColor);
        _backgroundShape.__set__gradientFromColor(16777215);
        _backgroundShape.__set__gradientFromAlpha(75 * _settings.__get__windowBackgroundOpacity());
        _backgroundShape.__set__gradientToColor(16777215);
        _backgroundShape.__set__gradientToAlpha(80 * _settings.__get__windowBackgroundOpacity());
    } // End of the function
    function onPageChanged()
    {
        this.tweenContentToThumbnail(_settings.__get__leftPageNumber(), _settings.__get__rightPageNumber());
        _scrollWindow.updateHighLight();
    } // End of the function
    function rightToLeftChanged()
    {
        _scrollWindow.rightToLeftChanged();
    } // End of the function
    var _componentClipName = "thumbnailsWindowContent";
    var ready = false;
    var level = 2;
    var page = 0;
    var buttonHeight = 20;
    var custom = false;
} // End of Class
#endinitclip
