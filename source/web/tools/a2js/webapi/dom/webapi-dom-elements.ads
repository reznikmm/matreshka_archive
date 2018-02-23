------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Web API Definition                            --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2014-2018, Vadim Godunko <vgodunko@gmail.com>                --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with WebAPI.DOM.Child_Nodes;
with WebAPI.DOM.HTML_Collections;
with WebAPI.DOM.Nodes;
with WebAPI.DOM.Non_Document_Type_Child_Nodes;
with WebAPI.DOM.Parent_Nodes;
with WebAPI.DOM.Rects;
with WebAPI.DOM.Token_Lists;

package WebAPI.DOM.Elements is

   pragma Preelaborate;

   type Element is limited interface
     and WebAPI.DOM.Child_Nodes.Child_Node
     and WebAPI.DOM.Nodes.Node
     and WebAPI.DOM.Non_Document_Type_Child_Nodes.Non_Document_Type_Child_Node
     and WebAPI.DOM.Parent_Nodes.Parent_Node;

   type Element_Access is access all Element'Class
     with Storage_Size => 0;

--   XXX Not implemented
--
--   interface Element : Node {
--     [SameObject] readonly attribute Attr[] attributes;
--   };

   not overriding function Get_Namespace_URI
    (Self : not null access constant Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "namespaceURI";

   not overriding function Get_Prefix
    (Self : not null access constant Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "prefix";

   not overriding function Get_Local_Name
    (Self : not null access constant Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "localName";

   not overriding function Get_Tag_Name
    (Self : not null access constant Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "tagName";

   not overriding function Get_Id
    (Self : not null access constant Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "id";

   not overriding procedure Set_Id
    (Self : not null access Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "id";

   not overriding function Get_Class_Name
    (Self : not null access constant Element)
       return WebAPI.DOM_String is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "className";

   not overriding procedure Set_Class_Name
    (Self : not null access Element;
     To   : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Property_Setter,
            Link_Name  => "className";

   not overriding function Get_Class_List
    (Self : not null access constant Element)
       return WebAPI.DOM.Token_Lists.DOM_Token_List_Access is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "classList";

   not overriding function Get_Attribute
    (Self : not null access constant Element;
     Name : WebAPI.DOM_String) return WebAPI.DOM_String is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "getAttribute";

   not overriding function Get_Attribute_NS
    (Self       : not null access constant Element;
     Namespace  : WebAPI.DOM_String;
     Local_Name : WebAPI.DOM_String) return WebAPI.DOM_String is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "getAttributeNS";

   not overriding procedure Set_Attribute
    (Self  : not null access Element;
     Name  : WebAPI.DOM_String;
     Value : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "setAttribute";

   not overriding procedure Set_Attribute_NS
    (Self       : not null access Element;
     Namespace  : WebAPI.DOM_String;
     Local_Name : WebAPI.DOM_String;
     Value      : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "setAttributeNS";

   not overriding procedure Remove_Attribute
    (Self  : not null access Element;
     Name  : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "removeAttribute";

   not overriding procedure Remove_Attribute_NS
    (Self       : not null access Element;
     Namespace  : WebAPI.DOM_String;
     Local_Name : WebAPI.DOM_String) is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "removeAttributeNS";

   not overriding function Has_Attribute
    (Self : not null access constant Element;
     Name : WebAPI.DOM_String) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "hasAttribute";

   not overriding function Has_Attribute_NS
    (Self       : not null access constant Element;
     Namespace  : WebAPI.DOM_String;
     Local_Name : WebAPI.DOM_String) return Boolean is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "hasAttributeNS";

   not overriding function Get_Elements_By_Tag_Name
    (Self       : not null access constant Element;
     Local_Name : WebAPI.DOM_String)
       return WebAPI.DOM.HTML_Collections.HTML_Collection is abstract
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "getElementsByTagName";

   not overriding function Get_Elements_By_Tag_Name_NS
    (Self       : not null access constant Element;
     Namespace  : WebAPI.DOM_String;
     Local_Name : WebAPI.DOM_String)
       return WebAPI.DOM.HTML_Collections.HTML_Collection is abstract
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "getElementsByTagNameNS";

   not overriding function Get_Elements_By_Class_Name
    (Self       : not null access constant Element;
     Class_Name : WebAPI.DOM_String)
       return WebAPI.DOM.HTML_Collections.HTML_Collection is abstract
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "getElementsByClassName";

   ----------------------------------
   -- CSSOM View Module Extensions --
   ----------------------------------

--  partial interface Element {
--    sequence<DOMRect> getClientRects();
--    void scrollIntoView();
--    void scrollIntoView((boolean or object) arg
--  );
--    void scroll(optional ScrollToOptions options
--  );
--    void scroll(unrestricted double x
--  , unrestricted double y
--  );
--    void scrollTo(optional ScrollToOptions options
--  );
--    void scrollTo(unrestricted double x
--  , unrestricted double y
--  );
--    void scrollBy(optional ScrollToOptions options
--  );
--    void scrollBy(unrestricted double x
--  , unrestricted double y
--  );

   not overriding function Get_Bounding_Client_Rect
    (Self : not null access constant Element)
       return WebAPI.DOM.Rects.DOM_Rect_Access is abstract
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "getBoundingClientRect";

   not overriding function Get_Scroll_Width
    (Self : not null access constant Element)
       return DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "scrollWidth";

   not overriding function Get_Scroll_Height
    (Self : not null access constant Element)
       return DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "scrollHeight";

   not overriding function Get_Scroll_Top
    (Self : not null access constant Element)
       return DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "scrollTop";

   not overriding function Get_Scroll_Left
    (Self : not null access constant Element)
       return DOM_Double is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "scrollLeft";

   not overriding function Get_Client_Top
    (Self : not null access constant Element)
       return DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "clientTop";

   not overriding function Get_Client_Left
    (Self : not null access constant Element)
       return DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "clientLeft";

   not overriding function Get_Client_Width
    (Self : not null access constant Element)
       return DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "clientWidth";

   not overriding function Get_Client_Height
    (Self : not null access constant Element)
       return DOM_Long is abstract
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "clientHeight";

end WebAPI.DOM.Elements;
