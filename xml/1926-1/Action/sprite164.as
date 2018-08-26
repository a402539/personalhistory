// Action script...

// [Initial MovieClip Action of sprite 164]
#initclip 60
class com.fbpublisher.basicskin.LoadQueueManager
{
    var __arr_curQueue, __get__loadQueue, __get__isLoading, __get__autoLoad, __get__currentLoadObject, __get__isPaused, __get__bytesLoaded, __get__bytesTotal, __get__target, __obj_currentLoadObject, __get__intervalMS, __get__timeOutMS, __mcl_currentLoadClip, __obj_mclListnr, __obj_currentLoadTarget, __obj_currentLoadListener, _parent, __int_loadInterval, __int_timeInterval, __int_loadNextInterval, __set__autoLoad, __set__intervalMS, __get__loadDurationCurrent, __get__loadSpeed, __get__loadTimeCurrent, __get__percentLoaded, __get__targetPath, __get__targetURL, __set__timeOutMS;
    function LoadQueueManager(int_timeoutMs, int_intervalMs, int_minSteps)
    {
        mx.events.EventDispatcher.initialize(this);
        __arr_curQueue = new Array();
    } // End of the function
    function dispatchEvent()
    {
    } // End of the function
    function addEventListener()
    {
    } // End of the function
    function removeEventListener()
    {
    } // End of the function
    function addListener(obj_listner)
    {
        this.addEventListener("onLoadStarted", obj_listner);
        this.addEventListener("onLoadObserveStarted", obj_listner);
        this.addEventListener("onLoadProgress", obj_listner);
        this.addEventListener("onLoadItemComplete", obj_listner);
        this.addEventListener("onLoadComplete", obj_listner);
        this.addEventListener("onLoadPause", obj_listner);
        this.addEventListener("onLoadResume", obj_listner);
        this.addEventListener("onLoadInvalidObject", obj_listner);
        this.addEventListener("onTimeOutMSSet", obj_listner);
        this.addEventListener("onIntervalMSSet", obj_listner);
        this.addEventListener("onLoadItemTimedOut", obj_listner);
        this.addEventListener("onLoadStopped", obj_listner);
        this.addEventListener("onLoadItemError", obj_listner);
    } // End of the function
    function removeListener(obj_listner)
    {
        this.removeEventListener("onLoadStarted", obj_listner);
        this.removeEventListener("onLoadObserveStarted", obj_listner);
        this.removeEventListener("onLoadProgress", obj_listner);
        this.removeEventListener("onLoadItemComplete", obj_listner);
        this.removeEventListener("onLoadComplete", obj_listner);
        this.removeEventListener("onLoadPause", obj_listner);
        this.removeEventListener("onLoadResume", obj_listner);
        this.removeEventListener("onLoadInvalidObject", obj_listner);
        this.removeEventListener("onTimeOutMSSet", obj_listner);
        this.removeEventListener("onIntervalMSSet", obj_listner);
        this.removeEventListener("onLoadItemTimedOut", obj_listner);
        this.removeEventListener("onLoadStopped", obj_listner);
        this.removeEventListener("onLoadItemError", obj_listner);
    } // End of the function
    function load(obj_target, str_URl, obj_listener)
    {
        var _loc3 = -1;
        var _loc4 = this.locationToTarget(obj_target) != undefined;
        if (obj_listener != undefined)
        {
            this.addListener(obj_listener);
        } // end if
        if (!_loc4)
        {
            this.dispatchEvent({type: "onLoadInvalidObject", target: this});
            return (_loc3);
        } // end if
        var _loc2 = new Object();
        _loc2._target = this.locationToTarget(obj_target);
        _loc2._url = str_URl;
        _loc2._listener = obj_listener;
        _loc2._priority = this.__get__loadQueue().push(_loc2) - 1;
        _loc2._index = __int_itemID++;
        _loc3 = _loc2._index;
        if (!this.__get__isLoading() && this.__get__autoLoad())
        {
            this.dispatchEvent({type: "onLoadStarted", target: this, loadObject: this.__get__currentLoadObject()});
            this.loadNext();
        } // end if
        return (_loc3);
    } // End of the function
    function loadAtPriority(obj_target, str_URl, int_priority, obj_listener)
    {
        if (int_priority === 0 && this.__get__isLoading())
        {
            this.pause();
        } // end if
        var _loc3 = -1;
        var _loc10 = this.__get__loadQueue().length;
        var _loc4 = this.locationToTarget(obj_target) != undefined;
        if (obj_listener != undefined)
        {
            this.addListener(obj_listener);
        } // end if
        if (!_loc4)
        {
            this.dispatchEvent({type: "onLoadInvalidObject", target: this});
            return (_loc3);
        } // end if
        var _loc2 = new Object();
        _loc2._target = this.locationToTarget(obj_target);
        _loc2._url = str_URl;
        _loc2._listener = obj_listener;
        _loc2._priority = int_priority;
        _loc2._index = __int_itemID++;
        this.__get__loadQueue().splice(int_priority, 0, _loc2);
        _loc3 = _loc2._index;
        if (this.__get__isPaused())
        {
            this.dispatchEvent({type: "onLoadStarted", target: this, loadObject: this.__get__currentLoadObject()});
            this.resume();
        }
        else
        {
            this.dispatchEvent({type: "onLoadStarted", target: this, loadObject: this.__get__currentLoadObject()});
            this.loadNext();
        } // end else if
        return (_loc3);
    } // End of the function
    function stop()
    {
        this.endInterval();
        __arr_curQueue.length = 0;
        __arr_curQueue = undefined;
        delete this.__arr_curQueue;
        __arr_curQueue = new Array();
        __bln_isPaused = __bln_isLoading = false;
        __int_itemID = 0;
        this.dispatchEvent({type: "onLoadStopped", target: this});
    } // End of the function
    function observe(obj_target, obj_listener)
    {
        if (this.__get__isLoading())
        {
            this.pause();
        } // end if
        var _loc3 = this.locationToTarget(obj_target) != undefined;
        if (obj_listener != undefined)
        {
            this.addListener(obj_listener);
        } // end if
        if (!_loc3)
        {
            this.dispatchEvent({type: "onLoadInvalidObject", target: this});
            return;
        } // end if
        var _loc2 = new Object();
        _loc2._target = this.locationToTarget(obj_target);
        _loc2._url = undefined;
        _loc2._listener = obj_listener;
        _loc2._priority = undefined;
        _loc2._index = __int_itemID++;
        this.__get__loadQueue().splice(0, 0, _loc2);
        if (this.__get__isPaused())
        {
            this.resume();
        }
        else
        {
            this.loadNext();
        } // end else if
        this.dispatchEvent({type: "onLoadObserveStarted", target: this, loadObject: this.__get__currentLoadObject()});
    } // End of the function
    function pause()
    {
        if (this.__get__isPaused())
        {
            return (false);
        } // end if
        this.pauseLoading();
        this.dispatchEvent({type: "onLoadPause", target: this, loadObject: this.__get__currentLoadObject()});
        return (true);
    } // End of the function
    function resume()
    {
        if (!this.__get__isPaused())
        {
            return (false);
        } // end if
        this.resumeLoading();
        this.dispatchEvent({type: "onLoadResume", target: this, loadObject: this.__get__currentLoadObject()});
        return (true);
    } // End of the function
    function start()
    {
        if (this.__get__isLoading())
        {
            return;
        } // end if
        if (this.__get__isPaused())
        {
            this.resume();
        }
        else
        {
            this.loadNext();
        } // end else if
    } // End of the function
    function addItem(obj_target, str_URl, obj_listener)
    {
        var _loc3 = -1;
        var _loc4 = this.locationToTarget(obj_target) != undefined;
        if (obj_listener != undefined)
        {
            this.addListener(obj_listener);
        } // end if
        if (!_loc4)
        {
            this.dispatchEvent({type: "onLoadInvalidObject", target: this});
            return (_loc3);
        } // end if
        var _loc2 = new Object();
        _loc2._target = this.locationToTarget(obj_target);
        _loc2._url = str_URl;
        _loc2._listener = obj_listener;
        _loc2._priority = this.__get__loadQueue().push(_loc2) - 1;
        _loc2._index = __int_itemID++;
        _loc3 = _loc2._index;
        return (_loc3);
    } // End of the function
    function addItemAtPriority(obj_target, str_URl, int_priority, obj_listener)
    {
        if (int_priority === 0 && this.__get__isLoading())
        {
            this.pause();
        } // end if
        var _loc3 = -1;
        var _loc10 = this.__get__loadQueue().length;
        var _loc4 = this.locationToTarget(obj_target) != undefined;
        if (obj_listener != undefined)
        {
            this.addListener(obj_listener);
        } // end if
        if (!_loc4)
        {
            this.dispatchEvent({type: "onLoadInvalidObject", target: this});
            return (_loc3);
        } // end if
        var _loc2 = new Object();
        _loc2._target = this.locationToTarget(obj_target);
        _loc2._url = str_URl;
        _loc2._listener = obj_listener;
        _loc2._priority = int_priority;
        _loc2._index = __int_itemID++;
        this.__get__loadQueue().splice(int_priority, 0, _loc2);
        _loc3 = _loc2._index;
        if (this.__get__isPaused())
        {
            this.dispatchEvent({type: "onLoadStarted", target: this, loadObject: this.__get__currentLoadObject()});
            this.resume();
        }
        else
        {
            this.dispatchEvent({type: "onLoadStarted", target: this, loadObject: this.__get__currentLoadObject()});
            this.loadNext();
        } // end else if
        return (_loc3);
    } // End of the function
    function setPriority(int_priority, obj_targetItem)
    {
        var _loc3 = -1;
        var _loc5 = this.__get__loadQueue().length;
        var _loc2;
        if (!_loc5)
        {
            return (_loc3);
        } // end if
        if (int_priority < 0 || int_priority > __int_itemID || int_priority > _loc5)
        {
            return (-2);
        } // end if
        _loc2 = this.getTargetItemObject(obj_targetItem);
        if (_loc2 == undefined)
        {
            return (-3);
        } // end if
        if (_loc2.target._priority == int_priority)
        {
            return (-4);
        } // end if
        this.pause();
        this.moveQueueItem(_loc2.index, int_priority);
        this.resume();
        _loc3 = _loc2.index;
        return (_loc3);
    } // End of the function
    function getPriority()
    {
        //return (this.currentLoadObject()._priority);
    } // End of the function
    function getTargetItemObject(_val)
    {
        var _loc3;
        var _loc4 = typeof(_val) == "number";
        _loc3 = _loc4 ? (this.findObjectByIndex(_val)) : (this.findObjectByURL(_val));
        return (_loc3);
    } // End of the function
    function setPriorityAt(obj_i, int_i, int_priority)
    {
        var _loc2 = this.__get__loadQueue().length;
    } // End of the function
    function getPriorityAt(obj_i, int_i, int_priority)
    {
        //return (this.currentLoadObject()._priority);
    } // End of the function
    function getBytesLoaded()
    {
        //return (this.bytesLoaded());
    } // End of the function
    function getBytesTotal()
    {
        //return (this.bytesTotal());
    } // End of the function
    function get isLoading()
    {
        return (__bln_isLoading);
    } // End of the function
    function get isPaused()
    {
        return (__bln_isPaused);
    } // End of the function
    function get loadSpeed()
    {
        return (__int_loadSpeed);
    } // End of the function
    function get loadDurationCurrent()
    {
        return (__int_loadDurationCurrent);
    } // End of the function
    function get loadTimeCurrent()
    {
        return (__int_loadTimeCurrent);
    } // End of the function
    function get percentLoaded()
    {
        return (__int_percentLoadedCurrent);
    } // End of the function
    function get bytesLoaded()
    {
        return (__int_bytesLoaded);
    } // End of the function
    function get bytesTotal()
    {
        return (__int_bytesTotal);
    } // End of the function
    function get target()
    {
        //return (this.currentLoadObject()._target);
    } // End of the function
    function get targetPath()
    {
        //return (typeof(this.target()) == "movieclip" ? (targetPath(this.__get__target())) : (this.__get__target()));
    } // End of the function
    function get targetURL()
    {
        //return (this.currentLoadObject()._url);
    } // End of the function
    function get currentLoadObject()
    {
        return (__obj_currentLoadObject);
    } // End of the function
    function get loadQueue()
    {
        return (__arr_curQueue);
    } // End of the function
    function set autoLoad(bln_i)
    {
        __bln_autoLoad = bln_i;
        //return (this.autoLoad());
        null;
    } // End of the function
    function get autoLoad()
    {
        return (__bln_autoLoad);
    } // End of the function
    function set intervalMS(int_i)
    {
        var _loc2 = int_i < 0 || int_i == 0;
        __int_loadIntervalMS = _loc2 ? (com.fbpublisher.basicskin.LoadQueueManager.__int_defaultIntervalMS) : (int_i);
        this.dispatchEvent({type: "onIntervalMSSet", target: this, value: _loc2});
        //return (this.intervalMS());
        null;
    } // End of the function
    function get intervalMS()
    {
        return (__int_loadIntervalMS);
    } // End of the function
    function set timeOutMS(int_i)
    {
        var _loc2 = int_i < 0 || int_i == 0;
        __int_timeOutMS = _loc2 ? (com.fbpublisher.basicskin.LoadQueueManager.__int_defaultTimeoutMS) : (int_i);
        this.dispatchEvent({type: "onTimeOutMSSet", target: this, value: _loc2});
        //return (this.timeOutMS());
        null;
    } // End of the function
    function get timeOutMS()
    {
        return (__int_timeOutMS);
    } // End of the function
    function startLoading()
    {
        __bln_isLoading = true;
        __bln_isPaused = false;
        __bln_hasTimedOut = false;
        __obj_mclListnr = __mcl_currentLoadClip = undefined;
        delete this.__mcl_currentLoadClip;
        __obj_mclListnr;
        var _loc3;
        var _loc2 = this.__get__loadQueue()[0];
        __obj_currentLoadObject = _loc2;
        __obj_currentLoadTarget = _loc2._target;
        __obj_currentLoadListener = _loc2._listener;
        __str_currentLoadURL = _loc2._url;
        _loc3 = this.targetLoadType(this.locationToTarget(__obj_currentLoadTarget));
        if (this.locationIsLevel(__obj_currentLoadTarget))
        {
            _loc3 = 4;
        } // end if
        if (__str_currentLoadURL == undefined)
        {
            _loc3 = -1;
        } // end if
        switch (_loc3)
        {
            case -1:
            {
                __bln_isLoading = true;
                break;
            } 
            case 4:
            {
                loadMovie(__str_currentLoadURL, __obj_currentLoadTarget);
                __bln_isLoading = true;
                break;
            } 
            case 3:
            {
                __obj_mclListnr = new Object();
                __obj_mclListnr._parent = this;
                __obj_mclListnr.onLoadInit = function ()
                {
                    _parent.removeMovieClipLoader();
                };
                __obj_mclListnr.onLoadError = function (target_mc, errorCode, httpStatus)
                {
                    _parent.endInterval();
                    _parent.loadQueue.splice(0, 1);
                    _parent.__int_loadNextInterval = setInterval(_parent, "loadNext", com.fbpublisher.basicskin.LoadQueueManager.__int_defaultLoadNextMS);
                    _parent.dispatchEvent({type: "onLoadItemError", target: _parent, loadObject: _parent.currentLoadObject, errorCode: errorCode, httpStatus: httpStatus});
                };
                __mcl_currentLoadClip = new MovieClipLoader();
                __mcl_currentLoadClip.loadClip(__str_currentLoadURL, __obj_currentLoadTarget);
                __mcl_currentLoadClip.addListener(__obj_mclListnr);
                __bln_isLoading = true;
                break;
            } 
            case 2:
            {
                __obj_currentLoadTarget.loadSound(__str_currentLoadURL);
                __bln_isLoading = true;
                break;
            } 
            case 1:
            {
                __obj_currentLoadTarget.load(__str_currentLoadURL);
                __bln_isLoading = true;
                break;
            } 
            default:
            {
                __bln_isLoading = false;
                break;
            } 
        } // End of switch
        if (this.__get__isLoading())
        {
            this.startInterval();
        }
        else
        {
            this.dispatchEvent({type: "onLoadInvalidObject", target: this});
        } // end else if
    } // End of the function
    function pauseLoading()
    {
        var _loc2 = this.targetLoadType(this.locationToTarget(__obj_currentLoadTarget));
        if (this.locationIsLevel(__obj_currentLoadTarget))
        {
            _loc2 = 4;
        } // end if
        switch (_loc2)
        {
            case 4:
            {
                loadMovie(undefined, __obj_currentLoadTarget);
                unloadMovie(__obj_currentLoadTarget);
                break;
            } 
            case 3:
            {
                __mcl_currentLoadClip.unloadClip(__obj_currentLoadTarget);
                __obj_currentLoadTarget.loadMovie(undefined);
                __obj_currentLoadTarget.unloadMovie();
                break;
            } 
            case 2:
            {
                __obj_currentLoadTarget.loadSound(undefined);
                __obj_currentLoadTarget.unloadMovie();
                break;
            } 
            case 1:
            {
                __obj_currentLoadTarget.load(undefined);
                break;
            } 
        } // End of switch
        __bln_isPaused = true;
        __bln_isLoading = false;
        this.endInterval();
    } // End of the function
    function resumeLoading()
    {
        __bln_isPaused = false;
        this.loadNext();
    } // End of the function
    function startInterval()
    {
        if (__int_loadInterval != undefined)
        {
            this.endInterval();
        } // end if
        __int_loadInterval = setInterval(this, "onInterval", this.__get__intervalMS());
        __int_timeInterval = setInterval(this, "startTimeOut", this.__get__intervalMS());
    } // End of the function
    function startTimeOut()
    {
        var _loc3 = this.targetToLoc(this.__get__target());
        var _loc2 = this.checkBytesTotal(_loc3) && this.checkBytesLoaded(_loc3);
        if (_loc2)
        {
            this.endTimeOut();
        } // end if
        if (__int_timeCurrent >= this.__get__timeOutMS() && !_loc2)
        {
            this.endTimeOut();
            __bln_hasTimedOut = true;
        } // end if
        ++__int_timeCurrent;
    } // End of the function
    function endTimeOut()
    {
        clearInterval(__int_timeInterval);
        __int_timeInterval = undefined;
        __int_timeCurrent = 0;
    } // End of the function
    function endInterval()
    {
        if (__int_loadInterval != undefined)
        {
            this.endTimeOut();
            clearInterval(__int_loadInterval);
            __obj_mclListnr = undefined;
            __mcl_currentLoadClip = undefined;
            __int_loadInterval = undefined;
            delete this.__mcl_currentLoadClip;
            __obj_mclListnr;
            __bln_isLoading = false;
        } // end if
    } // End of the function
    function removeMovieClipLoader()
    {
        __obj_mclListnr = __mcl_currentLoadClip = undefined;
        delete this.__mcl_currentLoadClip;
        __obj_mclListnr;
    } // End of the function
    function onInterval()
    {
        var _loc2 = this.targetToLoc(this.__get__target());
        if (!this.checkBytesTotal(_loc2))
        {
            return;
        } // end if
        if (!this.checkBytesLoaded(_loc2))
        {
            return;
        } // end if
        if (this.checkBytesTotal(_loc2) && this.checkBytesLoaded(_loc2))
        {
            if (this.checkComplete(_loc2) && __mcl_currentLoadClip == undefined)
            {
                this.endInterval();
                this.__get__loadQueue().splice(0, 1);
                __int_loadNextInterval = setInterval(this, "loadNext", com.fbpublisher.basicskin.LoadQueueManager.__int_defaultLoadNextMS);
                this.dispatchEvent({type: "onLoadItemComplete", target: this, loadObject: this.__get__currentLoadObject()});
                return;
            } // end if
        }
        else if (__bln_hasTimedOut)
        {
            this.endInterval();
            this.__get__loadQueue().splice(0, 1);
            __int_loadNextInterval = setInterval(this, "loadNext", com.fbpublisher.basicskin.LoadQueueManager.__int_defaultLoadNextMS);
            this.dispatchEvent({type: "onLoadItemTimedOut", target: this, loadObject: this.__get__currentLoadObject()});
            return;
        } // end else if
        this.dispatchEvent({type: "onLoadProgress", target: this, loadObject: this.__get__currentLoadObject()});
    } // End of the function
    function loadNext()
    {
        clearInterval(__int_loadNextInterval);
        if (this.checkLoadQueue())
        {
            this.startLoading();
        }
        else
        {
            __bln_isLoading = false;
            __bln_isPaused = false;
            this.dispatchEvent({type: "onLoadComplete", target: this, loadObject: this.__get__currentLoadObject()});
        } // end else if
    } // End of the function
    function targetLoadType(_val)
    {
        var _loc2 = 0;
        if (typeof(_val.load) == "function")
        {
            _loc2 = 1;
        }
        else if (typeof(_val.loadSound) == "function")
        {
            _loc2 = 2;
        }
        else if (typeof(_val.loadMovie) == "function")
        {
            _loc2 = 3;
        } // end else if
        if (typeof(_val) == "string" || this.locationIsLevel(_val))
        {
            _loc2 = 4;
        } // end if
        return (_loc2);
    } // End of the function
    function targetToLoc(_val)
    {
        return (typeof(_val) == "string" ? (String(_val)) : (_val));
    } // End of the function
    function targetToString(_val)
    {
        return (String(_val));
    } // End of the function
    function locationToTarget(_val)
    {
        var int_loactionType = this.getLocationType(_val);
        var obj_retval;
        switch (int_loactionType)
        {
            case 1:
            {
                obj_retval = "_level" + _val;
                break;
            } 
            case 0:
            case 2:
            case 3:
            case 4:
            {
                obj_retval = _val;
                break;
            } 
            case 5:
            {
                if (this.locationIsLevelPath(_val))
                {
                    obj_retval = String(_val);
                    break;
                }
                else if (typeof(_val) == "string" && _val.length > 0)
                {
                    obj_retval = _val;
                } // end else if
                break;
            } 
            default:
            {
                obj_retval = undefined;
            } 
        } // End of switch
        return (obj_retval);
    } // End of the function
    function getLocationType(_val)
    {
        var _loc2 = -1;
        if (!this.locationIsLoadable(_val))
        {
            var _loc3 = typeof(_val);
        } // end if
        switch (_loc3)
        {
            case "number":
            {
                _loc2 = 1;
                break;
            } 
            case "movieclip":
            {
                _loc2 = 2;
                break;
            } 
            case "xml":
            {
                _loc2 = 3;
                break;
            } 
            case "sound":
            {
                _loc2 = 4;
                break;
            } 
            case "string":
            {
                _loc2 = 5;
                break;
            } 
            default:
            {
                _loc2 = 0;
                break;
            } 
        } // End of switch
        return (_loc2);
    } // End of the function
    function locationIsLoadable(_val)
    {
        var _loc1 = typeof(_val.getBytesTotal) == "function" && typeof(_val.getBytesLoaded) == "function";
        return (_loc1);
    } // End of the function
    function locationIsLevelPath(_val)
    {
        var _loc2 = false;
        _loc2 = this.locationIsLevel(_val) && this.locationIsPath(_val);
        return (_loc2);
    } // End of the function
    function locationIsLevel(_val)
    {
        var _loc1 = _val.indexOf("_level") == 0 && !isNaN(_val.substring(6));
        return (_loc1);
    } // End of the function
    function locationIsPath(_val)
    {
        var bln_retVal = typeof(_val) == "string" && typeof(String(_val)) == "movieclip" && (String(_val) != _level0 || _val == "_level0");
        return (bln_retVal);
    } // End of the function
    function checkBytesTotal(_val)
    {
        var _loc2 = _val.getBytesTotal();
        if (isNaN(_loc2) || _loc2 == undefined || _loc2 <= 0)
        {
            __int_bytesTotal = null;
            return (false);
        } // end if
        __int_bytesTotal = _loc2;
        return (true);
    } // End of the function
    function checkBytesLoaded(_val)
    {
        var _loc2 = _val.getBytesLoaded();
        if (isNaN(_loc2) || _loc2 == undefined || _loc2 <= 0)
        {
            __int_bytesLoaded = null;
            return (false);
        } // end if
        __int_bytesLoaded = _loc2;
        return (true);
    } // End of the function
    function checkComplete(_val)
    {
        var _loc3 = false;
        var _loc4 = _val.getBytesTotal();
        var _loc2 = _val.getBytesLoaded();
        var _loc5 = Math.ceil(_loc2 / _loc4 * 100);
        __int_percentLoadedCurrent = _loc5;
        if (_loc2 == null || _loc4 == undefined || isNaN(_loc4))
        {
            return (_loc3);
        } // end if
        if (_loc2 == null || _loc2 == undefined || isNaN(_loc2))
        {
            return (_loc3);
        } // end if
        if (_loc4 === _loc2)
        {
            _loc3 = true;
        }
        else if (isNaN(_loc5))
        {
            _loc3 = false;
        } // end else if
        return (_loc3);
    } // End of the function
    function checkLoadQueue()
    {
        var _loc2 = this.__get__loadQueue().length > 0;
        return (_loc2);
    } // End of the function
    function findObjectByPriority(int_i)
    {
        var _loc3 = this.__get__loadQueue().length;
        var _loc4;
        var _loc7;
        for (var _loc2 = 0; _loc2 < _loc3; ++_loc2)
        {
            _loc4 = this.__get__loadQueue()[_loc2];
            if (_loc4._priority === int_i)
            {
                _loc7 = {target: this.__get__loadQueue()[_loc2], index: _loc2};
                _loc2 = _loc3;
            } // end if
        } // end of for
        return (_loc7);
    } // End of the function
    function findObjectByIndex(int_i)
    {
        var _loc3 = this.__get__loadQueue().length;
        var _loc4;
        var _loc7;
        for (var _loc2 = 0; _loc2 < _loc3; ++_loc2)
        {
            _loc4 = this.__get__loadQueue()[_loc2];
            if (_loc4._index === int_i)
            {
                _loc7 = {target: this.__get__loadQueue()[_loc2], index: _loc2};
                _loc2 = _loc3;
            } // end if
        } // end of for
        return (_loc7);
    } // End of the function
    function findObjectByURL(str_i)
    {
        var _loc3 = this.__get__loadQueue().length;
        var _loc4;
        var _loc7;
        for (var _loc2 = 0; _loc2 < _loc3; ++_loc2)
        {
            _loc4 = this.__get__loadQueue()[_loc2];
            if (_loc4._url.toLowerCase() === str_i.toLowerCase())
            {
                _loc7 = {target: this.__get__loadQueue()[_loc2], index: _loc2};
                _loc2 = _loc3;
            } // end if
        } // end of for
        return (_loc7);
    } // End of the function
    function moveQueueItem(int_curIndex, int_newIndex)
    {
        var _loc2 = true;
        this.__get__loadQueue().splice(int_newIndex, 0, this.__get__loadQueue().splice(int_curIndex, 1)[0]);
        return (_loc2);
    } // End of the function
    static var symbolName = "LoadQueueManager";
    static var className = "LoadQueueManager";
    static var symbolOwner = com.fbpublisher.basicskin.LoadQueueManager;
    static var __int_defaultTimeoutMS = 50;
    static var __int_defaultIntervalMS = 5;
    static var __int_defaultLoadNextMS = 300;
    static var __int_defaultMinSteps = 5;
    var __arr_defaultExtensions = [".jpg", ".jpeg", ".gif", ".png", ".swf", ".xml", ".txt"];
    var __bln_autoLoad = true;
    var __bln_isLoading = false;
    var __bln_isPaused = false;
    var __bln_hasTimedOut = false;
    var __int_itemID = 0;
    var __int_loadDurationCurrent = 0;
    var __int_loadDurationTotal = 0;
    var __int_loadSpeed = 0;
    var __int_loadTimeCurrent = 0;
    var __int_loadTimeTotal = 0;
    var __int_percentLoadedCurrent = 0;
    var __int_percentLoadedTotal = 0;
    var __int_bytesLoaded = 0;
    var __int_bytesTotal = 0;
    var __int_timeOutMS = 50;
    var __int_loadIntervalMS = 5;
    var __int_loadNextMS = 300;
    var __int_steps = 1;
    var __int_timeCurrent = 0;
    var __str_currentLoadURL = "";
} // End of Class
#endinitclip
