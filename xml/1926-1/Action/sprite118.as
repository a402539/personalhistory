// Action script...

// [Initial MovieClip Action of sprite 118]
#initclip 14
class com.fbpublisher.utils.StringUtils
{
    function StringUtils()
    {
    } // End of the function
    static function getLines(string)
    {
        return (string.split("\n"));
    } // End of the function
    static function isSplitter(char)
    {
        for (var _loc1 = 0; _loc1 < com.fbpublisher.utils.StringUtils.SPLITTERS.length; ++_loc1)
        {
            if (char == com.fbpublisher.utils.StringUtils.SPLITTERS[_loc1])
            {
                return (true);
            } // end if
        } // end of for
        return (false);
    } // End of the function
    static function getWordArray(query, MIN_WORD)
    {
        var _loc2 = com.fbpublisher.utils.StringUtils.split(query, com.fbpublisher.utils.StringUtils.SPLITTERS);
        var _loc3 = new Array();
        for (var _loc1 = 0; _loc1 < _loc2.length; ++_loc1)
        {
            if (String(_loc2[_loc1]).length >= MIN_WORD)
            {
                _loc3.push(_loc2[_loc1]);
            } // end if
        } // end of for
        return (_loc3);
    } // End of the function
    static function replaceAll(str, oldSubStr, newSubStr)
    {
        var _loc3 = str.split(oldSubStr);
        var _loc2 = _loc3[0];
        var _loc4 = _loc3.length;
        for (var _loc1 = 1; _loc1 < _loc4; ++_loc1)
        {
            _loc2 = _loc2.concat(newSubStr, _loc3[_loc1]);
        } // end of for
        return (_loc2);
    } // End of the function
    static function withoutLastSpaces(value)
    {
        for (var _loc1 = value.length - 1; _loc1 >= 0; --_loc1)
        {
            if (value.charAt(_loc1) != " ")
            {
                return (value.substr(0, _loc1 + 1));
            } // end if
        } // end of for
        return ("");
    } // End of the function
    static function split(query, splitters)
    {
        var _loc6 = new Array();
        var _loc3 = 0;
        for (var _loc1 = 0; _loc1 < query.length; ++_loc1)
        {
            for (var _loc2 = 0; _loc2 < splitters.length; ++_loc2)
            {
                if (query.charAt(_loc1) == splitters[_loc2])
                {
                    if (_loc3 != _loc1)
                    {
                        _loc6.push(query.slice(_loc3, _loc1));
                    } // end if
                    _loc3 = _loc1 + 1;
                    break;
                } // end if
            } // end of for
        } // end of for
        _loc6.push(query.slice(_loc3, _loc1));
        return (_loc6);
    } // End of the function
    static var SPLITTERS = [",", ";", ".", " ", String.fromCharCode(10), String.fromCharCode(13), String.fromCharCode(8211), String.fromCharCode(8212), String.fromCharCode(8722), String.fromCharCode(8209), String.fromCharCode(8208)];
} // End of Class
#endinitclip
