define('ada-finalization', ['ada'], function(_ec) {
    return (function(_ec) {
        _ec._nested = function() {};
        _ec._nested.prototype = _ec;
        _ec.controlled = {};
        _ec.controlled._constructor = function() {};
        _ec.controlled._constructor.prototype = _ec._tag('controlled', '');
        _ec.controlled._constructor.prototype.initialize = _ec._null;
        _ec.controlled._constructor.prototype.adjust = _ec._null;
        _ec.controlled._constructor.prototype.finalize = _ec._null;
        _ec.limited_controlled = {};
        _ec.limited_controlled._constructor = function() {};
        _ec.limited_controlled._constructor.prototype = _ec._tag('limited_controlled', '');
        _ec.limited_controlled._constructor.prototype.initialize = _ec._null;
        _ec.limited_controlled._constructor.prototype.finalize = _ec._null;
        return _ec;
    })(_ec.finalization = new _ec._nested());
});
