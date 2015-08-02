define('league-holders-long_floats', ['league-holders'], function(_parent) {
    var _ec = new _parent._nested();
    _parent.standard.league.holders.long_floats = _ec;
    _ec._nested = function() {};
    _ec._nested.prototype = _ec;
    _ec.float_holder = function (val) { this.data = val; };
    _ec.float_holder.prototype = _ec._tag ('float_holder', 'holder');
    _ec.float_holder.prototype.is_abstract_float = function() { return true; };
    _ec.to_holder = function(value) {
        return new _ec.float_holder (value);
    };

    return _ec;
});
