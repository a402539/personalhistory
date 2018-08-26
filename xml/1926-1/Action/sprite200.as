// Action script...

// [Initial MovieClip Action of sprite 200]
#initclip 96
class com.fbpublisher.basicskin.viewclasses.buttons.LeftArrowButton extends com.fbpublisher.basicskin.viewclasses.VisualComponent
{
    var _clip, button, _icon, _button, dispatchEvent;
    function LeftArrowButton(clip)
    {
        super(clip);
        mx.events.EventDispatcher.initialize(this);
        button = _clip.createEmptyMovieClip("buttonData", level++);
        _icon = new com.fbpublisher.basicskin.viewclasses.BitmapIcon(button, "arrowLeft");
        this._createButton();
        this.setSize(_clip._width, _clip._height);
    } // End of the function
    function _createButton()
    {
        _button = new com.fbpublisher.basicskin.viewclasses.SimpleButton(_clip);
        _button.addEventListener("onRollOver", this);
        _button.addEventListener("onRollOut", this);
        _button.addEventListener("onPress", this);
        _button.addEventListener("onRelease", this);
        _button.addEventListener("onReleaseOutside", this);
    } // End of the function
    function onRollOver()
    {
    } // End of the function
    function onRollOut()
    {
    } // End of the function
    function onPress()
    {
        this.dispatchEvent({type: "onButtonPress", target: this});
    } // End of the function
    function onRelease()
    {
    } // End of the function
    function onReleaseOutside()
    {
    } // End of the function
    function setSize(width, height)
    {
        _button.__set__width(width);
        _button.__set__height(height);
        button._x = width / 2 - _icon.__get__width() / 2;
        button._y = height / 2 - _icon.__get__height() / 2;
        super.setSize(width, height);
    } // End of the function
    function deleteClip()
    {
        _clip = null;
    } // End of the function
    var level = 0;
} // End of Class
#endinitclip
