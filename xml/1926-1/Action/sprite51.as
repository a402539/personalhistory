// Action script...

// [Action in Frame 1]
function setProgress(progress)
{
    bar_mc._xscale = progress;
} // End of the function
bar_mc.filters = [new flash.filters.GlowFilter(16777215, 1, 5, 5, 2, 3, false, false)];
setProgress(0);
