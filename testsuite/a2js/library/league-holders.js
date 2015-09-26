define('league-holders', ['league'], function(_parent) {
    var _ec = new _parent._nested();
    _parent.standard.league.holders = _ec;
    _ec._nested = function() {};
    _ec._nested.prototype = _ec;
    _ec.holder = function () { this.data = undefined; };
    _ec.holder.prototype = _ec._tag ('holder', '');
    _ec.holder.prototype.is_abstract_float = function () { return false; };
    _ec.holder.prototype.element = function (){return this.data};
    _ec.holder.prototype._assign = function (val){
        this.data = val.data;
        this.is_abstract_float = val.is_abstract_float;
    };
    _ec.to_holder = function(value) {
        var error = new Error();
        error.message = "Call to unimplemented league.holders.to_holder";
        throw error;
    };
    _ec.is_abstract_float = function() {
        return this.is_abstract_float();
    };
    _ec.element =
        _ec.element$1 =
        _ec.element$2 =
            function() {
                return this.data;
            };
    _ec.empty_holder = new _ec.holder();
    return _ec;
});
