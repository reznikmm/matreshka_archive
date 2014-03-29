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
with Matreshka.DOM_Documents;
with Matreshka.DOM_Lists;
with XML.DOM.Entity_References;
with XML.DOM.Texts;

package body Matreshka.DOM_Attributes is

   use type Matreshka.DOM_Nodes.Node_Access;

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize
       (Self     : not null access Attribute_L1_Node'Class;
        Document : not null Matreshka.DOM_Nodes.Document_Access) is
      begin
         Matreshka.DOM_Nodes.Constructors.Initialize (Self, Document);
      end Initialize;

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize
       (Self     : not null access Abstract_Attribute_L2_Node'Class;
        Document : not null Matreshka.DOM_Nodes.Document_Access) is
      begin
         Matreshka.DOM_Nodes.Constructors.Initialize (Self, Document);
      end Initialize;

   end Constructors;

   ------------
   -- Create --
   ------------

   overriding function Create
    (Parameters : not null access Attribute_L2_Parameters)
       return Attribute_L2_Node is
   begin
      return Self : Attribute_L2_Node do
         Matreshka.DOM_Attributes.Constructors.Initialize
          (Self'Unchecked_Access, Parameters.Document);

         Self.Namespace_URI := Parameters.Namespace_URI;
         Self.Prefix        := Parameters.Prefix;
         Self.Local_Name    := Parameters.Local_Name;
      end return;
   end Create;

   ----------------
   -- Enter_Node --
   ----------------

   overriding procedure Enter_Node
    (Self    : not null access Abstract_Attribute_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Visitor);
      pragma Unreferenced (Control);

   begin
      raise Program_Error;
   end Enter_Node;

   --------------------
   -- Get_Local_Name --
   --------------------

   overriding function Get_Local_Name
    (Self : not null access constant Attribute_L2_Node)
       return League.Strings.Universal_String is
   begin
      return Self.Local_Name;
   end Get_Local_Name;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant Attribute_L1_Node)
       return League.Strings.Universal_String is
   begin
      raise Program_Error;
      return League.Strings.Empty_Universal_String;
   end Get_Name;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant Abstract_Attribute_L2_Node)
       return League.Strings.Universal_String is
   begin
--      return Self.Get_Prefix & ':' & Self.Get_Local_Name;
      raise Program_Error;
      return League.Strings.Empty_Universal_String;
   end Get_Name;

   -----------------------
   -- Get_Namespace_URI --
   -----------------------

   overriding function Get_Namespace_URI
    (Self : not null access constant Attribute_L2_Node)
       return League.Strings.Universal_String is
   begin
      return Self.Namespace_URI;
   end Get_Namespace_URI;

   ----------------------
   -- Get_Next_Sibling --
   ----------------------

   overriding function Get_Next_Sibling
    (Self : not null access constant Abstract_Attribute_Node)
       return XML.DOM.Nodes.DOM_Node_Access
   is
      pragma Unreferenced (Self);

   begin
      return null;
   end Get_Next_Sibling;

   -------------------
   -- Get_Node_Type --
   -------------------

   overriding function Get_Node_Type
    (Self : not null access constant Abstract_Attribute_Node)
       return XML.DOM.Node_Type
   is
      pragma Unreferenced (Self);

   begin
      return XML.DOM.Attribute_Node;
   end Get_Node_Type;

   -----------------------
   -- Get_Owner_Element --
   -----------------------

   overriding function Get_Owner_Element
    (Self : not null access constant Abstract_Attribute_Node)
       return XML.DOM.Elements.DOM_Element_Access is
   begin
      return XML.DOM.Elements.DOM_Element_Access (Self.Parent);
   end Get_Owner_Element;

   ---------------------
   -- Get_Parent_Node --
   ---------------------

   overriding function Get_Parent_Node
    (Self : not null access constant Abstract_Attribute_Node)
       return XML.DOM.Nodes.DOM_Node_Access
   is
      pragma Unreferenced (Self);

   begin
      return null;
   end Get_Parent_Node;

   --------------------------
   -- Get_Previous_Sibling --
   --------------------------

   overriding function Get_Previous_Sibling
    (Self : not null access constant Abstract_Attribute_Node)
       return XML.DOM.Nodes.DOM_Node_Access
   is
      pragma Unreferenced (Self);

   begin
      return null;
   end Get_Previous_Sibling;

   ---------------
   -- Get_Value --
   ---------------

   overriding function Get_Value
    (Self : not null access constant Abstract_Attribute_Node)
       return League.Strings.Universal_String
   is
      N : Matreshka.DOM_Nodes.Node_Access := Self.First;

   begin
      --  Lookup for the first DOM::Text child node by unwinding all
      --  DOM::EntityReference nodes. Returns its whole text if it is found.

      while N /= null loop
         if N.all in XML.DOM.Texts.DOM_Text'Class then
            return XML.DOM.Texts.DOM_Text_Access (N).Get_Whole_Text;

         else
            N := N.First;
         end if;
      end loop;

      return League.Strings.Empty_Universal_String;
   end Get_Value;

   ----------------
   -- Leave_Node --
   ----------------

   overriding procedure Leave_Node
    (Self    : not null access Abstract_Attribute_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Visitor);
      pragma Unreferenced (Control);

   begin
      raise Program_Error;
   end Leave_Node;

   ---------------
   -- Set_Value --
   ---------------

   overriding procedure Set_Value
    (Self      : not null access Abstract_Attribute_Node;
     New_Value : League.Strings.Universal_String)
   is
      Node : Matreshka.DOM_Nodes.Node_Access;
      Text : XML.DOM.Texts.DOM_Text_Access;

   begin
      --  Remove all existing child nodes.

      while Self.First /= null loop
         Node := Self.First;
         Matreshka.DOM_Lists.Remove_From_Children (Node);
         Matreshka.DOM_Lists.Insert_Into_Detached (Node);
      end loop;

      --  Create new text node and set its value.

      Text := Self.Document.Create_Text_Node (New_Value);
      Self.Append_Child (XML.DOM.Nodes.DOM_Node_Access (Text));
   end Set_Value;

   ----------------
   -- Visit_Node --
   ----------------

   overriding procedure Visit_Node
    (Self     : not null access Abstract_Attribute_Node;
     Iterator : in out XML.DOM.Visitors.Abstract_Iterator'Class;
     Visitor  : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control  : in out XML.DOM.Visitors.Traverse_Control)
   is
      pragma Unreferenced (Self);
      pragma Unreferenced (Visitor);
      pragma Unreferenced (Control);

   begin
      raise Program_Error;
   end Visit_Node;

end Matreshka.DOM_Attributes;
