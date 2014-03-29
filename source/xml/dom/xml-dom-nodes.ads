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
-- Copyright © 2013-2014, Vadim Godunko <vgodunko@gmail.com>                --
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

limited with XML.DOM.Documents;

package XML.DOM.Nodes is

   pragma Preelaborate;

   type DOM_Node is limited interface;

   type DOM_Node_Access is access all DOM_Node'Class
     with Storage_Size => 0;

   not overriding function Get_Node_Name
    (Self : not null access constant DOM_Node)
       return League.Strings.Universal_String is abstract;
   --  The name of this node, depending on its type; see the table above.

   not overriding function Get_Node_Value
    (Self : not null access constant DOM_Node)
       return League.Strings.Universal_String is abstract;
   not overriding procedure Set_Node_Value
    (Self      : not null access DOM_Node;
     New_Value : League.Strings.Universal_String) is abstract;
   --  The value of this node, depending on its type; see the table above. When
   --  it is defined to be null, setting it has no effect, including if the
   --  node is read-only.
   --
   --  Exceptions on setting
   --
   --    DOMException
   --
   --      NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly and if
   --      it is not defined to be null.
   --
   --  Exceptions on retrieval
   --
   --    DOMException
   --
   --      DOMSTRING_SIZE_ERR: Raised when it would return more characters than
   --      fit in a DOMString variable on the implementation platform.

   not overriding function Get_Node_Type
    (Self : not null access constant DOM_Node)
       return XML.DOM.Node_Type is abstract;
   --  A code representing the type of the underlying object, as defined above.

   not overriding function Get_Parent_Node
    (Self : not null access constant DOM_Node) return DOM_Node_Access
       is abstract;
   --  The parent of this node. All nodes, except Attr, Document,
   --  DocumentFragment, Entity, and Notation may have a parent. However, if a
   --  node has just been created and not yet added to the tree, or if it has
   --  been removed from the tree, this is null.

   not overriding function Get_First_Child
    (Self : not null access constant DOM_Node) return DOM_Node_Access
       is abstract;
   --  The first child of this node. If there is no such node, this returns
   --  null.

   not overriding function Get_Last_Child
    (Self : not null access constant DOM_Node) return DOM_Node_Access
       is abstract;
   --  The last child of this node. If there is no such node, this returns
   --  null.

   not overriding function Get_Previous_Sibling
    (Self : not null access constant DOM_Node) return DOM_Node_Access
       is abstract;
   --  The node immediately preceding this node. If there is no such node, this
   --  returns null.

   not overriding function Get_Next_Sibling
    (Self : not null access constant DOM_Node) return DOM_Node_Access
       is abstract;
   --  The node immediately following this node. If there is no such node, this
   --  returns null.

   not overriding function Get_Owner_Document
    (Self : not null access constant DOM_Node)
       return XML.DOM.Documents.DOM_Document_Access is abstract;
   --  The Document object associated with this node. This is also the Document
   --  object used to create new nodes. When this node is a Document or a
   --  DocumentType which is not used with any Document yet, this is null.

   not overriding function Get_Namespace_URI
    (Self : not null access constant DOM_Node)
       return League.Strings.Universal_String is abstract;
   --  The namespace URI of this node, or null if it is unspecified (see XML
   --  Namespaces).  This is not a computed value that is the result of a
   --  namespace lookup based on an examination of the namespace declarations
   --  in scope. It is merely the namespace URI given at creation time.  For
   --  nodes of any type other than ELEMENT_NODE and ATTRIBUTE_NODE and nodes
   --  created with a DOM Level 1 method, such as Document.createElement(),
   --  this is always null.
   --
   --  Note: Per the Namespaces in XML Specification [XML Namespaces] an
   --  attribute does not inherit its namespace from the element it is attached
   --  to. If an attribute is not explicitly given a namespace, it simply has
   --  no namespace.

   not overriding function Get_Local_Name
    (Self : not null access constant DOM_Node)
       return League.Strings.Universal_String is abstract;
   --  Returns the local part of the qualified name of this node.  For nodes of
   --  any type other than ELEMENT_NODE and ATTRIBUTE_NODE and nodes created
   --  with a DOM Level 1 method, such as Document.createElement(), this is
   --  always null.

   not overriding function Remove_Child
    (Self      : not null access DOM_Node;
     Old_Child : not null DOM_Node_Access) return not null DOM_Node_Access
       is abstract;
   --  Removes the child node indicated by oldChild from the list of children,
   --  and returns it.
   --
   --  Parameters
   --
   --    oldChild of type Node
   --      The node being removed.
   --
   --  Return Value
   --
   --    Node
   --      The node removed.
   --
   --  Exceptions
   --
   --    DOMException
   --
   --      NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
   --
   --      NOT_FOUND_ERR: Raised if oldChild is not a child of this node.
   --
   --      NOT_SUPPORTED_ERR: if this node is of type Document, this exception
   --      might be raised if the DOM implementation doesn't support the
   --      removal of the DocumentType child or the Element child.

   procedure Remove_Child
    (Self      : not null access DOM_Node'Class;
     Old_Child : not null DOM_Node_Access);

   not overriding function Append_Child
    (Self      : not null access DOM_Node;
     New_Child : not null DOM_Node_Access) return not null DOM_Node_Access
       is abstract;
   --  Adds the node newChild to the end of the list of children of this node.
   --  If the newChild is already in the tree, it is first removed.
   --
   --  Parameters
   --
   --    newChild of type Node
   --      The node to add.
   --
   --      If it is a DocumentFragment object, the entire contents of the
   --      document fragment are moved into the child list of this node
   --
   --  Return Value
   --
   --    Node
   --      The node added.
   --
   --  Exceptions
   --
   --    DOMException
   --
   --      HIERARCHY_REQUEST_ERR: Raised if this node is of a type that does
   --      not allow children of the type of the newChild node, or if the node
   --      to append is one of this node's ancestors or this node itself, or if
   --      this node is of type Document and the DOM application attempts to
   --      append a second DocumentType or Element node.
   --
   --      WRONG_DOCUMENT_ERR: Raised if newChild was created from a different
   --      document than the one that created this node.
   --
   --      NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly or if
   --      the previous parent of the node being inserted is readonly.
   --
   --      NOT_SUPPORTED_ERR: if the newChild node is a child of the Document
   --      node, this exception might be raised if the DOM implementation
   --      doesn't support the removal of the DocumentType child or Element
   --      child.

   procedure Append_Child
    (Self      : not null access DOM_Node'Class;
     New_Child : not null DOM_Node_Access);

end XML.DOM.Nodes;
