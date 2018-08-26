// Action script...

// [Initial MovieClip Action of sprite 206]
#initclip 102
class com.fbpublisher.basicskin.viewclasses.BookNavigation extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var hide, _settings, _width, _height, _leftButton, _rightButton, __get__skinColor, __get__zoomedIn, _clip, __get__buttonWidth, __set__skinColor, __set__zoomedIn;
    function BookNavigation(parentClip, settings)
    {
        super(parentClip, settings);
        this._create();
        this.hide();
        mx.events.EventDispatcher.initialize(this);
        _settings.__set__navigationButtonWidth(_buttonWidth);
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
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function get buttonWidth()
    {
        return (_buttonWidth);
    } // End of the function
    function set skinColor(newColor)
    {
        _leftButton.__set__skinColor(newColor);
        _rightButton.__set__skinColor(newColor);
        //return (this.skinColor());
        null;
    } // End of the function
    function updateButtons(previousPageNumber, nextPageNumber, functionType, zoomedIn)
    {
        var _loc6 = _settings.__get__totalVisiblePages();
        var _loc3 = previousPageNumber <= _settings.__get__totalVisiblePages() && previousPageNumber > 0 && !isNaN(previousPageNumber);
        var _loc2 = nextPageNumber > 0 && nextPageNumber <= _settings.__get__totalVisiblePages() && !isNaN(nextPageNumber);
        switch (functionType)
        {
            case "putPage":
            {
                if (!zoomedIn)
                {
                    if (_loc3)
                    {
                        _leftButton.show(true);
                    } // end if
                    if (_loc2)
                    {
                        _rightButton.show(true);
                    } // end if
                } // end if
                break;
            } 
            case "startFlip":
            {
                if (!_loc3)
                {
                    _leftButton.show(false);
                } // end if
                if (!_loc2)
                {
                    _rightButton.show(false);
                } // end if
                break;
            } 
            case "flipBack":
            {
                if (_loc3)
                {
                    _leftButton.show(true);
                } // end if
                if (_loc2)
                {
                    _rightButton.show(true);
                } // end if
                break;
            } 
            case "zoomSwitch":
            {
                if (_loc3)
                {
                    _leftButton.show(true);
                }
                else
                {
                    _leftButton.show(false);
                } // end else if
                if (_loc2)
                {
                    _rightButton.show(true);
                }
                else
                {
                    _rightButton.show(false);
                } // end else if
                break;
            } 
            case "zoomOut":
            {
                if (_loc3)
                {
                    _leftButton.show(true);
                }
                else
                {
                    _leftButton.show(false);
                } // end else if
                if (_loc2)
                {
                    _rightButton.show(true);
                }
                else
                {
                    _rightButton.show(false);
                } // end else if
                break;
            } 
        } // End of switch
    } // End of the function
    function get zoomedIn()
    {
        return (_zoomedIn);
    } // End of the function
    function set zoomedIn(zoomed)
    {
        _zoomedIn = zoomed;
        this._updateZoomStyle();
        //return (this.zoomedIn());
        null;
    } // End of the function
    function _create()
    {
        this._createButtons();
        this._arrangeElements();
    } // End of the function
    function _createButtons()
    {
        var _loc2 = _clip.createEmptyMovieClip("previous", _clip.getNextHighestDepth());
        _leftButton = new com.fbpublisher.basicskin.viewclasses.NavigationButton(_loc2, "back");
        _leftButton.__set__skinColor(_settings.skinColor);
        _leftButton.setCustomCornerRadius(7, "top-left");
        _leftButton.setCustomCornerRadius(7, "bottom-left");
        _leftButton.addEventListener("onRelease", mx.utils.Delegate.create(this, onLeftButtonRelease));
        _leftButton.show(false);
        var _loc3 = _clip.createEmptyMovieClip("next", _clip.getNextHighestDepth());
        _rightButton = new com.fbpublisher.basicskin.viewclasses.NavigationButton(_loc3, "forward");
        _rightButton.__set__skinColor(_settings.skinColor);
        _rightButton.setCustomCornerRadius(7, "top-right");
        _rightButton.setCustomCornerRadius(7, "bottom-right");
        _rightButton.addEventListener("onRelease", mx.utils.Delegate.create(this, onRightButtonRelease));
        _rightButton.show(false);
    } // End of the function
    function _arrangeElements()
    {
        _leftButton.setSize(_buttonWidth, _height);
        _leftButton.__set__x(0);
        _leftButton.__set__y(0);
        _rightButton.setSize(_buttonWidth, _height);
        _rightButton.__set__x(_width - _buttonWidth);
        _rightButton.__set__y(0);
    } // End of the function
    function _updateZoomStyle()
    {
        if (_zoomedIn)
        {
            _leftButton.setCustomCornerRadius(0, "top-left");
            _leftButton.setCustomCornerRadius(0, "bottom-left");
            _rightButton.setCustomCornerRadius(0, "top-right");
            _rightButton.setCustomCornerRadius(0, "bottom-right");
        }
        else
        {
            _leftButton.setCustomCornerRadius(7, "top-left");
            _leftButton.setCustomCornerRadius(7, "bottom-left");
            _rightButton.setCustomCornerRadius(7, "top-right");
            _rightButton.setCustomCornerRadius(7, "bottom-right");
        } // end else if
    } // End of the function
    function onLeftButtonRelease()
    {
        this.dispatchEvent({type: "onNavigationButtonRelease", forward: false});
    } // End of the function
    function onRightButtonRelease()
    {
        this.dispatchEvent({type: "onNavigationButtonRelease", forward: true});
    } // End of the function
    var _componentClipName = "bookNavigation";
    var _buttonWidth = 24;
    var _zoomedIn = false;
} // End of Class
#endinitclip
