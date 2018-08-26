// Action script...

// [Initial MovieClip Action of sprite 165]
#initclip 61
class com.fbpublisher.basicskin.viewclasses.Background extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _clip, _shapeClip, _imageClip, _maskClip, _settings, _library, hide, _width, _height;
    function Background(parentClip, settings, library)
    {
        super(parentClip, settings);
        _shapeClip = _clip.createEmptyMovieClip("shape", 0);
        _imageClip = _clip.createEmptyMovieClip("image", 1);
        _maskClip = _clip.createEmptyMovieClip("mask", 2);
        _settings = settings;
        _library = library;
        this.create();
        this.hide();
        mx.events.EventDispatcher.initialize(this);
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
    function setSize(width, height)
    {
        _width = width;
        _height = height;
        this._resizeObjects();
    } // End of the function
    function setColor(newColor)
    {
        var _loc2 = new Color(_shapeClip);
        _loc2.setRGB(newColor);
    } // End of the function
    function loadBackgroundImage()
    {
        _imageClip._xscale = _imageClip._yscale = 100;
        _imageClip = _clip.createEmptyMovieClip("image", 1);
        if (_settings.__get__applicationBackgroundImage() != "")
        {
            var _loc2 = _imageClip.attachMovie(_settings.__get__applicationBackgroundImage(), "symbol", 0);
            if (_loc2 == undefined)
            {
                _library.loadImage(_imageClip, _settings.__get__applicationBackgroundImage(), this);
            }
            else
            {
                this.onLoadItemComplete({loadObject: {_url: _settings.__get__applicationBackgroundImage()}});
            } // end else if
        }
        else
        {
            ready = true;
            imageLoaded = false;
        } // end else if
    } // End of the function
    function create()
    {
        _width = Stage.width;
        _height = Stage.height;
        this.drawRectangle(_shapeClip);
        this.drawRectangle(_maskClip);
        _maskClip._visible = false;
        this.loadBackgroundImage();
    } // End of the function
    function drawRectangle(clip)
    {
        clip.clear();
        clip.lineStyle(0, 0, 0);
        clip.beginFill(_settings.__get__applicationBackgroundColor(), 100);
        clip.moveTo(0, 0);
        clip.lineTo(_width, 0);
        clip.lineTo(_width, _height);
        clip.lineTo(0, _height);
        clip.lineTo(0, 0);
        clip.endFill();
    } // End of the function
    function onLoadItemComplete(evt)
    {
        if (evt.loadObject._url == _settings.__get__applicationBackgroundImage())
        {
            _settings._backgroundImageInitialWidth = _imageClip._width;
            _settings._backgroundImageInitialHeight = _imageClip._height;
            _imageClip.setMask(_maskClip);
            imageLoaded = true;
            this._resizeObjects();
            ready = true;
            this.dispatchEvent({type: "onObjectReady"});
        } // end if
    } // End of the function
    function onLoadItemError(evt)
    {
        if (evt.loadObject._url == _settings.__get__applicationBackgroundImage())
        {
            imageLoaded = false;
            ready = true;
            this.dispatchEvent({type: "onObjectReady"});
        } // end if
    } // End of the function
    function _resizeObjects()
    {
        _shapeClip._width = _width;
        _shapeClip._height = _height;
        if (imageLoaded)
        {
            _maskClip._width = _width;
            _maskClip._height = _height;
            this._scaleImage();
        } // end if
    } // End of the function
    function _scaleImage()
    {
        if (_imageClip._width <= 0 || _imageClip._height <= 0)
        {
            return;
        } // end if
        switch (_settings.__get__applicationBackgroundPlacement())
        {
            case "fit":
            {
                _imageClip._width = _width;
                _imageClip._height = _height;
                _imageClip._x = 0;
                _imageClip._y = 0;
                break;
            } 
            case "center":
            {
                _imageClip._width = _settings._backgroundImageInitialWidth;
                _imageClip._height = _settings._backgroundImageInitialHeight;
                _imageClip._x = Math.round(_width / 2 - _imageClip._width / 2);
                _imageClip._y = Math.round(_height / 2 - _imageClip._height / 2);
                break;
            } 
            case "fill":
            {
                var _loc2 = _settings._backgroundImageInitialHeight / _settings._backgroundImageInitialWidth;
                var _loc4 = _width / _settings._backgroundImageInitialWidth;
                var _loc3 = _height / _settings._backgroundImageInitialHeight;
                if (_loc4 > _loc3)
                {
                    _imageClip._width = _width;
                    _imageClip._height = _imageClip._width * _loc2;
                }
                else
                {
                    _imageClip._height = _height;
                    _imageClip._width = _imageClip._height / _loc2;
                } // end else if
                _imageClip._x = Math.round(_width / 2 - _imageClip._width / 2);
                _imageClip._y = Math.round(_height / 2 - _imageClip._height / 2);
                break;
            } 
        } // End of switch
    } // End of the function
    var ready = false;
    var _componentClipName = "background";
    var imageLoaded = false;
} // End of Class
#endinitclip
