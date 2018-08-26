// Action script...

// [Action in Frame 1]
function setProgress(progress)
{
    mask_mc._xscale = progress;
    bar_mc.setMask(mask_mc);
} // End of the function
setProgress(0);
