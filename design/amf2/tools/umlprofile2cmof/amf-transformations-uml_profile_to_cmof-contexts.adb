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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Packages.Collections;
with AMF.Elements.Collections;
with AMF.Facility;
with AMF.UML.Named_Elements;
with XMI.Reader;

package body AMF.Transformations.UML_Profile_To_CMOF.Contexts is

   procedure Lookup_CMOF_Metaclasses (Self : in out Transformation_Context);
   --  Lookup for CMOF metaclasses to be used to create elements.

   CMOF_URI                       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://schema.omg.org/spec/MOF/2.0/cmof.xml");
   CMOF_Association_Class_Name    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Association");
   CMOF_Class_Class_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Class");
   CMOF_Enumeration_Class_Name    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Enumeration");
   CMOF_Enumeration_Literal_Class_Name :
     constant League.Strings.Universal_String
       := League.Strings.To_Universal_String ("EnumerationLiteral");
   CMOF_Package_Class_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Package");
   CMOF_Primitive_Type_Class_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("PrimitiveType");
   CMOF_Property_Class_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Property");
   CMOF_Tag_Class_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Tag");
   Internal_UML_URI               : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.omg.org/spec/UML/20100901/UML.cmof");
   Internal_Primitive_Types_URI   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.omg.org/spec/UML/20100901/PrimitiveTypes.cmof");

   -----------------------------
   -- Create_CMOF_Association --
   -----------------------------

   function Create_CMOF_Association
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Associations.CMOF_Association_Access
   is
      The_Association :
        constant not null AMF.CMOF.Associations.CMOF_Association_Access
          := AMF.CMOF.Associations.CMOF_Association_Access
              (Self.Destination.Create (Self.CMOF_Association_Metaclass));

   begin
      The_Association.Set_Visibility ((False, AMF.CMOF.Public_Visibility));
      --  CMOF does not support visibilities.

      Self.Element_Map.Insert
       (AMF.UML.Elements.UML_Element_Access (Element),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Association));

      return The_Association;
   end Create_CMOF_Association;

   -----------------------
   -- Create_CMOF_Class --
   -----------------------

   function Create_CMOF_Class
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Classes.CMOF_Class_Access
   is
      The_Class : constant not null AMF.CMOF.Classes.CMOF_Class_Access
        := AMF.CMOF.Classes.CMOF_Class_Access
            (Self.Destination.Create (Self.CMOF_Class_Metaclass));

   begin
      The_Class.Set_Visibility ((False, AMF.CMOF.Public_Visibility));
      --  CMOF does not support visibilities.

      Self.Element_Map.Insert
       (AMF.UML.Elements.UML_Element_Access (Element),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Class));

      return The_Class;
   end Create_CMOF_Class;

   -----------------------------
   -- Create_CMOF_Enumeration --
   -----------------------------

   function Create_CMOF_Enumeration
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access
   is
      The_Enumeration :
        constant not null AMF.CMOF.Enumerations.CMOF_Enumeration_Access
          := AMF.CMOF.Enumerations.CMOF_Enumeration_Access
              (Self.Destination.Create (Self.CMOF_Enumeration_Metaclass));

   begin
      The_Enumeration.Set_Visibility ((False, AMF.CMOF.Public_Visibility));
      --  CMOF does not support visibilities.

      Self.Element_Map.Insert
       (AMF.UML.Elements.UML_Element_Access (Element),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Enumeration));

      return The_Enumeration;
   end Create_CMOF_Enumeration;

   -------------------------------------
   -- Create_CMOF_Enumeration_Literal --
   -------------------------------------

   function Create_CMOF_Enumeration_Literal
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access
   is
      The_Enumeration_Literal : constant
        not null AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access
          := AMF.CMOF.Enumeration_Literals.CMOF_Enumeration_Literal_Access
              (Self.Destination.Create
                (Self.CMOF_Enumeration_Literal_Metaclass));

   begin
      The_Enumeration_Literal.Set_Visibility
       ((False, AMF.CMOF.Public_Visibility));
      --  CMOF does not support visibilities.

      Self.Element_Map.Insert
       (AMF.UML.Elements.UML_Element_Access (Element),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Enumeration_Literal));

      return The_Enumeration_Literal;
   end Create_CMOF_Enumeration_Literal;

   -------------------------
   -- Create_CMOF_Package --
   -------------------------

   function Create_CMOF_Package
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Packages.CMOF_Package_Access
   is
      The_Package : constant not null AMF.CMOF.Packages.CMOF_Package_Access
        := AMF.CMOF.Packages.CMOF_Package_Access
            (Self.Destination.Create (Self.CMOF_Package_Metaclass));

   begin
      The_Package.Set_Visibility ((False, AMF.CMOF.Public_Visibility));
      --  CMOF does not support visibilities.

      Self.Element_Map.Insert
       (AMF.UML.Elements.UML_Element_Access (Element),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Package));

      return The_Package;
   end Create_CMOF_Package;

   --------------------------------
   -- Create_CMOF_Primitive_Type --
   --------------------------------

   function Create_CMOF_Primitive_Type
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access
   is
      The_Primitive_Type : constant
        not null AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access
          := AMF.CMOF.Primitive_Types.CMOF_Primitive_Type_Access
              (Self.Destination.Create (Self.CMOF_Primitive_Type_Metaclass));

   begin
      The_Primitive_Type.Set_Visibility ((False, AMF.CMOF.Public_Visibility));
      --  CMOF does not support visibilities.

      Self.Element_Map.Insert
       (AMF.UML.Elements.UML_Element_Access (Element),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Primitive_Type));

      return The_Primitive_Type;
   end Create_CMOF_Primitive_Type;

   --------------------------
   -- Create_CMOF_Property --
   --------------------------

   function Create_CMOF_Property
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Properties.CMOF_Property_Access
   is
      The_Property : constant not null AMF.CMOF.Properties.CMOF_Property_Access
        := AMF.CMOF.Properties.CMOF_Property_Access
            (Self.Destination.Create (Self.CMOF_Property_Metaclass));

   begin
      The_Property.Set_Visibility ((False, AMF.CMOF.Public_Visibility));
      --  CMOF does not support visibilities.

      Self.Element_Map.Insert
       (AMF.UML.Elements.UML_Element_Access (Element),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Property));

      return The_Property;
   end Create_CMOF_Property;

   ---------------------
   -- Create_CMOF_Tag --
   ---------------------

   function Create_CMOF_Tag
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Tags.CMOF_Tag_Access
   is
      The_Tag : constant not null AMF.CMOF.Tags.CMOF_Tag_Access
        := AMF.CMOF.Tags.CMOF_Tag_Access
            (Self.Destination.Create (Self.CMOF_Tag_Metaclass));

   begin
      Self.Element_Map.Insert
       (AMF.UML.Elements.UML_Element_Access (Element),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Tag));

      return The_Tag;
   end Create_CMOF_Tag;

   -----------------
   -- Destination --
   -----------------

   function Destination
    (Self : in out Transformation_Context)
       return not null AMF.URI_Stores.URI_Store_Access is
   begin
      return Self.Destination;
   end Destination;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : in out Transformation_Context) is
      Store    : AMF.URI_Stores.URI_Store_Access;
      Elements : AMF.Elements.Collections.Set_Of_Element;

   begin
      --  Create destination store.

      Self.Destination :=
        AMF.Facility.Create_URI_Store (League.Strings.Empty_Universal_String);

      --  Load internal PrimitiveTypes metamodel and lookup for root package of
      --  metamodel.

      Store := XMI.Reader.Read_URI (Internal_Primitive_Types_URI);
      Elements := Store.Elements;

      for J in 1 .. Elements.Length loop
         if Elements.Element (J).all
              in AMF.CMOF.Packages.CMOF_Package'Class
         then
            Self.Primitive_Types_Package :=
              AMF.CMOF.Packages.CMOF_Package_Access (Elements.Element (J));

            exit;
         end if;
      end loop;

      --  Load internal UML metamodel and lookup for root package of metamodel.

      Store := XMI.Reader.Read_URI (Internal_UML_URI);
      Elements := Store.Elements;

      for J in 1 .. Elements.Length loop
         if Elements.Element (J).all
              in AMF.CMOF.Packages.CMOF_Package'Class
         then
            Self.UML_Package :=
              AMF.CMOF.Packages.CMOF_Package_Access (Elements.Element (J));

            exit;
         end if;
      end loop;

      --  Lookup for CMOF metaclasses.

      Lookup_CMOF_Metaclasses (Self);
   end Initialize;

   -----------------------------
   -- Lookup_CMOF_Metaclasses --
   -----------------------------

   procedure Lookup_CMOF_Metaclasses (Self : in out Transformation_Context) is
      Packages : constant AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package
        := Self.Destination.Get_Package;
      Elements :
        AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;
      Element  : AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element_Access;
      Class    : AMF.CMOF.Classes.CMOF_Class_Access;

   begin
      for J in 1 .. Packages.Length loop
         if Packages.Element (J).Get_Uri = CMOF_URI then
            --  Resolving elements from CMOF metamodel.

            Elements := Packages.Element (J).Get_Packaged_Element;

            for K in 1 .. Elements.Length loop
               Element := Elements.Element (K);

               if Element.all in AMF.CMOF.Classes.CMOF_Class'Class then
                  Class := AMF.CMOF.Classes.CMOF_Class_Access (Element);

                  if Class.Get_Name = CMOF_Association_Class_Name then
                     Self.CMOF_Association_Metaclass := Class;

                  elsif Class.Get_Name = CMOF_Class_Class_Name then
                     Self.CMOF_Class_Metaclass := Class;

                  elsif Class.Get_Name = CMOF_Enumeration_Class_Name then
                     Self.CMOF_Enumeration_Metaclass := Class;

                  elsif Class.Get_Name
                          = CMOF_Enumeration_Literal_Class_Name
                  then
                     Self.CMOF_Enumeration_Literal_Metaclass := Class;

                  elsif Class.Get_Name = CMOF_Package_Class_Name then
                     Self.CMOF_Package_Metaclass := Class;

                  elsif Class.Get_Name = CMOF_Primitive_Type_Class_Name then
                     Self.CMOF_Primitive_Type_Metaclass := Class;

                  elsif Class.Get_Name = CMOF_Property_Class_Name then
                     Self.CMOF_Property_Metaclass := Class;

                  elsif Class.Get_Name = CMOF_Tag_Class_Name then
                     Self.CMOF_Tag_Metaclass := Class;
                  end if;
               end if;
            end loop;
         end if;
      end loop;
   end Lookup_CMOF_Metaclasses;

   --------------------
   -- Mapped_Element --
   --------------------

   function Mapped_Element
    (Self    : in out Transformation_Context;
     Element : not null access AMF.UML.Elements.UML_Element'Class)
       return not null AMF.CMOF.Elements.CMOF_Element_Access
   is
      Position     : constant UML_Element_To_CMOF_Element_Maps.Cursor
        := Self.Element_Map.Find
            (AMF.UML.Elements.UML_Element_Access (Element));
      Elements     :
        AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;
      Meta_Element :
        AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element_Access;
      Name         : AMF.Optional_String;

   begin
      if UML_Element_To_CMOF_Element_Maps.Has_Element (Position) then
         return UML_Element_To_CMOF_Element_Maps.Element (Position);
      end if;

      --  Lookup for element in UML metamodel package.

      Name     :=
        AMF.UML.Named_Elements.UML_Named_Element'Class (Element.all).Get_Name;
      Elements := Self.UML_Package.Get_Packaged_Element;

      for J in 1 .. Elements.Length loop
         Meta_Element := Elements.Element (J);

         if Meta_Element.Get_Name = Name then
            Self.Element_Map.Insert
             (Element,
              AMF.CMOF.Elements.CMOF_Element_Access (Meta_Element));

            return AMF.CMOF.Elements.CMOF_Element_Access (Meta_Element);
         end if;
      end loop;

      --  Lookup for element in PrimitiveTypes metamodel package.

      Name     :=
        AMF.UML.Named_Elements.UML_Named_Element'Class (Element.all).Get_Name;
      Elements := Self.Primitive_Types_Package.Get_Packaged_Element;

      for J in 1 .. Elements.Length loop
         Meta_Element := Elements.Element (J);

         if Meta_Element.Get_Name = Name then
            Self.Element_Map.Insert
             (Element,
              AMF.CMOF.Elements.CMOF_Element_Access (Meta_Element));

            return AMF.CMOF.Elements.CMOF_Element_Access (Meta_Element);
         end if;
      end loop;
   end Mapped_Element;

end AMF.Transformations.UML_Profile_To_CMOF.Contexts;
