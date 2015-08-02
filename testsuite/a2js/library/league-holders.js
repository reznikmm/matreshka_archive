define('league-holders', ['league'], function(_parent) {
    var _ec = new _parent._nested();
    _parent.standard.league.holders = _ec;
    _ec._nested = function() {};
    _ec._nested.prototype = _ec;
    _ec.holder = function () { this.data = undefined; };
    _ec.holder.prototype = _ec._tag ('holder', '');
    _ec.holder.prototype.is_abstract_float = function () { return false; };
    _ec.holder.prototype.element = function (){return this.data};
    _ec.to_holder = function(value) {
        var error = new Error();
        error.message = "Call to unimplemented league.holders.to_holder";
        throw error;
    };
    _ec.element = function(value) {
        return value.data;
    };
    return _ec;
});
