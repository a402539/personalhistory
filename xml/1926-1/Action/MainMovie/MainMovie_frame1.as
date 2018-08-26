// Action script...

// [Action in Frame 1]
flash.text.TextRenderer.maxLevel = 4;
var myMenu = new ContextMenu();
myMenu.hideBuiltInItems();
_root.menu = myMenu;
this._lockroot = true;
text._visible = false;
fontNormal._visible = false;
fontBold._visible = false;
var applicationMovieClip = _root.createEmptyMovieClip("app", _root.getNextHighestDepth());
var application;
var site1 = "file:/";
var sites = "localhost;127.0.0.1;";
var test = "%TEST%";
var te = "%TE";
var st = "ST%";
var liscence = "2";
var sitesArray = sites.split(";");
if (test != te + st)
{
    System.setClipboard(test);
} // end if
if (liscence == "2" || liscence == "4" || _url.substr(0, site1.length) == site1)
{
    application = new com.fbpublisher.basicskin.BasicSkin(applicationMovieClip);
}
else
{
    var urldomains = _url.split("://");
    var domainsArray = urldomains[1].split("/")[0].split(":")[0].split(".");
    var res = true;
    var i = 0;
    while (i < sitesArray.length)
    {
        var siteDomainsArray = sitesArray[i].split(".");
        res = true;
        for (k = 0; k < 2 && k < domainsArray.length && k < siteDomainsArray.length; k++)
        {
            if (domainsArray[domainsArray.length - 1 - k].toLowerCase() != siteDomainsArray[siteDomainsArray.length - 1 - k].toLowerCase())
            {
                res = false;
            } // end if
        } // end of for
        if (res)
        {
            break;
        } // end if
        ++i;
    } // end while
    if (res)
    {
        application = new com.fbpublisher.basicskin.BasicSkin(applicationMovieClip);
    }
    else
    {
        text._visible = true;
        text.text = "Please register \"" + urldomains[1].split("/")[0].split(":")[0] + "\" domain, publish and re-upload your files. The domain name must be registered before publishing your book";
    } // end else if
} // end else if
var lo = new Object();
Key.addListener(lo);
lo.onKeyDown = function ()
{
    if (!application.__get__hasFocus())
    {
        return;
    } // end if
    if (Key.getCode() == 37)
    {
        application.flipLeft();
    } // end if
    if (Key.getCode() == 39)
    {
        application.flipRight();
    } // end if
    if (Key.getCode() == 38)
    {
        application.zoomIn();
    } // end if
    if (Key.getCode() == 40)
    {
        application.zoomOut();
    } // end if
};
