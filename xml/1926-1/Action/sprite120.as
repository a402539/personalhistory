// Action script...

// [Initial MovieClip Action of sprite 120]
#initclip 16
class tracer
{
    function tracer()
    {
    } // End of the function
    static function print(str, func, color)
    {
        if (!_global.tracer_disabled)
        {
            tracer.out(str.toString(), func, color);
        } // end if
    } // End of the function
    static function warning(str, condition)
    {
        if (condition || condition == undefined)
        {
            tracer.out(str, tracer.WARNING);
        } // end if
    } // End of the function
    static function error(str, condition)
    {
        if (condition || condition == undefined)
        {
            tracer.out(str, tracer.ERROR);
        } // end if
    } // End of the function
    static function information(str, condition)
    {
        if (condition || condition == undefined)
        {
            tracer.out(str, tracer.INFORMATION);
        } // end if
    } // End of the function
    static function out(str, func, color)
    {
        var _loc2 = new LocalConnection();
        _loc2.send("_tracerConnection", "showTraceInfo", str, func, color);
        var _loc1 = "OLD";
        switch (func)
        {
            case tracer.INFORMATION:
            {
                _loc1 = "INF";
                break;
            } 
            case tracer.WARNING:
            {
                _loc1 = "WAR";
                break;
            } 
            case tracer.ERROR:
            {
                _loc1 = "ERR";
                break;
            } 
            case tracer.SIC:
            {
                _loc1 = "SIC";
                break;
            } 
            case tracer.VIG:
            {
                _loc1 = "VIG";
                break;
            } 
            case tracer.SAS:
            {
                _loc1 = "SAS";
                break;
            } 
            case tracer.COMMAND:
            {
                _loc1 = "COM";
                break;
            } 
        } // End of switch
        trace ("<" + _loc1 + ">:" + str);
    } // End of the function
    static function clear()
    {
        var _loc1 = new LocalConnection();
        _loc1.send("_tracerConnection", "showTraceInfo", "clearTrace");
    } // End of the function
    static var OLD = 0;
    static var INFORMATION = 1;
    static var WARNING = 2;
    static var ERROR = 3;
    static var SIC = 4;
    static var VIG = 5;
    static var SAS = 6;
    static var COMMAND = 7;
    static var SIC2 = 8;
    static var SIC3 = 9;
    static var COLOR_RED = 512;
} // End of Class
#endinitclip
