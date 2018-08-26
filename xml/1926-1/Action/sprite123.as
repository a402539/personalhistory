// Action script...

// [Initial MovieClip Action of sprite 123]
#initclip 19
class com.fbpublisher.utils.search.WordInfo
{
    var word, height, sin, cos, letters, __get__box;
    function WordInfo(word)
    {
        var _loc3 = word.split(":");
        this.word = _loc3[0];
        x = Number(_loc3[1]) * 0.100000;
        y = Number(_loc3[2]) * 0.100000;
        height = Number(_loc3[4]) * 0.100000;
        var _loc4 = Number(_loc3[3]) * 0.001000;
        sin = Math.sin(_loc4);
        cos = Math.cos(_loc4);
        letters = _loc3[5].split(";");
        for (var _loc2 = 0; _loc2 < letters.length; ++_loc2)
        {
            letters[_loc2] = Number(letters[_loc2]) * 0.100000;
        } // end of for
    } // End of the function
    function get box()
    {
        var _loc20 = com.fbpublisher.basicskin.View.getSearchWindow();
        var _loc21 = _loc20.__get__query();
        var _loc18 = com.fbpublisher.utils.StringUtils.getWordArray(_loc21, com.fbpublisher.utils.search.Index.MIN_WORD);
        var _loc19 = _loc18.length;
        var _loc12 = 0;
        var _loc11 = 0;
        for (var _loc3 = 0; _loc3 < _loc19; ++_loc3)
        {
            var _loc5 = _loc18[_loc3];
            var _loc2 = word.indexOf(_loc5);
            if (_loc2 != -1)
            {
                var _loc16 = _loc2 + _loc5.length - 1;
                if (_loc2 > 0)
                {
                    _loc12 = letters[_loc2 - 1];
                } // end if
                _loc11 = letters[_loc16];
                var _loc8 = _loc12 * cos;
                var _loc6 = _loc12 * sin;
                var _loc7 = _loc11 * cos;
                var _loc4 = _loc11 * sin;
                var _loc10 = height * sin;
                var _loc9 = height * cos;
                var _loc15 = _loc7 - _loc10;
                var _loc13 = _loc4 + _loc9;
                var _loc14 = _loc8 - _loc10;
                var _loc17 = _loc6 + _loc9;
                return (new com.fbpublisher.utils.search.BoxInfo(x + _loc8, y + _loc6, x + _loc7, y + _loc4, x + _loc15, y + _loc13, x + _loc14, y + _loc17));
            } // end if
        } // end of for
        return (null);
    } // End of the function
    var width = 0;
    var x = 0;
    var y = 0;
} // End of Class
#endinitclip
