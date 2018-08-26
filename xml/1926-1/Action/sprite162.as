// Action script...

// [Initial MovieClip Action of sprite 162]
#initclip 58
class com.fbpublisher.basicskin.viewclasses.buttons.LinkButton
{
    var _button, _book;
    function LinkButton(clip, book, width, height)
    {
        _button = new com.fbpublisher.basicskin.viewclasses.SimpleButton(clip);
        _book = book;
        _button.setSize(width, height);
    } // End of the function
    function addAction(action)
    {
        switch (action.attributes.Type)
        {
            case "UriAction":
            {
                _button.addEventListener("onRelease", mx.utils.Delegate.create(this, function ()
                {
                    getURL(action.attributes.HRef, "_blank");
                }));
                break;
            } 
            case "GoToAction":
            {
                _button.addEventListener("onRelease", mx.utils.Delegate.create(this, function ()
                {
                    if (action.attributes.Page <= _book.totalPages)
                    {
                        _book.flipGotoPage(action.attributes.Page);
                    } // end if
                }));
                break;
            } 
        } // End of switch
    } // End of the function
} // End of Class
#endinitclip
