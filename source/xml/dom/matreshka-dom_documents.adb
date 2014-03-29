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
with Ada.Containers.Hashed_Maps;
with Ada.Tags.Generic_Dispatching_Constructor;

with League.Strings.Hash;

with Matreshka.DOM_Attributes;
with Matreshka.DOM_Elements;
with Matreshka.DOM_Texts;

package body Matreshka.DOM_Documents is

   procedure Split_Qualified_Name
    (Qualified_Name : League.Strings.Universal_String;
     Prefix         : out League.Strings.Universal_String;
     Local_Name     : out League.Strings.Universal_String);
   --  Splits qualified name into prefix and local name parts.

   type Qualified_Name is record
      Namespace_URI : League.Strings.Universal_String;
      Local_Name    : League.Strings.Universal_String;
   end record;

   function Hash (Item : Qualified_Name) return Ada.Containers.Hash_Type;
   --  Hash function to be used with standard containers.

   package Qualified_Name_Maps is
     new Ada.Containers.Hashed_Maps
          (Qualified_Name, Ada.Tags.Tag, Hash, "=", Ada.Tags."=");

   Attribute_Registry : Qualified_Name_Maps.Map;
   Element_Registry   : Qualified_Name_Maps.Map;

   ------------------
   -- Constructors --
   ------------------

   package body Constructors is

      ----------------
      -- Initialize --
      ----------------

      procedure Initialize (Self : not null access Document_Node'Class) is
      begin
         Matreshka.DOM_Nodes.Constructors.Initialize (Self, Self);
      end Initialize;

   end Constructors;

   ----------------------
   -- Create_Attribute --
   ----------------------

   function Create_Attribute
    (Self          : not null access Document_Node'Class;
     Namespace_URI : League.Strings.Universal_String;
     Prefix        : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return not null XML.DOM.Attributes.DOM_Attribute_Access
   is

      function Constructor is
        new Ada.Tags.Generic_Dispatching_Constructor
             (Matreshka.DOM_Attributes.Abstract_Attribute_L2_Node,
              Matreshka.DOM_Attributes.Attribute_L2_Parameters,
              Matreshka.DOM_Attributes.Create);

      Parameters : aliased Matreshka.DOM_Attributes.Attribute_L2_Parameters
        := (Document      => Self,
            Namespace_URI => Namespace_URI,
            Prefix        => Prefix,
            Local_Name    => Local_Name);
      Position   : Qualified_Name_Maps.Cursor;
      Tag        : Ada.Tags.Tag;
      Node       : Matreshka.DOM_Nodes.Node_Access;

   begin
      Position :=
        Attribute_Registry.Find
         ((Parameters.Namespace_URI, Parameters.Local_Name));

      if Qualified_Name_Maps.Has_Element (Position) then
         Tag := Qualified_Name_Maps.Element (Position);

      else
         Tag := Matreshka.DOM_Attributes.Attribute_L2_Node'Tag;
      end if;

      Node :=
        new Matreshka.DOM_Attributes.Abstract_Attribute_L2_Node'Class'
             (Constructor (Tag, Parameters'Access));

      return XML.DOM.Attributes.DOM_Attribute_Access (Node);
   end Create_Attribute;

   -------------------------
   -- Create_Attribute_NS --
   -------------------------

   overriding function Create_Attribute_NS
    (Self           : not null access Document_Node;
     Namespace_URI  : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
       return not null XML.DOM.Attributes.DOM_Attribute_Access
   is
      Prefix     : League.Strings.Universal_String;
      Local_Name : League.Strings.Universal_String;
      Node       : constant not null Matreshka.DOM_Nodes.Node_Access
        := new Matreshka.DOM_Attributes.Attribute_L2_Node;

   begin
      Split_Qualified_Name (Qualified_Name, Prefix, Local_Name);

      return Self.Create_Attribute (Namespace_URI, Prefix, Local_Name);
   end Create_Attribute_NS;

   --------------------
   -- Create_Element --
   --------------------

   function Create_Element
    (Self          : not null access Document_Node'Class;
     Namespace_URI : League.Strings.Universal_String;
     Prefix        : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String)
       return not null XML.DOM.Elements.DOM_Element_Access
   is

      function Constructor is
        new Ada.Tags.Generic_Dispatching_Constructor
             (Matreshka.DOM_Elements.Abstract_Element_Node,
              Matreshka.DOM_Elements.Element_L2_Parameters,
              Matreshka.DOM_Elements.Create);

      Parameters : aliased Matreshka.DOM_Elements.Element_L2_Parameters
        := (Document      => Self,
            Namespace_URI => Namespace_URI,
            Prefix        => Prefix,
            Local_Name    => Local_Name);
      Position   : Qualified_Name_Maps.Cursor;
      Tag        : Ada.Tags.Tag;
      Node       : Matreshka.DOM_Nodes.Node_Access;

   begin
      Position :=
        Element_Registry.Find
         ((Parameters.Namespace_URI, Parameters.Local_Name));

      if Qualified_Name_Maps.Has_Element (Position) then
         Tag := Qualified_Name_Maps.Element (Position);

      else
         Tag := Matreshka.DOM_Elements.Element_Node'Tag;
      end if;

      Node :=
        new Matreshka.DOM_Elements.Abstract_Element_Node'Class'
             (Constructor (Tag, Parameters'Access));

      return XML.DOM.Elements.DOM_Element_Access (Node);
   end Create_Element;

   -----------------------
   -- Create_Element_NS --
   -----------------------

   overriding function Create_Element_NS
    (Self           : not null access Document_Node;
     Namespace_URI  : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String)
       return not null XML.DOM.Elements.DOM_Element_Access
   is
      Prefix     : League.Strings.Universal_String;
      Local_Name : League.Strings.Universal_String;

   begin
      Split_Qualified_Name (Qualified_Name, Prefix, Local_Name);

      return Self.Create_Element (Namespace_URI, Prefix, Local_Name);
   end Create_Element_NS;

   ----------------------
   -- Create_Text_Node --
   ----------------------

   overriding function Create_Text_Node
    (Self : not null access Document_Node;
     Data : League.Strings.Universal_String)
       return not null XML.DOM.Texts.DOM_Text_Access
   is
      Node : constant not null Matreshka.DOM_Nodes.Node_Access
        := new Matreshka.DOM_Texts.Text_Node;

   begin
      Matreshka.DOM_Texts.Constructors.Initialize
       (Matreshka.DOM_Texts.Text_Node'Class (Node.all)'Access, Self, Data);

      return XML.DOM.Texts.DOM_Text_Access (Node);
   end Create_Text_Node;

   ----------------
   -- Enter_Node --
   ----------------

   overriding procedure Enter_Node
    (Self    : not null access Document_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Document
       (XML.DOM.Documents.DOM_Document_Access (Self), Control);
   end Enter_Node;

   ----------------
   -- Error_Code --
   ----------------

   overriding function Error_Code
    (Self : not null access constant Document_Node)
       return XML.DOM.Error_Code is
   begin
      return Self.Diagnosis;
   end Error_Code;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : not null access constant Document_Node)
       return League.Strings.Universal_String is
   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

   -------------------
   -- Get_Node_Name --
   -------------------

   overriding function Get_Node_Name
    (Self : not null access constant Document_Node)
       return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      return League.Strings.To_Universal_String ("#document");
   end Get_Node_Name;

   -------------------
   -- Get_Node_Type --
   -------------------

   overriding function Get_Node_Type
    (Self : not null access constant Document_Node)
       return XML.DOM.Node_Type
   is
      pragma Unreferenced (Self);

   begin
      return XML.DOM.Document_Node;
   end Get_Node_Type;

   ------------------------
   -- Get_Owner_Document --
   ------------------------

   overriding function Get_Owner_Document
    (Self : not null access constant Document_Node)
       return XML.DOM.Documents.DOM_Document_Access
   is
      pragma Unreferenced (Self);

   begin
      return null;
   end Get_Owner_Document;

   ----------
   -- Hash --
   ----------

   function Hash (Item : Qualified_Name) return Ada.Containers.Hash_Type is
      use type Ada.Containers.Hash_Type;

   begin
      return
        League.Strings.Hash (Item.Namespace_URI)
          + League.Strings.Hash (Item.Local_Name);
   end Hash;

   ----------------
   -- Leave_Node --
   ----------------

   overriding procedure Leave_Node
    (Self    : not null access Document_Node;
     Visitor : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Document
       (XML.DOM.Documents.DOM_Document_Access (Self), Control);
   end Leave_Node;

   ------------------------
   -- Register_Attribute --
   ------------------------

   procedure Register_Attribute
    (Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String;
     Tag           : Ada.Tags.Tag) is
   begin
      Attribute_Registry.Insert ((Namespace_URI, Local_Name), Tag);
   end Register_Attribute;

   ----------------------
   -- Register_Element --
   ----------------------

   procedure Register_Element
    (Namespace_URI : League.Strings.Universal_String;
     Local_Name    : League.Strings.Universal_String;
     Tag           : Ada.Tags.Tag) is
   begin
      Element_Registry.Insert ((Namespace_URI, Local_Name), Tag);
   end Register_Element;

   --------------------------
   -- Split_Qualified_Name --
   --------------------------

   procedure Split_Qualified_Name
    (Qualified_Name : League.Strings.Universal_String;
     Prefix         : out League.Strings.Universal_String;
     Local_Name     : out League.Strings.Universal_String)
   is
      Delimiter : constant Natural := Qualified_Name.Index (':');

   begin
      if Delimiter = 0 then
         Prefix := League.Strings.Empty_Universal_String;
         Local_Name := Qualified_Name;

      else
         Prefix := Qualified_Name.Head (Delimiter - 1);
         Local_Name := Qualified_Name.Tail_From (Delimiter + 1);
      end if;
   end Split_Qualified_Name;

   ----------------
   -- Visit_Node --
   ----------------

   overriding procedure Visit_Node
    (Self     : not null access Document_Node;
     Iterator : in out XML.DOM.Visitors.Abstract_Iterator'Class;
     Visitor  : in out XML.DOM.Visitors.Abstract_Visitor'Class;
     Control  : in out XML.DOM.Visitors.Traverse_Control) is
   begin
      Iterator.Visit_Document
       (Visitor, XML.DOM.Documents.DOM_Document_Access (Self), Control);
   end Visit_Node;

end Matreshka.DOM_Documents;
