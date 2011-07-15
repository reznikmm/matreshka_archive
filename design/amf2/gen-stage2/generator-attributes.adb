------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                              Tools Component                             --
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
with Ada.Containers.Vectors;
with Ada.Integer_Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Wide_Wide_Text_IO;

with AMF.CMOF.Types;
with AMF.Elements;
with AMF.Internals.Helpers;
with League.Strings;

with Generator.Names;
with Generator.Type_Mapping;
with Generator.Wide_Wide_Text_IO;

package body Generator.Attributes is

   use Ada.Integer_Wide_Wide_Text_IO;
   use Ada.Strings;
   use Ada.Strings.Wide_Wide_Fixed;
   use Ada.Wide_Wide_Text_IO;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;
   use type AMF.Optional_String;
   use type League.Strings.Universal_String;

   type Pair is record
      Class     : AMF.CMOF.Classes.CMOF_Class_Access;
      Attribute : AMF.CMOF.Properties.CMOF_Property_Access;
   end record;

   package Pair_Vectors is
     new Ada.Containers.Vectors (Positive, Pair);

   type Homograph_Information is record
      Pairs : Pair_Vectors.Vector;
   end record;

   type Homograph_Information_Access is access all Homograph_Information;

   function Less
    (Left  : Homograph_Information_Access;
     Right : Homograph_Information_Access) return Boolean;

   package Homograph_Sets is
     new Ada.Containers.Ordered_Sets
          (Homograph_Information_Access, Less);

   Getters : Homograph_Sets.Set;

   procedure Analyze;
   --  Analyze classes and prepare information to generate getters and setters.

   function Is_Distinguishable
    (First  : AMF.CMOF.Properties.CMOF_Property_Access;
     Second : AMF.CMOF.Properties.CMOF_Property_Access) return Boolean;
   --  Returns True when getter/setter of the first attribute is
   --  distinguishable from the getter/setter of the second attribute.

   procedure Add
    (Set       : in out Homograph_Sets.Set;
     Class     : AMF.CMOF.Classes.CMOF_Class_Access;
     Attribute : AMF.CMOF.Properties.CMOF_Property_Access);
   --  Adds attribute into set of attribute groups.

   String_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("String");

   ---------
   -- Add --
   ---------

   procedure Add
    (Set       : in out Homograph_Sets.Set;
     Class     : AMF.CMOF.Classes.CMOF_Class_Access;
     Attribute : AMF.CMOF.Properties.CMOF_Property_Access)
   is

      procedure Find_Group (Position : Homograph_Sets.Cursor);

      procedure Find_Class (Position : Pair_Vectors.Cursor);

      Group : Homograph_Information_Access;
      Found : Boolean := False;

      ----------------
      -- Find_Class --
      ----------------

      procedure Find_Class (Position : Pair_Vectors.Cursor) is
         use type AMF.CMOF.Classes.CMOF_Class_Access;

      begin
         if Pair_Vectors.Element (Position).Class = Class then
            Found := True;
         end if;
      end Find_Class;

      ----------------
      -- Find_Group --
      ----------------

      procedure Find_Group (Position : Homograph_Sets.Cursor) is
      begin
         if not Is_Distinguishable
                 (Homograph_Sets.Element
                   (Position).Pairs.First_Element.Attribute,
                  Attribute)
         then
            Group := Homograph_Sets.Element (Position);
         end if;
      end Find_Group;

   begin
      Set.Iterate (Find_Group'Access);

      if Group = null then
         Group := new Homograph_Information;
         Group.Pairs.Append ((Class, Attribute));

         if Set.Contains (Group) then
            raise Program_Error;
         end if;

         Set.Insert (Group);

      else
         --  Class can have more than two attributes of the same name connected
         --  into redefinition chain. All these attributes shares the same slot
         --  or collection, so we just check whether no duplications.

         Group.Pairs.Iterate (Find_Class'Access);

         if not Found then
            Group.Pairs.Append ((Class, Attribute));
         end if;
      end if;
   end Add;

   -------------
   -- Analyze --
   -------------

   procedure Analyze is

      procedure Analyze_Class (Position : Class_Information_Maps.Cursor);

      -------------------
      -- Analyze_Class --
      -------------------

      procedure Analyze_Class (Position : Class_Information_Maps.Cursor) is

         procedure Analyze_Attribute (Position : CMOF_Property_Sets.Cursor);

         Class : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);

         -----------------------
         -- Analyze_Attribute --
         -----------------------

         procedure Analyze_Attribute (Position : CMOF_Property_Sets.Cursor) is
         begin
            Add (Getters, Class.Class, CMOF_Property_Sets.Element (Position));
         end Analyze_Attribute;

      begin
         Class.All_Attributes.Iterate (Analyze_Attribute'Access);
      end Analyze_Class;

   begin
      Class_Info.Iterate (Analyze_Class'Access);
   end Analyze;

   ----------------------------------------
   -- Generate_Attributes_Implementation --
   ----------------------------------------

   procedure Generate_Attributes_Implementation is

      procedure Dump_Class (Position : Class_Information_Maps.Cursor);

      procedure Generate_Getter (Position : Homograph_Sets.Cursor);

      procedure Generate_Setter (Position : Homograph_Sets.Cursor);

      ----------------
      -- Dump_Class --
      ----------------

      procedure Dump_Class (Position : Class_Information_Maps.Cursor) is

         procedure Dump_Slot (Position : CMOF_Property_Sets.Cursor);

         procedure Dump_Collection (Position : CMOF_Property_Sets.Cursor);

         Class : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);

         ---------------------
         -- Dump_Collection --
         ---------------------

         procedure Dump_Collection (Position : CMOF_Property_Sets.Cursor) is
            Attribute       : constant AMF.CMOF.Properties.CMOF_Property_Access
              := CMOF_Property_Sets.Element (Position);
            Attribute_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Attribute.Get_Class;

         begin
            if Class.Collection.Contains (Attribute) then
               Put ("   --    ");
               Put (Class.Collection.Element (Attribute), 2);
               Put_Line
                ("  "
                   & Attribute_Class.Get_Name.Value.To_Wide_Wide_String
                   & "::"
                   & Attribute.Get_Name.Value.To_Wide_Wide_String);
            end if;
         end Dump_Collection;

         ---------------
         -- Dump_Slot --
         ---------------

         procedure Dump_Slot (Position : CMOF_Property_Sets.Cursor) is
            Attribute       : constant AMF.CMOF.Properties.CMOF_Property_Access
              := CMOF_Property_Sets.Element (Position);
            Attribute_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Attribute.Get_Class;

         begin
            if Class.Slot.Contains (Attribute) then
               Put ("   --    ");
               Put (Class.Slot.Element (Attribute), 2);
               Put_Line
                ("  "
                   & Attribute_Class.Get_Name.Value.To_Wide_Wide_String
                   & "::"
                   & Attribute.Get_Name.Value.To_Wide_Wide_String);
            end if;
         end Dump_Slot;

      begin
         if Class.Class.Get_Is_Abstract then
            --  Abstract class can't be instantiated.

            return;
         end if;

         New_Line;
         Put_Line ("   --  " & Class.Class.Get_Name.Value.To_Wide_Wide_String);
         Put_Line ("   --");
         Class.All_Attributes.Iterate (Dump_Slot'Access);
         Put_Line ("   --");
         Class.All_Attributes.Iterate (Dump_Collection'Access);
      end Dump_Class;

      ---------------------
      -- Generate_Getter --
      ---------------------

      procedure Generate_Getter (Position : Homograph_Sets.Cursor) is

         procedure Generate (Position : Pair_Vectors.Cursor);

         --------------
         -- Generate --
         --------------

         procedure Generate (Position : Pair_Vectors.Cursor) is
            Class           : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Pair_Vectors.Element (Position).Class;
            Attribute       : constant AMF.CMOF.Properties.CMOF_Property_Access
              := Pair_Vectors.Element (Position).Attribute;
            Info            : constant Class_Information_Access
              := Class_Info.Element (Class);
            Attribute_Type  : constant AMF.CMOF.Types.CMOF_Type_Access
              := Attribute.Get_Type;

         begin
            Put_Line
             ("         when E_"
                & To_Ada_Identifier (Class.Get_Name.Value)
                & " =>");

            if Attribute_Type.Get_Name = String_Name then
               --  String is handled in specific way.

               case Representation (Attribute) is
                  when Value | Holder =>
                     Put_Line ("            return");
                     Put_Line ("              "
                         & Metamodel_Name.To_Wide_Wide_String
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Info.Slot.Element (Attribute)), Both)
                         & ").String_Value;");

                  when Set =>
                     raise Program_Error;

                  when Ordered_Set =>
                     Put
                      ("            return "
                         & Metamodel_Name.To_Wide_Wide_String
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Info.Slot.Element (Attribute)), Both)
                         & ").String_Collection_Value;");

                  when Bag =>
                     raise Program_Error;

                  when Sequence =>
                     Put
                      ("            return "
                         & Metamodel_Name.To_Wide_Wide_String
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Info.Slot.Element (Attribute)), Both)
                         & ").String_Collection_Value;");
               end case;

            elsif Info.Slot.Contains (Attribute) then
               Put
                ("            return "
                   & Metamodel_Name.To_Wide_Wide_String
                   & "_Element_Table.Table (Self).Member ("
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Info.Slot.Element (Attribute)), Both)
                   & ").");

               if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
                  Put ("Element");

               else
                  Put
                   (Generator.Type_Mapping.Member_Name
                     (Attribute_Type,
                      Representation (Attribute)).To_Wide_Wide_String);
               end if;

               Put_Line (";");

            else
               --  Collections are of type Element also.

               Put_Line
                ("            return "
                   & Metamodel_Name.To_Wide_Wide_String
                   & "_Element_Table.Table (Self).Member (0).Collection +"
                   & Integer'Wide_Wide_Image
                      (Info.Collection.Element (Attribute))
                   & ";");
            end if;

            New_Line;
         end Generate;

         Getter         : constant Homograph_Information_Access
           := Homograph_Sets.Element (Position);
         Attribute      : constant AMF.CMOF.Properties.CMOF_Property_Access
           := Getter.Pairs.First_Element.Attribute;
         Attribute_Type : constant AMF.CMOF.Types.CMOF_Type_Access
           := Attribute.Get_Type;
         Name           : constant Wide_Wide_String
           := "Internal_Get_" & To_Ada_Identifier (Attribute.Get_Name.Value);

      begin
         Put_Header (Name, 3);
         New_Line;
         Put_Line ("   function " & Name);
         Put_Line
          ("    (Self : AMF.Internals."
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element)");
         Put_Line
          ("       return "
             & Type_Mapping.Internal_Ada_Type_Qualified_Name
                (Attribute_Type,
                 Representation (Attribute)).To_Wide_Wide_String
             & " is");
         Put_Line ("   begin");
         Put_Line
          ("      case "
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element_Table.Table (Self).Kind is");
         Getter.Pairs.Iterate (Generate'Access);
         Put_Line ("         when others =>");
         Put_Line ("            raise Program_Error;");
         Put_Line ("      end case;");
         Put_Line ("   end " & Name & ";");
      end Generate_Getter;

      ---------------------
      -- Generate_Setter --
      ---------------------

      procedure Generate_Setter (Position : Homograph_Sets.Cursor) is

         procedure Generate (Position : Pair_Vectors.Cursor);

         --------------
         -- Generate --
         --------------

         procedure Generate (Position : Pair_Vectors.Cursor) is
            Class           : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Pair_Vectors.Element (Position).Class;
            Attribute       : constant AMF.CMOF.Properties.CMOF_Property_Access
              := Pair_Vectors.Element (Position).Attribute;
            Info            : constant Class_Information_Access
              := Class_Info.Element (Class);
            Attribute_Type  : constant AMF.CMOF.Types.CMOF_Type_Access
              := Attribute.Get_Type;

            function Member_Name return Wide_Wide_String;

            -----------------
            -- Member_Name --
            -----------------

            function Member_Name return Wide_Wide_String is
            begin
               if Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
                  return "Element";

               else
                  return
                    Generator.Type_Mapping.Member_Name
                     (Attribute_Type,
                      Representation (Attribute)).To_Wide_Wide_String;
               end if;
            end Member_Name;

         begin
            Put_Line
             ("         when E_"
                & To_Ada_Identifier (Class.Get_Name.Value)
                & " =>");

            if Attribute_Type.Get_Name = String_Name then
               case Representation (Attribute) is
                  when Value =>
                     Put_Line ("            Old :=");
                     Put_Line
                      ("              "
                         & Metamodel_Name.To_Wide_Wide_String
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Info.Slot.Element (Attribute)), Both)
                         & ").String_Value;");
                     New_Line;
                     Put_Line
                      ("            "
                         & Metamodel_Name.To_Wide_Wide_String
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Info.Slot.Element (Attribute)), Both)
                         & ").String_Value := To;");
                     Put_Line
                      ("            "
                         & "Matreshka.Internals.Strings.Reference");
                     Put_Line
                      ("             ("
                         & Metamodel_Name.To_Wide_Wide_String
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Info.Slot.Element (Attribute)), Both)
                         & ").String_Value);");
                     New_Line;
                     Put_Line
                      ("            "
                         & Metamodel_Name
                         & "_Notification.Notify_Attribute_Set");
                     Put_Line
                      ("             (Self, "
                         & Property_Constant_Name (Attribute)
                         & ", Old, To);");
                     Put_Line
                      ("            "
                         & "Matreshka.Internals.Strings.Dereference (Old);");

                  when Holder =>
                     Put_Line
                      ("            Old := "
                         & Metamodel_Name.To_Wide_Wide_String
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Info.Slot.Element (Attribute)), Both)
                         & ").String_Value;");
                     New_Line;
                     Put_Line
                      ("            "
                         & Metamodel_Name.To_Wide_Wide_String
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Info.Slot.Element (Attribute)), Both)
                         & ").String_Value := To;");
                     New_Line;
                     Put_Line
                      ("            if "
                         & Metamodel_Name.To_Wide_Wide_String
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Info.Slot.Element (Attribute)), Both)
                         & ").String_Value /= null then");
                     Put_Line
                      ("               "
                         & "Matreshka.Internals.Strings.Reference");
                     Put_Line
                      ("                ("
                         & Metamodel_Name.To_Wide_Wide_String
                         & "_Element_Table.Table (Self).Member ("
                         & Trim
                            (Integer'Wide_Wide_Image
                              (Info.Slot.Element (Attribute)), Both)
                         & ").String_Value);");
                     Put_Line ("            end if;");
                     New_Line;
                     Put_Line
                      ("            "
                         & Metamodel_Name
                         & "_Notification.Notify_Attribute_Set");
                     Put_Line
                      ("             (Self, "
                         & Property_Constant_Name (Attribute)
                         & ", Old, To);");
                     New_Line;
                     Put_Line
                      ("            if Old /= null then");
                     Put_Line
                      ("               "
                         & "Matreshka.Internals.Strings.Reference (Old);");
                     Put_Line ("            end if;");

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
                ("            Old := "
                   & Metamodel_Name.To_Wide_Wide_String
                   & "_Element_Table.Table (Self).Member ("
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Info.Slot.Element (Attribute)), Both)
                   & ")."
                   & Member_Name
                   & ";" );
               Put_Line
                ("            "
                   & Metamodel_Name.To_Wide_Wide_String
                   & "_Element_Table.Table (Self).Member ("
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Info.Slot.Element (Attribute)), Both)
                   & ")."
                   & Member_Name
                   & " := To;");
               New_Line;
               Put_Line
                ("            "
                   & Metamodel_Name
                   & "_Notification.Notify_Attribute_Set");
               Put_Line
                ("             (Self, "
                   & Property_Constant_Name (Attribute)
                   & ", Old, To);");
            end if;

            New_Line;
         end Generate;

         Getter         : constant Homograph_Information_Access
           := Homograph_Sets.Element (Position);
         Attribute      : constant AMF.CMOF.Properties.CMOF_Property_Access
           := Getter.Pairs.First_Element.Attribute;
         Attribute_Type : constant AMF.CMOF.Types.CMOF_Type_Access
           := Attribute.Get_Type;
         Name           : constant Wide_Wide_String
           := "Internal_Set_" & To_Ada_Identifier (Attribute.Get_Name.Value);

      begin
         if not Has_Setter (Attribute) then
            return;
         end if;

         Put_Header (Name, 3);
         New_Line;
         Put_Line ("   procedure " & Name);
         Put_Line
          ("    (Self : AMF.Internals."
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element;");
         Put_Line
          ("     To   : "
            & Type_Mapping.Internal_Ada_Type_Qualified_Name
               (Attribute_Type, Representation (Attribute)).To_Wide_Wide_String
            & ")");
         Put_Line ("   is");
         Put_Line
          ("      Old : "
            & Type_Mapping.Internal_Ada_Type_Qualified_Name
               (Attribute_Type, Representation (Attribute)).To_Wide_Wide_String
            & ";");
         New_Line;
         Put_Line ("   begin");
         Put_Line
          ("      case "
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element_Table.Table (Self).Kind is");
         Getter.Pairs.Iterate (Generate'Access);
         Put_Line ("         when others =>");
         Put_Line ("            raise Program_Error;");
         Put_Line ("      end case;");
         Put_Line ("   end " & Name & ";");
      end Generate_Setter;

   begin
      Put_Header;
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Types;");
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Element_Table;");
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel;");
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Notification;");
      Put_Line ("with League.Strings.Internals;");
      Put_Line ("with Matreshka.Internals.Strings;");
      New_Line;
      Put_Line
       ("package body AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Attributes is");
      New_Line;
      Put_Line ("   use AMF.Internals.Tables;");
      Put_Line
       ("   use AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Types;");
      Put_Line
       ("   use AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel;");
      Put_Line
       ("   use type Matreshka.Internals.Strings.Shared_String_Access;");
      Class_Info.Iterate (Dump_Class'Access);
      Getters.Iterate (Generate_Getter'Access);
      Getters.Iterate (Generate_Setter'Access);
      New_Line;
      Put_Line
       ("end AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Attributes;");
   end Generate_Attributes_Implementation;

   -----------------------------------------------
   -- Generate_Attributes_Mapping_Specification --
   -----------------------------------------------

   procedure Generate_Attributes_Mapping_Specification is

      procedure Generate_Collection (Position : Class_Information_Maps.Cursor);

      procedure Generate_Slot (Position : Class_Information_Maps.Cursor);

      First_Class : Boolean := True;

      -------------------------
      -- Generate_Collection --
      -------------------------

      procedure Generate_Collection
       (Position : Class_Information_Maps.Cursor)
      is

         procedure Generate (Position : CMOF_Property_Sets.Cursor);

         Class           : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);
         First_Attribute : Boolean := True;

         --------------
         -- Generate --
         --------------

         procedure Generate (Position : CMOF_Property_Sets.Cursor) is
            Attribute : constant AMF.CMOF.Properties.CMOF_Property_Access
              := CMOF_Property_Sets.Element (Position);

         begin
            if not Class.Collection.Contains (Attribute) then
               return;
            end if;

            if First_Attribute then
               Put ("          (");
               First_Attribute := False;

            else
               Put ("           ");
            end if;

            Put_Line
             (Integer'Wide_Wide_Image
               (Element_Numbers.Element
                 (AMF.CMOF.Elements.CMOF_Element_Access (Attribute)))
                & " =>"
                & Integer'Wide_Wide_Image
                   (Class.Collection.Element (Attribute))
                & ",");
         end Generate;

      begin
         if Class.Class.Get_Is_Abstract then
            return;
         end if;

         if First_Class then
            First_Class := False;

         else
            Put_Line (",");
            Put ("         ");
         end if;

         Put_Line
          ("E_" & To_Ada_Identifier (Class.Class.Get_Name.Value) & " =>");
         Class.All_Attributes.Iterate (Generate'Access);
         Put ("           others => 0)");
      end Generate_Collection;

      -------------------
      -- Generate_Slot --
      -------------------

      procedure Generate_Slot (Position : Class_Information_Maps.Cursor) is

         procedure Generate (Position : CMOF_Property_Sets.Cursor);

         Class           : constant Class_Information_Access
           := Class_Information_Maps.Element (Position);
         First_Attribute : Boolean := True;

         --------------
         -- Generate --
         --------------

         procedure Generate (Position : CMOF_Property_Sets.Cursor) is
            Attribute : constant AMF.CMOF.Properties.CMOF_Property_Access
              := CMOF_Property_Sets.Element (Position);

         begin
            if not Class.Slot.Contains (Attribute) then
               return;
            end if;

            if First_Attribute then
               Put ("          (");
               First_Attribute := False;

            else
               Put ("           ");
            end if;

            Put_Line
             (Integer'Wide_Wide_Image
               (Element_Numbers.Element
                 (AMF.CMOF.Elements.CMOF_Element_Access (Attribute)))
                & " =>"
                & Integer'Wide_Wide_Image
                   (Class.Slot.Element (Attribute))
                & ",");
         end Generate;

      begin
         if Class.Class.Get_Is_Abstract then
            return;
         end if;

         if First_Class then
            First_Class := False;

         else
            Put_Line (",");
            Put ("         ");
         end if;

         Put_Line
          ("E_" & To_Ada_Identifier (Class.Class.Get_Name.Value) & " =>");
         Class.All_Attributes.Iterate (Generate'Access);
         Put ("           others => 0)");
      end Generate_Slot;

   begin
      Put_Header;
      Put_Line ("with Interfaces;");
      New_Line;
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel;");
      Put_Line
       ("with AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Types;");
      New_Line;
      Put_Line
       ("package AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Attribute_Mappings is");
      New_Line;
--      Put_Line ("   pragma Preelaborate;");
--      New_Line;
      Put_Line
       ("   use AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Types;");
      Put_Line
       ("   use AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel;");
      New_Line;
      Put_Line ("   Collection_Offset : constant");
      Put_Line
       ("     array (AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Types.Element_Kinds,");
      Put_Line
       ("            AMF.Internals.CMOF_Element range"
          & Integer'Wide_Wide_Image (First_Class_Property)
          & " .."
          & Integer'Wide_Wide_Image (Last_Collection_Class_Property)
          & ")");
      Put_Line ("       of AMF.Internals.AMF_Collection_Of_Element :=");
      Put_Line ("        (E_None =>");
      Put_Line ("          (others => 0),");
      Put ("         ");
      Class_Info.Iterate (Generate_Collection'Access);
      Put_Line (");");
      New_Line;
      Put_Line ("   Member_Offset : constant");
      Put_Line
       ("     array (AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Types.Element_Kinds,");
      Put_Line
       ("            AMF.Internals.CMOF_Element range"
          & Integer'Wide_Wide_Image (Last_Collection_Class_Property + 1)
          & " .."
          & Integer'Wide_Wide_Image (Last_Class_Property)
          & ") of Natural :=");
      Put_Line ("        (E_None =>");
      Put_Line ("          (others => 0),");
      Put ("         ");
      First_Class := True;
      Class_Info.Iterate (Generate_Slot'Access);
      Put_Line (");");
      New_Line;
      Put_Line
       ("end AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Attribute_Mappings;");
   end Generate_Attributes_Mapping_Specification;

   ---------------------------------------
   -- Generate_Attributes_Specification --
   ---------------------------------------

   procedure Generate_Attributes_Specification is

      procedure Generate_Getter (Position : Homograph_Sets.Cursor);

      ---------------------
      -- Generate_Getter --
      ---------------------

      procedure Generate_Getter (Position : Homograph_Sets.Cursor) is

         procedure Generate_Usage (Position : Pair_Vectors.Cursor);

         --------------------
         -- Generate_Usage --
         --------------------

         procedure Generate_Usage (Position : Pair_Vectors.Cursor) is
            Class           : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Pair_Vectors.Element (Position).Class;
            Attribute       : constant AMF.CMOF.Properties.CMOF_Property_Access
              := Pair_Vectors.Element (Position).Attribute;
            Attribute_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
              := Attribute.Get_Class;

         begin
            Put_Line
             ("   --  "
                & Class.Get_Name.Value.To_Wide_Wide_String
                & " => "
                & Attribute_Class.Get_Name.Value.To_Wide_Wide_String
                & "::"
                & Attribute.Get_Name.Value.To_Wide_Wide_String);
         end Generate_Usage;

         Getter         : constant Homograph_Information_Access
           := Homograph_Sets.Element (Position);
         Attribute      : constant AMF.CMOF.Properties.CMOF_Property_Access
           := Getter.Pairs.First_Element.Attribute;
         Attribute_Type : constant AMF.CMOF.Types.CMOF_Type_Access
           := Attribute.Get_Type;
         Get_Name       : constant Wide_Wide_String
           := "Internal_Get_" & To_Ada_Identifier (Attribute.Get_Name.Value);
         Set_Name       : constant Wide_Wide_String
           := "Internal_Set_" & To_Ada_Identifier (Attribute.Get_Name.Value);
         Type_Name      : constant Wide_Wide_String
           := Type_Mapping.Internal_Ada_Type_Qualified_Name
               (Attribute_Type,
                Representation (Attribute)).To_Wide_Wide_String;

      begin
         New_Line;
         Put_Line ("   function " & Get_Name);
         Put_Line
          ("    (Self : AMF.Internals."
             & Metamodel_Name.To_Wide_Wide_String
             & "_Element)");
         Put_Line ("       return " & Type_Name & ";");

         if Has_Setter (Attribute) then
            Put_Line ("   procedure " & Set_Name);
            Put_Line
             ("    (Self : AMF.Internals."
                & Metamodel_Name.To_Wide_Wide_String
                & "_Element;");
            Put_Line ("     To   : " & Type_Name & ");");
         end if;

         Getter.Pairs.Iterate (Generate_Usage'Access);
      end Generate_Getter;

   begin
      Analyze;

      Put_Header;
      Put_Line ("with AMF." & Metamodel_Name.To_Wide_Wide_String & ";");
      Put_Line ("with Matreshka.Internals.Strings;");
      New_Line;
      Put_Line
       ("package AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Attributes is");
      Getters.Iterate (Generate_Getter'Access);
      New_Line;
      Put_Line
       ("end AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Attributes;");
   end Generate_Attributes_Specification;

   ------------------------
   -- Is_Distinguishable --
   ------------------------

   function Is_Distinguishable
    (First  : AMF.CMOF.Properties.CMOF_Property_Access;
     Second : AMF.CMOF.Properties.CMOF_Property_Access) return Boolean
   is
      use type AMF.CMOF.Types.CMOF_Type_Access;

      First_Type  : constant AMF.CMOF.Types.CMOF_Type_Access := First.Get_Type;
      Second_Type : constant AMF.CMOF.Types.CMOF_Type_Access
        := Second.Get_Type;

   begin
      if First.Get_Name /= Second.Get_Name then
         --  Attributes has different names, they are distinguishable.

         return True;
      end if;

      if First_Type.all in AMF.CMOF.Classes.CMOF_Class'Class
        and then Second_Type.all in AMF.CMOF.Classes.CMOF_Class'Class
      then
         --  Type of both attributes is class, attributes are indistinguishable
         --  if both are multivalued or not multivalued.

         return Use_Member_Slot (First) xor Use_Member_Slot (Second);

      elsif First_Type = Second_Type then
         --  Attributes has same type (and this type is not class), they are
         --  distinguishable when has different internal representations types.

         return
           Generator.Type_Mapping.Internal_Ada_Type_Qualified_Name
            (First_Type, Representation (First))
              /= Generator.Type_Mapping.Internal_Ada_Type_Qualified_Name
                  (Second_TYpe, Representation (Second));

      else
         return True;
      end if;
   end Is_Distinguishable;

   ----------
   -- Less --
   ----------

   function Less
    (Left  : Homograph_Information_Access;
     Right : Homograph_Information_Access) return Boolean is
   begin
      return
        Less
         (Left.Pairs.First_Element.Attribute,
          Right.Pairs.First_Element.Attribute);
   end Less;

end Generator.Attributes;
