// Action script...

// [Initial MovieClip Action of sprite 186]
#initclip 82
class com.fbpublisher.basicskin.viewclasses.windows.TOCScrollView extends com.fbpublisher.basicskin.viewclasses.ScrollView
{
    var _layout, _settings, _tocTree, __set__Fixed, contentClip, __get___height, __get___width, __get__contentHeight;
    function TOCScrollView(settings, clip)
    {
        super(settings, clip, settings.__get__skinColor());
        mx.events.EventDispatcher.initialize(this);
        _layout = new com.fbpublisher.basicskin.viewclasses.DynamicBoxLayout();
        _settings = settings;
        _tocTree = new com.fbpublisher.basicskin.TOCTreeNode(null, -1, null);
        this.__set__Fixed(false);
        com.fbpublisher.basicskin.TOCController.getInstance().addEventListener("nodeAdded", mx.utils.Delegate.create(this, onTOCNodeAdded));
        com.fbpublisher.basicskin.TOCController.getInstance().addEventListener("nodeRemoved", mx.utils.Delegate.create(this, onTOCNodeRemoved));
        com.fbpublisher.basicskin.TOCController.getInstance().addEventListener("nodeChanged", mx.utils.Delegate.create(this, onTOCNodeChanged));
        com.fbpublisher.basicskin.TOCController.getInstance().addEventListener("nodeMoved", mx.utils.Delegate.create(this, onTOCNodeMoved));
        com.fbpublisher.basicskin.TOCController.getInstance().addEventListener("treeReloaded", mx.utils.Delegate.create(this, onTOCReloaded));
        this.createChildrenForItem(-1);
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
    function addNodeToParentAtIndex(node, parent, index)
    {
        var _loc2;
        if (parent.attributes.Id == -1)
        {
            _loc2 = _tocTree;
        }
        else
        {
            _loc2 = this.getNode(parent.attributes.Id, _tocTree);
            if (!_loc2)
            {
                return;
            } // end if
            _loc2.__get__button().__set__expandable(true);
            if (!_loc2.__get__expanded())
            {
                return;
            } // end if
        } // end else if
        if (!_loc2.__get__childrenLoaded())
        {
            return;
        } // end if
        var _loc5 = contentClip.createEmptyMovieClip("clip" + level, level++);
        var _loc3 = new com.fbpublisher.basicskin.viewclasses.buttons.TOCButton(node.attributes.PageNumber, node.attributes.Title, _loc2.__get__multiplicity() + 1, node.attributes.Id, _settings, _loc5);
        _loc3.addEventListener("onClick", mx.utils.Delegate.create(this, onItemClick));
        _loc3.addEventListener("onExpand", mx.utils.Delegate.create(this, onItemExpand));
        _loc3.addEventListener("onCollapse", mx.utils.Delegate.create(this, onItemCollapse));
        _loc3.__set__expandable(node.Bookmark.length);
        _loc2.__get__childNodes().splice(index, 0, new com.fbpublisher.basicskin.TOCTreeNode(_loc3, _loc2.__get__multiplicity() + 1, _loc2));
        this.rearrangeLayout();
    } // End of the function
    function removeNode(nodeObj, parent)
    {
        var _loc3 = this.getNode(nodeObj.attributes.Id, _tocTree);
        if (!_loc3)
        {
            if (parent.Bookmark.length == 0)
            {
                var _loc5 = this.getNode(parent.attributes.Id, _tocTree);
                _loc5.__get__button().__set__expandable(false);
                _loc5.__get__button().__set__collapsed(true);
                _loc5.__set__expanded(false);
            } // end if
            return;
        } // end if
        _loc3.remove();
        for (var _loc2 = 0; _loc2 < _loc3.__get__parent().__get__childNodes().length; ++_loc2)
        {
            if (_loc3.__get__parent().__get__childNodes()[_loc2].button.id == nodeObj.attributes.Id)
            {
                _loc3.__get__parent().__get__childNodes().splice(_loc2, 1);
                break;
            } // end if
        } // end of for
        if (_loc3.__get__parent().__get__childNodes().length == 0)
        {
            _loc3.__get__parent().__get__button().__set__expandable(false);
            _loc3.__get__parent().__get__button().__set__collapsed(true);
            _loc3.__get__parent().__set__expanded(false);
        } // end if
        this.rearrangeLayout();
    } // End of the function
    function onTOCReloaded(obj)
    {
        for (var _loc2 = 0; _loc2 < _tocTree.__get__childNodes().length; ++_loc2)
        {
            _tocTree.__get__childNodes()[_loc2].remove();
        } // end of for
        _tocTree.__get__childNodes().splice(0, _tocTree.__get__childNodes().length);
        this.createChildrenForItem(-1);
    } // End of the function
    function onTOCNodeAdded(obj)
    {
        this.addNodeToParentAtIndex(obj.newNode, obj.parent, obj.index);
    } // End of the function
    function onTOCNodeRemoved(obj)
    {
        if (obj.node.attributes.Id == -1)
        {
            for (var _loc2 = 0; _loc2 < _tocTree.__get__childNodes().length; ++_loc2)
            {
                _tocTree.__get__childNodes()[_loc2].remove();
            } // end of for
            _tocTree.__get__childNodes().splice(0, _tocTree.__get__childNodes().length);
        }
        else
        {
            this.removeNode(obj.node, obj.parent);
        } // end else if
        this.rearrangeLayout();
    } // End of the function
    function onTOCNodeChanged(obj)
    {
        var _loc2 = this.getNode(obj.node.attributes.Id, _tocTree);
        if (!_loc2)
        {
            return;
        } // end if
        _loc2.__get__button().__set__text(obj.node.attributes.Title);
        _loc2.__get__button().__set__pageNumber(obj.node.attributes.PageNumber);
    } // End of the function
    function onTOCNodeMoved(obj)
    {
        var _loc6 = true;
        var _loc3 = this.getNode(obj.node.attributes.Id, _tocTree);
        if (!_loc3)
        {
            _loc6 = false;
        } // end if
        if (_loc6)
        {
            for (var _loc2 = 0; _loc2 < _loc3.__get__parent().__get__childNodes().length; ++_loc2)
            {
                if (_loc3.__get__parent().__get__childNodes()[_loc2].button.id == obj.node.attributes.Id)
                {
                    _loc3.__get__parent().__get__childNodes().splice(_loc2, 1);
                    break;
                } // end if
            } // end of for
        } // end if
        if (_loc3.__get__parent().__get__childNodes().length == 0)
        {
            _loc3.__get__parent().__get__button().__set__expandable(false);
            _loc3.__get__parent().__get__button().__set__collapsed(true);
            _loc3.__get__parent().__set__expanded(false);
        } // end if
        var _loc4;
        if (obj.newParent.attributes.Id == -1)
        {
            _loc4 = _tocTree;
        }
        else
        {
            _loc4 = this.getNode(obj.newParent.attributes.Id, _tocTree);
            if (!_loc4)
            {
                if (_loc6)
                {
                    _loc3.remove();
                } // end if
                this.rearrangeLayout();
                return;
            } // end if
            if (!_loc4.__get__childrenLoaded())
            {
                _loc4.__get__button().__set__expandable(true);
                if (_loc6)
                {
                    _loc3.remove();
                } // end if
                this.rearrangeLayout();
                return;
            } // end if
        } // end else if
        _loc4.__get__button().__set__expandable(true);
        if (!_loc6)
        {
            this.reloadChildrenForItem(_loc4);
        }
        else
        {
            _loc4.__get__childNodes().splice(obj.index, 0, _loc3);
            _loc3.__set__parent(_loc4);
        } // end else if
        this.rearrangeLayout();
    } // End of the function
    function getNode(id, node)
    {
        for (var _loc2 = 0; _loc2 < node.__get__childNodes().length; ++_loc2)
        {
            if (node.__get__childNodes()[_loc2].button.id == id)
            {
                //return (node.childNodes()[_loc2]);
            } // end if
            var _loc4 = this.getNode(id, node.__get__childNodes()[_loc2]);
            if (_loc4 != null)
            {
                return (_loc4);
            } // end if
        } // end of for
        return (null);
    } // End of the function
    function createChildrenForNode(tree)
    {
        var _loc7 = -1;
        if (tree.__get__button())
        {
            _loc7 = tree.__get__button().id;
        } // end if
        var _loc4 = com.fbpublisher.basicskin.TOCController.getInstance().childrenForId(_loc7);
        if (!_loc4)
        {
            return;
        } // end if
        tree.__set__childrenLoaded(true);
        for (var _loc2 = 0; _loc2 < _loc4.length; ++_loc2)
        {
            var _loc6 = contentClip.createEmptyMovieClip("clip" + level, level++);
            var _loc3 = new com.fbpublisher.basicskin.viewclasses.buttons.TOCButton(_loc4[_loc2].attributes.PageNumber, _loc4[_loc2].attributes.Title, tree.__get__multiplicity() + 1, _loc4[_loc2].attributes.Id, _settings, _loc6);
            _loc3.addEventListener("onClick", mx.utils.Delegate.create(this, onItemClick));
            _loc3.addEventListener("onExpand", mx.utils.Delegate.create(this, onItemExpand));
            _loc3.addEventListener("onCollapse", mx.utils.Delegate.create(this, onItemCollapse));
            _loc3.__set__expandable(_loc4[_loc2].Bookmark.length);
            tree.__get__childNodes().push(new com.fbpublisher.basicskin.TOCTreeNode(_loc3, tree.__get__multiplicity() + 1, tree));
        } // end of for
        this.rearrangeLayout();
    } // End of the function
    function traceNode(node)
    {
        if (node.__get__childNodes().length == 0)
        {
            return;
        } // end if
        for (var _loc2 = 0; _loc2 < node.__get__childNodes().length; ++_loc2)
        {
            this.traceNode(node.__get__childNodes()[_loc2]);
        } // end of for
    } // End of the function
    function traceChildrenToLayout(tree)
    {
        for (var _loc2 = 0; _loc2 < tree.__get__childNodes().length; ++_loc2)
        {
            this.traceChildrenToLayout(tree.__get__childNodes()[_loc2]);
        } // end of for
    } // End of the function
    function createChildrenForItem(id)
    {
        var _loc2 = _tocTree;
        if (id != -1)
        {
            _loc2 = this.getNode(id, _tocTree);
        } // end if
        if (_loc2.__get__childNodes().length > 0)
        {
            return;
        } // end if
        this.createChildrenForNode(_loc2);
    } // End of the function
    function reloadChildrenForItem(node)
    {
        for (var _loc2 = 0; _loc2 < node.__get__childNodes().length; ++_loc2)
        {
            node.__get__childNodes()[_loc2].remove();
        } // end of for
        node.__get__childNodes().splice(0, node.__get__childNodes().length);
        this.createChildrenForNode(node);
    } // End of the function
    function onItemClick(obj)
    {
        this.dispatchEvent({type: "onItemClick", pageNumber: obj.pageNumber});
    } // End of the function
    function onItemExpand(obj)
    {
        var _loc2 = this.getNode(obj.target.id, _tocTree);
        _loc2.__set__expanded(true);
        if (_loc2.__get__childNodes().length == 0)
        {
            this.createChildrenForNode(_loc2);
        }
        else
        {
            this.rearrangeLayout();
        } // end else if
        this.dispatchEvent({type: "onContentChanged"});
    } // End of the function
    function onItemCollapse(obj)
    {
        var _loc2 = this.getNode(obj.target.id, _tocTree);
        _loc2.__set__expanded(false);
        this.rearrangeLayout();
        this.dispatchEvent({type: "onContentChanged"});
    } // End of the function
    function pushChildrenToLayout(tree, expanded)
    {
        for (var _loc2 = 0; _loc2 < tree.__get__childNodes().length; ++_loc2)
        {
            tree.__get__childNodes()[_loc2].button.clip._visible = tree.__get__expanded() && expanded;
            _layout.pushWithoutRearrange(tree.__get__childNodes()[_loc2].button);
            this.pushChildrenToLayout(tree.__get__childNodes()[_loc2], tree.__get__expanded() && expanded);
        } // end of for
    } // End of the function
    function rearrangeLayout()
    {
        _layout.clear();
        this.pushChildrenToLayout(_tocTree, true);
        _layout.arrangeElements();
    } // End of the function
    function updateStyles()
    {
        for (var _loc2 = 0; _loc2 < _layout.__get___items().length; ++_loc2)
        {
            _layout.__get___items()[_loc2].updateStyles();
        } // end of for
    } // End of the function
    function get contentHeight()
    {
        if (_layout.__get___height() > this.__get___height())
        {
            //return (_layout._height());
        }
        else
        {
            //return (this._height());
        } // end else if
    } // End of the function
    function setSize(width, height)
    {
        if (width == this.__get___width() && height == this.__get___height())
        {
            return;
        } // end if
        _layout.__set___height(height);
        _layout.__set___width(width);
        super.setSize(width, height);
        this.dispatchEvent({type: "onContentChanged"});
    } // End of the function
    var level = 0;
} // End of Class
#endinitclip
