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
with Ada.Characters.Conversions;
with Ada.Characters.Handling;
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
   use type AMF.AMF_String;

   type CMOF_Element_Array is array (Positive range <>) of CMOF_Element;

   function "<"
    (Left : CMOF_Named_Element; Right : CMOF_Named_Element) return Boolean;

   package CMOF_Named_Element_Ordered_Sets is
     new Ada.Containers.Ordered_Sets (CMOF_Named_Element);

   type Element_Expansion is record
      Number : Positive;
   end record;

   package CMOF_Element_Expansion_Maps is
     new Ada.Containers.Hashed_Maps
          (CMOF_Element, Element_Expansion, Hash, "=");

   function Class_Properties_Except_Redefined
    (Self : CMOF_Class) return CMOF_Element_Sets.Set;
   --  Returns all properties of the specified class (including properties of
   --  superclasses, but except redefined properties).

   function Sort
    (Set : CMOF_Element_Sets.Set) return CMOF_Named_Element_Ordered_Sets.Set;

--   procedure Collect_Classes (Root : CMOF_Class);

   function To_Ada_Identifier
    (Name : Wide_Wide_String) return Wide_Wide_String;

   function To_Ada_Identifier
    (Name : League.Strings.Universal_String) return Wide_Wide_String;

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

   Expansions                     : CMOF_Element_Expansion_Maps.Map;
   --  Expansion information.
   First_Class_Property           : Positive;
   Last_Class_Property            : Positive;
   Last_Collection_Class_Property : Positive;
   Last_Metamodel_Element         : Positive;

   function Property_Constant_Name
    (Property : CMOF_Property) return Wide_Wide_String;

   function Association_Constant_Name
    (Association : CMOF_Association) return Wide_Wide_String;

   procedure Put_Header;

   function Has_Boolean_Type (Property : CMOF_Property) return Boolean;

   function Has_Integer_Type (Property : CMOF_Property) return Boolean;

   function Has_Unlimited_Natural_Type
    (Property : CMOF_Property) return Boolean;

   function Has_String_Type (Property : CMOF_Property) return Boolean;

   function Class_Constant_Name (Class : CMOF_Class) return Wide_Wide_String;

   function Data_Type_Constant_Name
    (Class : CMOF_Data_Type) return Wide_Wide_String
       renames Class_Constant_Name;

   function Package_Constant_Name
    (Element : CMOF_Package) return Wide_Wide_String;

   ----------------------
   -- Has_Boolean_Type --
   ----------------------

   function Has_Boolean_Type (Property : CMOF_Property) return Boolean is
      use type AMF.AMF_String;

   begin
      return
        Get_Name (Get_Type (Property))
          = League.Strings.To_Universal_String ("Boolean");
   end Has_Boolean_Type;

   ----------------------
   -- Has_Integer_Type --
   ----------------------

   function Has_Integer_Type (Property : CMOF_Property) return Boolean is
      use type AMF.AMF_String;

   begin
      return
        Get_Name (Get_Type (Property))
          = League.Strings.To_Universal_String ("Integer");
   end Has_Integer_Type;

   --------------------------------
   -- Has_Unlimited_Natural_Type --
   --------------------------------

   function Has_Unlimited_Natural_Type
    (Property : CMOF_Property) return Boolean
   is
      use type AMF.AMF_String;

   begin
      return
        Get_Name (Get_Type (Property))
          = League.Strings.To_Universal_String ("Unlimited_Natural");
   end Has_Unlimited_Natural_Type;

   ---------------------
   -- Has_String_Type --
   ---------------------

   function Has_String_Type (Property : CMOF_Property) return Boolean is
      use type AMF.AMF_String;

   begin
      return
        Get_Name (Get_Type (Property))
          = League.Strings.To_Universal_String ("String");
   end Has_String_Type;

   ----------------------------
   -- Property_Constant_Name --
   ----------------------------

   function Property_Constant_Name
    (Property : CMOF_Property) return Wide_Wide_String
   is
      Ada_Name : League.Strings.Universal_String;

   begin
      if Get_Owning_Association (Property) /= Null_CMOF_Element then
         declare
            Member_End  : constant Set_Of_CMOF_Property
              := Get_Member_End (Get_Owning_Association (Property));
            First_End   : constant CMOF_Property := Element (Member_End, 1);
            Second_End  : constant CMOF_Property := Element (Member_End, 2);
            First_Name  : constant League.Strings.Universal_String
              := League.Strings.To_Universal_String
                  (To_Ada_Identifier (Get_Name (First_End)));
            Second_Name : constant League.Strings.Universal_String
              := League.Strings.To_Universal_String
                  (To_Ada_Identifier (Get_Name (Second_End)));

         begin
            if First_Name.Is_Empty then
               Ada_Name :=
                 League.Strings.To_Universal_String
                  (To_Ada_Identifier (Get_Name (Get_Type (First_End))));

            else
               Ada_Name := First_Name;
            end if;

            Ada_Name.Append ('_');

            if Second_Name.Is_Empty then
               Ada_Name.Append
                (League.Strings.To_Universal_String
                  (To_Ada_Identifier (Get_Name (Get_Type (Second_End)))));

            else
               Ada_Name.Append (Second_Name);
            end if;
         end;

      else
         Ada_Name :=
           League.Strings.To_Universal_String
            (To_Ada_Identifier (Get_Name (Get_Class (Property)))
               & '_'
               & To_Ada_Identifier (Get_Name (Property)));
      end if;

      return "MP_CMOF_" & Ada_Name.To_Wide_Wide_String;
   end Property_Constant_Name;

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

   -------------------------------
   -- Association_Constant_Name --
   -------------------------------

   function Association_Constant_Name
    (Association : CMOF_Association) return Wide_Wide_String
   is
      Member_End  : constant Set_Of_CMOF_Property
        := Get_Member_End (Association);
      First_End   : constant CMOF_Property := Element (Member_End, 1);
      Second_End  : constant CMOF_Property := Element (Member_End, 2);
      First_Name  : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String
            (To_Ada_Identifier (Get_Name (First_End)));
      Second_Name : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String
            (To_Ada_Identifier (Get_Name (Second_End)));
      Ada_Name    : League.Strings.Universal_String;

   begin
      if First_Name.Is_Empty then
         Ada_Name :=
           League.Strings.To_Universal_String
            (To_Ada_Identifier (Get_Name (Get_Type (First_End))));

      else
         Ada_Name := First_Name;
      end if;

      Ada_Name.Append ('_');

      if Second_Name.Is_Empty then
         Ada_Name.Append
          (League.Strings.To_Universal_String
            (To_Ada_Identifier (Get_Name (Get_Type (Second_End)))));

      else
         Ada_Name.Append (Second_Name);
      end if;

      return "MA_CMOF_" & Ada_Name.To_Wide_Wide_String;
   end Association_Constant_Name;

   ---------
   -- "<" --
   ---------

   function "<"
    (Left : CMOF_Named_Element; Right : CMOF_Named_Element) return Boolean
   is
      use type AMF.AMF_String;
      use type Interfaces.Integer_32;

      function To_Integer_32 is
        new Ada.Unchecked_Conversion (CMOF_Element, Interfaces.Integer_32);

   begin
      return
        Get_Name (Left) < Get_Name (Right)
          or (Get_Name (Left) = Get_Name (Right)
                and To_Integer_32 (Left) < To_Integer_32 (Right));
   end "<";

   ---------------------------------------
   -- Class_Properties_Except_Redefined --
   ---------------------------------------

   function Class_Properties_Except_Redefined
    (Self : CMOF_Class) return CMOF_Element_Sets.Set
   is
      Result        : CMOF_Element_Sets.Set;
      All_Redefined : CMOF_Element_Sets.Set;

      procedure Process_Class (Class : CMOF_Class);

      -------------------
      -- Process_Class --
      -------------------

      procedure Process_Class (Class : CMOF_Class) is
         Owned_Attribute    : constant Ordered_Set_Of_CMOF_Property
           := Get_Owned_Attribute (Class);
         Super_Class        : constant Set_Of_CMOF_Class
           := Get_Super_Class (Class);

      begin
         --  Analyze owned properties.

         for J in 1 .. Length (Owned_Attribute) loop
            declare
               Attribute          : constant CMOF_Property
                 := Element (Owned_Attribute, J);
               Redefined_Property : constant Set_Of_CMOF_Property
                 := Get_Redefined_Property (Attribute);

            begin
               --  Add all redefined properties into the set of redefined
               --  properties.

               for J in 1 .. Length (Redefined_Property) loop
                  declare
                     Redefined : constant CMOF_Property
                       := Element (Redefined_Property, J);

                  begin
                     if not All_Redefined.Contains (Redefined) then
                        All_Redefined.Insert (Redefined);
                     end if;
                  end;
               end loop;

               --  Add attribute into the result when it is not redefined and
               --  not in the result set already.

               if not All_Redefined.Contains (Attribute)
                 and not Result.Contains (Attribute)
               then
                  Result.Insert (Attribute);
               end if;
            end;
         end loop;

         --  Analyze superclasses

         for J in 1 .. Length (Super_Class) loop
            Process_Class (Element (Super_Class, J));
         end loop;
      end Process_Class;

   begin
      Process_Class (Self);

      return Result;
   end Class_Properties_Except_Redefined;

   ----------------------------------------
   -- Generate_Meta_Class_Initialization --
   ----------------------------------------

   procedure Generate_Meta_Class_Initialization (Element : CMOF_Element) is

      use type AMF.Values.Value_Kinds;

      Meta_Class : constant CMOF_Class := Get_Meta_Class (Element);

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      ---------------------------------------
      -- Generate_Attribute_Initialization --
      ---------------------------------------

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Property    : constant CMOF_Property
           := CMOF_Named_Element_Ordered_Sets.Element (Position);
         Association : constant CMOF_Association := Get_Association (Property);
         Value       : constant AMF.Values.Value := Get (Element, Property);

      begin
         if Is_Data_Type (Get_Type (Property)) then
            if Has_Boolean_Type (Property) then
               Put
                ("   Internal_Set_" & To_Ada_Identifier (Get_Name (Property))
                   & " ("
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Expansions.Element (Element).Number),
                       Both)
                   & ", ");

               if Value.Boolean_Value then
                  Put_Line ("AMF.True);");

               else
                  Put_Line ("AMF.False);");
               end if;
--               if Is_Optional (Property) then
--               end if;

            elsif Has_Integer_Type (Property) then
               Put_Line
                ("   Internal_Set_" & To_Ada_Identifier (Get_Name (Property))
                   & " ("
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Expansions.Element (Element).Number),
                       Both)
                   & ","
                   & AMF.AMF_Integer'Wide_Wide_Image (Value.Integer_Value)
                   & ");");

            elsif Has_Unlimited_Natural_Type (Property) then
               Put
                ("   Internal_Set_" & To_Ada_Identifier (Get_Name (Property))
                   & " ("
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Expansions.Element (Element).Number),
                       Both)
                   & ", ");

               if Value.Unlimited_Natural_Value.Unlimited then
                  Put_Line ("(Unlimited => True));");

               else
                  Put_Line
                   ("(False,"
                      & AMF.AMF_Integer'Wide_Wide_Image
                         (Value.Unlimited_Natural_Value.Value)
                      & "));");
               end if;

            elsif Has_String_Type (Property) then
               if Get_Name (Property)
                    = League.Strings.To_Universal_String ("qualifiedName")
               then
                  --  XXX Special exception, must be configurable.

                  null;

               elsif Value.Kind /= AMF.Values.Value_String then
                  Put_Line (Standard_Error, "Invalid string value");

               elsif Is_Multivalued (Property) then
                  Put_Line (Standard_Error, "Multivalued string value");

               else
                  Put_Line
                   ("   Internal_Set_"
                      & To_Ada_Identifier (Get_Name (Property)));
                  Put_Line
                   ("    ("
                      & Trim
                         (Integer'Wide_Wide_Image
                           (Expansions.Element (Element).Number),
                          Both)
                      & ",");
                  Put_Line
                   ("     League.Strings.To_Universal_String ("""
                      & Value.String_Value.To_Wide_Wide_String
                      & """));");
               end if;

            else
               --  Enumeration

               null;
            end if;
         end if;
      end Generate_Attribute_Initialization;

   begin
      Put_Line
       ("   Initialize_"
          & To_Ada_Identifier (Get_Name (Meta_Class))
          & " ("
          & Trim
             (Integer'Wide_Wide_Image (Expansions.Element (Element).Number),
              Both)
          & ", Extent);");
      Sort
       (Class_Properties_Except_Redefined (Meta_Class)).Iterate
         (Generate_Attribute_Initialization'Access);
   end Generate_Meta_Class_Initialization;

   ----------------------------------
   -- Generate_Link_Initialization --
   ----------------------------------

   procedure Generate_Link_Initialization (Element : CMOF_Element) is

      use type AMF.Values.Value_Kinds;

      Meta_Class : constant CMOF_Class := Get_Meta_Class (Element);

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      ---------------------------------------
      -- Generate_Attribute_Initialization --
      ---------------------------------------

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Property    : constant CMOF_Property
           := CMOF_Named_Element_Ordered_Sets.Element (Position);
         Association : constant CMOF_Association := Get_Association (Property);
         Value       : constant AMF.Values.Value := Get (Element, Property);

         procedure Establish_Link
          (Association : CMOF_Association;
           Property    : CMOF_Property;
           Element     : CMOF_Element;
           Other       : CMOF_Element);

         --------------------
         -- Establish_Link --
         --------------------

         procedure Establish_Link
          (Association : CMOF_Association;
           Property    : CMOF_Property;
           Element     : CMOF_Element;
           Other       : CMOF_Element)
         is
            First_End  : constant CMOF_Property
              := Collections.Element (Get_Member_End (Association), 1);
            Second_End : constant CMOF_Property
              := Collections.Element (Get_Member_End (Association), 2);

         begin
            Put_Line ("   Internal_Create_Link");
            Put_Line ("    (" & Association_Constant_Name (Association) & ",");

            if First_End = Property then
               Put_Line
                ("     "
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Expansions.Element (Element).Number),
                       Both)
                   & ",");
               Put_Line ("     " & Property_Constant_Name (First_End) & ",");
               Put_Line
                ("     "
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Expansions.Element (Other).Number),
                       Both)
                   & ",");

            else
               Put_Line
                ("     "
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Expansions.Element (Other).Number),
                       Both)
                   & ",");
               Put_Line ("     " & Property_Constant_Name (First_End) & ",");
               Put_Line
                ("     "
                   & Trim
                      (Integer'Wide_Wide_Image
                        (Expansions.Element (Element).Number),
                       Both)
                   & ",");
            end if;

            Put_Line ("     " & Property_Constant_Name (Second_End) & ");");
         end Establish_Link;

      begin
         if Is_Class (Get_Type (Property)) then
            --  XXX Note: suppression of duplicate establishment of links
            --  should be implemented.

            if Is_Multivalued (Property) then
               for J in 1 .. Length (Value.Collection_Value) loop
                  Establish_Link
                   (Association,
                    Property,
                    Element,
                    Collections.Element (Value.Collection_Value, J));
               end loop;

            else
               if Value.Element_Value /= Null_CMOF_Element then
                  Establish_Link
                   (Association, Property, Element, Value.Element_Value);
               end if;
            end if;
         end if;
      end Generate_Attribute_Initialization;

   begin
      Sort
       (Class_Properties_Except_Redefined (Meta_Class)).Iterate
         (Generate_Attribute_Initialization'Access);
   end Generate_Link_Initialization;

   ---------------------
   -- Collect_Classes --
   ---------------------

--   procedure Collect_Classes (Extent : CMOF_Extent) is

      procedure Dump (Position : CMOF_Element_Sets.Cursor) is
         Element    : constant CMOF_Element := CMOF_Element_Sets.Element (Position);

      begin
         Generate_Meta_Class_Initialization (Element);
--         Meta_Class : constant CMOF_Class   := Get_Meta_Class (Element);
--
--         procedure Print (Position : CMOF_Named_Element_Ordered_Sets.Cursor) is
--            Property : constant CMOF_Property
--              := CMOF_Named_Element_Ordered_Sets.Element (Position);
--
--         begin
--            if Is_Data_Type (Get_Type (Property)) then
--               Put_Line ("   Internal_Set_" & To_Ada_Identifier (Get_Name (Property)));
--
--            else
--               Put_Line ("  " & Get_Name (Property).To_Wide_Wide_String);
--            end if;
--         end Print;
--
--      begin
--         Put_Line
--          (Get_Name (Get_Meta_Class (Element)).To_Wide_Wide_String
--             & "  "
--             & Boolean'Wide_Wide_Image
--                (Container (Element) = Null_CMOF_Element));
--         Put_Line ("   Initialize_" & To_Ada_Identifier (Get_Name (Meta_Class)));
--         Sort
--          (Class_Properties_Except_Redefined (Meta_Class)).Iterate (Print'Access);
      end Dump;

      procedure Dump2 (Position : CMOF_Element_Sets.Cursor) is
         Element : constant CMOF_Element
           := CMOF_Element_Sets.Element (Position);

      begin
         Generate_Link_Initialization (Element);
      end Dump2;

--   begin
--      Elements (Extent).Iterate (Dump'Access);
--   end Collect_Classes;

   ----------
   -- Sort --
   ----------

   function Sort
    (Set : CMOF_Element_Sets.Set) return CMOF_Named_Element_Ordered_Sets.Set
   is
      Result   : CMOF_Named_Element_Ordered_Sets.Set;
      Position : CMOF_Element_Sets.Cursor := Set.First;

   begin
      while CMOF_Element_Sets.Has_Element (Position) loop
         Result.Insert (CMOF_Element_Sets.Element (Position));
         CMOF_Element_Sets.Next (Position);
      end loop;

      return Result;
   end Sort;

   -----------------------
   -- To_Ada_Identifier --
   -----------------------

   function To_Ada_Identifier
    (Name : Wide_Wide_String) return Wide_Wide_String
   is
      use Ada.Characters.Conversions;
      use Ada.Characters.Handling;

      Aux  : Wide_Wide_String (1 .. Name'Length * 2);
      Last : Natural := 0;

   begin
      for J in Name'Range loop
         if J = Name'First then
            Last := Last + 1;
            Aux (Last) :=
              To_Wide_Wide_Character (To_Upper (To_Character (Name (J))));

         else
            if Is_Upper (To_Character (Name (J))) then
               Last := Last + 1;
               Aux (Last) := '_';
            end if;

            Last := Last + 1;
            Aux (Last) := Name (J);
         end if;
      end loop;

      return Aux (Aux'First .. Last);
   end To_Ada_Identifier;

   -----------------------
   -- To_Ada_Identifier --
   -----------------------

   function To_Ada_Identifier
    (Name : League.Strings.Universal_String) return Wide_Wide_String is
   begin
      return To_Ada_Identifier (Name.To_Wide_Wide_String);
   end To_Ada_Identifier;

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
         if not Expansions.Contains (Element) then
            Last := Last + 1;
            Expansions.Insert (Element, (Number => Last));
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
         if not Expansions.Contains (Element) then
            Last := Last + 1;
            Expansions.Insert (Element, (Number => Last));
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
                   (Expansions.Element (Association).Number)
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
                   (Expansions.Element (Property).Number)
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
                      (Expansions.Element (Property).Number)
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
                      (Expansions.Element (Property).Number)
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
             & Integer'Wide_Wide_Image (Expansions.Element (Class).Number)
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
             & Integer'Wide_Wide_Image (Expansions.Element (Data_Type).Number)
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
             & Integer'Wide_Wide_Image (Expansions.Element (Element).Number)
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

   ----------------
   -- Put_Header --
   ----------------

   procedure Put_Header is
   begin
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--                            Matreshka Project                     "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--                          Ada Modeling Framework                  "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--                        Runtime Library Component                 "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>             "
          & "        --");
      Put_Line
       ("-- All rights reserved.                                             "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("-- Redistribution and use in source and binary forms, with or withou"
          & "t       --");
      Put_Line
       ("-- modification, are permitted provided that the following condition"
          & "s       --");
      Put_Line
       ("-- are met:                                                         "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--  * Redistributions of source code must retain the above copyright"
          & "        --");
      Put_Line
       ("--    notice, this list of conditions and the following disclaimer. "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--  * Redistributions in binary form must reproduce the above copyri"
          & "ght     --");
      Put_Line
       ("--    notice, this list of conditions and the following disclaimer i"
          & "n the   --");
      Put_Line
       ("--    documentation and/or other materials provided with the distrib"
          & "ution.  --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--  * Neither the name of the Vadim Godunko, IE nor the names of its"
          & "        --");
      Put_Line
       ("--    contributors may be used to endorse or promote products derive"
          & "d from  --");
      Put_Line
       ("--    this software without specific prior written permission.      "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTO"
          & "RS      --");
      Put_Line
       ("-- ""AS IS"" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT N"
          & "OT        --");
      Put_Line
       ("-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS"
          & " FOR    --");
      Put_Line
       ("-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRI"
          & "GHT     --");
      Put_Line
       ("-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDE"
          & "NTAL,   --");
      Put_Line
       ("-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT "
          & "LIMITED --");
      Put_Line
       ("-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DAT"
          & "A, OR   --");
      Put_Line
       ("-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEO"
          & "RY OF   --");
      Put_Line
       ("-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUD"
          & "ING     --");
      Put_Line
       ("-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THI"
          & "S       --");
      Put_Line
       ("-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--  $" & "Revision$ $" & "Date$");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--  This file is generated, don't edit it.");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
   end Put_Header;

   Elements : CMOF_Element_Sets.Set := CMOF.Extents.Elements (Extent);

begin
   Assign_Numbers (Extent);

   Generate_Metamodel_Specification;

   Put_Header;
   Put_Line ("with League.Strings;");
   New_Line;
   Put_Line ("with AMF;");
   Put_Line ("with CMOF.Internals.Attributes;");
   Put_Line ("with CMOF.Internals.Constructors;");
   Put_Line ("with CMOF.Internals.Extents;");
   Put_Line ("with CMOF.Internals.Links;");
   Put_Line ("with CMOF.Internals.Metamodel;");
   Put_Line ("with CMOF.Internals.Tables;");
   New_Line;
   Put_Line ("package body CMOF.Internals.Setup is");
   New_Line;
   Put_Line ("   use CMOF.Internals.Attributes;");
   Put_Line ("   use CMOF.Internals.Constructors;");
   Put_Line ("   use CMOF.Internals.Extents;");
   Put_Line ("   use CMOF.Internals.Links;");
   Put_Line ("   use CMOF.Internals.Metamodel;");
   New_Line;
   Put_Line ("   Extent : constant CMOF_Extent := CMOF_Metamodel_Extent;");
   New_Line;
   Put_Line ("begin");
   Put_Line
    ("   Tables.Elements.Set_Last ("
       & Trim (Integer'Wide_Wide_Image (Last_Metamodel_Element), Both)
       & ");");
   Put_Line ("   Initialize_CMOF_Metamodel_Extent;");
   New_Line;
   Elements.Iterate (Dump'Access);
   Elements.Iterate (Dump2'Access);
   New_Line;
   Put_Line ("end CMOF.Internals.Setup;");
end Gen_Init;
