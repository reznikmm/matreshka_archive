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
with Ada.Containers.Hashed_Maps;
with Ada.Tags;
with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;

with League.Application;
with League.Strings;

with AMF.CMOF.Associations;
with AMF.CMOF.Classes;
with AMF.CMOF.Elements;
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Packages.Collections;
with AMF.CMOF.Primitive_Types;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;
with AMF.Elements.Collections;
with AMF.Extents.Collections;
with AMF.Facility;
with AMF.URI_Extents;
with AMF.URI_Stores;
with AMF.UML.Classes;
with AMF.UML.Elements.Hash;
with AMF.UML.Extension_Ends;
with AMF.UML.Extensions;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Primitive_Types;
with AMF.UML.Profiles;
with AMF.UML.Properties.Collections;
with AMF.UML.Stereotypes;
with AMF.UML.Types;
with XMI.Reader;
with XMI.Writer;

with AMF.Internals.Factories.UML_Factory;
pragma Unreferenced (AMF.Internals.Factories.UML_Factory);
--  Setup UML support.

procedure UMLProfile2CMOF is

   use type AMF.Optional_String;

   Primitive_Types_URI         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.omg.org/spec/UML/20100901/PrimitiveTypes.xmi");
   UML_String_Type_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("String");
   UML_Integer_Type_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Integer");

   CMOF_URI                    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://schema.omg.org/spec/MOF/2.0/cmof.xml");
   CMOF_Association_Class_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Association");
   CMOF_Class_Class_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Class");
   CMOF_Integer_Type_Name      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Integer");
   CMOF_Package_Class_Name     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Package");
   CMOF_Property_Class_Name    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Property");
   CMOF_String_Type_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("String");

   CMOF_Association_Metaclass : AMF.CMOF.Classes.CMOF_Class_Access;
   CMOF_Class_Metaclass       : AMF.CMOF.Classes.CMOF_Class_Access;
   CMOF_Package_Metaclass     : AMF.CMOF.Classes.CMOF_Class_Access;
   CMOF_Property_Metaclass    : AMF.CMOF.Classes.CMOF_Class_Access;
   CMOF_String_Type           : AMF.CMOF.Types.CMOF_Type_Access;
   CMOF_Integer_Type          : AMF.CMOF.Types.CMOF_Type_Access;
   UML_String_Type            : AMF.UML.Types.UML_Type_Access;
   UML_Integer_Type           : AMF.UML.Types.UML_Type_Access;

   Source   : AMF.URI_Stores.URI_Store_Access;
   Target   : AMF.URI_Stores.URI_Store_Access;
   Elements : AMF.Elements.Collections.Set_Of_Element;
   Element  : AMF.Elements.Element_Access;

   package UML_Element_To_CMOF_Element_Maps is
     new Ada.Containers.Hashed_Maps
          (AMF.UML.Elements.UML_Element_Access,
           AMF.CMOF.Elements.CMOF_Element_Access,
           AMF.UML.Elements.Hash,
           AMF.UML.Elements."=",
           AMF.CMOF.Elements."=");

   UML_To_CMOF : UML_Element_To_CMOF_Element_Maps.Map;

   procedure Initialize_Metaclasses;
   --  Lookup used metaclasses in metamodel.

   procedure Initialize_Types;
   --  Lookup used types in model.

   procedure Profile_To_Package
    (Source : not null AMF.UML.Profiles.UML_Profile_Access);
   --  Converts specified profile to package.

   procedure Stereotype_To_Class_Stage_1
    (Owner  : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Source : not null AMF.UML.Stereotypes.UML_Stereotype_Access);
   --  Converts specified stereotype to class.

   procedure Stereotype_To_Class_Stage_2
    (Source : not null AMF.UML.Stereotypes.UML_Stereotype_Access);
   --  Converts specified stereotype to class.

   procedure Extension_To_Association_Stage_1
    (Owner  : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Source : not null AMF.UML.Extensions.UML_Extension_Access);
   --  Converts specified extension to association.

   procedure Extension_To_Association_Stage_2
    (Source : not null AMF.UML.Extensions.UML_Extension_Access);
   --  Converts specified extension to association.

   procedure Property_To_Property_Stage_1
    (Owner  : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Source : not null AMF.UML.Properties.UML_Property_Access);
   --  Converts specified property to property.

   procedure Property_To_Property_Stage_2
    (Source : not null AMF.UML.Properties.UML_Property_Access);
   --  Converts specified property to property.

   procedure Extension_End_To_Property_Stage_1
    (Owner  : not null AMF.CMOF.Associations.CMOF_Association_Access;
     Source : not null AMF.UML.Extension_Ends.UML_Extension_End_Access);
   --  Converts specified property to property.

   procedure Extension_End_To_Property_Stage_2
    (Source : not null AMF.UML.Extension_Ends.UML_Extension_End_Access);
   --  Converts specified property to property.

   ---------------------------------------
   -- Extension_End_To_Property_Stage_1 --
   ---------------------------------------

   procedure Extension_End_To_Property_Stage_1
    (Owner  : not null AMF.CMOF.Associations.CMOF_Association_Access;
     Source : not null AMF.UML.Extension_Ends.UML_Extension_End_Access)
   is
      The_Property : AMF.CMOF.Properties.CMOF_Property_Access;

   begin
      --  Create instance of CMOF::Property and set its attributes.

      The_Property :=
        AMF.CMOF.Properties.CMOF_Property_Access
         (Target.Create (CMOF_Property_Metaclass));
      The_Property.Set_Name (Source.Get_Name);
      The_Property.Set_Lower (Source.Lower_Bound);
      The_Property.Set_Upper (Source.Upper_Bound);
      The_Property.Set_Is_Composite (True);
      Owner.Get_Owned_End.Add (The_Property);
      UML_To_CMOF.Insert
       (AMF.UML.Elements.UML_Element_Access (Source),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Property));
   end Extension_End_To_Property_Stage_1;

   ---------------------------------------
   -- Extension_End_To_Property_Stage_2 --
   ---------------------------------------

   procedure Extension_End_To_Property_Stage_2
    (Source : not null AMF.UML.Extension_Ends.UML_Extension_End_Access)
   is
      The_Type     : constant AMF.UML.Types.UML_Type_Access
        := Source.Get_Type;
      The_Property : constant AMF.CMOF.Properties.CMOF_Property_Access
        := AMF.CMOF.Properties.CMOF_Property_Access
            (UML_To_CMOF.Element
              (AMF.UML.Elements.UML_Element_Access (Source)));

   begin
      The_Property.Set_Type
       (AMF.CMOF.Types.CMOF_Type_Access
         (UML_To_CMOF.Element
           (AMF.UML.Elements.UML_Element_Access (The_Type))));
   end Extension_End_To_Property_Stage_2;

   --------------------------------------
   -- Extension_To_Association_Stage_1 --
   --------------------------------------

   procedure Extension_To_Association_Stage_1
    (Owner  : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Source : not null AMF.UML.Extensions.UML_Extension_Access)
   is
      The_Association : AMF.CMOF.Associations.CMOF_Association_Access;

   begin
      if Source.Get_Name.Is_Empty then
         Ada.Wide_Wide_Text_IO.Put_Line ("Processing extension");

      else
         Ada.Wide_Wide_Text_IO.Put_Line
          ("Processing extension '"
             & Source.Get_Name.Value.To_Wide_Wide_String
             & ''');
      end if;

      --  Create association and set its attributes.

      The_Association :=
        AMF.CMOF.Associations.CMOF_Association_Access
         (Target.Create (CMOF_Association_Metaclass));
      The_Association.Set_Name (Source.Get_Name);
      Owner.Get_Packaged_Element.Add (The_Association);
      UML_To_CMOF.Insert
       (AMF.UML.Elements.UML_Element_Access (Source),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Association));

      --  Create instance of owned end.

      Extension_End_To_Property_Stage_1 (The_Association, Source.Get_Owned_End);
   end Extension_To_Association_Stage_1;

   --------------------------------------
   -- Extension_To_Association_Stage_2 --
   --------------------------------------

   procedure Extension_To_Association_Stage_2
    (Source : not null AMF.UML.Extensions.UML_Extension_Access)
   is
      The_Association : constant AMF.CMOF.Associations.CMOF_Association_Access
        := AMF.CMOF.Associations.CMOF_Association_Access
            (UML_To_CMOF.Element
              (AMF.UML.Elements.UML_Element_Access (Source)));
      Member_End      : constant
        AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property
          := Source.Get_Member_End;

   begin
      --  Resolve elements of memberEnd attribute.

      for J in 1 .. Member_End.Length loop
         The_Association.Get_Member_End.Add
          (AMF.CMOF.Properties.CMOF_Property_Access
            (UML_To_CMOF.Element
              (AMF.UML.Elements.UML_Element_Access (Member_End.Element (J)))));
      end loop;

      Extension_End_To_Property_Stage_2 (Source.Get_Owned_End);
   end Extension_To_Association_Stage_2;

   ----------------------------
   -- Initialize_Metaclasses --
   ----------------------------

   procedure Initialize_Metaclasses is
      Packages : constant AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package
        := Target.Get_Package;
      Elements :
        AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element;
      Element  : AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element_Access;
      Class    : AMF.CMOF.Classes.CMOF_Class_Access;
      The_Type : AMF.CMOF.Types.CMOF_Type_Access;

   begin
      for J in 1 .. Packages.Length loop
         if Packages.Element (J).Get_Uri = CMOF_URI then
            Elements := Packages.Element (J).Get_Packaged_Element;

            for K in 1 .. Elements.Length loop
               Element := Elements.Element (K);

               if Element.all in AMF.CMOF.Classes.CMOF_Class'Class then
                  Class := AMF.CMOF.Classes.CMOF_Class_Access (Element);

                  if Class.Get_Name = CMOF_Association_Class_Name then
                     CMOF_Association_Metaclass := Class;

                  elsif Class.Get_Name = CMOF_Class_Class_Name then
                     CMOF_Class_Metaclass := Class;

                  elsif Class.Get_Name = CMOF_Package_Class_Name then
                     CMOF_Package_Metaclass := Class;

                  elsif Class.Get_Name = CMOF_Property_Class_Name then
                     CMOF_Property_Metaclass := Class;
                  end if;

               elsif Element.all
                       in AMF.CMOF.Primitive_Types.CMOF_Primitive_Type'Class
               then
                  The_Type := AMF.CMOF.Types.CMOF_Type_Access (Element);

                  if The_Type.Get_Name = CMOF_String_Type_Name then
                     CMOF_String_Type := The_Type;

                  elsif The_Type.Get_Name = CMOF_Integer_Type_Name then
                     CMOF_Integer_Type := The_Type;
                  end if;
               end if;
            end loop;
         end if;
      end loop;
   end Initialize_Metaclasses;

   ----------------------
   -- Initialize_Types --
   ----------------------

   procedure Initialize_Types is
      use type League.Strings.Universal_String;

      Extents  : constant AMF.Extents.Collections.Set_Of_Extent
        := AMF.Facility.Extent;
      Extent   : AMF.URI_Extents.URI_Extent_Access;
      Position : AMF.Extents.Collections.Extent_Sets.Cursor := Extents.First;
      Elements : AMF.Elements.Collections.Set_Of_Element;
      Element  : AMF.Elements.Element_Access;
      The_Type : AMF.UML.Types.UML_Type_Access;

   begin
      while AMF.Extents.Collections.Extent_Sets.Has_Element (Position) loop
         Extent :=
           AMF.URI_Extents.URI_Extent_Access
            (AMF.Extents.Collections.Extent_Sets.Element (Position));

         if Extent.Context_URI = Primitive_Types_URI then
            Elements := Extent.Elements;

            for J in 1 .. Elements.Length loop
               Element := Elements.Element (J);

               if Element.all in AMF.UML.Primitive_Types.UML_Primitive_Type'Class then
                  The_Type := AMF.UML.Types.UML_Type_Access (Element);

                  if The_Type.Get_Name = UML_String_Type_Name then
                     UML_String_Type := The_Type;

                  elsif The_Type.Get_Name = UML_Integer_Type_Name then
                     UML_Integer_Type := The_Type;
                  end if;
               end if;
            end loop;
         end if;

         AMF.Extents.Collections.Extent_Sets.Next (Position);
      end loop;
   end Initialize_Types;

   ------------------------
   -- Profile_To_Package --
   ------------------------

   procedure Profile_To_Package
    (Source : not null AMF.UML.Profiles.UML_Profile_Access)
   is
      Elements    : constant
        AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
          := Source.Get_Packaged_Element;
      Element     :
        AMF.UML.Packageable_Elements.UML_Packageable_Element_Access;
      The_Package : AMF.CMOF.Packages.CMOF_Package_Access;

   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       ("Processing profile '"
          & Source.Get_Name.Value.To_Wide_Wide_String
          & ''');

      --  Create instance of CMOF::Package and set its attributes.

      The_Package :=
        AMF.CMOF.Packages.CMOF_Package_Access
         (Target.Create (CMOF_Package_Metaclass));
      The_Package.Set_Name (Source.Get_Name);
      UML_To_CMOF.Insert
       (AMF.UML.Elements.UML_Element_Access (Source),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Package));

      --  Do first pass through packaged elements to create instances.

      for J in 1 .. Elements.Length loop
         Element := Elements.Element (J);

         if Element.all in AMF.UML.Stereotypes.UML_Stereotype'Class then
            Stereotype_To_Class_Stage_1
             (The_Package,
              AMF.UML.Stereotypes.UML_Stereotype_Access (Element));

         elsif Element.all in AMF.UML.Extensions.UML_Extension'Class then
            Extension_To_Association_Stage_1
             (The_Package,
              AMF.UML.Extensions.UML_Extension_Access (Element));

         else
            Ada.Text_IO.Put_Line (Ada.Tags.External_Tag (Element.all'Tag));
         end if;
      end loop;

      --  Do second pass through packaged elements to resolve links to
      --  elements.

      for J in 1 .. Elements.Length loop
         Element := Elements.Element (J);

         if Element.all in AMF.UML.Stereotypes.UML_Stereotype'Class then
            Stereotype_To_Class_Stage_2
             (AMF.UML.Stereotypes.UML_Stereotype_Access (Element));

         elsif Element.all in AMF.UML.Extensions.UML_Extension'Class then
            Extension_To_Association_Stage_2
             (AMF.UML.Extensions.UML_Extension_Access (Element));

         else
            Ada.Text_IO.Put_Line (Ada.Tags.External_Tag (Element.all'Tag));
         end if;
      end loop;
   end Profile_To_Package;

   ----------------------------------
   -- Property_To_Property_Stage_1 --
   ----------------------------------

   procedure Property_To_Property_Stage_1
    (Owner  : not null AMF.CMOF.Classes.CMOF_Class_Access;
     Source : not null AMF.UML.Properties.UML_Property_Access)
   is
      The_Property : AMF.CMOF.Properties.CMOF_Property_Access;

   begin
      --  Create instance of CMOF::Property and set its attributes.

      The_Property :=
        AMF.CMOF.Properties.CMOF_Property_Access
         (Target.Create (CMOF_Property_Metaclass));
      The_Property.Set_Name (Source.Get_Name);
      The_Property.Set_Lower (Source.Lower_Bound);
      The_Property.Set_Upper (Source.Upper_Bound);
      UML_To_CMOF.Insert
       (AMF.UML.Elements.UML_Element_Access (Source),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Property));

      Owner.Get_Owned_Attribute.Add (The_Property);
   end Property_To_Property_Stage_1;

   ----------------------------------
   -- Property_To_Property_Stage_2 --
   ----------------------------------

   procedure Property_To_Property_Stage_2
    (Source : not null AMF.UML.Properties.UML_Property_Access)
   is
      use type AMF.UML.Types.UML_Type_Access;

      The_Type     : constant AMF.UML.Types.UML_Type_Access
        := Source.Get_Type;
      The_Property : constant AMF.CMOF.Properties.CMOF_Property_Access
        := AMF.CMOF.Properties.CMOF_Property_Access
            (UML_To_CMOF.Element
              (AMF.UML.Elements.UML_Element_Access (Source)));

   begin
      if The_Type.all in AMF.UML.Primitive_Types.UML_Primitive_Type'Class then
         if The_Type = UML_String_Type then
            The_Property.Set_Type (CMOF_String_Type);

         elsif The_Type = UML_Integer_Type then
            The_Property.Set_Type (CMOF_Integer_Type);

         else
            raise Program_Error;
         end if;

      elsif The_Type.all in AMF.UML.Classes.UML_Class'Class then
         if UML_To_CMOF.Contains
             (AMF.UML.Elements.UML_Element_Access (The_Type))
         then
            The_Property.Set_Type
             (AMF.CMOF.Types.CMOF_Type_Access
               (UML_To_CMOF.Element
                 (AMF.UML.Elements.UML_Element_Access (The_Type))));

         else
            --  XXX Not implemented now, classes of UML metamodel should be
            --  translated to corresponding classes of CMOF metamodel.

            null;
         end if;
      end if;
   end Property_To_Property_Stage_2;

   ---------------------------------
   -- Stereotype_To_Class_Stage_1 --
   ---------------------------------

   procedure Stereotype_To_Class_Stage_1
    (Owner  : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Source : not null AMF.UML.Stereotypes.UML_Stereotype_Access)
   is
      The_Class        : AMF.CMOF.Classes.CMOF_Class_Access;
      Owned_Attributes : constant
        AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property
          := Source.Get_Owned_Attribute;

   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       ("Processing stereotype '"
          & Source.Get_Name.Value.To_Wide_Wide_String
          & ''');

      --  Create instance of CMOF::Class and set its attributes.

      The_Class :=
        AMF.CMOF.Classes.CMOF_Class_Access
         (Target.Create (CMOF_Class_Metaclass));
      The_Class.Set_Name (Source.Get_Name);
      Owner.Get_Packaged_Element.Add (The_Class);
      UML_To_CMOF.Insert
       (AMF.UML.Elements.UML_Element_Access (Source),
        AMF.CMOF.Elements.CMOF_Element_Access (The_Class));

      --  Create instances of attributes.

      for J in 1 .. Owned_Attributes.Length loop
         Property_To_Property_Stage_1
          (The_Class, Owned_Attributes.Element (J));
      end loop;
   end Stereotype_To_Class_Stage_1;

   ---------------------------------
   -- Stereotype_To_Class_Stage_2 --
   ---------------------------------

   procedure Stereotype_To_Class_Stage_2
    (Source : not null AMF.UML.Stereotypes.UML_Stereotype_Access)
   is
      Owned_Attributes : constant
        AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property
          := Source.Get_Owned_Attribute;

   begin
      --  Process properties.

      for J in 1 .. Owned_Attributes.Length loop
         Property_To_Property_Stage_2 (Owned_Attributes.Element (J));
      end loop;
   end Stereotype_To_Class_Stage_2;

begin
   --  Initialize facility.

   AMF.Facility.Initialize;

   --  Load model.

   Source := XMI.Reader.Read_File (League.Application.Arguments.Element (1));

   --  Create target extent.

   Target :=
     AMF.Facility.Create_URI_Store (League.Strings.Empty_Universal_String);
   Initialize_Metaclasses;
   Initialize_Types;

   --  Get all model's elements.

   Elements := Source.Elements;

   --  Looking for profile.

   for J in 1 .. Elements.Length loop
      Element := Elements.Element (J);

      if Element.all in AMF.UML.Profiles.UML_Profile'Class then
         Profile_To_Package
          (AMF.UML.Profiles.UML_Profile_Access (Element));
      end if;
   end loop;

   --  Output result model.

   XMI.Writer (Target);
end UMLProfile2CMOF;
