------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.Strings;

with XML.DOM.Attributes;
with XML.DOM.Nodes;

package XML.DOM.Elements is

   pragma Preelaborate;

   type DOM_Element is limited interface and XML.DOM.Nodes.DOM_Node;

   type DOM_Element_Access is access all DOM_Element'Class
     with Storage_Size => 0;

   not overriding function Get_Tag_Name
    (Self : not null access constant DOM_Element)
       return League.Strings.Universal_String is abstract;
   --  The name of the element. If Node.localName is different from null, this
   --  attribute is a qualified name. For example, in:
   --
   --      <elementExample id="demo"> 
   --        ... 
   --      </elementExample> ,
   --
   --  tagName has the value "elementExample". Note that this is
   --  case-preserving in XML, as are all of the operations of the DOM. The
   --  HTML DOM returns the tagName of an HTML element in the canonical
   --  uppercase form, regardless of the case in the source HTML document.

   not overriding function Get_Attribute_Node_NS
    (Self          : not null access DOM_Element;
     Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return XML.DOM.Attributes.DOM_Attribute_Access is abstract;
   --  Retrieves an Attr node by local name and namespace URI.
   --
   --  Per [XML Namespaces], applications must use the value null as the
   --  namespaceURI parameter for methods if they wish to have no namespace.
   --
   --  Parameters
   --
   --    namespaceURI of type DOMString
   --      The namespace URI of the attribute to retrieve.
   --
   --    localName of type DOMString
   --      The local name of the attribute to retrieve.
   --
   --  Return Value
   --
   --    Attr
   --      The Attr node with the specified attribute local name and namespace
   --      URI or null if there is no such attribute.
   --
   --  Exceptions
   --
   --    DOMException
   --
   --      NOT_SUPPORTED_ERR: May be raised if the implementation does not
   --      support the feature "XML" and the language exposed through the
   --      Document does not support XML Namespaces (such as [HTML 4.01]).

   not overriding function Set_Attribute_Node_NS
    (Self     : not null access DOM_Element;
     New_Attr : not null XML.DOM.Attributes.DOM_Attribute_Access)
       return XML.DOM.Attributes.DOM_Attribute_Access is abstract;
   --  Adds a new attribute. If an attribute with that local name and that
   --  namespace URI is already present in the element, it is replaced by the
   --  new one. Replacing an attribute node by itself has no effect.
   --
   --  Per [XML Namespaces], applications must use the value null as the
   --  namespaceURI parameter for methods if they wish to have no namespace.
   --
   --  Parameters
   --
   --    newAttr of type Attr
   --      The Attr node to add to the attribute list.
   --
   --  Return Value
   --
   --    Attr
   --      If the newAttr attribute replaces an existing attribute with the
   --      same local name and namespace URI, the replaced Attr node is
   --      returned, otherwise null is returned.
   --
   --  Exceptions
   --
   --    DOMException
   --
   --      WRONG_DOCUMENT_ERR: Raised if newAttr was created from a different
   --      document than the one that created the element.
   --
   --      NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --      INUSE_ATTRIBUTE_ERR: Raised if newAttr is already an attribute of
   --      another Element object. The DOM user must explicitly clone Attr
   --      nodes to re-use them in other elements.
   --
   --      NOT_SUPPORTED_ERR: May be raised if the implementation does not
   --      support the feature "XML" and the language exposed through the
   --      Document does not support XML Namespaces (such as [HTML 4.01]).

   procedure Set_Attribute_Node_NS
    (Self     : not null access DOM_Element'Class;
     New_Attr : not null XML.DOM.Attributes.DOM_Attribute_Access);

end XML.DOM.Elements;
