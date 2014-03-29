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

with XML.DOM.Nodes;
limited with XML.DOM.Elements;

package XML.DOM.Attributes is

   pragma Preelaborate;

   type DOM_Attribute is limited interface and XML.DOM.Nodes.DOM_Node;

   type DOM_Attribute_Access is access all DOM_Attribute'Class
     with Storage_Size => 0;

   not overriding function Get_Name
    (Self : not null access constant DOM_Attribute)
       return League.Strings.Universal_String is abstract;
   --  Returns the name of this attribute. If Node.localName is different from
   --  null, this attribute is a qualified name.

   not overriding function Get_Value
    (Self : not null access constant DOM_Attribute)
       return League.Strings.Universal_String is abstract;
   not overriding procedure Set_Value
    (Self      : not null access DOM_Attribute;
     New_Value : League.Strings.Universal_String) is abstract;
   --  On retrieval, the value of the attribute is returned as a string.
   --  Character and general entity references are replaced with their values.
   --  See also the method getAttribute on the Element interface.
   --
   --  On setting, this creates a Text node with the unparsed contents of the
   --  string, i.e. any characters that an XML processor would recognize as
   --  markup are instead treated as literal text. See also the method
   --  Element.setAttribute().
   --
   --  Some specialized implementations, such as some [SVG 1.1]
   --  implementations, may do normalization automatically, even after
   --  mutation; in such case, the value on retrieval may differ from the value
   --  on setting.
   --
   --  Exceptions on setting
   --
   --    DOMException
   --
   --      NO_MODIFICATION_ALLOWED_ERR: Raised when the node is readonly.

   not overriding function Get_Owner_Element
    (Self : not null access constant DOM_Attribute)
       return XML.DOM.Elements.DOM_Element_Access is abstract;
   --  The Element node this attribute is attached to or null if this attribute
   --  is not in use.

end XML.DOM.Attributes;
