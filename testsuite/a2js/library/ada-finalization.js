define('ada-finalization', ['ada'], function(_ec) {
    return (function(_ec) {
        _ec._nested = function() {};
        _ec._nested.prototype = _ec;
        _ec.controlled = function() {};
        _ec.controlled.prototype = _ec._tag('controlled', '');
        _ec.controlled.prototype.initialize = _ec._null;
        _ec.controlled.prototype.adjust = _ec._null;
        _ec.controlled.prototype.finalize = _ec._null;
        _ec.limited_controlled = function() {};
        _ec.limited_controlled.prototype = _ec._tag('limited_controlled', '');
        _ec.limited_controlled.prototype.initialize = _ec._null;
        _ec.limited_controlled.prototype.finalize = _ec._null;
        return _ec;
    })(_ec.finalization = new _ec._nested());
});
