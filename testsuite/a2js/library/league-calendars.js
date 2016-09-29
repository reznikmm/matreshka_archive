define('league-calendars', ['league'], function(_ec) {
    return (function(_ec) {
        _ec._nested = function() {};
        _ec._nested.prototype = _ec;
        _ec.clock = function() {return new Date()};
        return _ec;
    })(_ec.strings = new _ec._nested());
});
