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
with Ada.Tags;

with League.Strings;

with Matreshka.DOM_Nodes;
with XML.DOM.Attributes;
with XML.DOM.Documents;
with XML.DOM.Elements;
with XML.DOM.Texts;
with XML.DOM.Visitors;

package Matreshka.DOM_Documents is

   pragma Preelaborate;

   type Document_Node is new Matreshka.DOM_Nodes.Node
     and XML.DOM.Documents.DOM_Document with
   record
      First_Detached : Matreshka.DOM_Nodes.Node_Access;
      Last_Detached  : Matreshka.DOM_Nodes.Node_Access;
      Diagnosis      : XML.DOM.Error_Code := XML.DOM.No_Error;
   end record;

   function Create_Attribute
    (Self          : not null access Document_Node'Class;
     Namespace_URI : League.Strings.Universal_String;
     Prefix        : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return not null XML.DOM.Attributes.DOM_Attribute_Access;
   --  Internal implementation.

   function Create_Element
    (Self          : not null access Document_Node'Class;
     Namespace_URI : League.Strings.Universal_String;
     Prefix        : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return not null XML.DOM.Elements.DOM_Element_Access;
   --  Internal implementation.

   overriding function Create_Attribute_NS
    (Self           : not null access Document_Node;
     Namespace_URI  : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
       return not null XML.DOM.Attributes.DOM_Attribute_Access;

   overriding function Create_Element_NS
    (Self           : not null access Document_Node;
     Namespace_URI  : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
       return not null XML.DOM.Elements.DOM_Element_Access;

   overriding function Create_Text_Node
    (Self : not null access Document_Node;
     Data : League.Strings.Universal_String)
       return not null XML.DOM.Texts.DOM_Text_Access;

   overriding procedure Enter_Node
    (Self    : not null access Document_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding function Error_Code
    (Self : not null access constant Document_Node) return XML.DOM.Error_Code;

   overriding function Error_String
    (Self : not null access constant Document_Node)
       return League.Strings.Universal_String;

   overriding function Get_Node_Name
    (Self : not null access constant Document_Node)
       return League.Strings.Universal_String;

   overriding function Get_Node_Type
    (Self : not null access constant Document_Node)
       return XML.DOM.Node_Type;

   overriding function Get_Owner_Document
    (Self : not null access constant Document_Node)
       return XML.DOM.Documents.DOM_Document_Access;

   overriding procedure Leave_Node
    (Self    : not null access Document_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Node
    (Self     : not null access Document_Node;
     Iterator : in out XML.DOM.Visitors.Abstract_Iterator'Class;
     Visitor  : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control  : in out XML.DOM.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

   procedure Register_Attribute
    (Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String;
     Tag           : Ada.Tags.Tag);
   --  Register implementation of namespace URI:local name attribute node.

   procedure Register_Element
    (Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String;
     Tag           : Ada.Tags.Tag);
   --  Register implementation of namespace URI:local name element node.

   package Constructors is

      procedure Initialize (Self : not null access Document_Node'Class);

   end Constructors;

end Matreshka.DOM_Documents;
