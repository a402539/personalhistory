// Action script...

// [Action in Frame 1]
function onEnterFrame()
{
    graphics_mc._rotation = graphics_mc._rotation + 8;
    if (graphics_mc._rotation >= 360)
    {
        graphics_mc._rotation = 0;
    } // end if
} // End of the function
