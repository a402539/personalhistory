// Action script...

// [Initial MovieClip Action of sprite 184]
#initclip 80
class com.fbpublisher.basicskin.viewclasses.windows.TOCWindow extends com.fbpublisher.basicskin.viewclasses.Window
{
    var _library, _settings, _backgroundShape, _headerShape, _content, _headerContent, _contentClip, __set__content, _headerContentClip, __set__headerContent, _headerHeight, _width;
    function TOCWindow(parentClip, settings, library)
    {
        super(parentClip, settings);
        _library = library;
        mx.events.EventDispatcher.initialize(this);
        this._create();
        this.changeBackgroundColor();
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
    function changeBackgroundColor()
    {
        _backgroundShape.__set__color(_settings.windowBackgroundColor);
        _headerShape.__set__strokeColor(_settings.windowBackgroundColor);
    } // End of the function
    function addNode(parent, index, id, label, page)
    {
        _content.addNode(parent, index, id, label, page);
    } // End of the function
    function removeNode(id)
    {
        _content.removeNode(id);
    } // End of the function
    function editNode(id, label, page)
    {
        _content.editNode(id, label, page);
    } // End of the function
    function moveNode(id, parent, index)
    {
        _content.moveNode(id, parent, index);
    } // End of the function
    function updateStyles()
    {
        _headerContent.updateStyles();
        _content.updateStyles();
    } // End of the function
    function updateTree()
    {
        _content.updateTree();
    } // End of the function
    function updateTitle()
    {
        _headerContent.__set__title(_settings.tocWindowTitle);
    } // End of the function
    function _create()
    {
        this.__set__content(new com.fbpublisher.basicskin.viewclasses.windows.TOCWindowContent(_contentClip, _settings, _library));
        _content.addEventListener("onObjectReady", this);
        _content.addEventListener("onItemClick", this);
        this.__set__headerContent(new com.fbpublisher.basicskin.viewclasses.windows.GenericWindowHeader(_headerContentClip, _settings, "bookmarksIcon"));
        _headerContent.__set__title(_settings.tocWindowTitle);
        _headerContent.addEventListener("onCloseButtonClick", mx.utils.Delegate.create(this, _onCloseButtonClick));
        _headerContent.setSize(_width, _headerHeight);
    } // End of the function
    function onItemClick(obj)
    {
        this.dispatchEvent({type: "onItemClick", pageNumber: obj.pageNumber});
    } // End of the function
    function onObjectReady()
    {
        this.dispatchEvent({type: "onObjectReady"});
    } // End of the function
    function _onCloseButtonClick(eventObject)
    {
        this.dispatchEvent({type: "onCloseButtonClick"});
    } // End of the function
    function pageNumbersChanged(eventObject)
    {
    } // End of the function
    var _ready = false;
} // End of Class
#endinitclip
