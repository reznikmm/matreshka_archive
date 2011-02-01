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
private with Ada.Finalization;

--with XML.DOM.Attributes;
with XML.DOM.Documents;
--with XML.DOM.Elements;
with XML.DOM.Named_Node_Maps;
with XML.DOM.Node_Lists;

package XML.DOM.Nodes is

   pragma Preelaborate;

   type DOM_Node is tagged private;
   Null_Node : constant DOM_Node;

   type DOM_Node_Type is range 0 .. 2 ** 16 - 1;

   Element_Node                : constant DOM_Node_Type := 1;
   Attribute_Node              : constant DOM_Node_Type := 2;
   Text_Node                   : constant DOM_Node_Type := 3;
   CDATA_Section_Node          : constant DOM_Node_Type := 4;
   Entity_Reference_Node       : constant DOM_Node_Type := 5;
   Entity_Node                 : constant DOM_Node_Type := 6;
   Processing_Instruction_Node : constant DOM_Node_Type := 7;
   Comment_Node                : constant DOM_Node_Type := 8;
   Document_Node               : constant DOM_Node_Type := 9;
   Document_Type_Node          : constant DOM_Node_Type := 10;
   Document_Fragment_Node      : constant DOM_Node_Type := 11;
   Notation_Node               : constant DOM_Node_Type := 12;

   function Get_Node_Name (Self : DOM_Node'Class) return DOM_String;
   --  The name of this node, depending on its type.

   function Get_Node_Value (Self : DOM_Node'Class) return DOM_String;
   --  The value of this node, depending on its type.

   procedure Set_Node_Value (Self : in out DOM_Node'Class; To : DOM_String);
   --  The value of this node, depending on its type. When it is defined to be
   --  null, setting it has no effect, including if the node is read-only.
   --
   --  Raises DOM_Exception with NO_MODIFICATION_ALLOWED_ERR when the node is
   --  readonly and if it is not defined to be null.

   function Get_Node_Type (Self : DOM_Node'Class) return DOM_Node_Type;
   --  A code representing the type of the underlying object.

   function Get_Parent_Node (Self : DOM_Node'Class) return DOM_Node;
   --  The parent of this node. All nodes, except Attr, Document,
   --  DocumentFragment, Entity, and Notation may have a parent. However, if a
   --  node has just been created and not yet added to the tree, or if it has
   --  been removed from the tree, this is null. 

   function Get_Child_Nodes
    (Self : DOM_Node'Class) return XML.DOM.Node_Lists.DOM_Node_List;
   --  A NodeList that contains all children of this node. If there are no
   --  children, this is a NodeList containing no nodes.

   function Get_First_Child (Self : DOM_Node'Class) return DOM_Node;
   --  The first child of this node. If there is no such node, this returns
   --  null.

   function Get_Last_Child (Self : DOM_Node'Class) return DOM_Node;
   --  The last child of this node. If there is no such node, this returns
   --  null.

   function Get_Previous_Sibling (Self : DOM_Node'Class) return DOM_Node;
   --  The node immediately preceding this node. If there is no such node, this
   --  returns null.

   function Get_Next_Sibling (Self : DOM_Node'Class) return DOM_Node;
   --  The node immediately following this node. If there is no such node, this
   --  returns null.

   function Get_Attributes
    (Self : DOM_Node'Class) return XML.DOM.Named_Node_Maps.DOM_Named_Node_Map;
   --  A NamedNodeMap containing the attributes of this node (if it is an
   --  Element) or null otherwise.

   function Get_Owner_Document
    (Self : DOM_Node'Class) return XML.DOM.Documents.DOM_Document;
   --  The Document object associated with this node. This is also the Document
   --  object used to create new nodes. When this node is a Document or a
   --  DocumentType which is not used with any Document yet, this is null.

   function Insert_Before
    (Self      : in out DOM_Node'Class;
     New_Child : DOM_Node'Class;
     Ref_Child : DOM_Node'Class) return DOM_Node;
   --  Inserts the node newChild before the existing child node refChild. If
   --  refChild is null, insert newChild at the end of the list of children.
   --  Returns the node being inserted.
   --
   --  If newChild is a DocumentFragment object, all of its children are
   --  inserted, in the same order, before refChild. If the newChild is already
   --  in the tree, it is first removed.
   --
   --  Note: Inserting a node before itself is implementation dependent.
   --
   --  Raises DOM_Exception:
   --
   --   - HIERARCHY_REQUEST_ERR: Raised if this node is of a type that does not
   --     allow children of the type of the newChild node, or if the node to
   --     insert is one of this node's ancestors or this node itself, or if
   --     this node is of type Document and the DOM application attempts to
   --     insert a second DocumentType or Element node.
   --
   --   - WRONG_DOCUMENT_ERR: Raised if newChild was created from a different
   --     document than the one that created this node.
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly or if
   --     the parent of the node being inserted is readonly.
   --
   --   - NOT_FOUND_ERR: Raised if refChild is not a child of this node.
   --
   --   - NOT_SUPPORTED_ERR: if this node is of type Document, this exception
   --     might be raised if the DOM implementation doesn't support the
   --     insertion of a DocumentType or Element node.

   function Replace_Child
    (Self      : in out DOM_Node'Class;
     New_Child : DOM_Node'Class;
     Ref_Child : DOM_Node'Class) return DOM_Node;
   --  Replaces the child node oldChild with newChild in the list of children,
   --  and returns the oldChild node. Returns the node replaced.
   --
   --  If newChild is a DocumentFragment object, oldChild is replaced by all of
   --  the DocumentFragment children, which are inserted in the same order. If
   --  the newChild is already in the tree, it is first removed.
   --
   --  Note: Replacing a node with itself is implementation dependent.
   --
   --  Raises DOM_Exception:
   --
   --   - HIERARCHY_REQUEST_ERR: Raised if this node is of a type that does not
   --     allow children of the type of the newChild node, or if the node to
   --     put in is one of this node's ancestors or this node itself, or if
   --     this node is of type Document and the result of the replacement
   --     operation would add a second DocumentType or Element on the Document
   --     node.
   --
   --   - WRONG_DOCUMENT_ERR: Raised if newChild was created from a different
   --     document than the one that created this node.
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node or the parent of the
   --     new node is readonly.
   --
   --   - NOT_FOUND_ERR: Raised if oldChild is not a child of this node.
   --
   --   - NOT_SUPPORTED_ERR: if this node is of type Document, this exception
   --     might be raised if the DOM implementation doesn't support the
   --     replacement of the DocumentType child or Element child.

   function Remove_Child
    (Self      : in out DOM_Node'Class;
     Old_Child : DOM_Node'Class) return DOM_Node;
   --  Removes the child node indicated by oldChild from the list of children,
   --  and returns it.
   --
   --  Raises DOM_Exception:
   --
   --  NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --  NOT_FOUND_ERR: Raised if oldChild is not a child of this node.
   --
   --  NOT_SUPPORTED_ERR: if this node is of type Document, this exception
   --  might be raised if the DOM implementation doesn't support the removal of
   --  the DocumentType child or the Element child.

   function Append_Child
    (Self      : in out DOM_Node'Class;
     New_Child : DOM_Node'Class) return DOM_Node;
   --  Adds the node newChild to the end of the list of children of this node.
   --  If the newChild is already in the tree, it is first removed. Returns the
   --  node added.
   --
   --  If New_Child is a DocumentFragment object, the entire contents of the
   --  document fragment are moved into the child list of this node
   --
   --  Raises DOM_Exception:
   --
   --   - HIERARCHY_REQUEST_ERR: Raised if this node is of a type that does not
   --     allow children of the type of the newChild node, or if the node to
   --     append is one of this node's ancestors or this node itself, or if
   --     this node is of type Document and the DOM application attempts to
   --     append a second DocumentType or Element node.
   --
   --   - WRONG_DOCUMENT_ERR: Raised if newChild was created from a different
   --     document than the one that created this node.
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly or if
   --     the previous parent of the node being inserted is readonly.
   --
   --   - NOT_SUPPORTED_ERR: if the newChild node is a child of the Document
   --     node, this exception might be raised if the DOM implementation
   --     doesn't support the removal of the DocumentType child or Element
   --     child.

   function Has_Child_Nodes (Self : DOM_Node'Class) return Boolean;
   --  Returns whether this node has any children. Returns True if this node
   --  has any children, False otherwise.

   function Clone_Node (Self : DOM_Node'Class; Deep : Boolean) return DOM_Node;
   --  Returns a duplicate of this node, i.e., serves as a generic copy
   --  constructor for nodes. The duplicate node has no parent (parentNode is
   --  null) and no user data. User data associated to the imported node is not
   --  carried over. However, if any UserDataHandlers has been specified along
   --  with the associated data these handlers will be called with the
   --  appropriate parameters before this method returns.
   --
   --  Cloning an Element copies all attributes and their values, including
   --  those generated by the XML processor to represent defaulted attributes,
   --  but this method does not copy any children it contains unless it is a
   --  deep clone. This includes text contained in an the Element since the
   --  text is contained in a child Text node. Cloning an Attr directly, as
   --  opposed to be cloned as part of an Element cloning operation, returns a
   --  specified attribute (specified is true). Cloning an Attr always clones
   --  its children, since they represent its value, no matter whether this is
   --  a deep clone or not. Cloning an EntityReference automatically constructs
   --  its subtree if a corresponding Entity is available, no matter whether
   --  this is a deep clone or not. Cloning any other type of node simply
   --  returns a copy of this node.
   --
   --  Note that cloning an immutable subtree results in a mutable copy, but
   --  the children of an EntityReference clone are readonly. In addition,
   --  clones of unspecified Attr nodes are specified. And, cloning Document,
   --  DocumentType, Entity, and Notation nodes is implementation dependent.

   procedure Normalize (Self : in out DOM_Node'Class);
   --  Puts all Text nodes in the full depth of the sub-tree underneath this
   --  Node, including attribute nodes, into a "normal" form where only
   --  structure (e.g., elements, comments, processing instructions, CDATA
   --  sections, and entity references) separates Text nodes, i.e., there are
   --  neither adjacent Text nodes nor empty Text nodes. This can be used to
   --  ensure that the DOM view of a document is the same as if it were saved
   --  and re-loaded, and is useful when operations (such as XPointer
   --  [XPointer] lookups) that depend on a particular document tree structure
   --  are to be used. If the parameter "normalize-characters" of the
   --  DOMConfiguration object attached to the Node.ownerDocument is true, this
   --  method will also fully normalize the characters of the Text nodes.
   --
   --  Note: In cases where the document contains CDATASections, the normalize
   --  operation alone may not be sufficient, since XPointers do not
   --  differentiate between Text nodes and CDATASection nodes.

   function Is_Supported
    (Self    : DOM_Node'Class;
     Feature : DOM_String;
     Version : DOM_String) return Boolean;
   --  Tests whether the DOM implementation implements a specific feature and
   --  that feature is supported by this node, as specified in DOM Features.
   --
   --  Returns true if the specified feature is supported on this node, false
   --  otherwise.

   function Get_Namespace_URI (Self : DOM_Node'Class) return DOM_String;
   --  The namespace URI of this node, or null if it is unspecified (see XML
   --  Namespaces).
   --
   --  This is not a computed value that is the result of a namespace lookup
   --  based on an examination of the namespace declarations in scope. It is
   --  merely the namespace URI given at creation time.
   --
   --  For nodes of any type other than ELEMENT_NODE and ATTRIBUTE_NODE and
   --  nodes created with a DOM Level 1 method, such as
   --  Document.createElement(), this is always null.
   --
   --  Note: Per the Namespaces in XML Specification [XML Namespaces] an
   --  attribute does not inherit its namespace from the element it is attached
   --  to. If an attribute is not explicitly given a namespace, it simply has
   --  no namespace.

   function Get_Prefix (Self : DOM_Node'Class) return DOM_String;
   --  The namespace prefix of this node, or null if it is unspecified.

   procedure Set_Prefix (Self : in out DOM_Node'Class; To : DOM_String);
   --  The namespace prefix of this node, or null if it is unspecified. When it
   --  is defined to be null, setting it has no effect, including if the node
   --  is read-only.
   --
   --  Note that setting this attribute, when permitted, changes the nodeName
   --  attribute, which holds the qualified name, as well as the tagName and
   --  name attributes of the Element and Attr interfaces, when applicable.
   --
   --  Setting the prefix to null makes it unspecified, setting it to an empty
   --  string is implementation dependent.
   --
   --  Note also that changing the prefix of an attribute that is known to have
   --  a default value, does not make a new attribute with the default value
   --  and the original prefix appear, since the namespaceURI and localName do
   --  not change.
   --
   --  For nodes of any type other than ELEMENT_NODE and ATTRIBUTE_NODE and
   --  nodes created with a DOM Level 1 method, such as createElement from the
   --  Document interface, this is always null.
   --
   --  Raises DOM_Exception:
   --
   --   - INVALID_CHARACTER_ERR: Raised if the specified prefix contains an
   --     illegal character according to the XML version in use specified in
   --     the Document.xmlVersion attribute.
   --
   --   - NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --   - NAMESPACE_ERR: Raised if the specified prefix is malformed per the
   --     Namespaces in XML specification, if the namespaceURI of this node is
   --     null, if the specified prefix is "xml" and the namespaceURI of this
   --     node is different from "http://www.w3.org/XML/1998/namespace", if
   --     this node is an attribute and the specified prefix is "xmlns" and the
   --     namespaceURI of this node is different from
   --     "http://www.w3.org/2000/xmlns/", or if this node is an attribute and
   --     the qualifiedName of this node is "xmlns" [XML Namespaces].

   function Get_Local_Name (Self : DOM_Node'Class) return DOM_String;
   --  Returns the local part of the qualified name of this node.
   --
   --  For nodes of any type other than ELEMENT_NODE and ATTRIBUTE_NODE and
   --  nodes created with a DOM Level 1 method, such as
   --  Document.createElement(), this is always null.

   function Has_Attributes (Self : DOM_Node'Class) return Boolean;
   --  Returns whether this node (if it is an element) has any attributes.
   --  Returns True if this node has any attributes, False otherwise.

   function Get_Base_URI (Self : DOM_Node'Class) return DOM_String;
   --  The absolute base URI of this node or null if the implementation wasn't
   --  able to obtain an absolute URI. This value is computed as described in
   --  Base URIs. However, when the Document supports the feature "HTML" [DOM
   --  Level 2 HTML], the base URI is computed using first the value of the
   --  href attribute of the HTML BASE element if any, and the value of the
   --  documentURI attribute from the Document interface otherwise.

--    // DocumentPosition
--    const unsigned short      DOCUMENT_POSITION_DISCONNECTED = 0x01;
--    const unsigned short      DOCUMENT_POSITION_PRECEDING    = 0x02;
--    const unsigned short      DOCUMENT_POSITION_FOLLOWING    = 0x04;
--    const unsigned short      DOCUMENT_POSITION_CONTAINS     = 0x08;
--    const unsigned short      DOCUMENT_POSITION_CONTAINED_BY = 0x10;
--    const unsigned short      DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;
--
--    // Introduced in DOM Level 3:
--    unsigned short     compareDocumentPosition(in Node other)
--                                        raises(DOMException);

   function Get_Text_Content (Self : DOM_Node'Class) return DOM_String;
   --  This attribute returns the text content of this node and its descendants.

   procedure Set_Text_Content (Self : in out DOM_Node'Class; To : DOM_String);
   --  This attribute returns the text content of this node and its
   --  descendants. When it is defined to be null, setting it has no effect. On
   --  setting, any possible children this node may have are removed and, if it
   --  the new string is not empty or null, replaced by a single Text node
   --  containing the string this attribute is set to.
   --
   --  On getting, no serialization is performed, the returned string does not
   --  contain any markup. No whitespace normalization is performed and the
   --  returned string does not contain the white spaces in element content
   --  (see the attribute Text.isElementContentWhitespace). Similarly, on
   --  setting, no parsing is performed either, the input string is taken as
   --  pure textual content.
   --
   --  The string returned is made of the text content of this node depending
   --  on its type.
   --
   --  Raises DOM_Exception:
   --
   --  NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly.

   function Is_Same_Node
    (Self : DOM_Node'Class; Other : DOM_Node'Class) return Boolean;
   --  Returns whether this node is the same node as the given one. Returns
   --  True if the nodes are the same, False otherwise.
   --
   --  This method provides a way to determine whether two Node references
   --  returned by the implementation reference the same object. When two Node
   --  references are references to the same object, even if through a proxy,
   --  the references may be used completely interchangeably, such that all
   --  attributes have the same values and calling the same DOM method on
   --  either reference always has exactly the same effect.

   function Lookup_Prefix
    (Self : DOM_Node'Class; Namespace_URI : DOM_String) return DOM_String;
   --  Look up the prefix associated to the given namespace URI, starting from
   --  this node. The default namespace declarations are ignored by this
   --  method. Returns an associated namespace prefix if found or null if none
   --  is found. If more than one prefix are associated to the namespace
   --  prefix, the returned namespace prefix is implementation dependent.

   function Is_Default_Namespace
    (Self : DOM_Node'Class; Namespace_URI : DOM_String) return Boolean;
   --  This method checks if the specified Namespace_URI is the default
   --  namespace or not. Returns True if the specified Namespace_URI is the
   --  default namespace, False otherwise. 

   function Lookup_Namespace_URI
    (Self : DOM_Node'Class; Prefix : DOM_String) return DOM_String;
   --  Look up the namespace URI associated to the given prefix, starting from
   --  this node. See Namespace URI Lookup for details on the algorithm used by
   --  this method. Returns the associated namespace URI or null if none is
   --  found.
   --
   --  If this parameter Prefix is null, the method will return the default
   --  namespace URI if any.

   function Is_Equal_Node
    (Self : DOM_Node'Class; Arg : DOM_Node'Class) return Boolean;
--    // Introduced in DOM Level 3:
--    boolean            isEqualNode(in Node arg);
   --  Tests whether two nodes are equal. Returns True if the nodes are equal,
   --  False otherwise.
   --
   --  This method tests for equality of nodes, not sameness (i.e., whether the
   --  two nodes are references to the same object) which can be tested with
   --  Node.isSameNode(). All nodes that are the same will also be equal,
   --  though the reverse may not be true.
   --
   --  Two nodes are equal if and only if the following conditions are
   --  satisfied:
   --
   --   * The two nodes are of the same type.
   --
   --   * The following string attributes are equal: nodeName, localName,
   --     namespaceURI, prefix, nodeValue. This is: they are both null, or they
   --     have the same length and are character for character identical.
   --
   --   * The attributes NamedNodeMaps are equal. This is: they are both null,
   --     or they have the same length and for each node that exists in one map
   --     there is a node that exists in the other map and is equal, although
   --     not necessarily at the same index.
   --
   --   * The childNodes NodeLists are equal. This is: they are both null, or
   --     they have the same length and contain equal nodes at the same index.
   --     Note that normalization can affect equality; to avoid this, nodes
   --     should be normalized before being compared.
   --
   --  For two DocumentType nodes to be equal, the following conditions must
   --  also be satisfied:
   --
   --   * The following string attributes are equal: publicId, systemId,
   --     internalSubset.
   --
   --   * The entities NamedNodeMaps are equal.
   --
   --   * The notations NamedNodeMaps are equal.
   --
   --  On the other hand, the following do not affect equality: the
   --  ownerDocument, baseURI, and parentNode attributes, the specified
   --  attribute for Attr nodes, the schemaTypeInfo attribute for Attr and
   --  Element nodes, the Text.isElementContentWhitespace attribute for Text
   --  nodes, as well as any user data or event listeners registered on the
   --  nodes.
   --
   --  Note: As a general rule, anything not mentioned in the description above
   --  is not significant in consideration of equality checking. Note that
   --  future versions of this specification may take into account more
   --  attributes and implementations conform to this specification are
   --  expected to be updated accordingly.

--    // Introduced in DOM Level 3:
--    DOMObject          getFeature(in DOMString feature, 
--                                  in DOMString version);
--    // Introduced in DOM Level 3:
--    DOMUserData        setUserData(in DOMString key, 
--                                   in DOMUserData data, 
--                                   in UserDataHandler handler);
--    // Introduced in DOM Level 3:
--    DOMUserData        getUserData(in DOMString key);

   ---------------
   -- Extension --
   ---------------

   function Is_Element (Self : DOM_Node'Class) return Boolean;
   function Is_Attribute (Self : DOM_Node'Class) return Boolean;
   function Is_Text (Self : DOM_Node'Class) return Boolean;
   function Is_CDATA_Section (Self : DOM_Node'Class) return Boolean;
   function Is_Entity_Reference (Self : DOM_Node'Class) return Boolean;
   function Is_Entity (Self : DOM_Node'Class) return Boolean;
   function Is_Processing_Instruction (Self : DOM_Node'Class) return Boolean;
   function Is_Comment (Self : DOM_Node'Class) return Boolean;
   function Is_Document (Self : DOM_Node'Class) return Boolean;
   function Is_Document_Type (Self : DOM_Node'Class) return Boolean;
   function Is_Document_Fragment (Self : DOM_Node'Class) return Boolean;
   function Is_Notation (Self : DOM_Node'Class) return Boolean;

--   function To_Element
--    (Self : DOM_Node'Class) return XML.DOM.Elements.DOM_Element;
--   function To_Attribute
--    (Self : DOM_Node'Class) return XML.DOM.Attributes.DOM_Attribute;
--   function To_Text
--    (Self : DOM_Node'Class) return XML.DOM.Texts.DOM_Text;
--   function To_CDATA_Section
--    (Self : DOM_Node'Class) return XML.DOM.CDATA_Sections.DOM_CDATA_Section;
--   function To_Entity_Reference
--    (Self : DOM_Node'Class)
--       return XML.DOM.Entity_References.DOM_Entity_Reference;
--   function To_Entity
--    (Self : DOM_Node'Class) return XML.DOM.Entities.DOM_Entity;
--   function To_Processing_Instruction
--    (Self : DOM_Node'Class)
--       return XML.DOM.Processing_Instructions.DOM_Processing_Instruction;
--   function To_Comment
--    (Self : DOM_Node'Class) return XML.DOM.Comments.DOM_Comment;
   function To_Document
    (Self : DOM_Node'Class) return XML.DOM.Documents.DOM_Document;
--   function To_Document_Type
--    (Self : DOM_Node'Class) return XML.DOM.Document_Types.DOM_Document_Type;
--   function To_Document_Fragment
--    (Self : DOM_Node'Class)
--       return XML.DOM.Document_Fragments.DOM_Document_Fragment;
--   function To_Notation
--    (Self : DOM_Node'Class) return XML.DOM.Notations.DOM_Notation;

private

   type DOM_Node is new Ada.Finalization.Controlled with null record;

   overriding procedure Adjust (Self : in out DOM_Node);

   overriding procedure Finalize (Self : in out DOM_Node);

   Null_Node : constant DOM_Node
     := (Ada.Finalization.Controlled with null record);

end XML.DOM.Nodes;
