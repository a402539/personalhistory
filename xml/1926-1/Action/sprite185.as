// Action script...

// [Initial MovieClip Action of sprite 185]
#initclip 81
class com.fbpublisher.basicskin.viewclasses.windows.TOCWindowContent extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _library, _layout, _width, _height, _scrollWindow, _settings, _backgroundShape, _clip, _pageDown, _pageUp;
    function TOCWindowContent(parentClip, settings, library)
    {
        super(parentClip, settings);
        _library = library;
        _layout = new com.fbpublisher.basicskin.viewclasses.DynamicBoxLayout();
        mx.events.EventDispatcher.initialize(this);
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
    function addNode(parent, index, id, label, page)
    {
    } // End of the function
    function removeNode(id)
    {
    } // End of the function
    function editNode(id, label, page)
    {
    } // End of the function
    function moveNode(id, parent, index)
    {
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function updateTree()
    {
    } // End of the function
    function updateStyles()
    {
        _scrollWindow.updateStyles();
    } // End of the function
    function updateSkinColor()
    {
        _backgroundShape.__set__color(_settings.skinColor);
        _scrollWindow.__set__color(_settings.skinColor);
    } // End of the function
    function _create()
    {
        this._createBackground();
        this._createLayoutContent();
    } // End of the function
    function _createLayoutContent()
    {
        var _loc3 = _clip.createEmptyMovieClip("pageDown", level++);
        _pageDown = new com.fbpublisher.basicskin.viewclasses.buttons.PageDownButton(_loc3, _settings);
        _pageDown.addEventListener("onButtonPress", mx.utils.Delegate.create(this, onDownButtonPress));
        var _loc4 = _clip.createEmptyMovieClip("scrollW", level++);
        _scrollWindow = new com.fbpublisher.basicskin.viewclasses.windows.TOCScrollView(_settings, _loc4);
        _scrollWindow.addEventListener("onItemClick", this);
        _scrollWindow.addEventListener("onContentChanged", this);
        var _loc2 = _clip.createEmptyMovieClip("pageUp", level++);
        _pageUp = new com.fbpublisher.basicskin.viewclasses.buttons.PageUpButton(_loc2, _settings);
        _pageUp.addEventListener("onButtonPress", mx.utils.Delegate.create(this, onUpButtonPress));
        _pageDown.__set___visible(false);
        _pageUp.__set___visible(false);
        _pageDown.__set___height(buttonHeight + 2);
        _pageUp.__set___height(buttonHeight);
        _layout.push(_pageUp);
        _layout.push(_scrollWindow);
        _layout.push(_pageDown);
    } // End of the function
    function onItemClick(obj)
    {
        this.dispatchEvent({type: "onItemClick", pageNumber: obj.pageNumber});
    } // End of the function
    function onContentChanged(object)
    {
        if (_scrollWindow.__get__contentHeight() > _scrollWindow.__get___height())
        {
            _pageDown.__set___visible(true);
            _pageUp.__set___visible(true);
            if (_scrollWindow.__get__contentHeight() + _scrollWindow.__get__contentY() < _scrollWindow.__get___height())
            {
                var _loc2 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight(), 0.500000, true);
            } // end if
        }
        else
        {
            _pageDown.__set___visible(false);
            _pageUp.__set___visible(false);
            _loc2 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), 0, 0.500000, true);
        } // end else if
        _layout.__set___height(_height);
    } // End of the function
    function onUpButtonPress(event)
    {
        var _loc3 = _scrollWindow.__get___height() * 0.800000;
        var _loc2 = _scrollWindow.__get__contentY() + _loc3;
        if (_loc2 > 0)
        {
            _loc2 = 0;
        } // end if
        var _loc4 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _loc2, 0.500000, true);
        custom = true;
    } // End of the function
    function onDownButtonPress(event)
    {
        var _loc3 = _scrollWindow.__get___height() * 0.800000;
        var _loc2 = _scrollWindow.__get__contentY() - _loc3;
        if (_loc2 < _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight())
        {
            _loc2 = _scrollWindow.__get___height() - _scrollWindow.__get__contentHeight();
        } // end if
        var _loc4 = new mx.transitions.Tween(_scrollWindow, "contentY", mx.transitions.easing.Regular.easeOut, _scrollWindow.__get__contentY(), _loc2, 0.500000, true);
        custom = true;
    } // End of the function
    function _arrangeElements()
    {
        _backgroundShape.setSize(_width, _height);
        _layout.__set___width(_width);
        _layout.__set___height(_height);
        _scrollWindow.__set__contentY(0);
    } // End of the function
    function _createBackground()
    {
        var _loc2 = _clip.createEmptyMovieClip("background", 0);
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_loc2, 0, 0, _width, _height);
        _backgroundShape.__set__cornerRadius(0);
        _backgroundShape.__set__color(_settings.skinColor);
        _backgroundShape.__set__gradientFromColor(16777215);
        _backgroundShape.__set__gradientFromAlpha(75);
        _backgroundShape.__set__gradientToColor(16777215);
        _backgroundShape.__set__gradientToAlpha(80);
    } // End of the function
    var _componentClipName = "thumbnailsWindowContent";
    var ready = false;
    var buttonHeight = 20;
    var level = 0;
    var custom = false;
} // End of Class
#endinitclip
