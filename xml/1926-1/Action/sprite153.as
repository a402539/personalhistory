// Action script...

// [Initial MovieClip Action of sprite 153]
#initclip 49
class com.fbpublisher.basicskin.viewclasses.windows.SearchScrollView extends com.fbpublisher.basicskin.viewclasses.ScrollView
{
    var layout, _settings, __set__Fixed, _buttons, __get__color, contentClip, __get___height, __get___width, __set__color, __get__contentHeight, __get__items;
    function SearchScrollView(settings, clip)
    {
        super(settings, clip, settings.__get__skinColor());
        mx.events.EventDispatcher.initialize(this);
        layout = new com.fbpublisher.basicskin.viewclasses.DynamicBoxLayout();
        _settings = settings;
        this.__set__Fixed(false);
        _buttons = new Array();
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
    function set color(col)
    {
        super.__set__color(col);
        for (var _loc3 = 0; _loc3 < _buttons.length; ++_loc3)
        {
            _buttons[_loc3].color = col;
        } // end of for
        //return (this.color());
        null;
    } // End of the function
    function addItems(array)
    {
        var _loc6 = array.length;
        for (var _loc2 = 0; _loc2 < _loc6 && _loc2 < 100; ++_loc2)
        {
            var _loc5 = array[_loc2];
            var _loc4 = contentClip.createEmptyMovieClip("clip" + level, level++);
            var _loc3 = new com.fbpublisher.basicskin.viewclasses.buttons.SearchButton(_loc5.__get__page() + 1, _loc5.__get__fragment(), _settings, _loc4);
            _loc3.addEventListener("onClick", mx.utils.Delegate.create(this, onSearchButtonClick));
            _loc3.__set___height(com.fbpublisher.basicskin.viewclasses.windows.SearchScrollView.SEARCH_BUTTON_HEIGHT);
            _buttons.push(_loc4);
            layout.pushWithoutRearrange(_loc3);
        } // end of for
        layout.arrangeElements();
    } // End of the function
    function clear()
    {
        for (var _loc2 = 0; _loc2 < _buttons.length; ++_loc2)
        {
            _buttons[_loc2].removeMovieClip();
        } // end of for
        layout.clear();
        _buttons = new Array();
    } // End of the function
    function onSearchButtonClick(object)
    {
        this.dispatchEvent({type: "onResultClick", pageNumber: object.pageNumber});
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
    function updateStyles()
    {
        for (var _loc2 = 0; _loc2 < layout.__get___items().length; ++_loc2)
        {
            layout.__get___items()[_loc2].updateStyles();
        } // end of for
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
    function get items()
    {
        return (_buttons.length);
    } // End of the function
    var level = 0;
    static var SEARCH_BUTTON_HEIGHT = 55;
} // End of Class
#endinitclip
