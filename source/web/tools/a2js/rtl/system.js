define('system', ['standard'], function(_ec) {
    return (function(_ec) {
        _ec._nested = function() {};
        _ec._nested.prototype = _ec;
        return _ec;
    })(_ec.system = new _ec._nested());
});