// Action script...

// [Initial MovieClip Action of sprite 114]
#initclip 10
class com.fbpublisher.basicskin.TOCController
{
    var _tree, __get__tree, __set__tree;
    static var _instance;
    function TOCController()
    {
        mx.events.EventDispatcher.initialize(this);
    } // End of the function
    function addEventListener()
    {
    } // End of the function
    function removerEventListener()
    {
    } // End of the function
    function dispatchEvent()
    {
    } // End of the function
    static function getInstance()
    {
        if (!com.fbpublisher.basicskin.TOCController._instance)
        {
            _instance = new com.fbpublisher.basicskin.TOCController();
        } // end if
        return (com.fbpublisher.basicskin.TOCController._instance);
    } // End of the function
    function set tree(value)
    {
        _tree = value;
        _tree.attributes.Id = -1;
        this.restructTree(_tree);
        this.dispatchEvent({type: "treeReloaded"});
        //return (this.tree());
        null;
    } // End of the function
    function traceTree(node)
    {
        if (node.Bookmark.length == 0)
        {
            return;
        } // end if
        for (var _loc2 = 0; _loc2 < node.Bookmark.length; ++_loc2)
        {
            this.traceTree(node.Bookmark[_loc2]);
        } // end of for
    } // End of the function
    function restructTree(node)
    {
        if (node.Bookmark.length)
        {
            for (var _loc2 = 0; _loc2 < node.Bookmark.length; ++_loc2)
            {
                this.restructTree(node.Bookmark[_loc2]);
            } // end of for
        }
        else if (node.Bookmark)
        {
            var _loc4 = new Array();
            _loc4[0] = node.Bookmark;
            node.Bookmark = _loc4;
            this.restructTree(_loc4[0]);
        }
        else
        {
            node.Bookmark = new Array();
        } // end else if
    } // End of the function
    function findNodeInTree(id, node)
    {
        for (var _loc2 = 0; _loc2 < node.Bookmark.length; ++_loc2)
        {
            if (node.Bookmark[_loc2].attributes.Id == id)
            {
                return (node.Bookmark[_loc2]);
            } // end if
            var _loc4 = this.findNodeInTree(id, node.Bookmark[_loc2]);
            if (_loc4 != null)
            {
                return (_loc4);
            } // end if
        } // end of for
        return (null);
    } // End of the function
    function findNodeParentInTree(id, node)
    {
        for (var _loc2 = 0; _loc2 < node.Bookmark.length; ++_loc2)
        {
            if (node.Bookmark[_loc2].attributes.Id == id)
            {
                return (node);
            } // end if
            var _loc4 = this.findNodeParentInTree(id, node.Bookmark[_loc2]);
            if (_loc4 != null)
            {
                return (_loc4);
            } // end if
        } // end of for
        return (null);
    } // End of the function
    function removeNodeInTree(id, node)
    {
        for (var _loc2 = 0; _loc2 < node.Bookmark.length; ++_loc2)
        {
            var _loc3;
            if (node.Bookmark[_loc2].attributes.Id == id)
            {
                _loc3 = node.Bookmark[_loc2];
                node.Bookmark.splice(_loc2, 1);
                return (_loc3);
            } // end if
            _loc3 = this.removeNodeInTree(id, node.Bookmark[_loc2]);
            if (_loc3)
            {
                return (_loc3);
            } // end if
        } // end of for
        return (null);
    } // End of the function
    function addNode(parentId, index, id, label, page)
    {
        if (parentId != -1)
        {
            var _loc2 = this.findNodeInTree(parentId, _tree);
            if (_loc2 == null)
            {
                throw new Error("No Such TOC Node");
            } // end if
            var _loc8 = new Object();
            _loc8.attributes = new Object();
            _loc8.attributes.PageNumber = page;
            _loc8.attributes.Title = label;
            _loc8.attributes.Id = id;
            _loc8.Bookmark = new Array();
            _loc2.Bookmark.splice(index, 0, _loc8);
            this.dispatchEvent({type: "nodeAdded", parent: _loc2, newNode: _loc8, index: index});
        }
        else
        {
            _loc8 = new Object();
            _loc8.attributes = new Object();
            _loc8.attributes.PageNumber = page;
            _loc8.attributes.Title = label;
            _loc8.attributes.Id = id;
            _loc8.Bookmark = new Array();
            _tree.Bookmark.splice(index, 0, _loc8);
            this.dispatchEvent({type: "nodeAdded", parent: _tree, newNode: _loc8, index: index});
        } // end else if
    } // End of the function
    function removeNode(id)
    {
        var _loc3 = null;
        var _loc4 = null;
        if (id == -1)
        {
            _loc3 = _tree;
            _tree.Bookmark.splice(0, _tree.Bookmark.length);
        }
        else
        {
            _loc3 = this.removeNodeInTree(id, _tree);
            _loc4 = this.findNodeParentInTree(id, _tree);
        } // end else if
        this.dispatchEvent({type: "nodeRemoved", node: _loc3, parent: _loc4});
    } // End of the function
    function editNode(id, label, page)
    {
        var _loc2 = this.findNodeInTree(id, _tree);
        _loc2.attributes.Title = label;
        _loc2.attributes.PageNumber = page;
        this.dispatchEvent({type: "nodeChanged", node: _loc2});
    } // End of the function
    function moveNode(id, parent, index)
    {
        var _loc4 = this.removeNodeInTree(id, _tree);
        var _loc2;
        if (parent == -1)
        {
            _loc2 = _tree;
        }
        else
        {
            _loc2 = this.findNodeInTree(parent, _tree);
        } // end else if
        _loc2.Bookmark.splice(index, 0, _loc4);
        this.dispatchEvent({type: "nodeMoved", newParent: _loc2, node: _loc4, index: index});
    } // End of the function
    function childrenForId(id)
    {
        if (id == -1)
        {
            return (_tree.Bookmark);
        } // end if
        return (this.findNodeInTree(id, _tree).Bookmark);
    } // End of the function
} // End of Class
#endinitclip
