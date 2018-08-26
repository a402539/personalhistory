// Action script...

// [Initial MovieClip Action of sprite 132]
#initclip 28
class com.fbpublisher.utils.graphics.CustomShape
{
    var _clip, _nodes, _strokeNodes, __get__cornerRadius, _segments, _points, _strokeSegments, _strokePoints, __get__clip, __set__cornerRadius;
    function CustomShape(clip)
    {
        _clip = clip;
        _nodes = new Array();
        _strokeNodes = new Array();
    } // End of the function
    function addNode(x, y, customCornerRadius)
    {
        _nodes.push({x: x, y: y, customCornerRadius: customCornerRadius});
    } // End of the function
    function clear()
    {
        _nodes = new Array();
        _strokeNodes = new Array();
        _clip.clear();
    } // End of the function
    function get cornerRadius()
    {
        return (_cornerRadius);
    } // End of the function
    function set cornerRadius(newRadius)
    {
        _cornerRadius = newRadius;
        //return (this.cornerRadius());
        null;
    } // End of the function
    function draw()
    {
        this._redraw();
    } // End of the function
    function copySegmentsFrom(otherShape, shapeType)
    {
        _segments = new Array();
        if (otherShape.strokeSize > 0)
        {
            if (shapeType == "outer")
            {
                if (otherShape.strokePosition == "outer")
                {
                    _segments = otherShape._strokeSegments.slice();
                }
                else
                {
                    _segments = otherShape._segments.slice();
                } // end else if
            }
            else if (otherShape.strokePosition == "outer")
            {
                _segments = otherShape._segments.slice();
            }
            else
            {
                _segments = otherShape._strokeSegments.slice();
            } // end else if
        }
        else
        {
            _segments = otherShape._segments.slice();
        } // end else if
    } // End of the function
    function copyNodesFrom(otherShape)
    {
        _nodes = new Array();
        _nodes = otherShape._nodes.slice();
    } // End of the function
    function get clip()
    {
        return (_clip);
    } // End of the function
    function _redraw()
    {
        _segments = new Array();
        _points = new Array();
        this._buildSegments(MAIN_PATH);
        this._drawSegments(MAIN_PATH);
        if (strokeSize > 0)
        {
            _strokeSegments = new Array();
            _strokePoints = new Array();
            this._calculateStrokeNodes();
            this._buildSegments(STROKE_PATH);
            this._drawSegments(STROKE_PATH);
        } // end if
    } // End of the function
    function _buildSegments(pathType)
    {
        if (pathType == MAIN_PATH)
        {
            var _loc4 = _nodes;
            var _loc17 = _segments;
            var _loc8 = _points;
        }
        else
        {
            _loc4 = _strokeNodes;
            _loc17 = _strokeSegments;
            _loc8 = _strokePoints;
        } // end else if
        for (var _loc3 = 0; _loc3 < _loc4.length; ++_loc3)
        {
            var _loc5 = _cornerRadius;
            if (_loc4[_loc3].customCornerRadius != undefined)
            {
                _loc5 = _loc4[_loc3].customCornerRadius;
            } // end if
            var _loc7 = _loc3 - 1 >= 0 ? (_loc4[_loc3 - 1]) : (_loc4[_loc4.length - 1]);
            var _loc2 = _loc4[_loc3];
            var _loc6 = _loc3 + 1 < _loc4.length ? (_loc4[_loc3 + 1]) : (_loc4[0]);
            var _loc10 = Math.sqrt((_loc7.x - _loc2.x) * (_loc7.x - _loc2.x) + (_loc7.y - _loc2.y) * (_loc7.y - _loc2.y));
            var _loc9 = Math.sqrt((_loc2.x - _loc6.x) * (_loc2.x - _loc6.x) + (_loc2.y - _loc6.y) * (_loc2.y - _loc6.y));
            var _loc23 = Math.sqrt((_loc6.x - _loc7.x) * (_loc6.x - _loc7.x) + (_loc6.y - _loc7.y) * (_loc6.y - _loc7.y));
            var _loc16 = Math.acos((_loc10 * _loc10 + _loc9 * _loc9 - _loc23 * _loc23) / (2 * _loc10 * _loc9));
            if (_loc16 == 3.141593 || isNaN(_loc16) || Math.abs(_loc16 - 3.141593) < 0.000010)
            {
                _loc8.push({D: _loc8[_loc3 - 1].M, M: _loc2, O: {}});
                _loc17.push({start: _loc8[_loc3 - 1].M, end: _loc2, type: "line"});
                continue;
            } // end if
            var _loc22 = _loc16 / 2;
            var _loc18 = Math.sin(_loc22);
            var _loc24 = Math.cos(_loc22);
            var _loc11 = _loc18 / _loc24;
            var _loc26 = _loc5 / _loc11;
            var _loc20 = _loc5;
            var _loc19 = _loc5;
            if (_loc26 > _loc10 / 2)
            {
                _loc20 = _loc10 / 2 * _loc11;
            } // end if
            if (_loc26 > _loc9 / 2)
            {
                _loc19 = _loc9 / 2 * _loc11;
            } // end if
            _loc5 = _loc20 < _loc19 ? (_loc20) : (_loc19);
            var _loc21 = _loc5 / _loc11;
            var _loc25 = _loc5 / _loc11;
            var _loc15 = (_loc10 - _loc21) / _loc21;
            var _loc29 = {x: (_loc7.x + _loc2.x * _loc15) / (1 + _loc15), y: (_loc7.y + _loc15 * _loc2.y) / (1 + _loc15)};
            var _loc14 = (_loc9 - _loc25) / _loc25;
            var _loc35 = {x: (_loc6.x + _loc2.x * _loc14) / (1 + _loc14), y: (_loc6.y + _loc14 * _loc2.y) / (1 + _loc14)};
            var _loc28 = {x: (_loc29.x + _loc35.x) / 2, y: (_loc29.y + _loc35.y) / 2};
            var _loc30 = _loc5 / _loc18;
            var _loc27 = _loc21 * _loc24;
            var _loc13 = _loc27 / (_loc30 - _loc27);
            var _loc32 = {x: (_loc28.x * (1 + _loc13) - _loc2.x) / _loc13, y: (_loc28.y * (1 + _loc13) - _loc2.y) / _loc13};
            _loc2.O = _loc32;
            _loc2.alpha = _loc22;
            _loc2.R = _loc5;
            if (_loc5 > 0)
            {
                var _loc12 = 1 / _loc18 - 1;
                var _loc31 = {x: (_loc2.x + _loc12 * _loc32.x) / (1 + _loc12), y: (_loc2.y + _loc12 * _loc32.y) / (1 + _loc12)};
                _loc8.push({D: _loc29, M: _loc35, O: _loc32});
                if (_loc3 > 0)
                {
                    _loc17.push({start: _loc8[_loc3 - 1].M, end: _loc29, type: "line"});
                } // end if
                _loc17.push({start: _loc29, end: _loc35, type: "curve", O: _loc32, control: _loc31, node: _loc4[_loc3], radius: _loc5});
                if (_loc3 == _loc4.length - 1)
                {
                    _loc17.push({start: _loc35, end: _loc8[0].D, type: "line", O: _loc32});
                } // end if
                continue;
            } // end if
            _loc8.push({M: _loc4[_loc3]});
            if (_loc3 > 0)
            {
                _loc17.push({start: _loc8[_loc3 - 1].M, end: _loc4[_loc3], type: "line"});
            } // end if
        } // end of for
    } // End of the function
    function _drawSegments(pathType)
    {
        if (pathType == MAIN_PATH)
        {
            var _loc7 = _nodes;
            var _loc3 = _segments;
            var _loc8 = _points;
        }
        else
        {
            _loc7 = _strokeNodes;
            _loc3 = _strokeSegments;
            _loc8 = _strokePoints;
        } // end else if
        _clip.moveTo(_loc3[0].start.x, _loc3[0].start.y);
        for (var _loc2 = 0; _loc2 < _loc3.length; ++_loc2)
        {
            var _loc4 = _loc3[_loc2].type;
            if (_loc4 == "line")
            {
                _clip.lineTo(_loc3[_loc2].end.x, _loc3[_loc2].end.y);
                continue;
            } // end if
            _loc4 = "curve";
            if ("curve")
            {
                var _loc6 = -57.295780 * Math.atan2(_loc3[_loc2].O.y - _loc3[_loc2].start.y, _loc3[_loc2].start.x - _loc3[_loc2].O.x);
                var _loc5 = -57.295780 * Math.atan2(_loc3[_loc2].O.y - _loc3[_loc2].end.y, _loc3[_loc2].end.x - _loc3[_loc2].O.x);
                this.drawSegment(_clip, _loc3[_loc2].radius, _loc3[_loc2].radius, _loc3[_loc2].O.x, _loc3[_loc2].O.y, 4, _loc6, _loc5);
                continue;
            } // end if
            _clip.curveTo(_loc3[_loc2].control.x, _loc3[_loc2].control.y, _loc3[_loc2].end.x, _loc3[_loc2].end.y);
        } // end of for
    } // End of the function
    function drawSegment(target, rx, ry, x, y, sgm, s1, s2)
    {
        var _loc1 = 0.017453;
        if (s1 < 0)
        {
            s1 = s1 + 360;
        } // end if
        if (s2 < 0)
        {
            s2 = s2 + 360;
        } // end if
        var _loc17 = s2 - s1;
        var _loc20 = s2 > s1;
        var _loc21 = Math.abs(_loc17);
        if (_loc21 > 360 - _loc21)
        {
            _loc20 = !_loc20;
        } // end if
        if (_loc20 && s2 < s1)
        {
            s2 = s2 + 360;
        } // end if
        if (!_loc20 && s2 > s1)
        {
            s2 = s2 - 360;
        } // end if
        _loc17 = s2 - s1;
        var _loc2 = _loc17 / sgm;
        var _loc8 = rx * Math.cos(s1 * _loc1) + x;
        var _loc7 = ry * Math.sin(s1 * _loc1) + y;
        if (_loc20)
        {
            for (var _loc3 = s1 + _loc2; _loc3 < s1 + _loc17 + 0.100000; _loc3 = _loc3 + _loc2)
            {
                var _loc14 = rx * Math.cos((_loc3 - _loc2 / 2) * _loc1) + x;
                var _loc13 = ry * Math.sin((_loc3 - _loc2 / 2) * _loc1) + y;
                var _loc5 = rx * Math.cos(_loc3 * _loc1) + x;
                var _loc6 = ry * Math.sin(_loc3 * _loc1) + y;
                var _loc16 = 2 * _loc14 - 0.500000 * (_loc8 + _loc5);
                var _loc15 = 2 * _loc13 - 0.500000 * (_loc7 + _loc6);
                target.curveTo(_loc16, _loc15, _loc5, _loc6);
                _loc8 = _loc5;
                _loc7 = _loc6;
            } // end of for
        }
        else
        {
            for (var _loc3 = s1 + _loc2; _loc3 > s1 + _loc17 - 0.100000; _loc3 = _loc3 + _loc2)
            {
                _loc14 = rx * Math.cos((_loc3 - _loc2 / 2) * _loc1) + x;
                _loc13 = ry * Math.sin((_loc3 - _loc2 / 2) * _loc1) + y;
                _loc5 = rx * Math.cos(_loc3 * _loc1) + x;
                _loc6 = ry * Math.sin(_loc3 * _loc1) + y;
                _loc16 = 2 * _loc14 - 0.500000 * (_loc8 + _loc5);
                _loc15 = 2 * _loc13 - 0.500000 * (_loc7 + _loc6);
                target.curveTo(_loc16, _loc15, _loc5, _loc6);
                _loc8 = _loc5;
                _loc7 = _loc6;
            } // end of for
        } // end else if
    } // End of the function
    function _calculateStrokeNodes()
    {
        var _loc21 = _nodes.length;
        if (strokePosition == "inner")
        {
            var _loc22 = -strokeSize;
        }
        else
        {
            _loc22 = strokeSize;
        } // end else if
        var _loc11 = 1;
        for (var _loc3 = 0; _loc3 < _loc21; ++_loc3)
        {
            var _loc2 = _nodes[_loc3];
            var _loc6 = _loc3 != 0 ? (_nodes[_loc3 - 1]) : (_nodes[_loc21 - 1]);
            var _loc5 = _loc3 != _loc21 - 1 ? (_nodes[_loc3 + 1]) : (_nodes[0]);
            if (_loc2.alpha != undefined)
            {
                var _loc10 = _loc2.x - _loc6.x;
                var _loc9 = _loc2.y - _loc6.y;
                var _loc12 = Math.sqrt(_loc10 * _loc10 + _loc9 * _loc9);
                var _loc17 = {x: _loc10 / _loc12, y: _loc9 / _loc12};
                var _loc8 = _loc2.x - _loc5.x;
                var _loc7 = _loc2.y - _loc5.y;
                var _loc19 = Math.sqrt(_loc8 * _loc8 + _loc7 * _loc7);
                var _loc14 = {x: _loc8 / _loc19, y: _loc7 / _loc19};
                var _loc4 = {x: _loc17.x + _loc14.x, y: _loc17.y + _loc14.y};
                var _loc18 = Math.sqrt(_loc4.x * _loc4.x + _loc4.y * _loc4.y);
                var _loc23 = _loc10 * _loc7 - _loc9 * _loc8;
                _loc23 <= 0 ? (_loc11 = 1, 1) : (_loc11 = -1, -1);
                var _loc25 = Math.sin(_loc2.alpha);
                var _loc13 = _loc11 * _loc22 / _loc25;
                var _loc16 = {x: _loc13 * _loc4.x / _loc18, y: _loc13 * _loc4.y / _loc18};
                var _loc24 = _loc2.R + _loc11 * _loc22;
                _strokeNodes[_loc3] = {x: _loc2.x + _loc16.x, y: _loc2.y + _loc16.y, customCornerRadius: _loc24};
                continue;
            } // end if
            _loc13 = -_loc22;
            var _loc15 = 1.570796 - Math.atan((_loc5.y - _loc6.y) / (_loc5.x - _loc6.x));
            var _loc20 = {x: _loc2.x - _loc13 * Math.cos(_loc15), y: _loc2.y + _loc13 * Math.sin(_loc15)};
            _strokeNodes[_loc3] = {x: _loc20.x, y: _loc20.y};
        } // end of for
    } // End of the function
    var MAIN_PATH = 1;
    var STROKE_PATH = 2;
    var _cornerRadius = 0;
    var strokePosition = "inner";
    var strokeSize = 0;
} // End of Class
#endinitclip
