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

    //  Constructor for tags
    standard._tag = function (tag_name, parent_name){
        var result = Object.create (all_types[parent_name]);
        result._external_tag = tag_name;
        all_types [tag_name] = result;
        return result;
    };
    all_types [''] = {};  //  prototype from root tags

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
  
    return standard;
});
