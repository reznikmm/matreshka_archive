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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Command_Line;
with Ada.Containers.Hashed_Sets;
with Ada.Containers.Ordered_Sets;
with Ada.Containers.Hashed_Maps;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Wide_Wide_Text_IO;
with Ada.Unchecked_Conversion;
with Interfaces;

with League.Strings;

with AMF.Values;
with CMOF.Associations;
with CMOF.Classes;
with CMOF.Collections;
with CMOF.Extents;
with CMOF.Properties;
with CMOF.Reflection;
with CMOF.Multiplicity_Elements;
with CMOF.Named_Elements;
with CMOF.Typed_Elements;
with CMOF.XMI_Helper;
with XMI.Reader;

with Generator.Initialization;
with Generator.Names;
with Generator.Wide_Wide_Text_IO;

procedure Gen_Init is

   use Ada.Strings;
   use Ada.Strings.Wide_Wide_Fixed;
   use Ada.Wide_Wide_Text_IO;
   use CMOF;
   use CMOF.Associations;
   use CMOF.Classes;
   use CMOF.Collections;
   use CMOF.Extents;
   use CMOF.Properties;
   use CMOF.Reflection;
   use CMOF.Multiplicity_Elements;
   use CMOF.Named_Elements;
   use CMOF.Typed_Elements;
   use CMOF.XMI_Helper;
   use Generator;
   use Generator.Initialization;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;
   use type AMF.AMF_String;

   type CMOF_Element_Array is array (Positive range <>) of CMOF_Element;

   Extent : constant CMOF_Extent := XMI.Reader (Ada.Command_Line.Argument (1));

   All_Associations : CMOF_Element_Sets.Set;
   All_Classes      : CMOF_Element_Sets.Set;
   All_Data_Types   : CMOF_Element_Sets.Set;
   All_Packages     : CMOF_Element_Sets.Set;
   --  All classes and associations in the model correspondingly.

   Association_Constant_Name_Max : Positive_Count := 40;
   Class_Constant_Name_Max       : Positive_Count := 1;
   Data_Type_Constant_Name_Max   : Positive_Count := 1;
   Package_Constant_Name_Max     : Positive_Count := 1;
   Property_Constant_Name_Max    : Positive_Count := 43;

   Element_Numbers : CMOF_Element_Number_Maps.Map;
   --  Expansion information.

   First_Class_Property           : Positive;
   Last_Class_Property            : Positive;
   Last_Collection_Class_Property : Positive;
   Last_Metamodel_Element         : Positive;

   function Class_Constant_Name (Class : CMOF_Class) return Wide_Wide_String;

   function Data_Type_Constant_Name
    (Class : CMOF_Data_Type) return Wide_Wide_String
       renames Class_Constant_Name;

   function Package_Constant_Name
    (Element : CMOF_Package) return Wide_Wide_String;

   -------------------------
   -- Class_Constant_Name --
   -------------------------

   function Class_Constant_Name (Class : CMOF_Class) return Wide_Wide_String is
   begin
      return "MC_CMOF_" & To_Ada_Identifier (Get_Name (Class));
   end Class_Constant_Name;

   ---------------------------
   -- Package_Constant_Name --
   ---------------------------

   function Package_Constant_Name
    (Element : CMOF_Package) return Wide_Wide_String is
   begin
      return "MM_CMOF";
--      return "MM_CMOF_" & To_Ada_Identifier (Get_Name (Class));
   end Package_Constant_Name;

   --------------------
   -- Assign_Numbers --
   --------------------

   procedure Assign_Numbers (Extent : CMOF_Extent) is
      Elements : CMOF_Element_Sets.Set := CMOF.Extents.Elements (Extent);
      Last     : Natural := 0;

      procedure Classify (Position : CMOF_Element_Sets.Cursor);
      --  Classify elements and fills All_Classes and All_Associations sets.

      ------------------------
      -- Assign_Ordered_Set --
      ------------------------

      procedure Assign_Ordered_Set
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Element : constant CMOF_Property
           := CMOF_Named_Element_Ordered_Sets.Element (Position);

      begin
         if not Element_Numbers.Contains (Element) then
            Last := Last + 1;
            Element_Numbers.Insert (Element, Last);
         end if;
      end Assign_Ordered_Set;

      -------------------------------------------
      -- Assign_Collection_Of_Element_Property --
      -------------------------------------------

      procedure Assign_Collection_Of_Element_Property
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Class      : constant CMOF_Class
           := CMOF_Named_Element_Ordered_Sets.Element (Position);
         Attributes : constant Ordered_Set_Of_CMOF_Property
           := Get_Owned_Attribute (Class);
         Properties : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Length (Attributes) loop
            if Is_Multivalued (Element (Attributes, J))
              and Is_Class (Get_Type (Element (Attributes, J)))
            then
               Properties.Insert (Element (Attributes, J));
            end if;
         end loop;

         Properties.Iterate (Assign_Ordered_Set'Access);
      end Assign_Collection_Of_Element_Property;

      ------------------------------------
      -- Assign_Owned_By_Class_Property --
      ------------------------------------

      procedure Assign_Owned_By_Class_Property
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Class      : constant CMOF_Class
           := CMOF_Named_Element_Ordered_Sets.Element (Position);
         Attributes : constant Ordered_Set_Of_CMOF_Property
           := Get_Owned_Attribute (Class);
         Properties : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Length (Attributes) loop
            Properties.Insert (Element (Attributes, J));
         end loop;

         Properties.Iterate (Assign_Ordered_Set'Access);
      end Assign_Owned_By_Class_Property;

      ----------------
      -- Assign_Set --
      ----------------

      procedure Assign_Set (Position : CMOF_Element_Sets.Cursor) is
         Element : constant CMOF_Property
           := CMOF_Element_Sets.Element (Position);

      begin
         if not Element_Numbers.Contains (Element) then
            Last := Last + 1;
            Element_Numbers.Insert (Element, Last);
         end if;
      end Assign_Set;

      --------------
      -- Classify --
      --------------

      procedure Classify (Position : CMOF_Element_Sets.Cursor) is
         Element : constant CMOF_Element
           := CMOF_Element_Sets.Element (Position);

      begin
         if Is_Association (Element) then
            All_Associations.Insert (Element);

         elsif Is_Class (Element) then
            All_Classes.Insert (Element);
            Class_Constant_Name_Max :=
              Positive_Count'Max
               (Class_Constant_Name_Max, Class_Constant_Name (Element)'Length);

         elsif Is_Data_Type (Element) then
            All_Data_Types.Insert (Element);
            Data_Type_Constant_Name_Max :=
              Positive_Count'Max
               (Data_Type_Constant_Name_Max,
                Data_Type_Constant_Name (Element)'Length);

         elsif Is_Package (Element) then
            All_Packages.Insert (Element);
            Package_Constant_Name_Max :=
              Positive_Count'Max
               (Package_Constant_Name_Max,
                Package_Constant_Name (Element)'Length);
         end if;
      end Classify;

   begin
      --  Classify all elements.

      Elements.Iterate (Classify'Access);

      --  Assign numbers for classes and their owned properties.

      Sort (All_Classes).Iterate (Assign_Ordered_Set'Access);
      First_Class_Property := Last + 1;
      Sort (All_Classes).Iterate (Assign_Collection_Of_Element_Property'Access);
      Last_Collection_Class_Property := Last;
      Sort (All_Classes).Iterate (Assign_Owned_By_Class_Property'Access);
      Last_Class_Property := Last;

      --  Assign numbers for associations.

      All_Associations.Iterate (Assign_Set'Access);

      --  Assign numbers for other elements.

      Elements.Iterate (Assign_Set'Access);
      Last_Metamodel_Element := Last;
   end Assign_Numbers;

   --------------------------------------
   -- Generate_Metamodel_Specification --
   --------------------------------------

   procedure Generate_Metamodel_Specification is

      procedure Generate_Class_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Class_Collection_Property_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Class_Other_Property_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

--      procedure Generate_Association_Property_Constant
--       (Position : CMOF_Element_Sets.Cursor);

      procedure Generate_Association_Constant
       (Position : CMOF_Element_Sets.Cursor)
      is
         Association : constant CMOF_Association
           := CMOF_Element_Sets.Element (Position);
--         Owned_End   : constant Ordered_Set_Of_CMOF_Property
--           := Get_Owned_End (Association);
--
--         --------------------------------
--         -- Generate_Property_Constant --
--         --------------------------------
--
--         procedure Generate_Property_Constant (Property : CMOF_Property) is
----          (Position : CMOF_Element_Sets.Cursor)
----         is
----            Property : constant CMOF_Class
----              := CMOF_Element_Sets.Element (Position);
--
         begin
            Put ("   " & Association_Constant_Name (Association));
            Set_Col (Association_Constant_Name_Max + 5);
            Put_Line
             (": constant CMOF_Association :="
                & Integer'Wide_Wide_Image
                   (Element_Numbers.Element (Association))
                & ";");
--         end Generate_Property_Constant;
--
--      begin
--         for J in 1 .. Length (Owned_End) loop
--            Generate_Property_Constant (Element (Owned_End, J));
--         end loop;
      end Generate_Association_Constant;

      --------------------------------------------
      -- Generate_Association_Property_Constant --
      --------------------------------------------

      procedure Generate_Association_Property_Constant
       (Position : CMOF_Element_Sets.Cursor)
      is
         Association : constant CMOF_Association
           := CMOF_Element_Sets.Element (Position);
         Owned_End   : constant Ordered_Set_Of_CMOF_Property
           := Get_Owned_End (Association);

         --------------------------------
         -- Generate_Property_Constant --
         --------------------------------

         procedure Generate_Property_Constant (Property : CMOF_Property) is
         begin
            Put ("   " & Property_Constant_Name (Property));
            Set_Col (Property_Constant_Name_Max + 5);
            Put_Line
             (": constant CMOF_Property :="
                & Integer'Wide_Wide_Image
                   (Element_Numbers.Element (Property))
                & ";");
         end Generate_Property_Constant;

      begin
         for J in 1 .. Length (Owned_End) loop
            Generate_Property_Constant (Element (Owned_End, J));
         end loop;
      end Generate_Association_Property_Constant;

      -------------------------------------------------
      -- Generate_Class_Collection_Property_Constant --
      -------------------------------------------------

      procedure Generate_Class_Collection_Property_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is

         procedure Generate_Property_Constant
          (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

         --------------------------------
         -- Generate_Property_Constant --
         --------------------------------

         procedure Generate_Property_Constant
          (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
         is
            Property : constant CMOF_Class
              := CMOF_Named_Element_Ordered_Sets.Element (Position);

         begin
            if Is_Multivalued (Property)
              and Is_Class (Get_Type (Property))
            then
               Put ("   " & Property_Constant_Name (Property));
               Set_Col (Property_Constant_Name_Max + 5);
               Put_Line
                (": constant CMOF_Property :="
                   & Integer'Wide_Wide_Image
                      (Element_Numbers.Element (Property))
                   & ";");
            end if;
         end Generate_Property_Constant;

         Class      : constant CMOF_Class
           := CMOF_Named_Element_Ordered_Sets.Element (Position);
         Attributes : constant Ordered_Set_Of_CMOF_Property
           := Get_Owned_Attribute (Class);
         Properties : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Length (Attributes) loop
            Properties.Insert (Element (Attributes, J));
         end loop;

         Properties.Iterate (Generate_Property_Constant'Access);
      end Generate_Class_Collection_Property_Constant;

      --------------------------------------------
      -- Generate_Class_Other_Property_Constant --
      --------------------------------------------

      procedure Generate_Class_Other_Property_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is

         procedure Generate_Property_Constant
          (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

         --------------------------------
         -- Generate_Property_Constant --
         --------------------------------

         procedure Generate_Property_Constant
          (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
         is
            Property : constant CMOF_Class
              := CMOF_Named_Element_Ordered_Sets.Element (Position);

         begin
            if not Is_Multivalued (Property)
              or not Is_Class (Get_Type (Property))
            then
               Put ("   " & Property_Constant_Name (Property));
               Set_Col (Property_Constant_Name_Max + 5);
               Put_Line
                (": constant CMOF_Property :="
                   & Integer'Wide_Wide_Image
                      (Element_Numbers.Element (Property))
                   & ";");
            end if;
         end Generate_Property_Constant;

         Class      : constant CMOF_Class
           := CMOF_Named_Element_Ordered_Sets.Element (Position);
         Attributes : constant Ordered_Set_Of_CMOF_Property
           := Get_Owned_Attribute (Class);
         Properties : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Length (Attributes) loop
            Properties.Insert (Element (Attributes, J));
         end loop;

         Properties.Iterate (Generate_Property_Constant'Access);
      end Generate_Class_Other_Property_Constant;

      -----------------------------
      -- Generate_Class_Constant --
      -----------------------------

      procedure Generate_Class_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Class : constant CMOF_Class
           := CMOF_Named_Element_Ordered_Sets.Element (Position);

      begin
         Put ("   " & Class_Constant_Name (Class));
         Set_Col (Class_Constant_Name_Max + 5);
         Put_Line
          (": constant CMOF_Class :="
             & Integer'Wide_Wide_Image (Element_Numbers.Element (Class))
             & ";");
      end Generate_Class_Constant;

      ---------------------------------
      -- Generate_Data_Type_Constant --
      ---------------------------------

      procedure Generate_Data_Type_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Data_Type : constant CMOF_Data_Type
           := CMOF_Named_Element_Ordered_Sets.Element (Position);

      begin
         Put ("   " & Data_Type_Constant_Name (Data_Type));
         Set_Col (Data_Type_Constant_Name_Max + 5);
         Put_Line
          (": constant CMOF_Data_Type :="
             & Integer'Wide_Wide_Image (Element_Numbers.Element (Data_Type))
             & ";");
      end Generate_Data_Type_Constant;

      -------------------------------
      -- Generate_Package_Constant --
      -------------------------------

      procedure Generate_Package_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Element : constant CMOF_Package
           := CMOF_Named_Element_Ordered_Sets.Element (Position);

      begin
         Put ("   " & Package_Constant_Name (Element));
         Set_Col (Package_Constant_Name_Max + 5);
         Put_Line
          (": constant CMOF_Package :="
             & Integer'Wide_Wide_Image (Element_Numbers.Element (Element))
             & ";");
      end Generate_Package_Constant;

   begin
      Put_Header;
      New_Line;
      Put_Line ("package CMOF.Internals.Metamodel is");
      New_Line;
      Put_Line ("   pragma Pure;");
      New_Line;
      Sort (All_Packages).Iterate (Generate_Package_Constant'Access);
      New_Line;
      Sort (All_Data_Types).Iterate (Generate_Data_Type_Constant'Access);
      New_Line;
      Sort (All_Classes).Iterate (Generate_Class_Constant'Access);
      New_Line;
      Sort (All_Classes).Iterate
       (Generate_Class_Collection_Property_Constant'Access);
      Sort (All_Classes).Iterate
       (Generate_Class_Other_Property_Constant'Access);
      All_Associations.Iterate (Generate_Association_Property_Constant'Access);
      --  XXX Constants for properties owned by associations needed only to
      --  initialize CMOF model, their generation for other models can be
      --  suppressed.
      New_Line;
      All_Associations.Iterate (Generate_Association_Constant'Access);
      New_Line;
      Put_Line ("   subtype Cmof_Collection_Of_Element_Property is");
      Put_Line
       ("     CMOF_Property range"
          & Natural'Wide_Wide_Image (First_Class_Property)
          & " .."
          & Natural'Wide_Wide_Image (Last_Collection_Class_Property)
          & ";");
      Put_Line
       ("   subtype Cmof_Non_Collection_Of_Element_Property is");
      Put_Line
       ("     CMOF_Property range"
          & Natural'Wide_Wide_Image (Last_Collection_Class_Property + 1)
          & " .."
          & Natural'Wide_Wide_Image (Last_Class_Property + 1)
          & ";");
      New_Line;
      Put_Line ("end CMOF.Internals.Metamodel;");
   end Generate_Metamodel_Specification;

   Elements : CMOF_Element_Sets.Set := CMOF.Extents.Elements (Extent);

begin
   Assign_Numbers (Extent);

   Generate_Metamodel_Specification;
   Generate_Metamodel_Initialization_Implementation
    (Elements, Element_Numbers, Last_Metamodel_Element);
end Gen_Init;
