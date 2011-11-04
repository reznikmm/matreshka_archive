------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
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
with Ada.Strings.Wide_Wide_Unbounded;
with Ada.Tags;
with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;

with AMF.CMOF.Enumerations;
with AMF.CMOF.Visitors;
with AMF.CMOF.Types;
with League.Strings;

with Generator.Attribute_Mapping;
with Generator.Contexts;
with Generator.Names;
with Generator.Type_Mapping;
with Generator.Wide_Wide_Text_IO;

package body Generator.Reflection is

   use Ada.Wide_Wide_Text_IO;
   use Generator.Attribute_Mapping;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;
   use type League.Strings.Universal_String;

   Boolean_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Boolean");
   Integer_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Integer");
   Real_Name              : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Real");
   String_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("String");
   Unlimited_Natural_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("UnlimitedNatural");

   type Ada_Context_Builder is
     new AMF.CMOF.Visitors.Abstract_CMOF_Visitor with record
      Context : Contexts.Context;
   end record;

   overriding procedure Visit_Class
    (Self    : in out Ada_Context_Builder;
     Element : not null access AMF.CMOF.Classes.CMOF_Class'Class);

   overriding procedure Visit_Property
    (Self    : in out Ada_Context_Builder;
     Element : not null access AMF.CMOF.Properties.CMOF_Property'Class);

   procedure Generate_With_Clause
    (Unit       : League.Strings.Universal_String;
     Is_Limited : Boolean;
     Is_Private : Boolean);

   ----------------------------------------
   -- Generate_Reflection_Implementation --
   ----------------------------------------

   procedure Generate_Reflection_Implementation is

      procedure Generate_Getter_Specification
       (Position : Class_Information_Maps.Cursor);
      --  Generates declaration of the getter for the class.

      procedure Generate_Getter_Implementation
       (Position : Class_Information_Maps.Cursor);
      --  Generates implementation of the getter for the class.

      procedure Generate_Getter_Call
       (Position : Class_Information_Maps.Cursor);
      --  Generates call to class's getter subprogram.

      procedure Generate_Meta
       (Position : Class_Information_Maps.Cursor);
      --  Generates conversion from element kind to metaclass.

      procedure Generate_Setter_Specification
       (Position : Class_Information_Maps.Cursor);
      --  Generates declaration of the setter for the class.

      procedure Generate_Setter_Implementation
       (Position : Class_Information_Maps.Cursor);
      --  Generates implementation of the setter for the class.

      procedure Generate_Setter_Call
       (Position : Class_Information_Maps.Cursor);
      --  Generates call to class's setter subprogram.

      --------------------------
      -- Generate_Getter_Call --
      --------------------------

      procedure Generate_Getter_Call
       (Position : Class_Information_Maps.Cursor)
      is
         Class      : constant not null Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Class_Name : constant Wide_Wide_String
           := To_Ada_Identifier (Class.Class.Get_Name.Value);

      begin
         if not Class.Class.Get_Is_Abstract then
            New_Line;
            Put_Line ("         when E_" & Class_Name & " =>");
            Put_Line ("            return " & Class_Name & "_Get;");
         end if;
      end Generate_Getter_Call;

      ------------------------------------
      -- Generate_Getter_Implementation --
      ------------------------------------

      procedure Generate_Getter_Implementation
       (Position : Class_Information_Maps.Cursor)
      is

         procedure Generate_Attribute (Position : CMOF_Property_Sets.Cursor);
         --  Generate return statement for the specified attribute.

         Class : constant not null Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Name  : constant Wide_Wide_String
           := To_Ada_Identifier (Class.Class.Get_Name.Value) & "_Get";
         First : Boolean := True;

         ------------------------
         -- Generate_Attribute --
         ------------------------

         procedure Generate_Attribute (Position : CMOF_Property_Sets.Cursor) is
            use Ada.Strings.Wide_Wide_Unbounded;
            use type AMF.Optional_String;

            Attribute       : constant
              not null AMF.CMOF.Properties.CMOF_Property_Access
                := CMOF_Property_Sets.Element (Position);
            Attribute_Class : constant
              not null AMF.CMOF.Classes.CMOF_Class_Access
                := Attribute.Get_Class;
            Attribute_Type  : constant not null AMF.CMOF.Types.CMOF_Type_Access
              := Attribute.Get_Type;
            Holder_Name     : League.Strings.Universal_String;
            Convertor_Name  : League.Strings.Universal_String;

         begin
            if First then
               Put ("         if");
               First := False;

            else
               New_Line;
               Put ("         elsif");
            end if;

            Put_Line
             (" Property = " & Property_Constant_Name (Attribute) & " then");

            Put_Line
             ("            --  "
                & Attribute_Class.Get_Name.Value
                & "::"
                & Attribute.Get_Name.Value
                & " : "
                & Attribute_Type.Get_Name.Value);
            New_Line;
            Put_Line ("            return");
            Put ("              ");

            if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
               if Representation (Attribute) in Value .. Holder then
                  Holder_Name :=
                    "AMF.Internals.Holders."
                      & Metamodel_Name
                      & "_Holders.To_Holder";
                  Convertor_Name :=
                    Type_Mapping.Public_Ada_Type_Qualified_Name
                     (Attribute_Type, Value)
                      & "'";

               else
                  Holder_Name :=
                    Type_Mapping.Public_Ada_Package_Name
                     (Attribute_Type, Representation (Attribute))
                      & "."
                      & Metamodel_Name
                      & "_"
                      & To_Ada_Identifier (Attribute_Type.Get_Name.Value)
                      & "_Collections.Internals.To_Holder";
               end if;

            elsif Attribute_Type.Get_Name = Boolean_Name then
               case Representation (Attribute) is
                  when Value =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("League.Holders.Booleans.To_Holder");

                  when Holder =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.Holders.To_Holder");

                  when Set =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.Holders.Boolean_Collections.To_Holder");

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Integer_Name then
               case Representation (Attribute) is
                  when Value =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("League.Holders.Integers.To_Holder");

                  when Holder =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.Holders.To_Holder");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Real_Name then
               case Representation (Attribute) is
                  when Value =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.Holders.Reals.To_Holder");

                  when Holder =>
                     raise Program_Error;

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = String_Name then
               case Representation (Attribute) is
                  when Value =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("League.Holders.To_Holder");

                  when Holder =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.Holders.To_Holder");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.Holders.String_Collections.To_Holder");

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.Holders.String_Collections.To_Holder");
               end case;

            elsif Attribute_Type.Get_Name = Unlimited_Natural_Name then
               case Representation (Attribute) is
                  when Value =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.Holders.Unlimited_Naturals.To_Holder");

                  when Holder =>
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.Holders.To_Holder");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.all
                    in AMF.CMOF.Enumerations.CMOF_Enumeration'Class
            then
               case Representation (Attribute) is
                  when Value =>
                     Holder_Name :=
                       "AMF."
                         & Metamodel_Name
                         & ".Holders."
                         & Plural
                            (To_Ada_Identifier (Attribute_Type.Get_Name.Value))
                         & ".To_Holder";

                  when Holder =>
                     Holder_Name :=
                       "AMF." & Metamodel_Name & ".Holders.To_Holder";

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            else
               Put_Line
                (Standard_Error,
                 Attribute_Type.Get_Name.Value.To_Wide_Wide_String);

               raise Program_Error;
            end if;

            if Convertor_Name.Is_Empty then
               Put_Line (Holder_Name);
               Put_Line
                ("               ("
                   & Type_Mapping.Public_Ada_Type_Qualified_Name
                      (Class.Class, Value));
               Put_Line
                ("                 ("
                   & "AMF.Internals.Helpers.To_Element (Self)).Get_"
                   & To_Ada_Identifier (Attribute.Get_Name.Value)
                   & ");");

            else
               Put_Line (Holder_Name);
               Put_Line ("               (" & Convertor_Name);
               Put_Line
                ("                 ("
                   & Type_Mapping.Public_Ada_Type_Qualified_Name
                      (Class.Class, Value));
               Put_Line
                ("                   ("
                   & "AMF.Internals.Helpers.To_Element (Self)).Get_"
                   & To_Ada_Identifier (Attribute.Get_Name.Value)
                   & "));");
            end if;
         end Generate_Attribute;

      begin
         if not Class.Class.Get_Is_Abstract then
            Put_Header (Name, 6);
            New_Line;
            Put_Line
             ("      function " & Name & " return League.Holders.Holder is");
            Put_Line ("      begin");
            Class.All_Attributes.Iterate (Generate_Attribute'Access);
            New_Line;
            Put_Line ("         else");
            Put_Line ("            raise Program_Error;");
            Put_Line ("         end if;");
            Put_Line ("      end " & Name & ';');
         end if;
      end Generate_Getter_Implementation;

      -----------------------------------
      -- Generate_Getter_Specification --
      -----------------------------------

      procedure Generate_Getter_Specification
       (Position : Class_Information_Maps.Cursor)
      is
         Class : constant AMF.CMOF.Classes.CMOF_Class_Access
           := Class_Information_Maps.Element (Position).Class;
         Name  : constant Wide_Wide_String
           := To_Ada_Identifier (Class.Get_Name.Value) & "_Get";

      begin
         if not Class.Get_Is_Abstract then
            New_Line;
            Put_Line
             ("      function " & Name & " return League.Holders.Holder;");
            Put_Line
             ("      --  Returns attribute's value of instance of "
                & Class.Get_Name.Value.To_Wide_Wide_String
                & " class.");
         end if;
      end Generate_Getter_Specification;

      -------------------
      -- Generate_Meta --
      -------------------

      procedure Generate_Meta
       (Position : Class_Information_Maps.Cursor)
      is
         Class      : constant not null Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Class_Name : constant Wide_Wide_String
           := To_Ada_Identifier (Class.Class.Get_Name.Value);

      begin
         if not Class.Class.Get_Is_Abstract then
            New_Line;
            Put_Line ("         when E_" & Class_Name & " =>");
            Put_Line
             ("            return "
                & Type_Constant_Qualified_Name
                   (AMF.CMOF.Types.CMOF_Type_Access
                     (Class.Class)).To_Wide_Wide_String
                & ";");
         end if;
      end Generate_Meta;

      --------------------------
      -- Generate_Setter_Call --
      --------------------------

      procedure Generate_Setter_Call
       (Position : Class_Information_Maps.Cursor)
      is
         Class      : constant not null Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Class_Name : constant Wide_Wide_String
           := To_Ada_Identifier (Class.Class.Get_Name.Value);

      begin
         if not Class.Class.Get_Is_Abstract then
            New_Line;
            Put_Line ("         when E_" & Class_Name & " =>");
            Put_Line ("            " & Class_Name & "_Set;");
         end if;
      end Generate_Setter_Call;

      ------------------------------------
      -- Generate_Setter_Implementation --
      ------------------------------------

      procedure Generate_Setter_Implementation
       (Position : Class_Information_Maps.Cursor)
      is

         procedure Generate_Attribute (Position : CMOF_Property_Sets.Cursor);
         --  Generate call to internal setter of the specified attribute.

         Class : constant not null Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Name  : constant Wide_Wide_String
           := To_Ada_Identifier (Class.Class.Get_Name.Value) & "_Set";
         First : Boolean := True;

         ------------------------
         -- Generate_Attribute --
         ------------------------

         procedure Generate_Attribute (Position : CMOF_Property_Sets.Cursor) is
            use type AMF.Optional_String;

            Attribute       : constant
              not null AMF.CMOF.Properties.CMOF_Property_Access
                := CMOF_Property_Sets.Element (Position);
            Attribute_Class : constant
              not null AMF.CMOF.Classes.CMOF_Class_Access
                := Attribute.Get_Class;
            Attribute_Type  : constant not null AMF.CMOF.Types.CMOF_Type_Access
              := Attribute.Get_Type;

         begin
            if Attribute.Get_Is_Read_Only
              or Attribute.Get_Is_Derived
              or Attribute.Is_Multivalued
            then
               return;
            end if;

            if First then
               Put ("         if");
               First := False;

            else
               New_Line;
               Put ("         elsif");
            end if;

            Put_Line
             (" Property = " & Property_Constant_Name (Attribute) & " then");

            Put_Line
             ("            --  "
                & Attribute_Class.Get_Name.Value.To_Wide_Wide_String
                & "::"
                & Attribute.Get_Name.Value.To_Wide_Wide_String
                & " : "
                & Attribute_Type.Get_Name.Value.To_Wide_Wide_String);
            New_Line;
            Put_Line
             ("            "
                & Type_Mapping.Public_Ada_Type_Qualified_Name
                   (Class.Class, Value));
            Put_Line
             ("             ("
                & "AMF.Internals.Helpers.To_Element"
                & " (Self)).Set_"
                & To_Ada_Identifier (Attribute.Get_Name.Value));
            Put
             ("               (");

            if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
               if Representation (Attribute) in Value .. Holder then
                  Put
                   (Type_Mapping.Public_Ada_Type_Qualified_Name
                     (Attribute_Type, Representation (Attribute))
                      & " (AMF.Holders.Elements.Element (Value))");

               else
                  --  XXX all elements from the set should be copied into
                  --  collection.

                  raise Program_Error;
               end if;

            elsif Attribute_Type.Get_Name = Boolean_Name then
               case Representation (Attribute) is
                  when Value =>
                     Put ("League.Holders.Booleans.Element (Value)");

                  when Holder =>
                     Put ("AMF.Holders.Element (Value)");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Integer_Name then
               case Representation (Attribute) is
                  when Value =>
                     Put ("League.Holders.Integers.Element (Value)");

                  when Holder =>
                     Put ("AMF.Holders.Element (Value)");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Real_Name then
               case Representation (Attribute) is
                  when Value =>
                     Put ("AMF.Holders.Reals.Element (Value)");

                  when Holder =>
                     Put ("AMF.Holders.Element (Value)");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = String_Name then
               case Representation (Attribute) is
                  when Value =>
                     Put ("League.Holders.Element (Value)");

                  when Holder =>
                     Put ("AMF.Holders.Element (Value)");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     Put ("Value.Collection_Of_String_Value");

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     Put ("Value.Collection_Of_String_Value");
               end case;

            elsif Attribute_Type.Get_Name = Unlimited_Natural_Name then
               case Representation (Attribute) is
                  when Value =>
                     Put ("AMF.Holders.Unlimited_Naturals.Element (Value)");

                  when Holder =>
                     Put ("AMF.Holders.Element (Value)");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.all
                    in AMF.CMOF.Enumerations.CMOF_Enumeration'Class
            then
               case Representation (Attribute) is
                  when Value =>
                     Put
                      ("AMF."
                         & Metamodel_Name
                         & ".Holders."
                         & Plural
                            (To_Ada_Identifier (Attribute_Type.Get_Name.Value))
                         & ".Element (Value)");

                  when Holder =>
                     Put
                      ("AMF." & Metamodel_Name & ".Holders.Element (Value)");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            else
               raise Program_Error;
            end if;

            Put_Line (");");
         end Generate_Attribute;

      begin
         if not Class.Class.Get_Is_Abstract then
            Put_Header (Name, 6);
            New_Line;
            Put_Line ("      procedure " & Name & " is");
            Put_Line ("      begin");
            Class.All_Attributes.Iterate (Generate_Attribute'Access);
            New_Line;
            Put_Line ("         else");
            Put_Line ("            raise Program_Error;");
            Put_Line ("         end if;");
            Put_Line ("      end " & Name & ';');
         end if;
      end Generate_Setter_Implementation;

      -----------------------------------
      -- Generate_Setter_Specification --
      -----------------------------------

      procedure Generate_Setter_Specification
       (Position : Class_Information_Maps.Cursor)
      is
         Class : constant AMF.CMOF.Classes.CMOF_Class_Access
           := Class_Information_Maps.Element (Position).Class;
         Name  : constant Wide_Wide_String
           := To_Ada_Identifier (Class.Get_Name.Value) & "_Set";

      begin
         if not Class.Get_Is_Abstract then
            New_Line;
            Put_Line ("      procedure " & Name & ";");
            Put_Line
             ("      --  Sets attribute's value of instance of "
                & Class.Get_Name.Value.To_Wide_Wide_String
                & " class.");
         end if;
      end Generate_Setter_Specification;

      Builder : Ada_Context_Builder;

   begin
      --  Compute Ada context.

      Builder.Visit_Element (Metamodel_Package);

      Put_Header;
      Builder.Context.Iterate (Generate_With_Clause'Access);

      if Metamodel_Name = League.Strings.To_Universal_String ("CMOF") then
         Put_Line ("with AMF.CMOF.Holders.Parameter_Direction_Kinds;");
         Put_Line ("with AMF.CMOF.Holders.Visibility_Kinds;");

      elsif Metamodel_Name = League.Strings.To_Universal_String ("UML") then
         Put_Line ("with AMF.UML.Holders.Aggregation_Kinds;");
         Put_Line ("with AMF.UML.Holders.Call_Concurrency_Kinds;");
         Put_Line ("with AMF.UML.Holders.Connector_Kinds;");
         Put_Line ("with AMF.UML.Holders.Expansion_Kinds;");
         Put_Line ("with AMF.UML.Holders.Interaction_Operator_Kinds;");
         Put_Line ("with AMF.UML.Holders.Message_Kinds;");
         Put_Line ("with AMF.UML.Holders.Message_Sorts;");
         Put_Line ("with AMF.UML.Holders.Object_Node_Ordering_Kinds;");
         Put_Line ("with AMF.UML.Holders.Parameter_Direction_Kinds;");
         Put_Line ("with AMF.UML.Holders.Pseudostate_Kinds;");
         Put_Line ("with AMF.UML.Holders.Transition_Kinds;");
         Put_Line ("with AMF.UML.Holders.Visibility_Kinds;");
         Put_Line ("with League.Holders.Integers;");
         Put_Line ("with AMF.Holders.Boolean_Collections;");
         Put_Line ("with AMF.Holders.Reals;");
         Put_Line ("with AMF.Holders.Unlimited_Naturals;");
      end if;

      Put_Line ("with AMF.Elements;");
      Put_Line ("with AMF.Holders.Collections;");
      Put_Line ("with AMF.Holders.Elements;");
      Put_Line ("with AMF.Holders.String_Collections;");
      Put_Line ("with AMF.Internals." & Metamodel_Name & "_Elements;");
      Put_Line ("with AMF.Internals.Element_Collections;");
      Put_Line ("with AMF.Internals.Helpers;");
      Put_Line ("with AMF.Internals.Holders;");
      Put_Line ("with AMF.Internals.Holders." & Metamodel_Name & "_Holders;");
      Put_Line
       ("with AMF.Internals.Tables." & Metamodel_Name & "_Attributes;");
      Put_Line ("with AMF.Internals.Tables." & Metamodel_Name & "_Metamodel;");
      Put_Line
       ("with AMF.Internals.Tables." & Metamodel_Name & "_Element_Table;");
      Put_Line ("with AMF.Internals.Tables." & Metamodel_Name & "_Types;");
      Put_Line ("with AMF.String_Collections;");
      Put_Line ("with League.Holders.Booleans;");
      New_Line;
      Put_Line
       ("package body AMF.Internals.Tables."
          & Metamodel_Name
          & "_Reflection is");
      New_Line;
      Put_Line ("   use AMF.Internals.Tables;");
      Put_Line
       ("   use AMF.Internals.Tables." & Metamodel_Name & "_Attributes;");
      Put_Line
       ("   use AMF.Internals.Tables." & Metamodel_Name & "_Metamodel;");
      Put_Line ("   use AMF.Internals.Tables." & Metamodel_Name & "_Types;");
      Put_Line ("   use type AMF.Internals.AMF_Element;");

      --  Getter

      Put_Header ("Get", 3);
      New_Line;
      Put_Line ("   function Get");
      Put_Line
       ("    (Self     : "
          & Metamodel_Name.To_Wide_Wide_String
          & "_Element;");
      Put_Line ("     Property : CMOF_Element) return League.Holders.Holder");
      Put_Line ("   is");
      Class_Info.Iterate (Generate_Getter_Specification'Access);
      Class_Info.Iterate (Generate_Getter_Implementation'Access);
      New_Line;
      Put_Line ("   begin");
      Put_Line
       ("      case "
          & Metamodel_Name
          & "_Element_Table.Table (Self).Kind is");
      Put_Line ("         when E_None =>");
      Put_Line ("            raise Program_Error;");
      Class_Info.Iterate (Generate_Getter_Call'Access);
      Put_Line ("      end case;");
      Put_Line ("   end Get;");

      --  Get_Meta_Class

      Put_Header ("Get_Meta_Class", 3);
      New_Line;
      Put_Line
       ("   function Get_Meta_Class"
          & " (Self : "
          & Metamodel_Name.To_Wide_Wide_String
          & "_Element) return CMOF_Element is");
      Put_Line ("   begin");
      Put_Line
       ("      case "
          & Metamodel_Name
          & "_Element_Table.Table (Self).Kind is");
      Put_Line ("         when E_None =>");
      Put_Line ("            return 0;");
      Class_Info.Iterate (Generate_Meta'Access);
      Put_Line ("      end case;");
      Put_Line ("   end Get_Meta_Class;");

      --  Setter

      Put_Header ("Set", 3);
      New_Line;
      Put_Line ("   procedure Set");
      Put_Line
       ("    (Self     : "
          & Metamodel_Name.To_Wide_Wide_String
          & "_Element;");
      Put_Line ("     Property : CMOF_Element;");
      Put_Line ("     Value    : League.Holders.Holder)");
      Put_Line ("   is");
      Class_Info.Iterate (Generate_Setter_Specification'Access);
      Class_Info.Iterate (Generate_Setter_Implementation'Access);
      Put_Line ("   begin");
      Put_Line
       ("      case "
          & Metamodel_Name
          & "_Element_Table.Table (Self).Kind is");
      Put_Line ("         when E_None =>");
      Put_Line ("            raise Program_Error;");
      Class_Info.Iterate (Generate_Setter_Call'Access);
      Put_Line ("      end case;");
      Put_Line ("   end Set;");

      New_Line;
      Put_Line
       ("end AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Reflection;");
   end Generate_Reflection_Implementation;

   --------------------------
   -- Generate_With_Clause --
   --------------------------

   procedure Generate_With_Clause
    (Unit       : League.Strings.Universal_String;
     Is_Limited : Boolean;
     Is_Private : Boolean) is
   begin
      if Is_Limited then
         Put ("limited ");
      end if;

      Put_Line ("with " & Unit & ";");
   end Generate_With_Clause;

   -----------------
   -- Visit_Class --
   -----------------

   overriding procedure Visit_Class
    (Self    : in out Ada_Context_Builder;
     Element : not null access AMF.CMOF.Classes.CMOF_Class'Class) is
   begin
      if not Element.Get_Is_Abstract then
         Self.Context.Add
          (Type_Mapping.Public_Ada_Package_Name (Element, Value));
      end if;

      Self.Visit_Children (Element);
   end Visit_Class;

   --------------------
   -- Visit_Property --
   --------------------

   overriding procedure Visit_Property
    (Self    : in out Ada_Context_Builder;
     Element : not null access AMF.CMOF.Properties.CMOF_Property'Class)
   is
      use AMF.CMOF.Classes;
--      use type AMF.CMOF.Classes.CMOF_Class_Access;
      Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;

   begin
      if Element.Get_Class = null then
         Put_Line
          (Standard_Error,
           "Ignoring " & Element.Get_Name.Value.To_Wide_Wide_String);

      else
         Attribute_Type := Element.Get_Type;

         --  Add package where public type is declared.

         Self.Context.Add
          (Type_Mapping.Public_Ada_Package_Name
            (Element.Get_Type,
             Representation
              (AMF.CMOF.Properties.CMOF_Property_Access (Element))));

         --  For classes add internals holders utilities package.

         if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
            if Representation
                (AMF.CMOF.Properties.CMOF_Property_Access (Element))
                 in Value .. Holder
            then
               Self.Context.Add
                ("AMF.Internals.Holders." & Metamodel_Name & "_Holders");
            end if;
         end if;
      end if;

      Self.Visit_Children (Element);
   end Visit_Property;

end Generator.Reflection;
