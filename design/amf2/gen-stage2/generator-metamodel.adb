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
with Ada.Integer_Wide_Wide_Text_IO;
with Ada.Wide_Wide_Text_IO;

with League.Holders.Booleans;
with League.Holders.Integers;

with AMF.CMOF.Associations;
with AMF.CMOF.Classes.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Packages;
with AMF.CMOF.Parameter_Direction_Kind_Holders;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;
with AMF.Elements.Collections;
with AMF.Holders.Collections;
with AMF.Holders.Elements;
with AMF.Holders.Unlimited_Naturals;

with Generator.Names;
with Generator.Wide_Wide_Text_IO;

package body Generator.Metamodel is

   use Ada.Integer_Wide_Wide_Text_IO;
   use Ada.Wide_Wide_Text_IO;
   use Generator.Names;
   use Generator.Wide_Wide_Text_IO;
   use type AMF.Optional_Integer;
   use type AMF.Optional_String;

   package Number_Element_Maps is
     new Ada.Containers.Ordered_Maps
          (Natural,
           AMF.CMOF.Elements.CMOF_Element_Access,
           "<",
           AMF.CMOF.Elements."=");

   All_Associations : CMOF_Element_Sets.Set;
   All_Classes      : CMOF_Element_Sets.Set;
   All_Data_Types   : CMOF_Element_Sets.Set;
   All_Packages     : CMOF_Element_Sets.Set;
   --  All classes and associations in the model correspondingly.

   First_Class                    : Positive;
   Last_Class                     : Positive;
   First_Class_Property           : Positive;
   Last_Class_Property            : Positive;
   Last_Collection_Class_Property : Positive;

   Elements : AMF.Elements.Collections.Reflective_Collection;
   --  XXX This collection need to be removed.
   Ordered  : Number_Element_Maps.Map;

   procedure Generate_Metamodel_Initialization;

   procedure Generate_Metaclass_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access);
   --  Generate initialization of metaclass element.

   procedure Generate_Properties_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access);
   --  Generate initialization of metaclass's properties.

   procedure Generate_Link_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access);
   --  Generate initialization of links.

   function Class_Properties_Except_Redefined
    (Self : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return CMOF_Element_Sets.Set;
   --  Returns all properties of the specified class (including properties of
   --  superclasses, but except redefined properties).

   function Type_Constant_Name
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Wide_Wide_String;

   function Package_Constant_Name
    (Element : not null access constant AMF.CMOF.Packages.CMOF_Package'Class)
       return Wide_Wide_String;

   function Is_Parameter_Direction_Kind_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   function Is_Boolean_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   function Is_Integer_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   function Is_Unlimited_Natural_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   function Is_String_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean;

   --------------------
   -- Assign_Numbers --
   --------------------

   procedure Assign_Numbers
    (Extent : not null AMF.URI_Stores.URI_Store_Access)
   is
      procedure Assign_Ordered_Set
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Assign_Collection_Of_Element_Property
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Assign_Owned_By_Class_Property
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Assign_Set (Position : CMOF_Element_Sets.Cursor);

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

         elsif Element.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class then
            All_Data_Types.Insert (Element);

         elsif Element.all in AMF.CMOF.Packages.CMOF_Package'Class then
            All_Packages.Insert (Element);
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

      --  Sort elements by numbers.

      for J in 1 .. Elements.Length loop
         Ordered.Insert
          (Element_Numbers.Element
            (AMF.CMOF.Elements.CMOF_Element_Access (Elements.Element (J))),
           AMF.CMOF.Elements.CMOF_Element_Access (Elements.Element (J)));
      end loop;

      Generator.Metamodel.Elements := Elements;
   end Assign_Numbers;

   ---------------------------------------
   -- Class_Properties_Except_Redefined --
   ---------------------------------------

   function Class_Properties_Except_Redefined
    (Self : not null AMF.CMOF.Classes.CMOF_Class_Access)
       return CMOF_Element_Sets.Set
   is
      Result        : CMOF_Element_Sets.Set;
      All_Redefined : CMOF_Element_Sets.Set;

      procedure Process_Class (Class : AMF.CMOF.Classes.CMOF_Class_Access);

      -------------------
      -- Process_Class --
      -------------------

      procedure Process_Class (Class : AMF.CMOF.Classes.CMOF_Class_Access) is
         Owned_Attribute : constant
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Super_Class     : constant
           AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
             := Class.Get_Super_Class;

      begin
         --  Analyze owned properties.

         for J in 1 .. Owned_Attribute.Length loop
            declare
               Attribute          : constant
                 AMF.CMOF.Properties.CMOF_Property_Access
                   := Owned_Attribute.Element (J);
               Redefined_Property : constant
                 AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
                   := Attribute.Get_Redefined_Property;

            begin
               --  Add all redefined properties into the set of redefined
               --  properties.

               for J in 1 .. Redefined_Property.Length loop
                  declare
                     Redefined : constant
                       AMF.CMOF.Properties.CMOF_Property_Access
                         := Redefined_Property.Element (J);

                  begin
                     if not All_Redefined.Contains
                             (AMF.CMOF.Elements.CMOF_Element_Access
                               (Redefined))
                     then
                        All_Redefined.Insert
                         (AMF.CMOF.Elements.CMOF_Element_Access (Redefined));
                     end if;
                  end;
               end loop;

               --  Add attribute into the result when it is not redefined and
               --  not in the result set already.

               if not All_Redefined.Contains
                       (AMF.CMOF.Elements.CMOF_Element_Access (Attribute))
                 and not Result.Contains
                          (AMF.CMOF.Elements.CMOF_Element_Access (Attribute))
               then
                  Result.Insert
                   (AMF.CMOF.Elements.CMOF_Element_Access (Attribute));
               end if;
            end;
         end loop;

         --  Analyze superclasses

         for J in 1 .. Super_Class.Length loop
            Process_Class (Super_Class.Element (J));
         end loop;
      end Process_Class;

   begin
      Process_Class (Self);

      return Result;
   end Class_Properties_Except_Redefined;

   ----------------------------------
   -- Generate_Link_Initialization --
   ----------------------------------

   procedure Generate_Link_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access)
   is
      Meta_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
        := AMF.Elements.Abstract_Element'Class (Element.all).Get_Meta_Class;

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      ---------------------------------------
      -- Generate_Attribute_Initialization --
      ---------------------------------------

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         use type AMF.Elements.Element_Access;

         Property      : constant AMF.CMOF.Properties.CMOF_Property_Access
           := AMF.CMOF.Properties.CMOF_Property_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Property_Type : constant AMF.CMOF.Types.CMOF_Type_Access
           := Property.Get_Type;
         Association   : constant AMF.CMOF.Associations.CMOF_Association_Access
           := Property.Get_Association;
         Value         : constant League.Holders.Holder
           := AMF.Elements.Abstract_Element'Class (Element.all).Get (Property);

         procedure Establish_Link
          (Association :
             not null AMF.CMOF.Associations.CMOF_Association_Access;
           Property    : not null AMF.CMOF.Properties.CMOF_Property_Access;
           Element     : not null AMF.CMOF.Elements.CMOF_Element_Access;
           Other       : not null AMF.CMOF.Elements.CMOF_Element_Access);

         --------------------
         -- Establish_Link --
         --------------------

         procedure Establish_Link
          (Association :
             not null AMF.CMOF.Associations.CMOF_Association_Access;
           Property    : not null AMF.CMOF.Properties.CMOF_Property_Access;
           Element     : not null AMF.CMOF.Elements.CMOF_Element_Access;
           Other       : not null AMF.CMOF.Elements.CMOF_Element_Access)
         is
            use type AMF.CMOF.Properties.CMOF_Property_Access;

            Member_End : constant
              AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
                := Association.Get_Member_End;
            First_End  : constant AMF.CMOF.Properties.CMOF_Property_Access
              := Member_End.Element (1);
            Second_End : constant AMF.CMOF.Properties.CMOF_Property_Access
              := Member_End.Element (2);

         begin
            if First_End = Property then
               --  Link is created only when specified property is a first
               --  property in the Association::membrEnd. This allows to
               --  suppress generation of duplicate links.

               Put_Line ("      AMF.Internals.Links.Internal_Create_Link");
               Put_Line
                ("       (" & Association_Constant_Name (Association) & ",");
               Put ("        Base + ");
               Put (Element_Numbers.Element (Element), Width => 0);
               Put_Line (",");
               Put_Line
                ("        " & Property_Constant_Name (First_End) & ",");
               Put ("        Base + ");
               Put (Element_Numbers.Element (Other), Width => 0);
               Put_Line (",");
               Put_Line
                ("        " & Property_Constant_Name (Second_End) & ");");
            end if;
         end Establish_Link;

      begin
         if Property_Type.all in AMF.CMOF.Classes.CMOF_Class'Class then
            if Property.Is_Multivalued then
               for J in 1 .. AMF.Holders.Collections.Element
                              (Value).Length
               loop
                  Establish_Link
                   (Association,
                    Property,
                    Element,
                    AMF.CMOF.Elements.CMOF_Element_Access
                     (AMF.Holders.Collections.Element (Value).Element (J)));
               end loop;

            else
               if AMF.Holders.Elements.Element (Value) /= null then
                  Establish_Link
                   (Association,
                    Property,
                    Element,
                    AMF.CMOF.Elements.CMOF_Element_Access
                     (AMF.Holders.Elements.Element (Value)));
               end if;
            end if;
         end if;
      end Generate_Attribute_Initialization;

   begin
      Sort
       (Class_Properties_Except_Redefined (Meta_Class)).Iterate
         (Generate_Attribute_Initialization'Access);
   end Generate_Link_Initialization;

   ---------------------------------------
   -- Generate_Metamodel_Implementation --
   ---------------------------------------

   procedure Generate_Metamodel_Implementation is

      procedure Generate_Class_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Class_Property_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Association_Property_Constant
       (Position : CMOF_Element_Sets.Cursor);

      procedure Generate_Data_Type_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Package_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Association_Constant
       (Position : CMOF_Element_Sets.Cursor);

      -----------------------------------
      -- Generate_Association_Constant --
      -----------------------------------

      procedure Generate_Association_Constant
       (Position : CMOF_Element_Sets.Cursor)
      is
         Association : constant AMF.CMOF.Associations.CMOF_Association_Access
           := AMF.CMOF.Associations.CMOF_Association_Access
               (CMOF_Element_Sets.Element (Position));

      begin
         Put_Header (Association_Constant_Name (Association), 3);
         New_Line;
         Put_Line
          ("   function "
             & Association_Constant_Name (Association)
             & " return AMF.Internals.CMOF_Element is");
         Put_Line ("   begin");
         Put_Line
          ("      return Base +"
             & Integer'Wide_Wide_Image
                (Element_Numbers.Element
                  (AMF.CMOF.Elements.CMOF_Element_Access (Association)))
             & ";");
         Put_Line ("   end " & Association_Constant_Name (Association) & ";");
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
            Put_Header (Property_Constant_Name (Property), 3);
            New_Line;
            Put_Line
             ("   function "
                & Property_Constant_Name (Property)
                & " return AMF.Internals.CMOF_Element is");
            Put_Line ("   begin");
            Put_Line
             ("      return Base +"
                & Integer'Wide_Wide_Image
                   (Element_Numbers.Element
                     (AMF.CMOF.Elements.CMOF_Element_Access (Property)))
                & ";");
            Put_Line ("   end " & Property_Constant_Name (Property) & ";");
         end Generate_Property_Constant;

      begin
         for J in 1 .. Owned_End.Length loop
            Generate_Property_Constant (Owned_End.Element (J));
         end loop;
      end Generate_Association_Property_Constant;

      --------------------------------------
      -- Generate_Class_Property_Constant --
      --------------------------------------

      procedure Generate_Class_Property_Constant
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
            Put_Header (Property_Constant_Name (Property), 3);
            New_Line;
            Put_Line
             ("   function "
                & Property_Constant_Name (Property)
                & " return AMF.Internals.CMOF_Element is");
            Put_Line ("   begin");
            Put_Line
             ("      return Base +"
                & Integer'Wide_Wide_Image
                   (Element_Numbers.Element
                     (AMF.CMOF.Elements.CMOF_Element_Access (Property)))
                & ";");
            Put_Line ("   end " & Property_Constant_Name (Property) & ";");
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
      end Generate_Class_Property_Constant;

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
         Put_Header (Type_Constant_Name (Class), 3);
         New_Line;
         Put_Line
          ("   function "
             & Type_Constant_Name (Class)
             & " return AMF.Internals.CMOF_Element is");
         Put_Line ("   begin");
         Put_Line
          ("      return Base +"
             & Integer'Wide_Wide_Image
                (Element_Numbers.Element
                  (AMF.CMOF.Elements.CMOF_Element_Access (Class)))
             & ";");
         Put_Line ("   end " & Type_Constant_Name (Class) & ";");
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
         Put_Header (Type_Constant_Name (Data_Type), 3);
         New_Line;
         Put_Line
          ("   function "
             & Type_Constant_Name (Data_Type)
             & " return AMF.Internals.CMOF_Element is");
         Put_Line ("   begin");
         Put_Line
          ("      return Base +"
             & Integer'Wide_Wide_Image
                (Element_Numbers.Element
                  (AMF.CMOF.Elements.CMOF_Element_Access (Data_Type)))
             & ";");
         Put_Line ("   end " & Type_Constant_Name (Data_Type) & ";");
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
         Put_Header (Package_Constant_Name (Element), 3);
         New_Line;
         Put_Line
          ("   function "
             & Package_Constant_Name (Element)
             & " return AMF.Internals.CMOF_Element is");
         Put_Line ("   begin");
         Put_Line
          ("      return Base +"
             & Integer'Wide_Wide_Image
                (Element_Numbers.Element
                  (AMF.CMOF.Elements.CMOF_Element_Access (Element)))
             & ";");
         Put_Line ("   end " & Package_Constant_Name (Element) & ";");
      end Generate_Package_Constant;

   begin
      Put_Header;
      Put_Line ("with AMF.CMOF;");
      Put_Line ("with AMF.Internals.Extents;");
      Put_Line ("with AMF.Internals.Links;");
      Put_Line ("with AMF.Internals.Tables.CMOF_Attributes;");
      Put_Line ("with AMF.Internals.Tables.CMOF_Constructors;");
      New_Line;
      Put_Line
       ("package body AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel is");

      New_Line;
      Put_Line ("   Base : AMF.Internals.CMOF_Element := 0;");
      Sort (All_Packages).Iterate (Generate_Package_Constant'Access);
      Sort (All_Data_Types).Iterate (Generate_Data_Type_Constant'Access);
      Sort (All_Classes).Iterate (Generate_Class_Constant'Access);
      Sort (All_Classes).Iterate (Generate_Class_Property_Constant'Access);
      All_Associations.Iterate (Generate_Association_Property_Constant'Access);
      --  XXX Constants for properties owned by associations needed only to
      --  initialize CMOF model, their generation for other models can be
      --  suppressed.
      All_Associations.Iterate (Generate_Association_Constant'Access);

      Generate_Metamodel_Initialization;
      New_Line;
      Put_Line
       ("end AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel;");
   end Generate_Metamodel_Implementation;

   ---------------------------------------
   -- Generate_Metaclass_Initialization --
   ---------------------------------------

   procedure Generate_Metaclass_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access)
   is
      Meta_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
        := AMF.Elements.Abstract_Element'Class (Element.all).Get_Meta_Class;

   begin
      if Element_Numbers.Element (Element) /= 1 then
         New_Line;
      end if;

      Put_Line
       ("      Aux := AMF.Internals.Tables.CMOF_Constructors.Create_"
          & To_Ada_Identifier (Meta_Class.Get_Name.Value)
          & ";");
      Put_Line ("      AMF.Internals.Extents.Internal_Append (Extent, Aux);");

      if Element_Numbers.Element (Element) = 1 then
         Put_Line ("      Base := Aux - 1;");
      end if;
   end Generate_Metaclass_Initialization;

   ---------------------------------------
   -- Generate_Metamodel_Initialization --
   ---------------------------------------

   procedure Generate_Metamodel_Initialization is
      Position : Number_Element_Maps.Cursor;

   begin
      Put_Header ("Initialize", 3);
      New_Line;
      Put_Line ("   procedure Initialize is");
      Put_Line ("      Extent : constant AMF.Internals.AMF_Extent");
      Put_Line ("        := AMF.Internals.Extents.Allocate_Extent;");
      Put_Line ("      Aux    : AMF.Internals.CMOF_Element;");
      New_Line;
      Put_Line ("   begin");

      Position := Ordered.First;

      while Number_Element_Maps.Has_Element (Position) loop
         Generate_Metaclass_Initialization
          (Number_Element_Maps.Element (Position));
         Number_Element_Maps.Next (Position);
      end loop;

      for J in 1 .. Elements.Length loop
         Generate_Properties_Initialization
          (AMF.CMOF.Elements.CMOF_Element_Access (Elements.Element (J)));
      end loop;

      New_Line;

      for J in 1 .. Elements.Length loop
         Generate_Link_Initialization
          (AMF.CMOF.Elements.CMOF_Element_Access (Elements.Element (J)));
      end loop;

      Put_Line ("   end Initialize;");
   end Generate_Metamodel_Initialization;

   ----------------------------------------
   -- Generate_Properties_Initialization --
   ----------------------------------------

   procedure Generate_Properties_Initialization
    (Element : not null AMF.CMOF.Elements.CMOF_Element_Access)
   is
      use League.Holders;

      Meta_Class : constant AMF.CMOF.Classes.CMOF_Class_Access
        := AMF.Elements.Abstract_Element'Class (Element.all).Get_Meta_Class;

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      ---------------------------------------
      -- Generate_Attribute_Initialization --
      ---------------------------------------

      procedure Generate_Attribute_Initialization
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor)
      is
         Property      : constant AMF.CMOF.Properties.CMOF_Property_Access
           := AMF.CMOF.Properties.CMOF_Property_Access
               (CMOF_Named_Element_Ordered_Sets.Element (Position));
         Property_Type : constant AMF.CMOF.Types.CMOF_Type_Access
           := Property.Get_Type;
         Value         : constant League.Holders.Holder
           := AMF.Elements.Abstract_Element'Class (Element.all).Get (Property);

      begin
         if Property_Type.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class then
            if Is_Boolean_Type (Property_Type) then
               Put
                ("      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                   & To_Ada_Identifier (Property.Get_Name.Value)
                   & " (Base + ");
               Put (Element_Numbers.Element (Element), Width => 0);
               Put (", ");

               if League.Holders.Booleans.Element (Value) then
                  Put_Line ("True);");

               else
                  Put_Line ("False);");
               end if;

            elsif Is_Integer_Type (Property_Type) then
               if Property.Get_Lower = 0 then
                  Put
                   ("      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                      & To_Ada_Identifier (Property.Get_Name.Value)
                      & " (Base + ");
                  Put (Element_Numbers.Element (Element), Width => 0);
                  Put_Line
                   (", (False,"
                      & Integer'Wide_Wide_Image
                         (League.Holders.Integers.Element (Value))
                      & "));");

               else
                  raise Program_Error;
               end if;

            elsif Is_Unlimited_Natural_Type (Property_Type) then
               if Property.Get_Lower = 0 then
                  Put
                   ("      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                      & To_Ada_Identifier (Property.Get_Name.Value)
                      & " (Base + ");
                  Put (Element_Numbers.Element (Element), Width => 0);
                  Put (", ");

                  if AMF.Holders.Unlimited_Naturals.Element
                      (Value).Unlimited
                  then
                     Put_Line ("(False, (Unlimited => True)));");

                  else
                     Put_Line
                      ("(False, (False,"
                         & Integer'Wide_Wide_Image
                            (AMF.Holders.Unlimited_Naturals.Element
                              (Value).Value)
                         & ")));");
                  end if;

               else
                  raise Program_Error;
               end if;

            elsif Is_String_Type (Property_Type) then
               if Property.Is_Multivalued then
                  Put_Line
                   (Standard_Error,
                    Property.Get_Name.Value.To_Wide_Wide_String
                      & ": Multivalued string value");

               elsif Property.Get_Lower = 0 then
                  if not Is_Empty (Value) then
                     Put_Line
                      ("      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                         & To_Ada_Identifier (Property.Get_Name.Value));
                     Put ("       (Base + ");
                     Put (Element_Numbers.Element (Element), Width => 0);
                     Put_Line (",");
                     Put_Line
                      ("        (False, League.Strings.To_Universal_String ("""
                         & League.Holders.Element (Value).To_Wide_Wide_String
                         & """)));");
                  end if;

               else
                  Put_Line
                   ("      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                      & To_Ada_Identifier (Property.Get_Name.Value));
                  Put ("       (Base + ");
                  Put (Element_Numbers.Element (Element), Width => 0);
                  Put_Line (",");
                  Put_Line
                   ("        (League.Strings.To_Universal_String ("""
                      & League.Holders.Element (Value).To_Wide_Wide_String
                      & """)));");
               end if;

            elsif Is_Parameter_Direction_Kind_Type (Property_Type) then
               Put
                ("      AMF.Internals.Tables.CMOF_Attributes.Internal_Set_"
                   & To_Ada_Identifier (Property.Get_Name.Value)
                   & " (");
               Put (Element_Numbers.Element (Element), Width => 0);
               Put (", ");

               case AMF.CMOF.Parameter_Direction_Kind_Holders.Element
                     (Value)
               is
                  when AMF.CMOF.In_Parameter =>
                     Put_Line ("AMF.CMOF.In_Parameter);");

                  when AMF.CMOF.Out_Parameter =>
                     Put_Line ("AMF.CMOF.Out_Direction);");

                  when AMF.CMOF.In_Out_Parameter =>
                     Put_Line ("AMF.CMOF.In_Out_Direction);");

                  when AMF.CMOF.Return_Parameter =>
                     Put_Line ("AMF.CMOF.Return_Parameter);");
               end case;

            else
               --  Enumeration

               Put_Line
                (Standard_Error,
                 "warning: initialization of property of type "
                   & Property_Type.Get_Name.Value.To_Wide_Wide_String
                   & " is not implemented");
            end if;
         end if;
      end Generate_Attribute_Initialization;

   begin
      New_Line;
      Sort
       (Class_Properties_Except_Redefined (Meta_Class)).Iterate
         (Generate_Attribute_Initialization'Access);
   end Generate_Properties_Initialization;

   --------------------------------------
   -- Generate_Metamodel_Specification --
   --------------------------------------

   procedure Generate_Metamodel_Specification is

      procedure Generate_Class_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Class_Property_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Association_Property_Constant
       (Position : CMOF_Element_Sets.Cursor);

      procedure Generate_Data_Type_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Package_Constant
       (Position : CMOF_Named_Element_Ordered_Sets.Cursor);

      procedure Generate_Association_Constant
       (Position : CMOF_Element_Sets.Cursor);

      -----------------------------------
      -- Generate_Association_Constant --
      -----------------------------------

      procedure Generate_Association_Constant
       (Position : CMOF_Element_Sets.Cursor)
      is
         Association : constant AMF.CMOF.Associations.CMOF_Association_Access
           := AMF.CMOF.Associations.CMOF_Association_Access
               (CMOF_Element_Sets.Element (Position));

      begin
         Put_Line
          ("   function "
             & Association_Constant_Name (Association)
             & " return AMF.Internals.CMOF_Element;");
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
            Put_Line
             ("   function "
                & Property_Constant_Name (Property)
                & " return AMF.Internals.CMOF_Element;");
         end Generate_Property_Constant;

      begin
         for J in 1 .. Owned_End.Length loop
            Generate_Property_Constant (Owned_End.Element (J));
         end loop;
      end Generate_Association_Property_Constant;

      --------------------------------------
      -- Generate_Class_Property_Constant --
      --------------------------------------

      procedure Generate_Class_Property_Constant
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
            Put_Line
             ("   function "
                & Property_Constant_Name (Property)
                & " return AMF.Internals.CMOF_Element;");
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
      end Generate_Class_Property_Constant;

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
         Put_Line
          ("   function "
             & Type_Constant_Name (Class)
             & " return AMF.Internals.CMOF_Element;");
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
         Put_Line
          ("   function "
             & Type_Constant_Name (Data_Type)
             & " return AMF.Internals.CMOF_Element;");
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
         Put_Line
          ("   function "
             & Package_Constant_Name (Element)
             & " return AMF.Internals.CMOF_Element;");
      end Generate_Package_Constant;

   begin
      Put_Header;
      New_Line;
      Put_Line
       ("package AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel is");
--      New_Line;
--      Put_Line ("   pragma Preelaborate;");
      New_Line;
      Sort (All_Packages).Iterate (Generate_Package_Constant'Access);
      New_Line;
      Sort (All_Data_Types).Iterate (Generate_Data_Type_Constant'Access);
      New_Line;
      Sort (All_Classes).Iterate (Generate_Class_Constant'Access);
      New_Line;
      Sort (All_Classes).Iterate (Generate_Class_Property_Constant'Access);
      All_Associations.Iterate (Generate_Association_Property_Constant'Access);
      --  XXX Constants for properties owned by associations needed only to
      --  initialize CMOF model, their generation for other models can be
      --  suppressed.
      New_Line;
      All_Associations.Iterate (Generate_Association_Constant'Access);
      New_Line;
      Put_Line ("   subtype CMOF_Meta_Class is");
      Put_Line
       ("     AMF.Internals.CMOF_Element range"
          & Natural'Wide_Wide_Image (First_Class)
          & " .."
          & Natural'Wide_Wide_Image (Last_Class)
          & ";");
      New_Line;
      Put_Line ("   subtype CMOF_Collection_Of_Element_Property is");
      Put_Line
       ("     AMF.Internals.CMOF_Element range"
          & Natural'Wide_Wide_Image (First_Class_Property)
          & " .."
          & Natural'Wide_Wide_Image (Last_Collection_Class_Property)
          & ";");
      Put_Line
       ("   subtype CMOF_Non_Collection_Of_Element_Property is");
      Put_Line
       ("     AMF.Internals.CMOF_Element range"
          & Natural'Wide_Wide_Image (Last_Collection_Class_Property + 1)
          & " .."
          & Natural'Wide_Wide_Image (Last_Class_Property + 1)
          & ";");
      New_Line;
      Put_Line ("   procedure Initialize;");
      New_Line;
      Put_Line
       ("end AMF.Internals.Tables."
          & Metamodel_Name.To_Wide_Wide_String
          & "_Metamodel;");
   end Generate_Metamodel_Specification;

   ---------------------
   -- Is_Boolean_Type --
   ---------------------

   function Is_Boolean_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return Element.Get_Name = League.Strings.To_Universal_String ("Boolean");
   end Is_Boolean_Type;

   ---------------------
   -- Is_Integer_Type --
   ---------------------

   function Is_Integer_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return Element.Get_Name = League.Strings.To_Universal_String ("Integer");
   end Is_Integer_Type;

   --------------------------------------
   -- Is_Parameter_Direction_Kind_Type --
   --------------------------------------

   function Is_Parameter_Direction_Kind_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return
        Element.Get_Name
          = League.Strings.To_Universal_String ("ParameterDirectionKind");
   end Is_Parameter_Direction_Kind_Type;

   -------------------------------
   -- Is_Unlimited_Natural_Type --
   -------------------------------

   function Is_Unlimited_Natural_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return
        Element.Get_Name
          = League.Strings.To_Universal_String ("UnlimitedNatural");
   end Is_Unlimited_Natural_Type;

   --------------------
   -- Is_String_Type --
   --------------------

   function Is_String_Type
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Boolean is
   begin
      return Element.Get_Name = League.Strings.To_Universal_String ("String");
   end Is_String_Type;

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

   ------------------------
   -- Type_Constant_Name --
   ------------------------

   function Type_Constant_Name
    (Element : not null access constant AMF.CMOF.Types.CMOF_Type'Class)
       return Wide_Wide_String is
   begin
      return "MC_CMOF_" & To_Ada_Identifier (Element.Get_Name.Value);
   end Type_Constant_Name;

end Generator.Metamodel;
