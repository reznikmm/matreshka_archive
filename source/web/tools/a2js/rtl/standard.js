//  This code is placeholder for Standard Ada package
define('standard', [], function(){
    var standard = {};
    var all_types = {};  //  Map from external_tag to tag(prototype)
    standard._nested = function (){};
    standard._nested.prototype = standard;
    standard.standard = standard;

    //  This function used as abstract methods of tagged types.
    standard._abstract = function (){
        var error = new Error();
        error.message = "Call of abstract function";
        throw error;
    };

    //  This function used as null methods of tagged types.
    standard._null = function (){};

    //  Constructor for tags
    standard._tag = function (tag_name, parent_name){
        var result = Object.create (all_types[parent_name]);
        result._external_tag = tag_name;
        result._parent_tag = parent_name;
        all_types [tag_name] = result;
        return result;
    };
    standard._in = function (a, b){
        var a_tag = a._external_tag;
        var b_tag = b.prototype._external_tag;
        while (b_tag != '') {
            if (a_tag == b_tag) return true;
            b_tag = all_types[b_tag]._parent_tag;
        }
        return false;
    };
    all_types [''] = {};  //  prototype from root tags

    //  Used in extension aggregate
    standard._extend = function (base, props){
        for (var attrname in props) { base[attrname] = props[attrname]; }
        return base;
    };

    //  T'Pos(x) for discrete type T
    standard._pos = function (x){
        switch(typeof(x)){
            case 'boolean': return +x;
            case 'string': return x.charCodeAt(0);
            default: return x;
        }
    };

    //  T'Succ(x) for discrete type T
    standard._succ = function (x){
        switch(typeof(x)){
            case 'boolean': return !x;
            case 'string': return String.fromCharCode (x.charCodeAt(0)+1);
            default: return x+1;
        }
    };

    standard._image = function (x){
        return x.toString();
    };

    standard._generic_elementary_functions = {
        arccos : Math.acos,
        sqrt : Math.sqrt,
    };

    standard._addEventListener = function (element, name, handler, cap){
        if (typeof handler._func === "undefined"){
            handler._func = function (event) {
                handler.handle_event(event);
            }
        }
        element.addEventListener (name, handler._func, cap);
    };

    standard._removeEventListener = function (element, name, handler, cap){
        if (typeof handler._func !== "undefined"){
            element.removeEventListener (name, handler._func, cap);
        }
    };

    standard._unchecked_deallocation = function (x) {
    };

    standard._ada_array = {  //  Prototype for any Ada array
        "_index" : function () {
            var index = this._offset, size = 1;
            for (var i = 0; i < arguments.length; i++){
                index +=
                    (standard._pos (arguments[i]) - this._first[i]) * size;
                size *= this._length[i];
            }
            return index;
        },
        "_slice" : function (_from, _to) {
            var result = Object.create(standard._ada_array);
            result._first = [_from];
            result._last = [_to];
            result._length = [_to - _from + 1];
            result._offset = this._offset + standard._pos (_from)
              - standard._pos (this._first[0]);
            result.A = this.A;
            return result;
        }
    };

    return standard;
});
