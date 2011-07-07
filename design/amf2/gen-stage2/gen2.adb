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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Wide_Wide_Text_IO;

with AMF.CMOF.Associations;
with AMF.CMOF.Classes;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Elements;
with AMF.CMOF.Named_Elements;
with AMF.CMOF.Packages;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;
with AMF.Elements.Collections;
with AMF.Facility;
with AMF.URI_Stores;
with XMI.Reader;

with Generator.Analyzer;
with Generator.Attributes;
with Generator.Constructors;
with Generator.Initialization;
with Generator.Names;
with Generator.Reflection;
with Generator.Wide_Wide_Text_IO;

procedure Gen2 is

   use Ada.Wide_Wide_Text_IO;
   use Generator;
   use Generator.Initialization;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;

   Extent : AMF.URI_Stores.URI_Store_Access;

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

   First_Class                    : Positive;
   Last_Class                     : Positive;
   First_Class_Property           : Positive;
   Last_Class_Property            : Positive;
   Last_Collection_Class_Property : Positive;
   Last_Metamodel_Element         : Positive;

   function Type_Constant_Name
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Wide_Wide_String;

   function Package_Constant_Name
    (Element : not null access constant AMF.CMOF.Packages.CMOF_Package'Class)
       return Wide_Wide_String;

   ------------------------
   -- Type_Constant_Name --
   ------------------------

   function Type_Constant_Name
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Wide_Wide_String is
   begin
      return "MC_CMOF_" & To_Ada_Identifier (Element.Get_Name.Value);
   end Type_Constant_Name;

   ---------------------------
   -- Package_Constant_Name --
   ---------------------------

   function Package_Constant_Name
    (Element : not null access constant AMF.CMOF.Packages.CMOF_Package'Class)
       return Wide_Wide_String is
   begin
      return "MM_CMOF";
--      return "MM_CMOF_" & To_Ada_Identifier (Get_Name (Class));
   end Package_Constant_Name;

   --------------------
   -- Assign_Numbers --
   --------------------

   procedure Assign_Numbers
    (Extent : not null access constant AMF.URI_Stores.URI_Store'Class)
   is
      Elements : AMF.Elements.Collections.Reflective_Collection
        := Extent.Elements;
      Last     : Natural := 0;

      ------------------------
      -- Assign_Ordered_Set --
      ------------------------

      procedure Assign_Ordered_Set
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Element : constant AMF.CMOF.Elements.CMOF_Element_Access
           := AMF.CMOF.Elements.CMOF_Element_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));

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
         Class          : constant AMF.CMOF.Classes.CMOF_Class_Access
           := AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Attributes     : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;
         Properties     : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Attributes.Length loop
            Attribute_Type := Attributes.Element (J).Get_Type;

            if Attributes.Element (J).Is_Multivalued
              and Attribute_Type.all in AMF.CMOF.Classes.CMOF_Class'Class
            then
               Properties.Insert
                (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access
                  (Attributes.Element (J)));
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
         Class      : constant AMF.CMOF.Classes.CMOF_Class_Access
           := AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Attributes : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Properties : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Attributes.Length loop
            Properties.Insert
             (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access
               (Attributes.Element (J)));
         end loop;

         Properties.Iterate (Assign_Ordered_Set'Access);
      end Assign_Owned_By_Class_Property;

      ----------------
      -- Assign_Set --
      ----------------

      procedure Assign_Set (Position : CMOF_Element_Sets.Cursor) is
         Element : constant AMF.CMOF.Elements.CMOF_Element_Access
           := CMOF_Element_Sets.Element (Position);

      begin
         if not Element_Numbers.Contains (Element) then
            Last := Last + 1;
            Element_Numbers.Insert (Element, Last);
         end if;
      end Assign_Set;

      Element : AMF.CMOF.Elements.CMOF_Element_Access;

   begin
      --  Classify elements and fills All_Classes and All_Associations sets.

      for J in 1 .. Elements.Length loop
         Element :=
           AMF.CMOF.Elements.CMOF_Element_Access (Elements.Element (J));

         if Element.all in AMF.CMOF.Associations.CMOF_Association'Class then
            All_Associations.Insert (Element);

         elsif Element.all in AMF.CMOF.Classes.CMOF_Class'Class then
            All_Classes.Insert (Element);
            Class_Constant_Name_Max :=
              Positive_Count'Max
               (Class_Constant_Name_Max,
                Type_Constant_Name
                 (AMF.CMOF.Classes.CMOF_Class_Access (Element))'Length);

         elsif Element.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class then
            All_Data_Types.Insert (Element);
            Data_Type_Constant_Name_Max :=
              Positive_Count'Max
               (Data_Type_Constant_Name_Max,
                Type_Constant_Name
                 (AMF.CMOF.Data_Types.CMOF_Data_Type_Access (Element))'Length);

         elsif Element.all in AMF.CMOF.Packages.CMOF_Package'Class then
            All_Packages.Insert (Element);
            Package_Constant_Name_Max :=
              Positive_Count'Max
               (Package_Constant_Name_Max,
                Package_Constant_Name
                 (AMF.CMOF.Packages.CMOF_Package_Access (Element))'Length);
         end if;
      end loop;

      --  Assign numbers for classes and their owned properties.

      First_Class := Last + 1;
      Sort (All_Classes).Iterate (Assign_Ordered_Set'Access);
      Last_Class := Last;
      First_Class_Property := Last + 1;
      Sort (All_Classes).Iterate
       (Assign_Collection_Of_Element_Property'Access);
      Last_Collection_Class_Property := Last;
      Sort (All_Classes).Iterate (Assign_Owned_By_Class_Property'Access);
      Last_Class_Property := Last;

      --  Assign numbers for associations.

      All_Associations.Iterate (Assign_Set'Access);

      --  Assign numbers for other elements.

      for J in 1 .. Elements.Length loop
         Element :=
           AMF.CMOF.Elements.CMOF_Element_Access (Elements.Element (J));

         if not Element_Numbers.Contains (Element) then
            Last := Last + 1;
            Element_Numbers.Insert (Element, Last);
         end if;
      end loop;

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
         Association : constant AMF.CMOF.Associations.CMOF_Association_Access
           := AMF.CMOF.Associations.CMOF_Association_Access
               (CMOF_Element_Sets.Element (Position));
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

         begin
            Put ("   " & Association_Constant_Name (Association));
            Set_Col (Association_Constant_Name_Max + 5);
            Put_Line
             (": constant CMOF_Association :="
                & Integer'Wide_Wide_Image
                   (Element_Numbers.Element
                     (AMF.CMOF.Elements.CMOF_Element_Access (Association)))
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
         Association : constant AMF.CMOF.Associations.CMOF_Association_Access
           := AMF.CMOF.Associations.CMOF_Association_Access
               (CMOF_Element_Sets.Element (Position));
         Owned_End   : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Association.Get_Owned_End;

         procedure Generate_Property_Constant
          (Property : not null AMF.CMOF.Properties.CMOF_Property_Access);

         --------------------------------
         -- Generate_Property_Constant --
         --------------------------------

         procedure Generate_Property_Constant
          (Property : not null AMF.CMOF.Properties.CMOF_Property_Access) is
         begin
            Put ("   " & Property_Constant_Name (Property));
            Set_Col (Property_Constant_Name_Max + 5);
            Put_Line
             (": constant CMOF_Property :="
                & Integer'Wide_Wide_Image
                   (Element_Numbers.Element
                     (AMF.CMOF.Elements.CMOF_Element_Access (Property)))
                & ";");
         end Generate_Property_Constant;

      begin
         for J in 1 .. Owned_End.Length loop
            Generate_Property_Constant (Owned_End.Element (J));
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
            Property : constant AMF.CMOF.Properties.CMOF_Property_Access
              := AMF.CMOF.Properties.CMOF_Property_Access
                  (CMOF_Named_Element_Ordered_Sets.Element (Position));
            Property_Type : constant AMF.CMOF.Types.CMOF_Type_Access
              := Property.Get_Type;

         begin
            if Property.Is_Multivalued
              and Property_Type.all in AMF.CMOF.Classes.CMOF_Class'Class
            then
               Put ("   " & Property_Constant_Name (Property));
               Set_Col (Property_Constant_Name_Max + 5);
               Put_Line
                (": constant CMOF_Property :="
                   & Integer'Wide_Wide_Image
                      (Element_Numbers.Element
                        (AMF.CMOF.Elements.CMOF_Element_Access (Property)))
                   & ";");
            end if;
         end Generate_Property_Constant;

         Class      : constant AMF.CMOF.Classes.CMOF_Class_Access
           := AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Attributes : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Properties : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Attributes.Length loop
            Properties.Insert
             (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access
               (Attributes.Element (J)));
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
            Property      : constant AMF.CMOF.Properties.CMOF_Property_Access
              := AMF.CMOF.Properties.CMOF_Property_Access
                  (CMOF_Named_Element_Ordered_Sets.Element (Position));
            Property_Type : constant AMF.CMOF.Types.CMOF_Type_Access
              := Property.Get_Type;

         begin
            if not Property.Is_Multivalued
              or Property_Type.all not in AMF.CMOF.Classes.CMOF_Class'Class
            then
               Put ("   " & Property_Constant_Name (Property));
               Set_Col (Property_Constant_Name_Max + 5);
               Put_Line
                (": constant CMOF_Property :="
                   & Integer'Wide_Wide_Image
                      (Element_Numbers.Element
                        (AMF.CMOF.Elements.CMOF_Element_Access (Property)))
                   & ";");
            end if;
         end Generate_Property_Constant;

         Class      : constant AMF.CMOF.Classes.CMOF_Class_Access
           := AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Attributes : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Properties : CMOF_Named_Element_Ordered_Sets.Set;

      begin
         for J in 1 .. Attributes.Length loop
            Properties.Insert
             (AMF.CMOF.Named_Elements.CMOF_Named_Element_Access
               (Attributes.Element (J)));
         end loop;

         Properties.Iterate (Generate_Property_Constant'Access);
      end Generate_Class_Other_Property_Constant;

      -----------------------------
      -- Generate_Class_Constant --
      -----------------------------

      procedure Generate_Class_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Class : constant AMF.CMOF.Classes.CMOF_Class_Access
           := AMF.CMOF.Classes.CMOF_Class_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));

      begin
         Put ("   " & Type_Constant_Name (Class));
         Set_Col (Class_Constant_Name_Max + 5);
         Put_Line
          (": constant CMOF_Class :="
             & Integer'Wide_Wide_Image
                (Element_Numbers.Element
                  (AMF.CMOF.Elements.CMOF_Element_Access (Class)))
             & ";");
      end Generate_Class_Constant;

      ---------------------------------
      -- Generate_Data_Type_Constant --
      ---------------------------------

      procedure Generate_Data_Type_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Data_Type : constant AMF.CMOF.Data_Types.CMOF_Data_Type_Access
           := AMF.CMOF.Data_Types.CMOF_Data_Type_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));

      begin
         Put ("   " & Type_Constant_Name (Data_Type));
         Set_Col (Data_Type_Constant_Name_Max + 5);
         Put_Line
          (": constant CMOF_Data_Type :="
             & Integer'Wide_Wide_Image
                (Element_Numbers.Element
                  (AMF.CMOF.Elements.CMOF_Element_Access (Data_Type)))
             & ";");
      end Generate_Data_Type_Constant;

      -------------------------------
      -- Generate_Package_Constant --
      -------------------------------

      procedure Generate_Package_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Element : constant AMF.CMOF.Packages.CMOF_Package_Access
           := AMF.CMOF.Packages.CMOF_Package_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));

      begin
         Put ("   " & Package_Constant_Name (Element));
         Set_Col (Package_Constant_Name_Max + 5);
         Put_Line
          (": constant CMOF_Package :="
             & Integer'Wide_Wide_Image
                (Element_Numbers.Element
                  (AMF.CMOF.Elements.CMOF_Element_Access (Element)))
             & ";");
      end Generate_Package_Constant;

   begin
      Put_Header;
      New_Line;
      Put_Line ("package CMOF.Internals.Metamodel is");
      New_Line;
      Put_Line ("   pragma Preelaborate;");
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
      Put_Line ("   subtype CMOF_Meta_Class is");
      Put_Line
       ("     CMOF_Class range"
          & Natural'Wide_Wide_Image (First_Class)
          & " .."
          & Natural'Wide_Wide_Image (Last_Class)
          & ";");
      New_Line;
      Put_Line ("   subtype CMOF_Collection_Of_Element_Property is");
      Put_Line
       ("     CMOF_Property range"
          & Natural'Wide_Wide_Image (First_Class_Property)
          & " .."
          & Natural'Wide_Wide_Image (Last_Collection_Class_Property)
          & ";");
      Put_Line
       ("   subtype CMOF_Non_Collection_Of_Element_Property is");
      Put_Line
       ("     CMOF_Property range"
          & Natural'Wide_Wide_Image (Last_Collection_Class_Property + 1)
          & " .."
          & Natural'Wide_Wide_Image (Last_Class_Property + 1)
          & ";");
      New_Line;
      Put_Line ("end CMOF.Internals.Metamodel;");
   end Generate_Metamodel_Specification;

   Elements : AMF.Elements.Collections.Reflective_Collection;

begin
   AMF.Facility.Initialize;
   Extent := XMI.Reader (Ada.Command_Line.Argument (1));
   Elements := Extent.Elements;

   Put_Line (Standard_Error, "Analyzing...");
   Generator.Analyzer.Analyze_Model (Extent);
   Assign_Numbers (Extent);

   Put_Line (Standard_Error, "Generating attributes...");
   Generator.Attributes.Generate_Attributes_Mapping_Specification;
   Generator.Attributes.Generate_Attributes_Specification;
   Generator.Attributes.Generate_Attributes_Implementation;

   Put_Line (Standard_Error, "Generating constructors...");
   Generator.Constructors.Generate_Constructors_Specification;
   Generator.Constructors.Generate_Constructors_Implementation;

   Put_Line (Standard_Error, "Generating metamodel initialization...");
   Generate_Metamodel_Specification;
   Generate_Metamodel_Initialization_Implementation
    (Elements, Element_Numbers, Last_Metamodel_Element);

   Put_Line (Standard_Error, "Generating relfection...");
   Generator.Reflection.Generate_Reflection_Implementation;
end Gen2;
