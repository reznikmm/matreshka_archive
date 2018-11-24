//--------------------------------------------------------------------------//
//                                                                          //
//                            Matreshka Project                             //
//                                                                          //
//                               Web Framework                              //
//                                                                          //
//                        Runtime Library Component                         //
//                                                                          //
//--------------------------------------------------------------------------//
//                                                                          //
// Copyright © 2016-2018, Vadim Godunko <vgodunko@gmail.com>                //
// All rights reserved.                                                     //
//                                                                          //
// Redistribution and use in source and binary forms, with or without       //
// modification, are permitted provided that the following conditions       //
// are met:                                                                 //
//                                                                          //
//  * Redistributions of source code must retain the above copyright        //
//    notice, this list of conditions and the following disclaimer.         //
//                                                                          //
//  * Redistributions in binary form must reproduce the above copyright     //
//    notice, this list of conditions and the following disclaimer in the   //
//    documentation and/or other materials provided with the distribution.  //
//                                                                          //
//  * Neither the name of the Vadim Godunko, IE nor the names of its        //
//    contributors may be used to endorse or promote products derived from  //
//    this software without specific prior written permission.              //
//                                                                          //
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      //
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        //
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    //
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     //
// HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   //
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED //
// TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   //
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   //
// LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     //
// NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       //
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             //
//                                                                          //
//--------------------------------------------------------------------------//
//  $Revision$ $Date$
//--------------------------------------------------------------------------//
//  This code is placeholder for Standard Ada package
//--------------------------------------------------------------------------//

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
    standard._tag = function (tag_name, parent_name, register){
        var result = Object.create (all_types[parent_name]);
        register = typeof register !== 'undefined' ?  register : true;
        result._external_tag = tag_name;
        result._parent_tag = parent_name;
        if (register) all_types [tag_name] = result;
        return result;
    };
    standard._in = function (a, b){
        var a_tag = a._external_tag;
        var b_tag = b.prototype._external_tag;
        while (a_tag != '') {
            if (a_tag == b_tag) return true;
            a_tag = all_types[a_tag]._parent_tag;
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
    //  T'Val(x) for discrete type T. FIXME how to do it for all types?
    standard._val = function (x){
        return x;
    };

    //  T'Succ(x) for discrete type T
    standard._succ = function (x){
        switch(typeof(x)){
            case 'boolean': return !x;
            case 'string': return String.fromCharCode (x.charCodeAt(0)+1);
            default: return x+1;
        }
    };

    //  T'Image attribute
    standard._image = function (x){
        return x.toString();
    };

    //  T'Rounding attribute
    standard._rounding = function (x){
        return Math.sign(x) * Math.round(Math.abs(x));
    };

    //  Ada.Numerics.Generic_Complex_Elementary_Functions
    standard._generic_elementary_functions = function(){ return {
        arccos : Math.acos,
        cos    : Math.cos,
        sin    : Math.sin,
        sqrt   : Math.sqrt
    }};

    //  System.Address_To_Access_Conversions
    standard._address_to_access_conversions = function(){
        function id(x){ return x };
        return {
            to_pointer : id,
            to_address : id
        }
    };

    //  League.Holders.Generic_Holders
    standard._generic_holders = function(_parent) {
        function generic_holder (val) { this.data = val; };
        generic_holder.prototype = _ec._tag ('generic_holder', 'holder', false);

        function element (value) { return value.data };
        function replace_element (obj, value) { obj.data = value };
        function to_holder (value) {
            return new _ec.generic_holder (value);
        };

        return {
            element: element,
            replace_element: replace_element,
            to_holder: to_holder
        };
    };

    //  Ada.Unchecked_Deallocation
    standard._unchecked_deallocation = function(){
        return function _free (x) { return {x: null} };
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

    standard._requestAnimationFrame = function (window, handler) {
        if (typeof handler._func === "undefined") {
            handler._func = function (time) {
                handler.handle_animation_frame (time);
            }
        }
        return window.requestAnimationFrame (handler._func);
    };

    standard._ada_array = //  A constructor for any Ada array
    function (data, from, to){
        var first = from.map (standard._pos);
        var len = to.map (function (to, i){
            return standard._pos(to) - first[i] + 1;
        });
        var length = len.reduce (function (a, b){ return a * b; }, 1);
        this._length = len;
        this.A = new Array (length);
        this._first = from;
        this._last = to;
        this._offset = 0;
        var index, saved = [], indexes = [];

        function push_elements (elements) {
            saved.push(index);
            index = from[indexes.length];
            for (var j = 0; j<elements.length; j++){
                push_value.call(this, elements[j]);
            }
            index = saved.pop();
        }

        function push_value(bounds){
            var value = bounds[0];
            if (bounds.length == 1){
                assign.call(this, index, value);
                index = standard._succ (index);
            }else
                for (var j = 1; j < bounds.length; j+=2) {
                    var lower = bounds[j];
                    var upper = bounds[j+1];
                    if (typeof lower == 'undefined'){
                        //  FIXME: Only simple case implemented here:
                        //  (1, 2, 3, others => 5)
                        lower = index;
                        upper = this._last [indexes.length];
                    }else if (typeof upper == 'undefined')
                        upper = lower;
                    var count = standard._pos(upper) - standard._pos(lower) + 1;
                    for (var k=0; k<count; k++){
                        assign.call(this, lower, value);
                        lower = standard._succ (lower);
                    }
                }
        };

        function assign(index, value){
            indexes.push(index);

            if (indexes.length == this._first.length)
                this.A [this._index.apply (this, indexes)] = value
            else
                push_elements.call (this, value);

            indexes.pop();
        }

        push_elements.call (this, data);
    };

    standard._ada_array.prototype = {  //  Prototype for any Ada array
        "_index" : function () {
            var index = this._offset, size = 1;
            for (var i = arguments.length - 1; i >= 0; i--){
                index +=
                    (standard._pos (arguments[i]) - this._first[i]) * size;
                size *= this._length[i];
            }
            return index;
        },
        "_slice" : function (_from, _to) {
            var result = Object.create(Object.getPrototypeOf(this));
            result._first = [_from];
            result._last = [_to];
            result._length = [_to - _from + 1];
            result._offset = this._offset + standard._pos (_from)
              - standard._pos (this._first[0]);
            result.A = this.A;
            return result;
        },
        "_assign" : function (r) {
            var t,s,j; //  if multidim arr copy whole A else copy just slice
            j=(this._length.length > 1) ? this.A.length : r._length[0];
            for(t=this._offset, s=r._offset;j>0; t++,s++,j--)
                this.A[t]._assign(r.A[s]);
        },
        "_eq" : function (arg) {
            if (this.A.length != arg.A.length) return false;
            for (var j=0; j<this.A.length; j++)
                if (this.A[j] !== arg.A[j]) return false;
            return true;
        },
        "_ne" : function (arg) {
            return !this._eq(arg);
        },
        "_ArrayBuffer" : function (size) {
            this.A = new ArrayBuffer(size);
            this._u8 = new Uint8Array(this.A);
            this._f32 = new Float32Array(this.A);
            this._ta_index = 0;
            this._align = 4;
        },
        "_ArrayBuffer_f32" : function () {
            this.A = new Float32Array(this._total);
            this._u8 = new Uint8Array(this.A.buffer);
            this._f32 = this.A;
            this._ta_index = 0;
            this._align = 4;
        },
        "_ArrayBuffer_u8" : function () {
            this.A = new Uint8Array(this._total);
            this._u8 = this.A;
            this._f32 = this.A;
            this._ta_index = 0;
            this._align = 4;
        },
        "_TA_allign" : function (size) {
            if (this._align < size)
                this._ta_index =
                    size * Math.floor((this._ta_index + size - 1) / size);

            this._align = size;
        },
        "_push_ta" : function (value) {
            this._TA_allign (4);
            this._f32.set (value._f32, this._ta_index / 4);
            this._ta_index += value._f32.length*4;
        },
        "_push_f32" : function (value) {
            this._TA_allign (4);
            this._f32[this._ta_index / 4] = value;
            this._ta_index += 4;
        },
        "_push_u8" : function (value) {
            this._align = 1;
            this._u8[this._ta_index++] = value;
        }
    };

    standard._ada_array_simple = //  Ada array of items with simple type
    function (){
        standard._ada_array.apply (this, arguments);
    };

    standard._ada_array_simple.prototype =
        Object.create (standard._ada_array.prototype);

    standard._ada_array_simple.prototype._assign = function (r) {
        if (this._length.length > 1)
            this.A = r.A.slice();
        else if (this.A.length == r._length[0])
            this.A = r.A.slice(r._offset, r._offset + r._length[0]);
        else{
            var t,s,j; // reuse .A if only slice of it is assigned
            for(t=this._offset, s=r._offset, j=r._length[0];
                j>0; t++,s++,j--)
                    this.A[t]=r.A[s];
        }
    };

    standard._ada_array_ta = //  Ada array for Typed_Array
    function (){
        standard._ada_array.apply (this, arguments);
    };

    standard._ada_array_ta.prototype =
        Object.create (standard._ada_array.prototype);

    standard._ada_array_ta.prototype._assign = function (r) {
        if (this._length.length > 1){
            this.A = r.A.slice(0); //  Copy of ArrayBuffer
            this._u8 = new Uint8Array(this.A);
            this._f32 = new Float32Array(this.A);
        }else if (this._u8.byteLength == r._length[0] * r._element_size){
            this._u8.set (r._u8);
        }else{
            var t,s;
            t=this._u8.subarray
              (this._offset * this._element_size,
               (this._offset + this._length[0]) * this._element_size);
            s=r._u8.subarray
              (r._offset * r._element_size,
               (r._offset + r._length[0]) * r._element_size);
            t.set (s);
        }
    };

    standard._ada_array_ta.prototype._get = function(index){
        var offset = this._index.apply(this, arguments);
        var ta = this._u8.subarray (offset * this._element_size,
                                    (offset + 1) * this._element_size);
        return this._element_type._from_dataview(ta);
    };

    standard._ada_array_ta.prototype._slice = function (_from, _to) {
        var result = standard._ada_array.prototype._slice.apply(this, arguments);
        result._u8 = this._u8;
        result._f32 = this._f32;
        result._element_type = this._element_type;
        result._element_size = this._element_size;
        return result;
    };

    standard._ada_array_ta.prototype._from_dataview = function(_dv){
        var _result = Object.create (this);
        _result.A = _dv.buffer;
        _result._u8 = new Uint8Array(_result.A, _dv.byteOffset, _dv.byteLength);
        _result._f32 = new Float32Array
          (_result.A, _dv.byteOffset, _dv.byteLength/4);
        return _result;
    };

    standard._fortran_array = //  A constructor for any Fortran array
    function (){
        standard._ada_array.apply (this, arguments);
    };

    standard._fortran_array.prototype =
        Object.create (standard._ada_array.prototype);

    standard._fortran_array.prototype._index = function () {
        var index = this._offset, size = 1;
        for (var j = 0; j < arguments.length; j++){
            index +=
                (standard._pos (arguments[j]) - this._first[j]) * size;
            size *= this._length[j];
        }
        return index;
    };

    standard._fortran_array_ta = //  Fortran array for Typed_Array
    function (){
        standard._ada_array_ta.apply (this, arguments);
    };
    standard._fortran_array_ta.prototype =
        Object.create (standard._ada_array_ta.prototype);
    standard._fortran_array_ta.prototype._index =
        standard._fortran_array.prototype._index;

    standard._singleton =
        function (value) { this.all = value }
    standard._singleton.prototype = {
        "_assign" : function (r) { this.all = r.all }
    }

    standard._tag ('event_listener','');
    standard._tag ('frame_request_callback','');
    standard.webapi = {
        dom: {event_listeners: {event_listener: function(){}}},
        html: {frame_request_callbacks: {frame_request_callback: function(){}}},
        webgl: {
            glfloat_matrix_4x4: function() {
                this._ArrayBuffer_f32();
                this._offset = 0;
            }
        }
    };
    standard.webapi.webgl.glfloat_matrix_4x4.prototype = Object.create(
        standard._ada_array_ta.prototype,
        {
            _element_size: {value: 4},
            _length: {value: [4, 4]},
            _total: {value: 16},
            _first: {value: [1, 1]},
            _last: {value: [4, 4]}
        });
    standard._reviver = function _reviver(key, value){
        function walk(pkg,name) {return pkg[name]}
        if (typeof value === 'object') {
            if ('A' in value) {
                var result = Object.create(standard._ada_array.prototype);
                result._length = value._last.map (function (to, i){
                    return standard._pos(to) -
                        standard._pos(value._first[i]) + 1;
                });
                result.A = value.A;
                result._first = value._first;
                result._last = value._last;
                result._offset = 0;
                value = result;
            } else if ('_type' in value) {
                var type_path = value['_type'].split ('.');
                var _type = type_path.reduce(walk, standard);
                value = _type._cast(value);
            }
        }
        return value;
    }
    standard._null_proc = function _null_proc(descr){
	return function (){
           var args = arguments, result = {};
           for (var key in descr)
             result[key] = args[descr[key]];
           return result
        }
    }
    return standard;
});
