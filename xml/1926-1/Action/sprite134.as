// Action script...

// [Initial MovieClip Action of sprite 134]
#initclip 30
class com.fbpublisher.basicskin.viewclasses.windows.SearchWindow extends com.fbpublisher.basicskin.viewclasses.Window
{
    var _library, _searchIndex, _content, __get__hint, _headerContent, _settings, _contentClip, __set__content, _headerContentClip, __set__headerContent, _headerHeight, _width, __get__headerContent, __get__hasFocus, __set__hint, __get__query;
    function SearchWindow(parentClip, settings, library)
    {
        super(parentClip, settings);
        _library = library;
        _searchIndex = settings.searchIndexXML;
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
    function updateTextEditColor()
    {
        _content.updateTextEditColor();
    } // End of the function
    function get hasFocus()
    {
        //return (_content.hasFocus());
    } // End of the function
    function set hint(value)
    {
        _content.__set__hint(value);
        //return (this.hint());
        null;
    } // End of the function
    function updateStyles()
    {
        _headerContent.updateStyles();
        _content.updateStyles();
    } // End of the function
    function get query()
    {
        //return (_content.query());
    } // End of the function
    function updateTitle()
    {
        _headerContent.__set__title(_settings.searchWindowTitle);
    } // End of the function
    function _create()
    {
        this.__set__content(new com.fbpublisher.basicskin.viewclasses.windows.SearchWindowContent(_contentClip, _settings, _library));
        _content.addEventListener("onObjectReady", this);
        _content.addEventListener("onResultClick", this);
        this.__set__headerContent(new com.fbpublisher.basicskin.viewclasses.windows.GenericWindowHeader(_headerContentClip, _settings, "searchIcon"));
        _headerContent.__set__title(_settings.searchWindowTitle);
        _headerContent.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, _onCloseButtonClick));
        this.__get__headerContent().setSize(_width, _headerHeight);
    } // End of the function
    function onResultClick(object)
    {
        this.dispatchEvent({type: "onResultClick", pageNumber: object.pageNumber, query: object.query});
    } // End of the function
    function onObjectReady()
    {
        this.dispatchEvent({type: "onObjectReady"});
    } // End of the function
    function _onCloseButtonClick(eventObject)
    {
        com.fbpublisher.utils.search.BookInfo.__get__singleton().clear();
        this.dispatchEvent({type: "onCloseButtonClick"});
    } // End of the function
    function search(query)
    {
        _content.addResult(query);
    } // End of the function
    function compareFunction(A, B)
    {
        if (A.position < B.position)
        {
            return (-1);
        } // end if
        if (A.position > B.position)
        {
            return (1);
        } // end if
        return (0);
    } // End of the function
    function flagsTrue(flags)
    {
        var _loc3 = 1;
        for (var _loc1 = 0; _loc1 < flags.length; ++_loc1)
        {
            _loc3 = _loc3 * flags[_loc1];
        } // end of for
        return (_loc3);
    } // End of the function
    var _ready = false;
} // End of Class
#endinitclip
