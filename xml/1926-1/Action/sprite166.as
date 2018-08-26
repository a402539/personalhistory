// Action script...

// [Initial MovieClip Action of sprite 166]
#initclip 62
class com.fbpublisher.basicskin.viewclasses.BottomMenu extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var hide, _settings, _backgroundShape, _width, _height, indexingLabel, _clip, textClip, _search, _hint, _menu, _navigationMenu, __get__hint, __get__cornerRadius, __get__skinColor, _menuClip, _navigationMenuClip, _backgroundClip, _y, _x, _button, __set__cornerRadius, __set__hint, __set__skinColor;
    function BottomMenu(parentClip, settings)
    {
        super(parentClip, settings);
        this.create();
        this.hide();
        mx.events.EventDispatcher.initialize(this);
        com.fbpublisher.utils.search.Index.__get__singleton().addEventListener(com.fbpublisher.utils.search.Index.LOAD_COMPLETE, mx.utils.Delegate.create(this, updateSearch));
        com.fbpublisher.utils.search.Index.__get__singleton().addEventListener(com.fbpublisher.utils.search.Index.LOAD_START, mx.utils.Delegate.create(this, updateSearch));
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
    function updateStyles()
    {
    } // End of the function
    function updateBackground()
    {
        _backgroundShape.__set__gradientToColor(_settings.menuGradientColor);
        _backgroundShape.__set__gradientToAlpha(_settings.menuGradientAlphaTo);
        _backgroundShape.__set__gradientFromAlpha(_settings.menuGradientAlphaFrom);
    } // End of the function
    function setSize(width, height)
    {
        _width = width;
        _height = height;
        this._resizeObjects();
    } // End of the function
    function createIndexingLabel()
    {
        if (!indexingLabel)
        {
            textClip = _clip.createEmptyMovieClip("text", _clip.getNextHighestDepth());
            indexingLabel = new com.fbpublisher.utils.graphics.StyleableLabel(textClip);
            indexingLabel.__set__fontColor(_settings.secondaryTextColor);
            indexingLabel.__set__fontSize(10);
            indexingLabel.__set__align("left");
            indexingLabel.__set__fill(100);
            indexingLabel.__set__dropShadowDistance(1);
            indexingLabel.__set__dropShadowSize(0);
            indexingLabel.__set__dropShadowAngle(45);
            indexingLabel.__set__dropShadowOpacity(_settings.secondaryTextShadowOpacity);
            indexingLabel.__set__dropShadowColor(_settings.secondaryTextShadowColor);
            indexingLabel.__set__antiAliasType("advanced");
            indexingLabel.__set__fontName(_settings.font1);
            indexingLabel.__set__embedFonts(true);
            indexingLabel.__set__text(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().searchLoadingText);
            textClip._visible = false;
        } // end if
    } // End of the function
    function updateSearch()
    {
        if (_settings.__get__searchEnabled())
        {
            if (com.fbpublisher.utils.search.Index.__get__singleton().__get__loaded())
            {
                _search.show();
                textClip._visible = false;
            }
            else if (com.fbpublisher.utils.search.Index.__get__singleton().__get__loading())
            {
                _search.hide();
                textClip._visible = true;
            }
            else
            {
                _search.hide();
                textClip._visible = false;
            } // end else if
        }
        else
        {
            _search.hide();
            textClip._visible = false;
        } // end else if
        this._resizeObjects();
    } // End of the function
    function get hint()
    {
        return (_hint);
    } // End of the function
    function set hint(newHint)
    {
        _hint = newHint;
        _menu.__set__hint(_hint);
        _navigationMenu.__set__hint(_hint);
        _search.__set__hint(_hint);
        //return (this.hint());
        null;
    } // End of the function
    function set cornerRadius(newRadius)
    {
        _backgroundShape.__set__cornerRadius(newRadius);
        //return (this.cornerRadius());
        null;
    } // End of the function
    function set skinColor(newColor)
    {
        _backgroundShape.__set__color(newColor);
        _menu.__set__color(newColor);
        _search.__set__skinColor(newColor);
        //return (this.skinColor());
        null;
    } // End of the function
    function updateNavigationMenu()
    {
        if (_settings.__get__navigationMenuEnabled())
        {
            if (_settings.__get__rightToLeft())
            {
                _navigationMenu.addItem("pagebegin", 0, "navigationBeginIcon", _settings.__get__navigationMenuEndButtonHint());
                _navigationMenu.setHint("pagebegin", _settings.__get__navigationMenuEndButtonHint());
                _navigationMenu.addItem("pageleft", 1, "navigationLeftIcon", _settings.__get__navigationMenuRightButtonHint());
                _navigationMenu.setHint("pageleft", _settings.__get__navigationMenuRightButtonHint());
                _navigationMenu.addItem("pageright", 2, "navigationRightIcon", _settings.__get__navigationMenuLeftButtonHint());
                _navigationMenu.setHint("pageright", _settings.__get__navigationMenuLeftButtonHint());
                _navigationMenu.addItem("pageend", 3, "navigationEndIcon", _settings.__get__navigationMenuBeginButtonHint());
                _navigationMenu.setHint("pageend", _settings.__get__navigationMenuBeginButtonHint());
            }
            else
            {
                _navigationMenu.addItem("pagebegin", 0, "navigationBeginIcon", _settings.__get__navigationMenuBeginButtonHint());
                _navigationMenu.setHint("pagebegin", _settings.__get__navigationMenuBeginButtonHint());
                _navigationMenu.addItem("pageleft", 1, "navigationLeftIcon", _settings.__get__navigationMenuLeftButtonHint());
                _navigationMenu.setHint("pageleft", _settings.__get__navigationMenuLeftButtonHint());
                _navigationMenu.addItem("pageright", 2, "navigationRightIcon", _settings.__get__navigationMenuRightButtonHint());
                _navigationMenu.setHint("pageright", _settings.__get__navigationMenuRightButtonHint());
                _navigationMenu.addItem("pageend", 3, "navigationEndIcon", _settings.__get__navigationMenuEndButtonHint());
                _navigationMenu.setHint("pageend", _settings.__get__navigationMenuEndButtonHint());
            } // end else if
        }
        else
        {
            _navigationMenu.removeItem("pagebegin");
            _navigationMenu.removeItem("pageleft");
            _navigationMenu.removeItem("pageright");
            _navigationMenu.removeItem("pageend");
        } // end else if
    } // End of the function
    function updateMenuItem(itemId)
    {
        switch (itemId)
        {
            case "toc":
            {
                var _loc2 = _settings.__get__tocEnabled();
                if (_loc2)
                {
                    _menu.addItem("toc", 0, "tocIcon", _settings.__get__tocHint());
                    _menu.setHint("toc", _settings.__get__tocHint());
                }
                else
                {
                    _menu.removeItem("toc");
                } // end else if
                break;
            } 
            case "bookmarks":
            {
                _loc2 = _settings.__get__bookmarksEnabled();
                if (_loc2)
                {
                    _menu.addItem("bookmarks", 1, "bookmarksIcon", _settings.__get__bookmarksHint());
                    _menu.setHint("bookmarks", _settings.__get__bookmarksHint());
                }
                else
                {
                    _menu.removeItem("bookmarks");
                } // end else if
                break;
            } 
            case "thumbnails":
            {
                _loc2 = _settings.__get__thumbnailsEnabled();
                if (_loc2)
                {
                    _menu.addItem("thumbnails", 2, "thumbnailsIcon", _settings.__get__thumbnailsHint());
                    _menu.setHint("thumbnails", _settings.__get__thumbnailsHint());
                }
                else
                {
                    _menu.removeItem("thumbnails");
                } // end else if
                break;
            } 
            case "permalink":
            {
                _loc2 = _settings.__get__permalinkEnabled();
                if (_loc2)
                {
                    _menu.addItem("permalink", 3, "permalinkIcon", _settings.__get__permalinkHint());
                    _menu.setHint("permalink", _settings.__get__permalinkHint());
                }
                else
                {
                    _menu.removeItem("permalink");
                } // end else if
                break;
            } 
            case "fullscreen":
            {
                _loc2 = _settings.__get__fullScreenEnabled();
                if (_loc2)
                {
                    _menu.addItem("fullscreen", 5, "fullScreenIcon", _settings.__get__fullScreenHint());
                    _menu.setHint("fullscreen", _settings.__get__fullScreenHint());
                }
                else
                {
                    _menu.removeItem("fullscreen");
                } // end else if
                break;
            } 
            case "zoombutton":
            {
                _loc2 = _settings.__get__zoomButtonEnabled();
                if (_loc2)
                {
                    if (_settings.__get__zoomed())
                    {
                        _menu.removeItem("zoominbutton");
                        _menu.addItem("zoomoutbutton", 6, "zoomOutIcon", _settings.__get__zoomOutButtonHint());
                        _menu.setHint("zoomoutbutton", _settings.__get__zoomOutButtonHint());
                    }
                    else
                    {
                        _menu.removeItem("zoomoutbutton");
                        _menu.addItem("zoominbutton", 7, "zoomInIcon", _settings.__get__zoomInButtonHint());
                        _menu.setHint("zoominbutton", _settings.__get__zoomInButtonHint());
                    } // end else if
                }
                else
                {
                    _menu.removeItem("zoominbutton");
                    _menu.removeItem("zoomoutbutton");
                } // end else if
                break;
            } 
            case "send":
            {
                _loc2 = _settings.__get__sendEnabled();
                if (_loc2)
                {
                    _menu.addItem("send", 8, "sendIcon", _settings.__get__sendHint());
                    _menu.setHint("send", _settings.__get__sendHint());
                }
                else
                {
                    _menu.removeItem("send");
                } // end else if
                break;
            } 
            case "print":
            {
                _loc2 = _settings.__get__printEnabled();
                if (_loc2)
                {
                    _menu.addItem("print", 9, "printIcon", _settings.__get__printHint());
                    _menu.setHint("print", _settings.__get__printHint());
                }
                else
                {
                    _menu.removeItem("print");
                } // end else if
                break;
            } 
            case "save":
            {
                _loc2 = _settings.__get__saveEnabled();
                if (_loc2)
                {
                    _menu.addItem("save", 10, "saveIcon", _settings.__get__saveHint());
                    _menu.setHint("save", _settings.__get__saveHint());
                }
                else
                {
                    _menu.removeItem("save");
                } // end else if
                break;
            } 
            case "playbutton":
            {
                _loc2 = _settings.__get__playButtonEnabled();
                if (_loc2)
                {
                    _menu.addItem("playbutton", 11, "sound", _settings.__get__playButtonHint());
                    _menu.setHint("playbutton", _settings.__get__playButtonHint());
                }
                else
                {
                    _menu.removeItem("playbutton");
                } // end else if
                break;
            } 
            case "stopbutton":
            {
                _loc2 = _settings.__get__stopButtonEnabled();
                if (_loc2)
                {
                    _menu.addItem("stopbutton", 12, "nosound", _settings.__get__stopButtonHint());
                    _menu.setHint("stopbutton", _settings.__get__stopButtonHint());
                }
                else
                {
                    _menu.removeItem("stopbutton");
                } // end else if
                break;
            } 
        } // End of switch
        this._addMenuSeparator();
    } // End of the function
    function create()
    {
        this._createButton();
        this._createBackground();
        this._createMenu();
        this._createSearchField();
        this.createIndexingLabel();
    } // End of the function
    function _createSearchField()
    {
        var _loc2 = _clip.createEmptyMovieClip("search", _clip.getNextHighestDepth());
        _search.__set__menuWidth(_width);
        _search.__set__menuHeight(_height);
        _search.__set__maxWidth(_width - _menu.__get__width() - _searchFieldPadding);
        _search.__set__padding(88);
        _search.addEventListener("onSearchText", this);
        this.updateSearch();
    } // End of the function
    function _createMenu()
    {
        _menuClip = _clip.createEmptyMovieClip("menu", 2);
        _menu = new com.fbpublisher.basicskin.viewclasses.IconMenu(_menuClip, _settings);
        _menu.__set__buttonWidth(32);
        _menu.__set__buttonHeight(32);
        if (_settings.__get__tocEnabled())
        {
            _menu.addItem("toc", 0, "tocIcon", _settings.__get__tocHint());
        } // end if
        if (_settings.__get__bookmarksEnabled())
        {
            _menu.addItem("bookmarks", 1, "bookmarksIcon", _settings.__get__bookmarksHint());
        } // end if
        if (_settings.__get__thumbnailsEnabled())
        {
            _menu.addItem("thumbnails", 2, "thumbnailsIcon", _settings.__get__thumbnailsHint());
        } // end if
        if (_settings.__get__permalinkEnabled())
        {
            _menu.addItem("permalink", 3, "permalinkIcon", _settings.__get__permalinkHint());
        } // end if
        this._addMenuSeparator();
        if (_settings.__get__fullScreenEnabled())
        {
            _menu.addItem("fullscreen", 5, "fullScreenIcon", _settings.__get__fullScreenHint());
        } // end if
        if (_settings.__get__zoomButtonEnabled())
        {
            _menu.addItem("zoominbutton", 6, "zoomInIcon", _settings.__get__zoomInButtonHint());
        } // end if
        if (_settings.__get__sendEnabled())
        {
            _menu.addItem("send", 8, "sendIcon", _settings.__get__sendHint());
        } // end if
        if (_settings.__get__printEnabled())
        {
            _menu.addItem("print", 9, "printIcon", _settings.__get__printHint());
        } // end if
        if (_settings.__get__saveEnabled())
        {
            _menu.addItem("save", 10, "saveIcon", _settings.__get__saveHint());
        } // end if
        if (_settings.__get__playButtonEnabled())
        {
            _menu.addItem("playbutton", 11, "sound", _settings.__get__playButtonHint());
        } // end if
        if (_settings.__get__stopButtonEnabled())
        {
            _menu.addItem("stopbutton", 12, "stopIcon", _settings.__get__stopButtonHint());
        } // end if
        _menu.__set__color(_settings.skinColor);
        _menu.addEventListener("onMenuItemRelease", this);
        _navigationMenuClip = _clip.createEmptyMovieClip("navigationmenu", _clip.getNextHighestDepth());
        _navigationMenu = new com.fbpublisher.basicskin.viewclasses.IconMenu(_navigationMenuClip);
        _navigationMenu.__set__buttonWidth(18);
        _navigationMenu.__set__buttonHeight(18);
        this.createNavigationWithHints(_settings.__get__navigationMenuLeftButtonHint(), _settings.__get__navigationMenuRightButtonHint(), _settings.__get__navigationMenuBeginButtonHint(), _settings.__get__navigationMenuEndButtonHint());
        _navigationMenu.__set__color(_settings.skinColor);
        _navigationMenu.addEventListener("onMenuItemRelease", this);
    } // End of the function
    function createNavigationWithHints(left, right, home, end)
    {
        if (!_settings.__get__navigationMenuEnabled())
        {
            return;
        } // end if
        if (_settings.__get__rightToLeft())
        {
            _navigationMenu.addItem("pagebegin", 0, "navigationBeginIcon", end);
            _navigationMenu.addItem("pageleft", 1, "navigationLeftIcon", right);
            _navigationMenu.addItem("pageright", 2, "navigationRightIcon", left);
            _navigationMenu.addItem("pageend", 3, "navigationEndIcon", home);
        }
        else
        {
            _navigationMenu.addItem("pagebegin", 0, "navigationBeginIcon", home);
            _navigationMenu.addItem("pageleft", 1, "navigationLeftIcon", left);
            _navigationMenu.addItem("pageright", 2, "navigationRightIcon", right);
            _navigationMenu.addItem("pageend", 3, "navigationEndIcon", end);
        } // end else if
    } // End of the function
    function onMenuItemRelease(eventObject)
    {
        this.dispatchEvent({type: "onMenuItemRelease", id: eventObject.id});
    } // End of the function
    function _addMenuSeparator()
    {
        var _loc3 = _settings.__get__bookmarksEnabled() || _settings.__get__thumbnailsEnabled() || _settings.__get__permalinkEnabled();
        var _loc4 = _settings.__get__sendEnabled() || _settings.__get__printEnabled() || _settings.__get__saveEnabled();
        var _loc2 = _loc3 && _loc4;
        if (_loc2)
        {
            _menu.addItem("separator", 4, "separatorIcon", "");
        }
        else
        {
            _menu.removeItem("separator");
        } // end else if
    } // End of the function
    function _createBackground()
    {
        _backgroundClip = _clip.createEmptyMovieClip("background", 1);
        _backgroundShape = new com.fbpublisher.utils.graphics.StyleableRectangle(_backgroundClip, _x, _y, _width, _height);
        _backgroundShape.__set__cornerRadius(_settings.windowCornerRadius);
        _backgroundShape.__set__color(_settings.skinColor);
        _backgroundShape.__set__dropShadowSize(0);
        _backgroundShape.__set__dropShadowDistance(1);
        _backgroundShape.__set__dropShadowAngle(90);
        _backgroundShape.__set__dropShadowOpacity(46);
        _backgroundShape.__set__innerShadowColor(16777215);
        _backgroundShape.__set__innerShadowSize(0);
        _backgroundShape.__set__innerShadowDistance(1);
        _backgroundShape.__set__innerShadowAngle(90);
        _backgroundShape.__set__innerShadowOpacity(63);
        _backgroundShape.__set__gradientAngle(90);
        _backgroundShape.__set__gradientToColor(_settings.menuGradientColor);
        _backgroundShape.__set__gradientToAlpha(_settings.menuGradientAlphaTo);
        _backgroundShape.__set__gradientFromAlpha(_settings.menuGradientAlphaFrom);
        _backgroundShape.__set__gradientOpacity(41);
        _backgroundShape.__set__gradientScale(60);
    } // End of the function
    function _createButton()
    {
        _button = new com.fbpublisher.basicskin.viewclasses.SimpleButton(_clip);
        _button.__set__useHandCursor(false);
        _button.addEventListener("onRollOver", this);
        _button.addEventListener("onRollOut", this);
    } // End of the function
    function onRollOver()
    {
        _backgroundShape.gradientOpacityTo(31, 300);
    } // End of the function
    function onRollOut()
    {
        _backgroundShape.gradientOpacityTo(41, 300);
    } // End of the function
    function _resizeObjects()
    {
        _backgroundShape.setSize(_width, _height);
        _button.setSize(_width, _height);
        _menu.__set__x(10);
        _menu.__set__y(_height / 2 - _menu.__get__height() / 2);
        _navigationMenu.__set__y(_height / 2 - _navigationMenu.__get__height() / 2);
        _navigationMenu.__set__x(_width - _navigationMenu.__get__width() - 10);
        if (_settings.__get__searchEnabled())
        {
            _search.__set__menuWidth(_width);
            _search.__set__menuHeight(_height);
            _search.__set__maxWidth(_width - _menu.__get__width() - _searchFieldPadding);
            if (indexingLabel)
            {
                indexingLabel.__set__x(_search.x);
                indexingLabel.__set__y(_search.y);
            } // end if
        } // end if
    } // End of the function
    function onSearchText(eventObject)
    {
        this.dispatchEvent({type: "onSearchText", query: eventObject.query});
    } // End of the function
    var _componentClipName = "bottommenu";
    var _searchFieldPadding = 30;
    var _i = 0;
} // End of Class
#endinitclip
