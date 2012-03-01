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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Visitors;
with AMF.CMOF.Types;
with League.Strings;

with Generator.Attribute_Mapping;
with Generator.Names;
with Generator.Type_Mapping;
with Generator.Units;

package body Generator.Reflection is

   use Generator.Attribute_Mapping;
   use Generator.Names;
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

      Unit : Generator.Units.Unit;

      --------------------------
      -- Generate_Getter_Call --
      --------------------------

      procedure Generate_Getter_Call
       (Position : Class_Information_Maps.Cursor)
      is
         Class        : constant not null Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Class_Name   : constant League.Strings.Universal_String
           := +To_Ada_Identifier (Class.Class.Get_Name.Value);
         Package_Name : constant League.Strings.Universal_String
           := "AMF.Internals.Tables." & Metamodel_Name & "_Types";

      begin
         if not Class.Class.Get_Is_Abstract then
            Unit.Add_Line;
            Unit.Context.Add (Package_Name);
            Unit.Add_Line
             ("         when " & Package_Name & ".E_" & Class_Name & " =>");
            Unit.Add_Line ("            return " & Class_Name & "_Get;");
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
         Name  : constant League.Strings.Universal_String
           := +To_Ada_Identifier (Class.Class.Get_Name.Value) & "_Get";
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
               Unit.Add (+"         if");
               First := False;

            else
               Unit.Add_Line;
               Unit.Add (+"         elsif");
            end if;

            Unit.Context.Add (Property_Constant_Package_Name (Attribute));
            Unit.Add_Line
             (" Property = "
                & Property_Constant_Qualified_Name (Attribute)
                & " then");

            Unit.Add_Line
             ("            --  "
                & Attribute_Class.Get_Name.Value
                & "::"
                & Attribute.Get_Name.Value
                & " : "
                & Attribute_Type.Get_Name.Value);
            Unit.Add_Line;
            Unit.Add_Line (+"            return");
            Unit.Add (+"              ");

            if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
               if Representation (Attribute) in Value .. Holder then
                  Unit.Context.Add
                   ("AMF.Internals.Holders."
                      & Owning_Metamodel_Name (Attribute_Type)
                      & "_Holders");
                  Holder_Name :=
                    "AMF.Internals.Holders."
                      & Owning_Metamodel_Name (Attribute_Type)
                      & "_Holders.To_Holder";
                  Unit.Context.Add
                   (Generator.Type_Mapping.Public_Ada_Package_Name
                     (Attribute_Type, Representation (Attribute)));
                  Convertor_Name :=
                    Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                     (Attribute_Type, Value)
                      & "'";

               else
                  Unit.Context.Add
                   (Generator.Type_Mapping.Public_Ada_Package_Name
                     (Attribute_Type, Representation (Attribute)));
                  Holder_Name :=
                    Generator.Type_Mapping.Public_Ada_Package_Name
                     (Attribute_Type, Representation (Attribute))
                      & "."
                      & Owning_Metamodel_Name (Attribute_Type)
                      & "_"
                      & To_Ada_Identifier (Attribute_Type.Get_Name.Value)
                      & "_Collections.Internals.To_Holder";
               end if;

            elsif Attribute_Type.Get_Name = Boolean_Name then
               case Representation (Attribute) is
                  when Value =>
                     Unit.Context.Add (+"League.Holders.Booleans");
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("League.Holders.Booleans.To_Holder");

                  when Holder =>
                     Unit.Context.Add (+"AMF.Holders");
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.Holders.To_Holder");

                  when Set =>
                     Unit.Context.Add (+"AMF.Boolean_Collections.Internals");
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.Boolean_Collections.Internals.To_Holder");

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
                     Unit.Context.Add (+"AMF.String_Collections.Internals");
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.String_Collections.Internals.To_Holder");

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     Unit.Context.Add (+"AMF.String_Collections.Internals");
                     Holder_Name :=
                       League.Strings.To_Universal_String
                        ("AMF.String_Collections.Internals.To_Holder");
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
                     Unit.Context.Add
                      ("AMF."
                         & Owning_Metamodel_Name (Attribute_Type)
                         & ".Holders."
                         & Plural
                            (To_Ada_Identifier
                              (Attribute_Type.Get_Name.Value)));
                     Holder_Name :=
                       "AMF."
                         & Owning_Metamodel_Name (Attribute_Type)
                         & ".Holders."
                         & Plural
                            (To_Ada_Identifier (Attribute_Type.Get_Name.Value))
                         & ".To_Holder";

                  when Holder =>
                     Unit.Context.Add
                      ("AMF."
                         & Owning_Metamodel_Name (Attribute_Type)
                         & ".Holders");
                     Holder_Name :=
                       "AMF."
                         & Owning_Metamodel_Name (Attribute_Type)
                         & ".Holders.To_Holder";

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
               Ada.Wide_Wide_Text_IO.Put_Line
                (Ada.Wide_Wide_Text_IO.Standard_Error,
                 Attribute_Type.Get_Name.Value.To_Wide_Wide_String);

               raise Program_Error;
            end if;

            if Convertor_Name.Is_Empty then
               Unit.Add_Line (Holder_Name);
               Unit.Add_Line
                ("               ("
                   & Type_Mapping.Public_Ada_Type_Qualified_Name
                      (Class.Class, Value));
               Unit.Context.Add (+"AMF.Internals.Helpers");
               Unit.Add_Line
                (+"                 ("
                    & "AMF.Internals.Helpers.To_Element (Self)).Get_"
                    & To_Ada_Identifier (Attribute.Get_Name.Value)
                    & ");");

            else
               Unit.Add_Line (Holder_Name);
               Unit.Add_Line ("               (" & Convertor_Name);
               Unit.Add_Line
                ("                 ("
                   & Type_Mapping.Public_Ada_Type_Qualified_Name
                      (Class.Class, Value));
               Unit.Context.Add (+"AMF.Internals.Helpers");
               Unit.Add_Line
                (+"                   ("
                    & "AMF.Internals.Helpers.To_Element (Self)).Get_"
                    & To_Ada_Identifier (Attribute.Get_Name.Value)
                    & "));");
            end if;
         end Generate_Attribute;

      begin
         if not Class.Class.Get_Is_Abstract then
            Unit.Add_Header (Name, 6);
            Unit.Add_Line;
            Unit.Add_Line
             ("      function " & Name & " return League.Holders.Holder is");
            Unit.Add_Line (+"      begin");
            Class.All_Attributes.Iterate (Generate_Attribute'Access);
            Unit.Add_Line;
            Unit.Add_Line (+"         else");
            Unit.Add_Line (+"            raise Program_Error;");
            Unit.Add_Line (+"         end if;");
            Unit.Add_Line ("      end " & Name & ';');
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
         Name  : constant League.Strings.Universal_String
           := +To_Ada_Identifier (Class.Get_Name.Value) & "_Get";

      begin
         if not Class.Get_Is_Abstract then
            Unit.Add_Line;
            Unit.Add_Line
             ("      function " & Name & " return League.Holders.Holder;");
            Unit.Add_Line
             ("      --  Returns attribute's value of instance of "
                & Class.Get_Name.Value
                & " class.");
         end if;
      end Generate_Getter_Specification;

      -------------------
      -- Generate_Meta --
      -------------------

      procedure Generate_Meta
       (Position : Class_Information_Maps.Cursor)
      is
         Class        : constant not null Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Class_Name   : constant League.Strings.Universal_String
           := +To_Ada_Identifier (Class.Class.Get_Name.Value);
         Package_Name : constant League.Strings.Universal_String
           := "AMF.Internals.Tables." & Metamodel_Name & "_Types";

      begin
         if not Class.Class.Get_Is_Abstract then
            Unit.Context.Add (Package_Name);
            Unit.Add_Line;
            Unit.Add_Line
             ("         when " & Package_Name & ".E_" & Class_Name & " =>");
            Unit.Add_Line
             ("            return "
                & Type_Constant_Qualified_Name
                   (AMF.CMOF.Types.CMOF_Type_Access (Class.Class))
                & ";");
         end if;
      end Generate_Meta;

      --------------------------
      -- Generate_Setter_Call --
      --------------------------

      procedure Generate_Setter_Call
       (Position : Class_Information_Maps.Cursor)
      is
         Class        : constant not null Class_Information_Access
           := Class_Information_Maps.Element (Position);
         Class_Name   : constant League.Strings.Universal_String
           := +To_Ada_Identifier (Class.Class.Get_Name.Value);
         Package_Name : constant League.Strings.Universal_String
           := "AMF.Internals.Tables." & Metamodel_Name & "_Types";

      begin
         if not Class.Class.Get_Is_Abstract then
            Unit.Context.Add (Package_Name);
            Unit.Add_Line;
            Unit.Add_Line
             ("         when " & Package_Name & ".E_" & Class_Name & " =>");
            Unit.Add_Line ("            " & Class_Name & "_Set;");
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
         Name  : constant League.Strings.Universal_String
           := +To_Ada_Identifier (Class.Class.Get_Name.Value) & "_Set";
         First : Boolean := True;

         ------------------------
         -- Generate_Attribute --
         ------------------------

         procedure Generate_Attribute (Position : CMOF_Property_Sets.Cursor) is
            use type AMF.Optional_String;

            Attribute          : constant
              not null AMF.CMOF.Properties.CMOF_Property_Access
                := CMOF_Property_Sets.Element (Position);
            Redefined_Property :
              AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
                := Attribute.Get_Redefined_Property;
            Redefined          : AMF.CMOF.Properties.CMOF_Property_Access
              := Attribute;
            Attribute_Class    : constant
              not null AMF.CMOF.Classes.CMOF_Class_Access
                := Attribute.Get_Class;
            Attribute_Type     : constant
              not null AMF.CMOF.Types.CMOF_Type_Access
                := Attribute.Get_Type;

         begin
            if Attribute.Get_Is_Read_Only
              or Attribute.Get_Is_Derived
              or Attribute.Is_Multivalued
            then
               return;
            end if;

            --  Unwind to original property definition.

            while not Redefined_Property.Is_Empty loop
               Redefined := Redefined_Property.Element (1);
               Redefined_Property := Redefined.Get_Redefined_Property;
            end loop;

            if First then
               Unit.Add (+"         if");
               First := False;

            else
               Unit.Add_Line;
               Unit.Add (+"         elsif");
            end if;

            Unit.Context.Add (Property_Constant_Package_Name (Attribute));
            Unit.Add_Line
             (" Property = "
                & Property_Constant_Qualified_Name (Attribute)
                & " then");

            Unit.Add_Line
             ("            --  "
                & Attribute_Class.Get_Name.Value
                & "::"
                & Attribute.Get_Name.Value
                & " : "
                & Attribute_Type.Get_Name.Value);
            Unit.Add_Line;
            Unit.Context.Add
             (Generator.Type_Mapping.Public_Ada_Package_Name
               (Class.Class, Value));
            Unit.Add_Line
             ("            "
                & Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
                   (Class.Class, Value));
            Unit.Context.Add (+"AMF.Internals.Helpers");
            Unit.Add_Line
             (+"             ("
                 & "AMF.Internals.Helpers.To_Element"
                 & " (Self)).Set_"
                 & To_Ada_Identifier (Attribute.Get_Name.Value));
            Unit.Add (+"               (");

            if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
               if Representation (Attribute) in Value .. Holder then
                  Unit.Context.Add (+"AMF.Holders.Elements");
                  Unit.Context.Add
                   (Generator.Type_Mapping.Public_Ada_Package_Name
                     (Attribute_Type, Representation (Attribute)));
                  Unit.Add
                   (Generator.Type_Mapping.Public_Ada_Type_Qualified_Name
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
                     Unit.Context.Add (+"League.Holders.Booleans");
                     Unit.Add (+"League.Holders.Booleans.Element (Value)");

                  when Holder =>
                     Unit.Context.Add (+"AMF.Holders");
                     Unit.Add (+"AMF.Holders.Element (Value)");

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
                     Unit.Context.Add (+"League.Holders.Integers");
                     Unit.Add (+"League.Holders.Integers.Element (Value)");

                  when Holder =>
                     Unit.Context.Add (+"AMF.Holders");
                     Unit.Add (+"AMF.Holders.Element (Value)");

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
                     Unit.Context.Add (+"AMF.Holders.Reals");
                     Unit.Add (+"AMF.Holders.Reals.Element (Value)");

                  when Holder =>
                     Unit.Context.Add (+"AMF.Holders");
                     Unit.Add (+"AMF.Holders.Element (Value)");

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
                     Unit.Context.Add (+"League.Holders");
                     Unit.Add (+"League.Holders.Element (Value)");

                  when Holder =>
                     Unit.Context.Add (+"AMF.Holders");
                     Unit.Add (+"AMF.Holders.Element (Value)");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     Unit.Add (+"Value.Collection_Of_String_Value");

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     Unit.Add (+"Value.Collection_Of_String_Value");
               end case;

            elsif Attribute_Type.Get_Name = Unlimited_Natural_Name then
               case Representation (Attribute) is
                  when Value =>
                     Unit.Context.Add (+"AMF.Holders.Unlimited_Naturals");
                     Unit.Add
                      (+"AMF.Holders.Unlimited_Naturals.Element (Value)");

                  when Holder =>
                     Unit.Context.Add (+"AMF.Holders");
                     Unit.Add (+"AMF.Holders.Element (Value)");

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
               case Representation (Redefined) is
                  when Value =>
                     Unit.Context.Add
                      ("AMF."
                         & Owning_Metamodel_Name (Attribute_Type)
                         & ".Holders."
                         & Plural
                            (To_Ada_Identifier
                              (Attribute_Type.Get_Name.Value)));
                     Unit.Add
                      ("AMF."
                         & Owning_Metamodel_Name (Attribute_Type)
                         & ".Holders."
                         & Plural
                            (To_Ada_Identifier (Attribute_Type.Get_Name.Value))
                         & ".Element (Value)");

                  when Holder =>
                     Unit.Context.Add
                      ("AMF."
                         & Owning_Metamodel_Name (Attribute_Type)
                         & ".Holders");
                     Unit.Add
                      ("AMF."
                         & Owning_Metamodel_Name (Attribute_Type)
                         & ".Holders.Element (Value)");

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

            Unit.Add_Line (+");");
         end Generate_Attribute;

      begin
         if not Class.Class.Get_Is_Abstract then
            Unit.Add_Header (Name, 6);
            Unit.Add_Line;
            Unit.Add_Line ("      procedure " & Name & " is");
            Unit.Add_Line (+"      begin");
            Class.All_Attributes.Iterate (Generate_Attribute'Access);
            Unit.Add_Line;
            Unit.Add_Line (+"         else");
            Unit.Add_Line (+"            raise Program_Error;");
            Unit.Add_Line (+"         end if;");
            Unit.Add_Line ("      end " & Name & ';');
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
         Name  : constant League.Strings.Universal_String
           := +To_Ada_Identifier (Class.Get_Name.Value) & "_Set";

      begin
         if not Class.Get_Is_Abstract then
            Unit.Add_Line;
            Unit.Add_Line ("      procedure " & Name & ";");
            Unit.Add_Line
             ("      --  Sets attribute's value of instance of "
                & Class.Get_Name.Value
                & " class.");
         end if;
      end Generate_Setter_Specification;

      Package_Name : constant League.Strings.Universal_String
        := "AMF.Internals.Tables." & Metamodel_Name & "_Reflection";

   begin
      Unit.Add_Unit_Header
       (Integer'Max (2010, Generator.First_Year),
        Integer'Max (2012, Generator.Last_Year));
      Unit.Add_Line;
      Unit.Add_Line ("package body " & Package_Name & " is");

      --  Getter

      Unit.Add_Header (+"Get", 3);
      Unit.Add_Line;
      Unit.Add_Line (+"   function Get");
      Unit.Add_Line ("    (Self     : " & Metamodel_Name & "_Element;");
      Unit.Add_Line
       (+"     Property : CMOF_Element) return League.Holders.Holder");
      Unit.Add_Line (+"   is");
      Class_Info.Iterate (Generate_Getter_Specification'Access);
      Class_Info.Iterate (Generate_Getter_Implementation'Access);
      Unit.Add_Line;
      Unit.Add_Line (+"   begin");
      Unit.Context.Add
       ("AMF.Internals.Tables." & Metamodel_Name & "_Element_Table");
      Unit.Add_Line
       ("      case AMF.Internals.Tables."
          & Metamodel_Name
          & "_Element_Table.Table (Self).Kind is");
      Unit.Add_Line
       ("         when AMF.Internals.Tables."
          & Metamodel_Name
          & "_Types.E_None =>");
      Unit.Add_Line (+"            raise Program_Error;");
      Class_Info.Iterate (Generate_Getter_Call'Access);
      Unit.Add_Line (+"      end case;");
      Unit.Add_Line (+"   end Get;");

      --  Get_Meta_Class

      Unit.Add_Header (+"Get_Meta_Class", 3);
      Unit.Add_Line;
      Unit.Add_Line
       ("   function Get_Meta_Class (Self : "
          & Metamodel_Name
          & "_Element) return CMOF_Element is");
      Unit.Add_Line (+"   begin");
      Unit.Add_Line
       ("      case "
          & Metamodel_Name
          & "_Element_Table.Table (Self).Kind is");
      Unit.Add_Line
       ("         when AMF.Internals.Tables."
          & Metamodel_Name
          & "_Types.E_None =>");
      Unit.Add_Line (+"            return 0;");
      Class_Info.Iterate (Generate_Meta'Access);
      Unit.Add_Line (+"      end case;");
      Unit.Add_Line (+"   end Get_Meta_Class;");

      --  Setter

      Unit.Add_Header (+"Set", 3);
      Unit.Add_Line;
      Unit.Add_Line (+"   procedure Set");
      Unit.Add_Line ("    (Self     : " & Metamodel_Name & "_Element;");
      Unit.Add_Line (+"     Property : CMOF_Element;");
      Unit.Add_Line (+"     Value    : League.Holders.Holder)");
      Unit.Add_Line (+"   is");
      Class_Info.Iterate (Generate_Setter_Specification'Access);
      Class_Info.Iterate (Generate_Setter_Implementation'Access);
      Unit.Add_Line (+"   begin");
      Unit.Add_Line
       ("      case "
          & Metamodel_Name
          & "_Element_Table.Table (Self).Kind is");
      Unit.Add_Line
       ("         when AMF.Internals.Tables."
          & Metamodel_Name
          & "_Types.E_None =>");
      Unit.Add_Line (+"            raise Program_Error;");
      Class_Info.Iterate (Generate_Setter_Call'Access);
      Unit.Add_Line (+"      end case;");
      Unit.Add_Line (+"   end Set;");

      Unit.Add_Line;
      Unit.Add_Line ("end " & Package_Name & ";");

      Unit.Context.Instantiate (Package_Name);
      Unit.Put;
   end Generate_Reflection_Implementation;

end Generator.Reflection;
