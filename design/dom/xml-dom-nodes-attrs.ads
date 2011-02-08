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
--  The Attr interface represents an attribute in an Element object. Typically
--  the allowable values for the attribute are defined in a schema associated
--  with the document.
--
--  Attr objects inherit the Node interface, but since they are not actually
--  child nodes of the element they describe, the DOM does not consider them
--  part of the document tree. Thus, the Node attributes parentNode,
--  previousSibling, and nextSibling have a null value for Attr objects. The
--  DOM takes the view that attributes are properties of elements rather than
--  having a separate identity from the elements they are associated with; this
--  should make it more efficient to implement such features as default
--  attributes associated with all elements of a given type. Furthermore, Attr
--  nodes may not be immediate children of a DocumentFragment. However, they
--  can be associated with Element nodes contained within a DocumentFragment.
--  In short, users and implementors of the DOM need to be aware that Attr
--  nodes have some things in common with other objects inheriting the Node
--  interface, but they also are quite distinct.
--
--  The attribute's effective value is determined as follows: if this attribute
--  has been explicitly assigned any value, that value is the attribute's
--  effective value; otherwise, if there is a declaration for this attribute,
--  and that declaration includes a default value, then that default value is
--  the attribute's effective value; otherwise, the attribute does not exist on
--  this element in the structure model until it has been explicitly added.
--  Note that the Node.nodeValue attribute on the Attr instance can also be
--  used to retrieve the string version of the attribute's value(s).
--
--  If the attribute was not explicitly given a value in the instance document
--  but has a default value provided by the schema associated with the
--  document, an attribute node will be created with specified set to false.
--  Removing attribute nodes for which a default value is defined in the schema
--  generates a new attribute node with the default value and specified set to
--  false. If validation occurred while invoking Document.normalizeDocument(),
--  attribute nodes with specified equals to false are recomputed according to
--  the default attribute values provided by the schema. If no default value is
--  associate with this attribute in the schema, the attribute node is
--  discarded.
--
--  In XML, where the value of an attribute can contain entity references, the
--  child nodes of the Attr node may be either Text or EntityReference nodes
--  (when these are in use; see the description of EntityReference for
--  discussion).
--
--  The DOM Core represents all attribute values as simple strings, even if the
--  DTD or schema associated with the document declares them of some specific
--  type such as tokenized.
--
--  The way attribute value normalization is performed by the DOM
--  implementation depends on how much the implementation knows about the
--  schema in use. Typically, the value and nodeValue attributes of an Attr
--  node initially returns the normalized value given by the parser. It is also
--  the case after Document.normalizeDocument() is called (assuming the right
--  options have been set). But this may not be the case after mutation,
--  independently of whether the mutation is performed by setting the string
--  value directly or by changing the Attr child nodes. In particular, this is
--  true when character references are involved, given that they are not
--  represented in the DOM and they impact attribute value normalization. On
--  the other hand, if the implementation knows about the schema in use when
--  the attribute value is changed, and it is of a different type than CDATA,
--  it may normalize it again at that time. This is especially true of
--  specialized DOM implementations, such as SVG DOM implementations, which
--  store attribute values in an internal form different from a string.
------------------------------------------------------------------------------
limited with XML.DOM.Nodes.Elements;
with XML.DOM.Nodes;
with XML.DOM.Type_Infos;

package XML.DOM.Nodes.Attrs is

   pragma Preelaborate;

   type DOM_Attribute is new XML.DOM.Nodes.DOM_Node with null record;

   function Name (Self : DOM_Attribute'Class) return DOM_String;
   --  Returns the name of this attribute. If Node.localName is different from
   --  null, this attribute is a qualified name.

   function Specified (Self : DOM_Attribute'Class) return Boolean;
   --  True if this attribute was explicitly given a value in the instance
   --  document, False otherwise. If the application changed the value of this
   --  attribute node (even if it ends up having the same value as the default
   --  value) then it is set to True. The implementation may handle attributes
   --  with default values from other schemas similarly but applications should
   --  use Document.normalizeDocument() to guarantee this information is
   --  up-to-date. 

   function Value (Self : DOM_Attribute'Class) return DOM_String;
   --  The value of the attribute is returned as a string. Character and
   --  general entity references are replaced with their values. See also the
   --  method getAttribute on the Element interface.

   procedure Set_Value (Self : in out DOM_Attribute'Class; To : DOM_String);
   --  Creates a Text node with the unparsed contents of the string, i.e. any
   --  characters that an XML processor would recognize as markup are instead
   --  treated as literal text. See also the method Element.setAttribute().
   --
   --  Some specialized implementations, such as some [SVG 1.1]
   --  implementations, may do normalization automatically, even after
   --  mutation; in such case, the value on retrieval may differ from the value
   --  on setting.
   --
   --  Raises DOM_Exception:
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly.

   function Owner_Element
    (Self : DOM_Attribute'Class) return XML.DOM.Nodes.Elements.DOM_Element;
   --  The Element node this attribute is attached to or null if this attribute
   --  is not in use.

   function Schema_Type_Info
    (Self : DOM_Attribute'Class) return XML.DOM.Type_Infos.DOM_Type_Info;
   --  The type information associated with this attribute. While the type
   --  information contained in this attribute is guarantee to be correct after
   --  loading the document or invoking Document.normalizeDocument(),
   --  schemaTypeInfo may not be reliable if the node was moved. 

   function Is_Id (Self : DOM_Attribute'Class) return Boolean;
   --  Returns whether this attribute is known to be of type ID (i.e. to
   --  contain an identifier for its owner element) or not. When it is and its
   --  value is unique, the ownerElement of this attribute can be retrieved
   --  using the method Document.getElementById. The implementation could use
   --  several ways to determine if an attribute node is known to contain an
   --  identifier:
   --
   --   - If validation occurred using an XML Schema [XML Schema Part 1] while
   --     loading the document or while invoking Document.normalizeDocument(),
   --     the post-schema-validation infoset contributions (PSVI contributions)
   --     values are used to determine if this attribute is a schema-determined
   --     ID attribute using the schema-determined ID definition in [XPointer].
   --
   --   - If validation occurred using a DTD while loading the document or
   --     while invoking Document.normalizeDocument(), the infoset [type
   --     definition] value is used to determine if this attribute is a
   --     DTD-determined ID attribute using the DTD-determined ID definition in
   --     [XPointer].
   --
   --   - from the use of the methods Element.setIdAttribute(),
   --     Element.setIdAttributeNS(), or Element.setIdAttributeNode(), i.e. it
   --     is an user-determined ID attribute;
   --
   --     Note: XPointer framework (see section 3.2 in [XPointer]) consider the
   --     DOM user-determined ID attribute as being part of the XPointer
   --     externally-determined ID definition.
   --
   --   - using mechanisms that are outside the scope of this specification, it
   --     is then an externally-determined ID attribute. This includes using
   --     schema languages different from XML schema and DTD.

end XML.DOM.Nodes.Attrs;
