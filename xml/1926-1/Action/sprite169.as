// Action script...

// [Initial MovieClip Action of sprite 169]
#initclip 65
class com.fbpublisher.basicskin.viewclasses.windows.MainWindowContent extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _library, _clip, _permalinkClip, random, _width, _height, _permalink, __get__skinColor, _backgroundImage, __get__backgroundImage, _backgroundImagePlacement, __get__backgroundImagePlacement, _settings, _backgroundImageClip, __set__backgroundImage, __set__backgroundImagePlacement, __get__permalinkHeight, __set__skinColor;
    function MainWindowContent(parentClip, settings, library)
    {
        super(parentClip, settings);
        _library = library;
        _permalinkClip = _clip.createEmptyMovieClip("PermalinkClip", 2);
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
        trace ("onMouseWheel:" + random);
        if (this._mouseOutside())
        {
            return;
        } // end if
        var _loc2 = delta > 0 ? (-1) : (1);
        trace ("dispatchEvent({type:\'onMouseWheelOnBook\', sign:sign})");
        this.dispatchEvent({type: "onMouseWheelOnBook", sign: _loc2});
    } // End of the function
    function _mouseOutside()
    {
        var _loc3 = {x: _root._xmouse, y: _root._ymouse};
        trace ((_loc3.x > _width || _loc3.y > _height) + "||" + (_loc3.x < 0 || _loc3.y < 0));
        _clip.globalToLocal(_loc3);
        trace ((_loc3.x > _width || _loc3.y > _height) + "||" + (_loc3.x < 0 || _loc3.y < 0));
        return (_loc3.x < 0 || _loc3.y < 0 || _loc3.x > _width || _loc3.y > _height);
    } // End of the function
    function get permalinkHeight()
    {
        //return (_permalink.visibleHeight());
    } // End of the function
    function updateStyles()
    {
        _permalink.updateStyles();
    } // End of the function
    function set skinColor(newColor)
    {
        _permalink.__set__skinColor(newColor);
        //return (this.skinColor());
        null;
    } // End of the function
    function get backgroundImage()
    {
        return (_backgroundImage);
    } // End of the function
    function set backgroundImage(newImage)
    {
        _backgroundImage = newImage;
        if (_backgroundImage != "")
        {
            this._reloadImage();
        }
        else
        {
            this._removeImage();
        } // end else if
        //return (this.backgroundImage());
        null;
    } // End of the function
    function get backgroundImagePlacement()
    {
        return (_backgroundImagePlacement);
    } // End of the function
    function set backgroundImagePlacement(placement)
    {
        _backgroundImagePlacement = placement;
        this._arrangeElements();
        //return (this.backgroundImagePlacement());
        null;
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._arrangeElements();
    } // End of the function
    function showPermalinkPanel()
    {
        if (!_permalink.__get__opened())
        {
            _permalink.open();
        }
        else
        {
            _permalink.close();
        } // end else if
    } // End of the function
    function pageNumbersChanged()
    {
        var _loc2 = _settings.__get__leftPageNumber() != undefined;
        var _loc3 = _loc2 ? (_settings.__get__leftPageNumber()) : (_settings.__get__rightPageNumber());
        if (!_settings.__get__bookZoomedIn())
        {
            _permalink.__set__pageNumber(_loc3);
        }
        else
        {
            _permalink.__set__pageNumber(_settings.zoomedPageNumber);
        } // end else if
    } // End of the function
    function updatePermalinkLabel()
    {
        _permalink.__set__mainLabel(_settings.permalinkLabel);
    } // End of the function
    function updatePermalinkShareLabel()
    {
        _permalink.__set__shareLabel(_settings.permalinkShareLabel);
    } // End of the function
    function updatePermalinkCopyLabel()
    {
        _permalink.__set__copyLabel(_settings.permalinkCopyLabel);
    } // End of the function
    function updatePermalinkBaseURL()
    {
        _permalink.__set__baseURL(_settings.permalinkBaseURL);
    } // End of the function
    function updatePermalinkFocusColor()
    {
        _permalink.updateColor();
    } // End of the function
    function disablePermalink()
    {
        _permalink.disablePermalink();
    } // End of the function
    function _create()
    {
        this._createPermalink();
        this._createImage();
    } // End of the function
    function _createPermalink()
    {
        _permalink = new com.fbpublisher.basicskin.viewclasses.windows.mainwindow.PermalinkPanel(_permalinkClip, _settings);
        _permalink.addEventListener("onPermalinkShare", mx.utils.Delegate.create(this, _onPermalinkShare));
        _permalink.addEventListener("onPermalinkCopy", mx.utils.Delegate.create(this, _onPermalinkCopy));
        _permalink.addEventListener("onPermalinkSizeChanged", mx.utils.Delegate.create(this, _onPermalinkSizeChanged));
    } // End of the function
    function _createImage()
    {
        _backgroundImage = _settings.mainWindowBackgroundImage;
        _backgroundImagePlacement = _settings.mainWindowBackgroundImagePlacement;
        if (_backgroundImage != "")
        {
            this._reloadImage();
        }
        else
        {
            ready = true;
        } // end else if
    } // End of the function
    function _reloadImage()
    {
        _backgroundImageClip._xscale = _backgroundImageClip._yscale = 100;
        _backgroundImageClip = _clip.createEmptyMovieClip("image", 1);
        var _loc2 = _backgroundImageClip.attachMovie(_backgroundImage, "symbol", 0);
        if (_loc2 == undefined)
        {
            _library.loadImage(_backgroundImageClip, _backgroundImage, this);
        }
        else
        {
            this.onLoadItemComplete({loadObject: {_url: _backgroundImage}});
        } // end else if
    } // End of the function
    function _removeImage()
    {
        _backgroundImageClip._xscale = _backgroundImageClip._yscale = 100;
        _backgroundImageClip = _clip.createEmptyMovieClip("image", 1);
    } // End of the function
    function onLoadItemComplete(evt)
    {
        if (evt.loadObject._url == _backgroundImage)
        {
            this._arrangeElements();
            ready = true;
            this.dispatchEvent({type: "onObjectReady"});
        } // end if
    } // End of the function
    function onLoadItemError(evt)
    {
        if (evt.loadObject._url == _backgroundImage)
        {
            ready = true;
            this.dispatchEvent({type: "onObjectReady"});
        } // end if
    } // End of the function
    function _arrangeElements()
    {
        _permalink.__set__width(_width);
        if (_backgroundImageClip._width <= 0 || _backgroundImageClip._height <= 0)
        {
            return;
        } // end if
        if (ready)
        {
            switch (_backgroundImagePlacement)
            {
                case "fill":
                {
                    _backgroundImageClip._xscale = 100;
                    _backgroundImageClip._yscale = 100;
                    var _loc4 = _width / _backgroundImageClip._width;
                    var _loc3 = _height / _backgroundImageClip._height;
                    var _loc2 = _loc4 > _loc3 ? (_loc4) : (_loc3);
                    _backgroundImageClip._width = _backgroundImageClip._width * _loc2;
                    _backgroundImageClip._height = _backgroundImageClip._height * _loc2;
                    _backgroundImageClip._x = _width / 2 - _backgroundImageClip._width / 2;
                    _backgroundImageClip._y = _height / 2 - _backgroundImageClip._height / 2;
                    break;
                } 
                case "fit":
                {
                    _backgroundImageClip._width = _width;
                    _backgroundImageClip._height = _height;
                    _backgroundImageClip._x = 0;
                    _backgroundImageClip._y = 0;
                    break;
                } 
                case "center":
                {
                    _backgroundImageClip._xscale = 100;
                    _backgroundImageClip._yscale = 100;
                    _backgroundImageClip._x = _width / 2 - _backgroundImageClip._width / 2;
                    _backgroundImageClip._y = _height / 2 - _backgroundImageClip._height / 2;
                    break;
                } 
            } // End of switch
        } // end if
    } // End of the function
    function _onPermalinkShare(eventObject)
    {
        this.dispatchEvent({type: "onPermalinkShare", URL: eventObject.URL});
    } // End of the function
    function _onPermalinkCopy(eventObject)
    {
        this.dispatchEvent({type: "onPermalinkCopy", URL: eventObject.URL});
    } // End of the function
    function _onPermalinkSizeChanged(eventObject)
    {
        this.dispatchEvent({type: "onPermalinkSizeChanged"});
    } // End of the function
    var _componentClipName = "mainWindowContent";
    var ready = false;
} // End of Class
#endinitclip
