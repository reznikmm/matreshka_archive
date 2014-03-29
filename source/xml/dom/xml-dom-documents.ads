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
with XML.DOM.Elements;
with XML.DOM.Nodes;
with XML.DOM.Texts;

package XML.DOM.Documents is

   pragma Preelaborate;

   type DOM_Document is limited interface
     and XML.DOM.Nodes.DOM_Node;

   type DOM_Document_Access is access all DOM_Document'Class
     with Storage_Size => 0;

   not overriding function Create_Attribute_NS
    (Self           : not null access DOM_Document;
     Namespace_URI  : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
       return not null XML.DOM.Attributes.DOM_Attribute_Access is abstract;
   --  Creates an attribute of the given qualified name and namespace URI.
   --
   --  Per [XML Namespaces], applications must use the value null as the
   --  namespaceURI parameter for methods if they wish to have no namespace.
   --
   --  Parameters
   --
   --    namespaceURI of type DOMString
   --      The namespace URI of the attribute to create.
   --
   --    qualifiedName of type DOMString
   --      The qualified name of the attribute to instantiate.
   --
   --  Return Value
   --
   --    Attr
   --      A new Attr object with the following attributes:
   --
   --         Attribute           Value
   --      Node.nodeName      qualifiedName
   --      Node.namespaceURI  namespaceURI
   --      Node.prefix        prefix, extracted from qualifiedName, or null if
   --                         there is no prefix
   --      Node.localName     local name, extracted from qualifiedName
   --      Attr.name          qualifiedName
   --      Node.nodeValue     the empty string
   --
   --  Exceptions
   --
   --    DOMException
   --
   --      INVALID_CHARACTER_ERR: Raised if the specified qualifiedName is not
   --      an XML name according to the XML version in use specified in the
   --      Document.xmlVersion attribute.
   --
   --      NAMESPACE_ERR: Raised if the qualifiedName is a malformed qualified
   --      name, if the qualifiedName has a prefix and the namespaceURI is
   --      null, if the qualifiedName has a prefix that is "xml" and the
   --      namespaceURI is different from
   --      "http://www.w3.org/XML/1998/namespace", if the qualifiedName or its
   --      prefix is "xmlns" and the namespaceURI is different from
   --      "http://www.w3.org/2000/xmlns/", or if the namespaceURI is
   --      "http://www.w3.org/2000/xmlns/" and neither the qualifiedName nor
   --      its prefix is "xmlns".
   --
   --      NOT_SUPPORTED_ERR: Always thrown if the current document does not
   --      support the "XML" feature, since namespaces were defined by XML.

   not overriding function Create_Element_NS
    (Self           : not null access DOM_Document;
     Namespace_URI  : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
       return not null XML.DOM.Elements.DOM_Element_Access is abstract;
   --  Creates an element of the given qualified name and namespace URI.
   --
   --  Per [XML Namespaces], applications must use the value null as the
   --  namespaceURI parameter for methods if they wish to have no namespace.
   --
   --  Parameters
   --
   --    namespaceURI of type DOMString
   --      The namespace URI of the element to create.
   --
   --    qualifiedName of type DOMString
   --      The qualified name of the element type to instantiate.
   --
   --  Return Value
   --
   --    Element
   --      A new Element object with the following attributes:
   --
   --         Attribute           Value
   --      Node.nodeName      qualifiedName
   --      Node.namespaceURI  namespaceURI
   --      Node.prefix        prefix, extracted from qualifiedName, or null if
   --                         there is no prefix
   --      Node.localName     local name, extracted from qualifiedName
   --      Element.tagName    qualifiedName
   --
   --  Exceptions
   --
   --    DOMException
   --
   --      INVALID_CHARACTER_ERR: Raised if the specified qualifiedName is not
   --      an XML name according to the XML version in use specified in the
   --      Document.xmlVersion attribute.
   --
   --      NAMESPACE_ERR: Raised if the qualifiedName is a malformed qualified
   --      name, if the qualifiedName has a prefix and the namespaceURI is
   --      null, or if the qualifiedName has a prefix that is "xml" and the
   --      namespaceURI is different from
   --      "http://www.w3.org/XML/1998/namespace" [XML Namespaces], or if the
   --      qualifiedName or its prefix is "xmlns" and the namespaceURI is
   --      different from "http://www.w3.org/2000/xmlns/", or if the
   --      namespaceURI is "http://www.w3.org/2000/xmlns/" and neither the
   --      qualifiedName nor its prefix is "xmlns".
   --
   --      NOT_SUPPORTED_ERR: Always thrown if the current document does not
   --      support the "XML" feature, since namespaces were defined by XML.

   not overriding function Create_Text_Node
    (Self : not null access DOM_Document;
     Data : League.Strings.Universal_String)
       return not null XML.DOM.Texts.DOM_Text_Access is abstract;
   --  Creates a Text node given the specified string.
   --
   --  Parameters
   --
   --    data of type DOMString
   --      The data for the node.
   --
   --  Return Value
   --
   --    Text
   --      The new Text object.

   not overriding function Error_Code
    (Self : not null access constant DOM_Document)
       return XML.DOM.Error_Code is abstract;
   --  Returns DOM error code for last raised DOM_Exception.

   not overriding function Error_String
    (Self : not null access constant DOM_Document)
       return League.Strings.Universal_String is abstract;
   --  Returns error string for last raised DOM_Exception.

end XML.DOM.Documents;
