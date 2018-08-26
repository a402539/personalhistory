// Action script...

// [Initial MovieClip Action of sprite 204]
#initclip 100
class com.fbpublisher.basicskin.viewclasses.ModalButton extends com.fbpublisher.basicskin.viewclasses.SimpleButton
{
    var __set__alpha, _clip, __get__visible, __set__visible;
    function ModalButton(parentClip)
    {
        super(parentClip);
        this.__set__alpha(_shadowAlpha);
        _clip._visible = false;
    } // End of the function
    function set visible(isVisible)
    {
        if (isVisible)
        {
            this._createBlurScreenshot();
        }
        else
        {
            this._destroyBlurScreenshot();
        } // end else if
        //return (this.visible());
        null;
    } // End of the function
    function _createBlurScreenshot()
    {
        if (!this.__get__visible())
        {
            this.__set__alpha(0);
            new com.timwalling.TweenDelay(this, "alpha", mx.transitions.easing.Regular.easeInOut, _clip._alpha, _shadowAlpha, 0.300000, 0, true);
            _clip._visible = true;
        } // end if
    } // End of the function
    function _destroyBlurScreenshot()
    {
        if (this.__get__visible())
        {
            this.__set__alpha(_shadowAlpha);
            var _loc2 = new com.timwalling.TweenDelay(this, "alpha", mx.transitions.easing.Regular.easeInOut, _clip._alpha, 0, 0.200000, 0, true);
            _loc2.onMotionFinished = mx.utils.Delegate.create(this, onCloseMotionFinished);
        } // end if
    } // End of the function
    function onCloseMotionFinished()
    {
        _clip._visible = false;
    } // End of the function
    var _shadowAlpha = 35;
} // End of Class
#endinitclip
