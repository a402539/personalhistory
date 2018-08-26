// Action script...

// [Initial MovieClip Action of sprite 198]
#initclip 94
class com.fbpublisher.basicskin.viewclasses.windows.ImagesLoader
{
    var _loader, _parent, _urls, _movieClips, __get__images;
    function ImagesLoader()
    {
        mx.events.EventDispatcher.initialize(this);
        _loader = new MovieClipLoader();
        _loader.addListener(this);
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
    function loadImages(urls, parent)
    {
        _parent = parent;
        _urls = urls;
        _iterator = 0;
        _movieClips = new Array();
        if (_urls.length <= _iterator)
        {
            return;
        } // end if
        _movieClips[_iterator] = _parent.createEmptyMovieClip("ImagesLoaderIconClip" + (_postfix = ++com.fbpublisher.basicskin.viewclasses.windows.ImagesLoader._postfix), _parent.getNextHighestDepth());
        _loader.loadClip(_urls[_iterator], _movieClips[_iterator]);
    } // End of the function
    function onLoadInit(_mc)
    {
        ++_iterator;
        if (_urls.length <= _iterator)
        {
            this.dispatchEvent({type: "onComplete"});
            return;
        } // end if
        this.dispatchEvent({type: "onProgress", total: _urls.length, progress: _iterator});
        _movieClips[_iterator] = _parent.createEmptyMovieClip("ImagesLoaderIconClip" + (_postfix = ++com.fbpublisher.basicskin.viewclasses.windows.ImagesLoader._postfix), _parent.getNextHighestDepth());
        _loader.loadClip(_urls[_iterator], _movieClips[_iterator]);
    } // End of the function
    function onLoadComplete(_mc)
    {
        _mc._visible = false;
    } // End of the function
    function get images()
    {
        return (_movieClips);
    } // End of the function
    var _iterator = 0;
    static var _postfix = 0;
} // End of Class
#endinitclip
