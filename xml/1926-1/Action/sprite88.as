// Action script...

// [Action in Frame 1]
function setProgress(pt)
{
    if (pt <= 50)
    {
        seg2_mc.mask._rotation = 0;
        seg1_mc.mask._rotation = 180 * (pt / 50);
    }
    else
    {
        seg1_mc.mask._rotation = 180;
        seg2_mc.mask._rotation = 180 * ((pt - 50) / 50);
    } // end else if
} // End of the function
setProgress(0);
