// Action script...

// [Initial MovieClip Action of sprite 159]
#initclip 55
class com.fbpublisher.utils.search.Highlighter
{
    function Highlighter()
    {
    } // End of the function
    static function clear(pageClip)
    {
        var _loc2 = pageClip.highlights;
        for (var _loc1 = 0; _loc1 < _loc2.length && _loc2 != undefined; ++_loc1)
        {
            _loc2[_loc1].removeMovieClip();
        } // end of for
    } // End of the function
    static function highlight(pageClip, pageInfo)
    {
        if (!pageClip)
        {
            return;
        } // end if
        pageClip.clear();
        if (!com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchEnabled())
        {
            return;
        } // end if
        if (!pageInfo.loaded)
        {
            return;
        } // end if
        var _loc9 = com.fbpublisher.basicskin.View.getSearchWindow();
        if (!_loc9 || !_loc9.__get__visible())
        {
            return;
        } // end if
        var _loc8 = com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().getPage(pageInfo.__get__pageNumber());
        var _loc6 = pageInfo.__get__boxes();
        var _loc5 = _loc6.length;
        var _loc7 = pageClip.bounds;
        pageClip.lineStyle();
        for (var _loc4 = 0; _loc4 < _loc5 && _loc5 != undefined; ++_loc4)
        {
            var _loc1 = _loc6[_loc4];
            var _loc2 = _loc7.xMax / _loc8.attributes.Width;
            pageClip.beginFill(com.fbpublisher.basicskin.ApplicationSettings.__get__singleton().__get__searchColor(), 40);
            pageClip.moveTo(_loc1.x0 * _loc2, _loc1.y0 * _loc2);
            pageClip.lineTo(_loc1.x1 * _loc2, _loc1.y1 * _loc2);
            pageClip.lineTo(_loc1.x2 * _loc2, _loc1.y2 * _loc2);
            pageClip.lineTo(_loc1.x3 * _loc2, _loc1.y3 * _loc2);
            pageClip.endFill();
        } // end of for
    } // End of the function
} // End of Class
#endinitclip
