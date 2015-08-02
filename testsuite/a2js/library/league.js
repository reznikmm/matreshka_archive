define('league', ['standard'], function(_parent) {
    var _ec = new _parent._nested();
    _parent.standard.league = _ec;
    _ec._nested = function() {};
    _ec._nested.prototype = _ec;
    return _ec;
});