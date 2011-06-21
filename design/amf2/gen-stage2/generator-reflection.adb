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

with AMF.CMOF.Types;
with League.Strings;

with Generator.Names;
with Generator.Wide_Wide_Text_IO;

package body Generator.Reflection is

   use Ada.Wide_Wide_Text_IO;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;

   Body_Name                     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("body");

   Boolean_Name                  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Boolean");
   Integer_Name                  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Integer");
   Parameter_Direction_Kind_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("ParameterDirectionKind");
   String_Name                   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("String");
   Unlimited_Natural_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("UnlimitedNatural");
   Visibility_Kind_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("VisibilityKind");

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
            Holder_Name     : Unbounded_Wide_Wide_String;
            Convertor_Name  : Unbounded_Wide_Wide_String;

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
                & Attribute_Class.Get_Name.Value.To_Wide_Wide_String
                & "::"
                & Attribute.Get_Name.Value.To_Wide_Wide_String
                & " : "
                & Attribute_Type.Get_Name.Value.To_Wide_Wide_String);
            New_Line;
            Put_Line ("            return");
            Put ("              ");

            if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
               if Representation (Attribute) in Value .. Holder then
                  Holder_Name :=
                    To_Unbounded_Wide_Wide_String
                     ("AMF.Holders.Elements.To_Holder");
                  Convertor_Name :=
                    To_Unbounded_Wide_Wide_String
                     ("CMOF.Internals.Proxies.Get_Proxy");

               else
                  Holder_Name :=
                    To_Unbounded_Wide_Wide_String
                     ("AMF.Holders.Collections.To_Holder");
                  Convertor_Name :=
                    To_Unbounded_Wide_Wide_String
                     ("CMOF.Internals.Collections.Wrap");
               end if;

            elsif Attribute_Type.Get_Name = Boolean_Name then
               case Representation (Attribute) is
                  when Value =>
                     Holder_Name :=
                       To_Unbounded_Wide_Wide_String
                        ("League.Holders.Booleans.To_Holder");

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

            elsif Attribute_Type.Get_Name = Integer_Name then
               null;
               case Representation (Attribute) is
                  when Value =>
                     raise Program_Error;

                  when Holder =>
                     Holder_Name :=
                       To_Unbounded_Wide_Wide_String ("AMF.Holders.To_Holder");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Parameter_Direction_Kind_Name then
               case Representation (Attribute) is
                  when Value =>
                     Holder_Name :=
                       To_Unbounded_Wide_Wide_String
                        ("AMF.CMOF.Parameter_Direction_Kind_Holders.To_Holder");

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
                     raise Program_Error;

                  when Holder =>
                     Holder_Name :=
                       To_Unbounded_Wide_Wide_String ("AMF.Holders.To_Holder");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     Holder_Name :=
                       To_Unbounded_Wide_Wide_String
                        ("AMF.Holders.String_Collections.To_Holder");
                     Convertor_Name :=
                       To_Unbounded_Wide_Wide_String
                        ("AMF.String_Collections.Wrap");

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     Holder_Name :=
                       To_Unbounded_Wide_Wide_String
                        ("AMF.Holders.String_Collections.To_Holder");
                     Convertor_Name :=
                       To_Unbounded_Wide_Wide_String
                        ("AMF.String_Collections.Wrap");
               end case;

            elsif Attribute_Type.Get_Name = Unlimited_Natural_Name then
               case Representation (Attribute) is
                  when Value =>
                     raise Program_Error;

                  when Holder =>
                     Holder_Name :=
                       To_Unbounded_Wide_Wide_String ("AMF.Holders.To_Holder");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     raise Program_Error;

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     raise Program_Error;
               end case;

            elsif Attribute_Type.Get_Name = Visibility_Kind_Name then
               case Representation (Attribute) is
                  when Value =>
                     Holder_Name :=
                       To_Unbounded_Wide_Wide_String
                        ("AMF.CMOF.Visibility_Kind_Holders.To_Holder");

                  when Holder =>
                     Holder_Name :=
                       To_Unbounded_Wide_Wide_String
                        ("AMF.CMOF.Holders.To_Holder");

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

            if Convertor_Name = Null_Unbounded_Wide_Wide_String then
               Put_Line (To_Wide_Wide_String (Holder_Name));
               Put_Line ("               (Internal_Get_"
                   & To_Ada_Identifier (Attribute.Get_Name.Value)
                   & " (Self));");

            else
               Put_Line (To_Wide_Wide_String (Holder_Name));
               Put_Line
                ("               (" & To_Wide_Wide_String (Convertor_Name));
               Put_Line
                ("                 (Internal_Get_"
                   & To_Ada_Identifier (Attribute.Get_Name.Value)
                   & " (Self)));");
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
         use type League.Strings.Universal_String;

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
                & Class_Constant_Name (Class.Class).To_Wide_Wide_String
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
            Put
             ("            Internal_Set_"
                & To_Ada_Identifier (Attribute.Get_Name.Value)
                & " (Self, ");

            if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
               if Representation (Attribute) in Value .. Holder then
                  Put
                   ("AMF.Internals.CMOF_Elements.CMOF_Element_Proxy'Class"
                      & " (AMF.Holders.Elements.Element"
                      & " (Value).all).Id");

               else
                  --  XXX all elements from the set should be copied into
                  --  collection.

                  raise Program_Error;
               end if;

            elsif Attribute_Type.Get_Name = Boolean_Name then
               case Representation (Attribute) is
                  when Value =>
                     Put
                      ("League.Holders.Booleans.Element (Value)");

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

            elsif Attribute_Type.Get_Name = Integer_Name then
               case Representation (Attribute) is
                  when Value =>
                     raise Program_Error;

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

            elsif Attribute_Type.Get_Name = Parameter_Direction_Kind_Name then
               case Representation (Attribute) is
                  when Value =>
                     Put
                      ("AMF.CMOF.Parameter_Direction_Kind_Holders.Element"
                         & " (Value)");

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
                     raise Program_Error;

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
                     raise Program_Error;

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

            elsif Attribute_Type.Get_Name = Visibility_Kind_Name then
               case Representation (Attribute) is
                  when Value =>
                     Put
                      ("AMF.CMOF.Visibility_Kind_Holders.Element (Value)");

                  when Holder =>
                     Put ("AMF.CMOF.Holders.Element (Value)");

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
         use type League.Strings.Universal_String;

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

   begin
      Put_Header;
      Put_Line ("with AMF.CMOF.Holders;");
      Put_Line ("with AMF.CMOF.Parameter_Direction_Kind_Holders;");
      Put_Line ("with AMF.CMOF.Visibility_Kind_Holders;");
      Put_Line ("with AMF.Holders.Collections;");
      Put_Line ("with AMF.Holders.Elements;");
      Put_Line ("with AMF.Holders.String_Collections;");
      Put_Line ("with AMF.Internals.CMOF_Elements;");
      Put_Line ("with AMF.String_Collections;");
      Put_Line ("with CMOF.Internals.Attributes;");
      Put_Line ("with CMOF.Internals.Collections;");
      Put_Line ("with CMOF.Internals.Metamodel;");
      Put_Line ("with CMOF.Internals.Proxies;");
      Put_Line ("with CMOF.Internals.Tables;");
      Put_Line ("with CMOF.Internals.Types;");
      Put_Line ("with League.Holders.Booleans;");
      New_Line;
      Put_Line ("package body CMOF.Internals.Reflection is");
      New_Line;
      Put_Line ("   use CMOF.Internals.Attributes;");
      Put_Line ("   use CMOF.Internals.Metamodel;");
      Put_Line ("   use CMOF.Internals.Tables;");
      Put_Line ("   use CMOF.Internals.Types;");

      --  Getter

      Put_Header ("Get", 3);
      New_Line;
      Put_Line ("   function Get");
      Put_Line ("    (Self     : CMOF_Element;");
      Put_Line ("     Property : CMOF_Property) return League.Holders.Holder");
      Put_Line ("   is");
      Class_Info.Iterate (Generate_Getter_Specification'Access);
      Class_Info.Iterate (Generate_Getter_Implementation'Access);
      New_Line;
      Put_Line ("   begin");
      Put_Line ("      case Elements.Table (Self).Kind is");
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
          & " (Self : CMOF_Element) return CMOF_Class is");
      Put_Line ("   begin");
      Put_Line ("      case Elements.Table (Self).Kind is");
      Put_Line ("         when E_None =>");
      Put_Line ("            return Null_CMOF_Element;");
      Class_Info.Iterate (Generate_Meta'Access);
      Put_Line ("      end case;");
      Put_Line ("   end Get_Meta_Class;");

      --  Setter

      Put_Header ("Set", 3);
      New_Line;
      Put_Line ("   procedure Set");
      Put_Line ("    (Self     : CMOF_Element;");
      Put_Line ("     Property : CMOF_Property;");
      Put_Line ("     Value    : League.Holders.Holder)");
      Put_Line ("   is");
      Class_Info.Iterate (Generate_Setter_Specification'Access);
      Class_Info.Iterate (Generate_Setter_Implementation'Access);
      Put_Line ("   begin");
      Put_Line ("      case Elements.Table (Self).Kind is");
      Put_Line ("         when E_None =>");
      Put_Line ("            raise Program_Error;");
      Class_Info.Iterate (Generate_Setter_Call'Access);
      Put_Line ("      end case;");
      Put_Line ("   end Set;");

      New_Line;
      Put_Line ("end CMOF.Internals.Reflection;");
   end Generate_Reflection_Implementation;

end Generator.Reflection;
