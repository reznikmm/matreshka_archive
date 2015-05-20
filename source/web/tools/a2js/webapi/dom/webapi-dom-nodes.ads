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
--  This package provides binding to interface Node.
------------------------------------------------------------------------------
with League.Strings;

limited with WebAPI.DOM.Documents;
limited with WebAPI.DOM.Elements;
with WebAPI.DOM.Event_Targets;
limited with WebAPI.DOM.Node_Lists;

package WebAPI.DOM.Nodes is

   pragma Preelaborate;

   type Node is limited interface
     and WebAPI.DOM.Event_Targets.Event_Target;

   type Node_Access is access all Node'Class
     with Storage_Size => 0;

   --  XXX Not binded yet:
   --    const unsigned short ELEMENT_NODE = 1;
   --    const unsigned short ATTRIBUTE_NODE = 2; // historical
   --    const unsigned short TEXT_NODE = 3;
   --    const unsigned short CDATA_SECTION_NODE = 4; // historical
   --    const unsigned short ENTITY_REFERENCE_NODE = 5; // historical
   --    const unsigned short ENTITY_NODE = 6; // historical
   --    const unsigned short PROCESSING_INSTRUCTION_NODE = 7;
   --    const unsigned short COMMENT_NODE = 8;
   --    const unsigned short DOCUMENT_NODE = 9;
   --    const unsigned short DOCUMENT_TYPE_NODE = 10;
   --    const unsigned short DOCUMENT_FRAGMENT_NODE = 11;
   --    const unsigned short NOTATION_NODE = 12; // historical
   --    readonly attribute unsigned short nodeType;

   not overriding function Get_Node_Name
    (Self : not null access constant Node)
       return League.Strings.Universal_String is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "nodeName";
   --  Returns a string appropriate for the type of node, as follows:
   --
   --    Element
   --      Its tagName attribute value. 
   --    Text
   --      "#text". 
   --    ProcessingInstruction
   --      Its target. 
   --    Comment
   --      "#comment". 
   --    Document
   --      "#document". 
   --    DocumentType
   --      Its name. 
   --    DocumentFragment
   --      "#document-fragment". 

   not overriding function Get_Base_URI
    (Self : not null access constant Node)
       return League.Strings.Universal_String is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "baseURI";
   --  Returns the base URL.

   not overriding function Get_Owner_Document
    (Self : not null access constant Node)
       return WebAPI.DOM.Documents.Document_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "ownerDocument";
   --  Returns the node document.
   --
   --  Returns null for documents. 

   not overriding function Get_Parent_Node
    (Self : not null access constant Node)
       return WebAPI.DOM.Nodes.Node_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "parentNode";
   --  Returns the parent.

   not overriding function Get_Parent_Element
    (Self : not null access constant Node)
       return WebAPI.DOM.Elements.Element_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "parentElement";
   --  Returns the parent element.

   not overriding function Has_Child_Nodes
    (Self : not null access constant Node) return Boolean is abstract
       with Import        => True,
            Convention    => JavaScript_Function,
            External_Name => "hasChildNodes";
   --  Returns whether node has children.

   not overriding function Get_Child_Nodes
    (Self : not null access constant Node)
       return WebAPI.DOM.Node_Lists.Node_List is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "childNodes";
   --  Returns the children.

   not overriding function Get_First_Child
    (Self : not null access constant Node)
       return WebAPI.DOM.Nodes.Node_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "firstChild";
   --  Returns the first child.

   not overriding function Get_Last_Child
    (Self : not null access constant Node)
       return WebAPI.DOM.Nodes.Node_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "lastChild";
   --  Returns the last child.

   not overriding function Get_Previous_Sibling
    (Self : not null access constant Node)
       return WebAPI.DOM.Nodes.Node_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "previousSibling";
   --  Returns the previous sibling.

   not overriding function Get_Next_Sibling
    (Self : not null access constant Node)
       return WebAPI.DOM.Nodes.Node_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "nextSibling";
   --  Returns the next sibling.

   not overriding function Get_Node_Value
    (Self : not null access constant Node)
       return League.Strings.Universal_String is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "nodeValue";
   --  The nodeValue attribute must return the following, depending on the
   --  context object:
   --
   --    Text
   --    Comment
   --    ProcessingInstruction
   --
   --      The context object's data. 
   --
   --    Any other node
   --
   --      Null.

   not overriding procedure Set_Node_Value
    (Self : not null access Node;
     To   : League.Strings.Universal_String) is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Setter,
              External_Name => "nodeValue";
   --  The nodeValue attribute must, on setting, if the new value is null, act
   --  as if it was the empty string instead, and then do as described below,
   --  depending on the context object:
   --
   --    Text
   --    Comment
   --    ProcessingInstruction
   --
   --      Replace data with node context object, offset 0, count length
   --      attribute value, and data new value. 
   --
   --    Any other node
   --
   --      Do nothing.

   not overriding function Get_Text_Content
    (Self : not null access constant Node)
       return League.Strings.Universal_String is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Getter,
              External_Name => "textContent";
   --  The textContent attribute must return the following, depending on the context object:
   --
   --    DocumentFragment
   --    Element
   --
   --      The concatenation of data of all the Text node descendants of the
   --      context object, in tree order. 
   --
   --    Text
   --    ProcessingInstruction
   --    Comment
   --
   --      The context object's data. 
   --
   --    Any other node
   --
   --      Null.

   not overriding procedure Set_Text_Content
    (Self : not null access Node;
     To   : League.Strings.Universal_String) is abstract
         with Import        => True,
              Convention    => JavaScript_Property_Setter,
              External_Name => "textContent";
   --  The textContent attribute must, on setting, if the new value is null,
   --  act as if it was the empty string instead, and then do as described
   --  below, depending on the context object:
   --
   --    DocumentFragment
   --    Element
   --
   --      1. Let node be null.
   --
   --      2. If new value is not the empty string, set node to a new Text node
   --         whose data is new value.
   --
   --      3. Replace all with node within the context object. 
   --
   --    Text
   --    ProcessingInstruction
   --    Comment
   --
   --      Replace data with node context object, offset 0, count length
   --      attribute value, and data new value. 
   --
   --    Any other node
   --
   --      Do nothing.

   not overriding procedure Normalize (Self : not null access Node) is abstract
     with Import        => True,
          Convention    => JavaScript_Function,
          External_Name => "normalize";
   --  Removes empty Text nodes and concatenates the data of remaining
   --  contiguous Text nodes into the first of their nodes.

   not overriding function Clone_Node
    (Self : not null access Node;
     Deep : Boolean := False)
       return not null WebAPI.DOM.Nodes.Node_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Function,
              External_Name => "cloneNode";
   --  Returns a copy of node. If deep is true, the copy also includes the
   --  node's descendants.

   not overriding function Is_Equal_Node
    (Self  : not null access constant Node;
     Other : access Node'Class) return Boolean is abstract
         with Import        => True,
              Convention    => JavaScript_Function,
              External_Name => "isEqualNode";
   --  Returns whether node and other have the same properties.

   --  XXX Not bindied yet:
   --    const unsigned short DOCUMENT_POSITION_DISCONNECTED = 0x01;
   --    const unsigned short DOCUMENT_POSITION_PRECEDING = 0x02;
   --    const unsigned short DOCUMENT_POSITION_FOLLOWING = 0x04;
   --    const unsigned short DOCUMENT_POSITION_CONTAINS = 0x08;
   --    const unsigned short DOCUMENT_POSITION_CONTAINED_BY = 0x10;
   --    const unsigned short DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;
   --    unsigned short compareDocumentPosition(Node other);

   not overriding function Contains
    (Self  : not null access constant Node;
     Other : access Node'Class) return Boolean is abstract
         with Import        => True,
              Convention    => JavaScript_Function,
              External_Name => "contains";
   --  Returns true if other is an inclusive descendant of node, and false
   --  otherwise.

   not overriding function Lookup_Prefix
    (Self          : not null access constant Node;
     Namespace_URI : League.Strings.Universal_String)
       return League.Strings.Universal_String is abstract
         with Import        => True,
              Convention    => JavaScript_Function,
              External_Name => "lookupPrefix";
   --  The lookupPrefix(namespace) method must run these steps:
   --
   --   1. If namespace is null or the empty string, return null.
   --
   --   2. Otherwise it depends on the context object:
   --
   --      Element
   --
   --        Return the result of locating a namespace prefix for the node
   --        using namespace. 
   --
   --      Document
   --
   --        Return the result of locating a namespace prefix for its document
   --        element, if that is not null, and null otherwise. 
   --
   --      DocumentType
   --      DocumentFragment
   --
   --        Return null. 
   --
   --      Any other node
   --
   --        Return the result of locating a namespace prefix for its parent
   --        element, or if that is null, null. 

   not overriding function Lookup_Namespace_URI
    (Self   : not null access constant Node;
     Prefix : League.Strings.Universal_String)
       return League.Strings.Universal_String is abstract
         with Import        => True,
              Convention    => JavaScript_Function,
              External_Name => "lookupNamespaceURI";
   --  The lookupNamespaceURI(prefix) method must run these steps:
   --
   --   1. If prefix is the empty string, set it to null.
   --
   --   2. Return the result of running locate a namespace for the context
   --      object using prefix.

   not overriding function Is_Default_Namespace
    (Self          : not null access constant Node;
     Namespace_URI : League.Strings.Universal_String)
       return Boolean is abstract
         with Import        => True,
              Convention    => JavaScript_Function,
              External_Name => "isDefaultNamespace";
   --  The isDefaultNamespace(namespace) method must run these steps:
   --
   --   1. If namespace is the empty string, set it to null.
   --
   --   2. Let defaultNamespace be the result of running locate a namespace for
   --      the context object using null.
   --
   --   3. Return true if defaultNamespace is the same as namespace, and false
   --      otherwise.

   not overriding function Insert_Before
    (Self  : not null access Node;
     Node  : not null access WebAPI.DOM.Nodes.Node'Class;
     Child : access WebAPI.DOM.Nodes.Node'Class)
       return WebAPI.DOM.Nodes.Node_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Function,
              External_Name => "insertBefore";
   procedure Insert_Before
    (Self  : not null access Node'Class;
     Node  : not null access WebAPI.DOM.Nodes.Node'Class;
     Child : access WebAPI.DOM.Nodes.Node'Class)
       with Import        => True,
            Convention    => JavaScript_Function,
            External_Name => "insertBefore";
   --  The insertBefore(node, child) method must return the result of
   --  pre-inserting node into the context object before child.

   not overriding function Append_Child
    (Self : not null access Node;
     Node : not null access WebAPI.DOM.Nodes.Node'Class) return Node_Access is abstract
       with Import     => True,
            Convention => JavaScript_Function,
            Link_Name  => "appendChild";
   procedure Append_Child
    (Self : not null access Node'Class;
     Node : not null access WebAPI.DOM.Nodes.Node'Class)
       with Import     => True,
            Convention => JavaScript_Function,
            Link_Name  => "appendChild";
   --  The appendChild(node) method must return the result of appending node to
   --  the context object.

   not overriding function Replace_Child
    (Self  : not null access Node;
     Node  : not null access WebAPI.DOM.Nodes.Node'Class;
     Child : not null access WebAPI.DOM.Nodes.Node'Class)
       return WebAPI.DOM.Nodes.Node_Access is abstract
         with Import        => True,
              Convention    => JavaScript_Function,
              External_Name => "replaceChild";
   procedure Replace_Child
    (Self  : not null access Node'Class;
     Node  : not null access WebAPI.DOM.Nodes.Node'Class;
     Child : not null access WebAPI.DOM.Nodes.Node'Class)
       with Import        => True,
            Convention    => JavaScript_Function,
            External_Name => "replaceChild";
   --  The replaceChild(node, child) method must return the result of replacing
   --  child with node within the context object.

   not overriding function Remove_Child
    (Self : not null access Node;
     Node : not null access WebAPI.DOM.Nodes.Node'Class) return Node_Access is abstract
       with Import     => True,
            Convention => JavaScript_Function,
            Link_Name  => "removeChild";
   procedure Remove_Child
    (Self : not null access Node'Class;
     Node : not null access WebAPI.DOM.Nodes.Node'Class)
       with Import     => True,
            Convention => JavaScript_Function,
            Link_Name  => "removeChild";
   --  The removeChild(child) method must return the result of pre-removing
   --  child from the context object.

end WebAPI.DOM.Nodes;
