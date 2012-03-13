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
with AMF.CMOF.Associations;
with AMF.CMOF.Classes.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Packages;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Redefinable_Elements.Collections;
with AMF.CMOF.Types;
with AMF.Elements.Collections;
with AMF.Extents.Collections;
with AMF.Facility;

with Generator.Names;

package body Generator.Analyzer is

   procedure Classify_Elements
    (Info     : not null Metamodel_Information_Access;
     Elements : AMF.Elements.Collections.Set_Of_Element);
   --  Classify elements of the metamodel by classes and fill corresponding
   --  members of information.

   procedure Compute_All_Properties
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);
   --  Computes all attributes of the class, assigns slot and collections.

   procedure Compute_Metamodel_Name
    (Extent : not null AMF.URI_Stores.URI_Store_Access);
   --  Compute metamodel names for each element.

   procedure Assign_Numbers
    (Extent : not null AMF.URI_Stores.URI_Store_Access);
   --  Assigns numbers to each element and to each string.

   -------------------
   -- Analyze_Model --
   -------------------

   procedure Analyze_Model
    (Extent : not null AMF.URI_Stores.URI_Store_Access)
   is
      Elements : constant AMF.Elements.Collections.Set_Of_Element
        := Extent.Elements;

   begin
      Classify_Elements (Metamodel_Info, Elements);

      --  Compute complete set of properties for each class.

      for J in 1 .. Elements.Length loop
         if Elements.Element (J).all in AMF.CMOF.Classes.CMOF_Class'Class then
            declare
               Class : AMF.CMOF.Classes.CMOF_Class_Access
                 := AMF.CMOF.Classes.CMOF_Class_Access (Elements.Element (J));

            begin
               Compute_All_Properties (Class);
            end;
         end if;
      end loop;

      --  Compute name of metamodel.

      Compute_Metamodel_Name (Extent);

      --  Looking for root package of the metamodel.

      for J in 1 .. Elements.Length loop
         if Elements.Element (J).all
              in AMF.CMOF.Packages.CMOF_Package'Class
         then
            Metamodel_Package :=
              AMF.CMOF.Packages.CMOF_Package_Access (Elements.Element (J));

            exit;
         end if;
      end loop;

      --  Assign numbers for metamodel's elements.

      Assign_Numbers (Extent);
   end Analyze_Model;

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

      Elements : AMF.Elements.Collections.Set_Of_Element := Extent.Elements;
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
         if not Metamodel_Info.Element_Numbers.Contains (Element) then
            Last := Last + 1;
            Metamodel_Info.Element_Numbers.Insert (Element, Last);
            Metamodel_Info.Number_Element.Insert (Last, Element);
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

            if not Use_Member_Slot (Attributes.Element (J))
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
         if not Metamodel_Info.Element_Numbers.Contains (Element) then
            Last := Last + 1;
            Metamodel_Info.Element_Numbers.Insert (Element, Last);
            Metamodel_Info.Number_Element.Insert (Last, Element);
         end if;
      end Assign_Set;

      Element : AMF.CMOF.Elements.CMOF_Element_Access;

   begin
      --  Assign numbers for classes and their owned properties.

      Metamodel_Info.First_Class := Last + 1;
      Sort (Metamodel_Info.Classes).Iterate (Assign_Ordered_Set'Access);
      Metamodel_Info.Last_Class := Last;
      Metamodel_Info.First_Class_Property := Last + 1;
      Sort (Metamodel_Info.Classes).Iterate
       (Assign_Collection_Of_Element_Property'Access);
      Metamodel_Info.Last_Multiple_Class_Property := Last;
      Sort (Metamodel_Info.Classes).Iterate
       (Assign_Owned_By_Class_Property'Access);
      Metamodel_Info.Last_Class_Property := Last;

      --  Assign numbers for associations.

      Metamodel_Info.Associations.Iterate (Assign_Set'Access);

      --  Assign numbers for other elements.

      for J in 1 .. Elements.Length loop
         Element :=
           AMF.CMOF.Elements.CMOF_Element_Access (Elements.Element (J));

         if not Metamodel_Info.Element_Numbers.Contains (Element) then
            Last := Last + 1;
            Metamodel_Info.Element_Numbers.Insert (Element, Last);
            Metamodel_Info.Number_Element.Insert (Last, Element);
         end if;
      end loop;

      --  Disable generation of attributes and constructors when there are no
      --  classes in the metamodel.

      if Metamodel_Info.Classes.Is_Empty then
         Generate_Attributes := False;
         Generate_Constructors := False;
         Generate_Reflection := False;
      end if;
   end Assign_Numbers;

   -----------------------
   -- Classify_Elements --
   -----------------------

   procedure Classify_Elements
    (Info     : not null Metamodel_Information_Access;
     Elements : AMF.Elements.Collections.Set_Of_Element)
   is
      Element : AMF.CMOF.Elements.CMOF_Element_Access;

   begin
      --  Classify elements and fills All_Classes and All_Associations sets.

      for J in 1 .. Elements.Length loop
         Element :=
           AMF.CMOF.Elements.CMOF_Element_Access (Elements.Element (J));

         if Element.all in AMF.CMOF.Associations.CMOF_Association'Class then
            Metamodel_Info.Associations.Insert (Element);

         elsif Element.all in AMF.CMOF.Classes.CMOF_Class'Class then
            Metamodel_Info.Classes.Insert (Element);

         elsif Element.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class then
            Metamodel_Info.Data_Types.Insert (Element);

         elsif Element.all in AMF.CMOF.Packages.CMOF_Package'Class then
            Metamodel_Info.Packages.Insert (Element);
         end if;
      end loop;
   end Classify_Elements;

   ----------------------------
   -- Compute_All_Properties --
   ----------------------------

   procedure Compute_All_Properties
    (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
   is
      procedure Process_Class
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access);
      --  Process specified class and all its superclasses.

      Info       : not null Class_Information_Access
        := new Class_Information'(Class, others => <>);
      Slot       : Natural := 0;
      --  Number of last used slot, slot number zero is used to store number of
      --  first collection.
      Collection : Natural := 0;
      --  Number of last used collection, collection number zero is used to
      --  manage element's links when association end is owned by association.

      -------------------
      -- Process_Class --
      -------------------

      procedure Process_Class
       (Class : not null AMF.CMOF.Classes.CMOF_Class_Access)
      is
         Superclasses   : AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
           := Class.Get_Super_Class;
         Attributes     :
           AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
             := Class.Get_Owned_Attribute;
         Redefines      : AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property;
         Attribute      : AMF.CMOF.Properties.CMOF_Property_Access;
         Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;

      begin
         --  Process superclasses

         for J in 1 .. Superclasses.Length loop
            Process_Class (Superclasses.Element (J));
         end loop;

         --  Process class's attributes

         for J in 1 .. Attributes.Length loop
            Attribute := Attributes.Element (J);
            Redefines := Attribute.Get_Redefined_Property;
            Attribute_Type := Attribute.Get_Type;


            --  Add property into set of all attributes.

            if not Info.All_Attributes.Contains (Attribute) then
               Info.All_Attributes.Insert (Attribute);

               --  Assign slot or collection for attribute.

               if Use_Member_Slot (Attribute) then
                  --  Slot property.

                  if Redefines.Is_Empty then
                     --  Attribite doesn't redefine another attribute,
                     --  assign slot for it.

                     Slot := Slot + 1;
                     Info.Slot.Insert (Attribute, Slot);
                     Info.Slot_Index.Insert (Slot, Attribute);

                  else
                     --  Attribute redefines another attribute. use
                     --  previously assigned slot for it.

                     Info.Slot.Insert
                      (Attribute, Info.Slot.Element (Redefines.Element (1)));
                  end if;

               else
                  --  Collection of element property.

                  if Redefines.Is_Empty then
                     --  Attribute doesn't redefine another attribute,
                     --  assign collection for it.

                     Collection := Collection + 1;
                     Info.Collection.Insert (Attribute, Collection);
                     Info.Collection_Index.Insert (Collection, Attribute);

                  else
                     --  Attribute redefines another attribute. use
                     --  previously assigned collection for it.

                     Info.Collection.Insert
                      (Attribute,
                       Info.Collection.Element (Redefines.Element (1)));
                  end if;
               end if;
            end if;
         end loop;
      end Process_Class;

   begin
      if Class.Get_Is_Abstract then
         --  Ignore abstract classes.

         return;
      end if;

      Process_Class (Class);
      Class_Info.Insert (Class, Info);
   end Compute_All_Properties;

   ----------------------------
   -- Compute_Metamodel_Name --
   ----------------------------

   procedure Compute_Metamodel_Name
    (Extent : not null AMF.URI_Stores.URI_Store_Access)
   is
      Elements : constant AMF.Elements.Collections.Set_Of_Element
        := Extent.Elements;

   begin
      if Metamodel_Name.Is_Empty then
         --  Looking for first instance of CMOF::Package and use its name to
         --  compute metamodel name of analyzed extent.

         for J in 1 .. Elements.Length loop
            if Elements.Element (J).all
                 in AMF.CMOF.Packages.CMOF_Package'Class
            then
               Metamodel_Name :=
                 League.Strings.To_Universal_String
                  (Generator.Names.To_Ada_Identifier
                    (AMF.CMOF.Packages.CMOF_Package'Class
                      (Elements.Element (J).all).Get_Name.Value));

               exit;
            end if;
         end loop;
      end if;
   end Compute_Metamodel_Name;

end Generator.Analyzer;
