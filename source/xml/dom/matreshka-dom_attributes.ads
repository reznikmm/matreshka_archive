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

with Matreshka.DOM_Nodes;
with XML.DOM.Attributes;
with XML.DOM.Elements;
with XML.DOM.Nodes;
with XML.DOM.Visitors;

package Matreshka.DOM_Attributes is

   pragma Preelaborate;

   type Abstract_Attribute_Node is abstract new Matreshka.DOM_Nodes.Node
     and XML.DOM.Attributes.DOM_Attribute with null record;

   overriding procedure Enter_Node
    (Self    : not null access Abstract_Attribute_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Node
    (Self    : not null access Abstract_Attribute_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Node
    (Self     : not null access Abstract_Attribute_Node;
     Iterator : in out XML.DOM.Visitors.Abstract_Iterator'Class;
     Visitor  : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control  : in out XML.DOM.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

   overriding function Get_Next_Sibling
    (Self : not null access constant Abstract_Attribute_Node)
       return XML.DOM.Nodes.DOM_Node_Access;

   overriding function Get_Node_Type
    (Self : not null access constant Abstract_Attribute_Node)
       return XML.DOM.Node_Type;

   overriding function Get_Owner_Element
    (Self : not null access constant Abstract_Attribute_Node)
       return XML.DOM.Elements.DOM_Element_Access;

   overriding function Get_Parent_Node
    (Self : not null access constant Abstract_Attribute_Node)
       return XML.DOM.Nodes.DOM_Node_Access;

   overriding function Get_Previous_Sibling
    (Self : not null access constant Abstract_Attribute_Node)
       return XML.DOM.Nodes.DOM_Node_Access;

   overriding function Get_Value
    (Self : not null access constant Abstract_Attribute_Node)
       return League.Strings.Universal_String;

   overriding function Get_Node_Value
    (Self : not null access constant Abstract_Attribute_Node)
       return League.Strings.Universal_String renames Get_Value;

   overriding procedure Set_Value
    (Self      : not null access Abstract_Attribute_Node;
     New_Value : League.Strings.Universal_String);

   overriding procedure Set_Node_Value
    (Self      : not null access Abstract_Attribute_Node;
     New_Value : League.Strings.Universal_String) renames Set_Value;

   type Abstract_Attribute_L1_Node is
     abstract new Abstract_Attribute_Node with null record;

   type Abstract_Attribute_L2_Node is
     abstract new Abstract_Attribute_Node with null record;

   overriding function Get_Name
    (Self : not null access constant Abstract_Attribute_L2_Node)
       return League.Strings.Universal_String;

   overriding function Get_Node_Name
    (Self : not null access constant Abstract_Attribute_L2_Node)
       return League.Strings.Universal_String renames Get_Name;

   type Attribute_L2_Parameters is record
      Document      : not null Matreshka.DOM_Nodes.Document_Access;
      Namespace_URI : League.Strings.Universal_String;
      Prefix        : League.Strings.Universal_String;
      Local_Name    : League.Strings.Universal_String;
   end record;

   not overriding function Create
    (Parameters : not null access Attribute_L2_Parameters)
       return Abstract_Attribute_L2_Node is abstract;
   --  Dispatching constructor.

   type Attribute_L1_Node is new Abstract_Attribute_L1_Node with null record;

   overriding function Get_Name
    (Self : not null access constant Attribute_L1_Node)
       return League.Strings.Universal_String;

   overriding function Get_Node_Name
    (Self : not null access constant Attribute_L1_Node)
       return League.Strings.Universal_String renames Get_Name;

   type Attribute_L2_Node is new Abstract_Attribute_L2_Node with record
      Namespace_URI : League.Strings.Universal_String;
      Prefix        : League.Strings.Universal_String;
      Local_Name    : League.Strings.Universal_String;
   end record;

   overriding function Create
    (Parameters : not null access Attribute_L2_Parameters)
       return Attribute_L2_Node;

   overriding function Get_Local_Name
    (Self : not null access constant Attribute_L2_Node)
       return League.Strings.Universal_String;

   overriding function Get_Namespace_URI
    (Self : not null access constant Attribute_L2_Node)
       return League.Strings.Universal_String;

   package Constructors is

      procedure Initialize
       (Self     : not null access Attribute_L1_Node'Class;
        Document : not null Matreshka.DOM_Nodes.Document_Access);

      procedure Initialize
       (Self     : not null access Abstract_Attribute_L2_Node'Class;
        Document : not null Matreshka.DOM_Nodes.Document_Access);

   end Constructors;

end Matreshka.DOM_Attributes;
