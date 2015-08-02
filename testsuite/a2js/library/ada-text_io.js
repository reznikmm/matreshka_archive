define('ada-text_io', ['ada'], function(_ec) {
    return (function(_ec) {
        var buffer = "";
        _ec._nested = function() {};
        _ec._nested.prototype = _ec;
        _ec.put$3 = function put(item) {
            buffer = buffer + item;
        };
        _ec.put_line$1 = function put_line(item) {
            buffer = buffer + item;
            console.log(buffer);
            buffer = "";
        };
        return _ec;
    })(_ec.text_io = new _ec._nested());
});
