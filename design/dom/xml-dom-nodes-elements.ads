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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  The Element interface represents an element in an HTML or XML document.
--  Elements may have attributes associated with them; since the Element
--  interface inherits from Node, the generic Node interface attribute
--  attributes may be used to retrieve the set of all attributes for an
--  element. There are methods on the Element interface to retrieve either an
--  Attr object by name or an attribute value by name. In XML, where an
--  attribute value may contain entity references, an Attr object should be
--  retrieved to examine the possibly fairly complex sub-tree representing the
--  attribute value. On the other hand, in HTML, where all attributes have
--  simple string values, methods to directly access an attribute value can
--  safely be used as a convenience.
--
--  Note: In DOM Level 2, the method normalize is inherited from the Node
--  interface where it was moved.
------------------------------------------------------------------------------
limited with XML.DOM.Attributes;
with XML.DOM.Node_Lists;
with XML.DOM.Nodes;
with XML.DOM.Type_Infos;

package XML.DOM.Nodes.Elements is

   pragma Preelaborate;

   type DOM_Element is new XML.DOM.Nodes.DOM_Node with null record;

   function Tag_Name (Self : DOM_Element'Class) return DOM_String;
   --  The name of the element. If Node.localName is different from null, this
   --  attribute is a qualified name.

   function Get_Attribute
    (Self : DOM_Element'Class; Name : DOM_String) return DOM_String;
   --  Retrieves an attribute value by name. Returns the Attr value as a
   --  string, or the empty string if that attribute does not have a specified
   --  or default value.

   procedure Set_Attribute
    (Self : in out DOM_Element'Class; Name : DOM_String; Value : DOM_String);
   --  Adds a new attribute. If an attribute with that name is already present
   --  in the element, its value is changed to be that of the value parameter.
   --  This value is a simple string; it is not parsed as it is being set. So
   --  any markup (such as syntax to be recognized as an entity reference) is
   --  treated as literal text, and needs to be appropriately escaped by the
   --  implementation when it is written out. In order to assign an attribute
   --  value that contains entity references, the user must create an Attr node
   --  plus any Text and EntityReference nodes, build the appropriate subtree,
   --  and use setAttributeNode to assign it as the value of an attribute.
   --
   --  To set an attribute with a qualified name and namespace URI, use the
   --  setAttributeNS method.
   --
   --  Raises DOM_Exception:
   --
   --   - INVALID_CHARACTER_ERR: Raised if the specified name is not an XML
   --     name according to the XML version in use specified in the
   --     Document.xmlVersion attribute.
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.

   procedure Remove_Attribute
    (Self : in out DOM_Element'Class; Name : DOM_String);
   --  Removes an attribute by name. If a default value for the removed
   --  attribute is defined in the DTD, a new attribute immediately appears
   --  with the default value as well as the corresponding namespace URI, local
   --  name, and prefix when applicable. The implementation may handle default
   --  values from other schemas similarly but applications should use
   --  Document.normalizeDocument() to guarantee this information is
   --  up-to-date.
   --
   --  If no attribute with this name is found, this method has no effect.
   --
   --  To remove an attribute by local name and namespace URI, use the
   --  removeAttributeNS method.
   --
   --  Raises DOM_Exception:
   --
   --  NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.

   function Get_Attribute_Node
    (Self : DOM_Element'Class; Name : DOM_String)
       return XML.DOM.Attributes.DOM_Attribute;
   --  Retrieves an attribute node by name. Returns The Attr node with the
   --  specified name (nodeName) or null if there is no such attribute.
   --
   --  To retrieve an attribute node by qualified name and namespace URI, use
   --  the getAttributeNodeNS method.

   function Set_Attribute_Node
    (Self : in out DOM_Element'Class;
     Attr : XML.DOM.Attributes.DOM_Attribute)
       return XML.DOM.Attributes.DOM_Attribute;
   --  Adds a new attribute node. If an attribute with that name (nodeName) is
   --  already present in the element, it is replaced by the new one. Replacing
   --  an attribute node by itself has no effect. If the newAttr attribute
   --  replaces an existing attribute, the replaced Attr node is returned,
   --  otherwise null is returned.
   --
   --  To add a new attribute node with a qualified name and namespace URI, use
   --  the setAttributeNodeNS method.
   --
   --  Raises DOM_Exception:
   --
   --   - WRONG_DOCUMENT_ERR: Raised if newAttr was created from a different
   --     document than the one that created the element.
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --   - INUSE_ATTRIBUTE_ERR: Raised if newAttr is already an attribute of
   --     another Element object. The DOM user must explicitly clone Attr nodes
   --     to re-use them in other elements.

   function Remove_Attribute_Node
    (Self     : in out DOM_Element'Class;
     Old_Attr : XML.DOM.Attributes.DOM_Attribute)
       return XML.DOM.Attributes.DOM_Attribute;
   --  Removes the specified attribute node. If a default value for the removed
   --  Attr node is defined in the DTD, a new node immediately appears with the
   --  default value as well as the corresponding namespace URI, local name,
   --  and prefix when applicable. The implementation may handle default values
   --  from other schemas similarly but applications should use
   --  Document.normalizeDocument() to guarantee this information is
   --  up-to-date. Returns the Attr node that was removed.
   --
   --  Raises DOM_Exception:
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --   - NOT_FOUND_ERR: Raised if oldAttr is not an attribute of the element.

   function Get_Elements_By_Tag_Name
    (Self : DOM_Element'Class;
     Name : DOM_String) return XML.DOM.Node_Lists.DOM_Node_List;
   --  Returns a NodeList of all descendant Elements with a given tag name, in
   --  document order. Name is the name of the tag to match on. The special
   --  value "*" matches all tags.

   function Get_Attribute_NS
    (Self          : in out DOM_Element'Class;
     Namespace_URI : DOM_String;
     Local_Name    : DOM_String) return DOM_String;
   --  Retrieves an attribute value by local name and namespace URI. Returns
   --  the Attr value as a string, or the empty string if that attribute does
   --  not have a specified or default value.
   --
   --  Per [XML Namespaces], applications must use the value null as the
   --  namespaceURI parameter for methods if they wish to have no namespace.
   --
   --  Raises DOM_Exception:
   --
   --  NOT_SUPPORTED_ERR: May be raised if the implementation does not support
   --  the feature "XML" and the language exposed through the Document does not
   --  support XML Namespaces (such as [HTML 4.01]). 

   procedure Set_Attribute_NS
    (Self          : in out DOM_Element'Class;
     Namespace_URI : DOM_String;
     Local_Name    : DOM_String;
     Value         : DOM_String);
   --  Adds a new attribute. If an attribute with the same local name and
   --  namespace URI is already present on the element, its prefix is changed
   --  to be the prefix part of the qualifiedName, and its value is changed to
   --  be the value parameter. This value is a simple string; it is not parsed
   --  as it is being set.  So any markup (such as syntax to be recognized as
   --  an entity reference) is treated as literal text, and needs to be
   --  appropriately escaped by the implementation when it is written out. In
   --  order to assign an attribute value that contains entity references, the
   --  user must create an Attr node plus any Text and EntityReference nodes,
   --  build the appropriate subtree, and use setAttributeNodeNS or
   --  setAttributeNode to assign it as the value of an attribute.
   --
   --  Per [XML Namespaces], applications must use the value null as the
   --  namespaceURI parameter for methods if they wish to have no namespace.
   --
   --  Raises DOM_Exception:
   --
   --   - INVALID_CHARACTER_ERR: Raised if the specified qualified name is not
   --     an XML name according to the XML version in use specified in the
   --     Document.xmlVersion attribute.
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --   - NAMESPACE_ERR: Raised if the qualifiedName is malformed per the
   --     Namespaces in XML specification, if the qualifiedName has a prefix
   --     and the namespaceURI is null, if the qualifiedName has a prefix that
   --     is "xml" and the namespaceURI is different from
   --     "http://www.w3.org/XML/1998/namespace", if the qualifiedName or its
   --     prefix is "xmlns" and the namespaceURI is different from
   --     "http://www.w3.org/2000/xmlns/", or if the namespaceURI is
   --     "http://www.w3.org/2000/xmlns/" and neither the qualifiedName nor its
   --     prefix is "xmlns".
   --
   --   - NOT_SUPPORTED_ERR: May be raised if the implementation does not
   --     support the feature "XML" and the language exposed through the
   --     Document does not support XML Namespaces (such as [HTML 4.01]).

   procedure Remove_Attribute_NS
    (Self          : in out DOM_Element'Class;
     Namespace_URI : DOM_String;
     Local_Name    : DOM_String);
   --  Removes an attribute by local name and namespace URI. If a default value
   --  for the removed attribute is defined in the DTD, a new attribute
   --  immediately appears with the default value as well as the corresponding
   --  namespace URI, local name, and prefix when applicable. The
   --  implementation may handle default values from other schemas similarly
   --  but applications should use Document.normalizeDocument() to guarantee
   --  this information is up-to-date.
   --
   --  If no attribute with this local name and namespace URI is found, this
   --  method has no effect.
   --
   --  Per [XML Namespaces], applications must use the value null as the
   --  namespaceURI parameter for methods if they wish to have no namespace.
   --
   --  Raises DOM_Exception:
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --   - NOT_SUPPORTED_ERR: May be raised if the implementation does not
   --     support the feature "XML" and the language exposed through the
   --     Document does not support XML Namespaces (such as [HTML 4.01]).

   function Get_Attribute_Node_NS
    (Self          : DOM_Element'Class;
     Namespace_URI : DOM_String;
     Local_Name    : DOM_String)
       return XML.DOM.Attributes.DOM_Attribute;
   --  Retrieves an Attr node by local name and namespace URI. Returns the Attr
   --  node with the specified attribute local name and namespace URI or null
   --  if there is no such attribute.
   --
   --  Per [XML Namespaces], applications must use the value null as the
   --  namespaceURI parameter for methods if they wish to have no namespace.
   --
   --  Raises DOM_Exception:
   --
   --   - NOT_SUPPORTED_ERR: May be raised if the implementation does not
   --     support the feature "XML" and the language exposed through the
   --     Document does not support XML Namespaces (such as [HTML 4.01]).

   function Set_Attribute_Node_NS
    (Self : in out DOM_Element'Class;
     Attr : XML.DOM.Attributes.DOM_Attribute)
       return XML.DOM.Attributes.DOM_Attribute;
   --  Adds a new attribute. If an attribute with that local name and that
   --  namespace URI is already present in the element, it is replaced by the
   --  new one. Replacing an attribute node by itself has no effect.
   --
   --  If the newAttr attribute replaces an existing attribute with the same
   --  local name and namespace URI, the replaced Attr node is returned,
   --  otherwise null is returned.
   --
   --  Per [XML Namespaces], applications must use the value null as the
   --  namespaceURI parameter for methods if they wish to have no namespace.
   --
   --  Raises DOM_Exception:
   --
   --   - WRONG_DOCUMENT_ERR: Raised if newAttr was created from a different
   --     document than the one that created the element.
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --   - INUSE_ATTRIBUTE_ERR: Raised if newAttr is already an attribute of
   --     another Element object. The DOM user must explicitly clone Attr nodes
   --     to re-use them in other elements.
   --
   --   - NOT_SUPPORTED_ERR: May be raised if the implementation does not
   --     support the feature "XML" and the language exposed through the
   --     Document does not support XML Namespaces (such as [HTML 4.01]).

   function Get_Elements_By_Tag_Name_NS
    (Self          : DOM_Element'Class;
     Namespace_URI : DOM_String;
     Local_Name    : DOM_String)
       return XML.DOM.Node_Lists.DOM_Node_List;
   --  Returns a NodeList of all the descendant Elements with a given local
   --  name and namespace URI in document order.
   --
   --  The Namespace_URI parameter is the namespace URI of the elements to
   --  match on. The special value "*" matches all namespaces. The Local_Name
   --  parameter is the local name of the elements to match on. The special
   --  value "*" matches all local names.
   --
   --  Raises DOM_Exception:
   --
   --   - NOT_SUPPORTED_ERR: May be raised if the implementation does not
   --     support the feature "XML" and the language exposed through the
   --     Document does not support XML Namespaces (such as [HTML 4.01]).

   function Has_Attribute
    (Self : DOM_Element'Class;
     Name : DOM_String) return Boolean;
   --  Returns True when an attribute with a given name is specified on this
   --  element or has a default value, False otherwise.

   function Has_Attribute_NS
    (Self          : DOM_Element'Class;
     Namespace_URI : DOM_String;
     Local_Name    : DOM_String) return Boolean;
   --  Returns true when an attribute with a given local name and namespace URI
   --  is specified on this element or has a default value, false otherwise.
   --
   --  Per [XML Namespaces], applications must use the value null as the
   --  namespaceURI parameter for methods if they wish to have no namespace.
   --
   --  Raises DOM_Exception:
   --
   --   - NOT_SUPPORTED_ERR: May be raised if the implementation does not
   --     support the feature "XML" and the language exposed through the
   --     Document does not support XML Namespaces (such as [HTML 4.01]).

   function Schema_Type_Info
    (Self : DOM_Element'Class) return XML.DOM.Type_Infos.DOM_Type_Info;
   --  Returns the type information associated with this element.

   procedure Set_Id_Attribute
    (Self : in out DOM_Element'Class; Name : DOM_String; Is_Id : Boolean);
   --  If the parameter Is_Id is true, this method declares the specified
   --  attribute to be a user-determined ID attribute. This affects the value
   --  of Attr.isId and the behavior of Document.getElementById, but does not
   --  change any schema that may be in use, in particular this does not affect
   --  the Attr.schemaTypeInfo of the specified Attr node. Use the value false
   --  for the parameter isId to undeclare an attribute for being a
   --  user-determined ID attribute.
   --
   --  To specify an attribute by local name and namespace URI, use the
   --  setIdAttributeNS method.
   --
   --  Raises DOM_Exception:
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --   - NOT_FOUND_ERR: Raised if the specified node is not an attribute of
   --     this element.

   procedure Set_Id_Attribute_NS
    (Self          : in out DOM_Element'Class;
     Namespace_URI : DOM_String;
     Local_Name    : DOM_String;
     Is_Id         : Boolean);
   --  If the parameter Is_Id is True, this method declares the specified
   --  attribute to be a user-determined ID attribute. This affects the value
   --  of Attr.isId and the behavior of Document.getElementById, but does not
   --  change any schema that may be in use, in particular this does not affect
   --  the Attr.schemaTypeInfo of the specified Attr node. Use the value false
   --  for the parameter isId to undeclare an attribute for being a
   --  user-determined ID attribute.
   --
   --  Raises DOM_Exception:
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --   - NOT_FOUND_ERR: Raised if the specified node is not an attribute of
   --     this element.

   procedure Set_Id_Attribute_Node
    (Self  : in out DOM_Element'Class;
     Attr  : XML.DOM.Attributes.DOM_Attribute)
     Is_Id : Boolean);
   --  If the parameter Is_Id is True, this method declares the specified
   --  attribute to be a user-determined ID attribute. This affects the value
   --  of Attr.Is_Id and the behavior of Document.Get_Element_By_Id, but does
   --  not change any schema that may be in use, in particular this does not
   --  affect the Attr.Schema_Type_Info of the specified Attr node. Use the
   --  value False for the parameter isId to undeclare an attribute for being a
   --  user-determined ID attribute.
   --
   --  Raises DOM_Exception:
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --   - NOT_FOUND_ERR: Raised if the specified node is not an attribute of
   --     this element.

end XML.DOM.Nodes.Elements;
