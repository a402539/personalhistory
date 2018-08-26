// Action script...

// [Initial MovieClip Action of sprite 144]
#initclip 40
class com.timwalling.TweenDelay extends mx.transitions.Tween
{
    var __set__delay, __get__delay, _intervalDelayID, _delay;
    function TweenDelay(obj, prop, func, begin, finish, duration, delay, useSeconds)
    {
        super(obj, prop, func, begin, finish, duration, useSeconds);
        this.__set__delay(delay);
        this.delayStart();
    } // End of the function
    function start()
    {
    } // End of the function
    function delayStart()
    {
        if (this.__get__delay() > 0)
        {
            _intervalDelayID = setInterval(this, "continueStart", this.__get__delay());
        }
        else
        {
            this.continueStart();
        } // end else if
    } // End of the function
    function continueStart()
    {
        clearInterval(_intervalDelayID);
        super.start();
    } // End of the function
    function set delay(d)
    {
        _delay = d == null || d <= 0 ? (0) : (d * 1000);
        //return (this.delay());
        null;
    } // End of the function
    function get delay()
    {
        return (_delay);
    } // End of the function
} // End of Class
#endinitclip
