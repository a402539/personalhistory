// Action script...

// [Initial MovieClip Action of sprite 133]
#initclip 29
class com.fbpublisher.utils.graphics.StyleableRectangle extends com.fbpublisher.utils.graphics.StyleableShape
{
    var __set__x, __set__y, addPoint, draw, __get__width, getPoint, _topLeftCornerRadius, _topRightCornerRadius, _bottomRightCornerRadius, _bottomLeftCornerRadius, _cornerRadius, activateAnimationObject, __get__height, movePoint, __set__height, __set__width;
    function StyleableRectangle(clip, topLeftX, topLeftY, width, height)
    {
        super(clip);
        _width = width;
        _height = height;
        this.__set__x(topLeftX);
        this.__set__y(topLeftY);
        this.addPoint(0, 0);
        this.addPoint(width, 0);
        this.addPoint(width, height);
        this.addPoint(0, height);
        this.draw();
    } // End of the function
    function get width()
    {
        return (_width);
    } // End of the function
    function set width(newWidth)
    {
        _width = newWidth;
        this._updateRectangle();
        //return (this.width());
        null;
    } // End of the function
    function setCustomCornerRadius(newRadius, cornerPosition)
    {
        switch (cornerPosition)
        {
            case "top-left":
            {
                this.getPoint(0).customCornerRadius = newRadius;
                _topLeftCornerRadius = newRadius;
                break;
            } 
            case "top-right":
            {
                this.getPoint(1).customCornerRadius = newRadius;
                _topRightCornerRadius = newRadius;
                break;
            } 
            case "bottom-right":
            {
                this.getPoint(2).customCornerRadius = newRadius;
                _bottomRightCornerRadius = newRadius;
                break;
            } 
            case "bottom-left":
            {
                this.getPoint(3).customCornerRadius = newRadius;
                _bottomLeftCornerRadius = newRadius;
                break;
            } 
        } // End of switch
        this._updateRectangle();
    } // End of the function
    function customCornerRadiusTo(newRadius, cornerPosition, duration, delay)
    {
        switch (cornerPosition)
        {
            case "top-left":
            {
                if (_topLeftCornerRadius == undefined)
                {
                    _topLeftCornerRadius = _cornerRadius;
                } // end if
                this.activateAnimationObject("_topLeftCornerRadius", _updateTopLeftCornerRadius, "topLeftCornerRadiusGroup", newRadius, duration, delay);
                break;
            } 
            case "top-right":
            {
                if (_topRightCornerRadius == undefined)
                {
                    _topRightCornerRadius = _cornerRadius;
                } // end if
                this.activateAnimationObject("_topRightCornerRadius", _updateTopRightCornerRadius, "topRightCornerRadiusGroup", newRadius, duration, delay);
                break;
            } 
            case "bottom-left":
            {
                if (_bottomLeftCornerRadius == undefined)
                {
                    _bottomLeftCornerRadius = _cornerRadius;
                } // end if
                this.activateAnimationObject("_bottomLeftCornerRadius", _updateBottomLeftCornerRadius, "bottomLeftCornerRadiusGroup", newRadius, duration, delay);
                break;
            } 
            case "bottom-right":
            {
                if (_bottomRightCornerRadius == undefined)
                {
                    _bottomRightCornerRadius = _cornerRadius;
                } // end if
                this.activateAnimationObject("_bottomRightCornerRadius", _updateBottomRightCornerRadius, "bottomRightCornerRadiusGroup", newRadius, duration, delay);
                break;
            } 
        } // End of switch
    } // End of the function
    function widthTo(newWidth, duration, delay)
    {
        this.activateAnimationObject("_width", _updateRectangle, "rectangleSize", newWidth, duration, delay);
    } // End of the function
    function get height()
    {
        return (_height);
    } // End of the function
    function set height(newHeight)
    {
        _height = newHeight;
        this._updateRectangle();
        //return (this.height());
        null;
    } // End of the function
    function heightTo(newHeight, duration, delay)
    {
        this.activateAnimationObject("_height", _updateRectangle, "rectangleSize", newHeight, duration, delay);
    } // End of the function
    function setSize(newWidth, newHeight)
    {
        _width = newWidth;
        _height = newHeight;
        this._updateRectangle();
    } // End of the function
    function setSizeTo(newWidth, newHeight, duration, delay)
    {
        this.widthTo(newWidth, duration, delay);
        this.heightTo(newHeight, duration, delay);
    } // End of the function
    function _updateTopLeftCornerRadius()
    {
        this.setCustomCornerRadius(_topLeftCornerRadius, "top-left");
    } // End of the function
    function _updateTopRightCornerRadius()
    {
        this.setCustomCornerRadius(_topRightCornerRadius, "top-right");
    } // End of the function
    function _updateBottomRightCornerRadius()
    {
        this.setCustomCornerRadius(_bottomRightCornerRadius, "bottom-right");
    } // End of the function
    function _updateBottomLeftCornerRadius()
    {
        this.setCustomCornerRadius(_bottomLeftCornerRadius, "bottom-left");
    } // End of the function
    function _updateRectangle()
    {
        this.movePoint(1, _width, 0);
        this.movePoint(2, _width, _height);
        this.movePoint(3, 0, _height);
        this.draw();
    } // End of the function
    var _width = 100;
    var _height = 30;
} // End of Class
#endinitclip
