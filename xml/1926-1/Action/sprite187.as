// Action script...

// [Initial MovieClip Action of sprite 187]
#initclip 83
class com.fbpublisher.basicskin.TOCTreeNode
{
    var _childNodes, _button, _expanded, _multiplicity, _parent, _childrenLoaded, __get__button, __get__multiplicity, __get__expanded, __set__multiplicity, __get__parent, __get__childrenLoaded, __get__childNodes, __set__childrenLoaded, __set__expanded, __set__parent;
    function TOCTreeNode(button, multiplicity, parent)
    {
        _childNodes = new Array();
        _button = button;
        _expanded = true;
        _multiplicity = multiplicity;
        _parent = parent;
        _childrenLoaded = false;
    } // End of the function
    function remove()
    {
        for (var _loc2 = 0; _loc2 < _childNodes.length; ++_loc2)
        {
            _childNodes[_loc2].remove();
        } // end of for
        _button.deleteClip();
    } // End of the function
    function get childNodes()
    {
        return (_childNodes);
    } // End of the function
    function get button()
    {
        return (_button);
    } // End of the function
    function get multiplicity()
    {
        return (_multiplicity);
    } // End of the function
    function set multiplicity(value)
    {
        _multiplicity = value;
        this.__get__button().__set__multiplicity(value);
        for (var _loc2 = 0; _loc2 < _childNodes.length; ++_loc2)
        {
            _childNodes[_loc2].multiplicity = _multiplicity + 1;
        } // end of for
        //return (this.multiplicity());
        null;
    } // End of the function
    function get expanded()
    {
        return (_expanded);
    } // End of the function
    function set expanded(value)
    {
        _expanded = value;
        //return (this.expanded());
        null;
    } // End of the function
    function get parent()
    {
        return (_parent);
    } // End of the function
    function set parent(newParent)
    {
        _parent = newParent;
        this.__set__multiplicity(_parent.__get__multiplicity() + 1);
        //return (this.parent());
        null;
    } // End of the function
    function get childrenLoaded()
    {
        return (_childrenLoaded);
    } // End of the function
    function set childrenLoaded(value)
    {
        _childrenLoaded = value;
        //return (this.childrenLoaded());
        null;
    } // End of the function
} // End of Class
#endinitclip
