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
with Ada.Containers.Hashed_Sets;
with Ada.Wide_Wide_Text_IO;

with League.String_Vectors;
with XMI.Reader;

with AMF.CMOF.Associations;
with AMF.CMOF.Classes.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Packages;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;
with AMF.Facility;
with AMF.Internals.Extents;
with AMF.Internals.Factories;
--  XXX Direct use of AMF.Internals.Factories must be removed.

package body AMF.Internals.XMI_Handlers is

   use Ada.Wide_Wide_Text_IO;
   use type AMF.CMOF.Properties.CMOF_Property_Access;
   use type League.Strings.Universal_String;

   XMI_2_1_Namespace : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://schema.omg.org/spec/XMI/2.1");
   XMI_2_4_Namespace : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.omg.org/spec/XMI/20100901");
   XMI_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("XMI");
   Id_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("id");
   Idref_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("idref");
   Type_Name         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("type");
   Href_Name         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("href");

   function Resolve_Owned_Attribute
    (Class : AMF.CMOF.Classes.CMOF_Class_Access;
     Name  : League.Strings.Universal_String)
       return AMF.CMOF.Properties.CMOF_Property_Access;
   --  Resolves class's owned attribute by its name.

   function Resolve_Owned_Class
    (Root : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Name : League.Strings.Universal_String)
       return AMF.CMOF.Classes.CMOF_Class_Access;
   --  Resolves owned class by name.

   procedure Analyze_Object_Element
    (Self       : in out XMI_Handler;
     Meta_Class : AMF.CMOF.Classes.CMOF_Class_Access;
     Attribute  : AMF.CMOF.Properties.CMOF_Property_Access;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : out Boolean);
   --  Analyze current XML element which represents AMF.Element: resolves
   --  XLink reference or creates new element. For created elements analyze
   --  XML attributes and set element's attributes or creates links. Creates
   --  ownership link when current element is nested into another element.

   procedure Establish_Link
    (Self          : in out XMI_Handler;
     Attribute     : not null AMF.CMOF.Properties.CMOF_Property_Access;
     One_Element   : not null AMF.Elements.Element_Access;
     Other_Element : not null AMF.Elements.Element_Access);
   --  Creates link between specified elements, but prevents to create
   --  duplicate links. Duplicate links are created for association which
   --  is not composition association, because opposite element referered
   --  on both ends.

   package Universal_String_Sets is
     new Ada.Containers.Hashed_Sets
          (League.Strings.Universal_String,
           League.Strings.Hash,
           League.Strings."=");

   package Universal_String_Extent_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           AMF.URI_Stores.URI_Store_Access,
           League.Strings.Hash,
           League.Strings."=",
           AMF.URI_Stores."=");

   Documents             : Universal_String_Extent_Maps.Map;
   --  Map file name of document to extent.
   Postponed_Cross_Links : Postponed_Link_Vectors.Vector;
   --  Postponed cross-extents links.
   URI_Queue             : Universal_String_Sets.Set;
   --  List of URIs to be loaded.

   -----------------
   -- All_Extents --
   -----------------

   function All_Extents return Extent_Array is
      Result   : Extent_Array (1 .. Natural (Documents.Length));
      Last     : Natural := 0;
      Position : Universal_String_Extent_Maps.Cursor := Documents.First;

   begin
      while Universal_String_Extent_Maps.Has_Element (Position) loop
         Last := Last + 1;
         Result (Last) := Universal_String_Extent_Maps.Element (Position);
         Universal_String_Extent_Maps.Next (Position);
      end loop;

      return Result;
   end All_Extents;

   ----------------------------
   -- Analyze_Object_Element --
   ----------------------------

   procedure Analyze_Object_Element
    (Self       : in out XMI_Handler;
     Meta_Class : AMF.CMOF.Classes.CMOF_Class_Access;
     Attribute  : AMF.CMOF.Properties.CMOF_Property_Access;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : out Boolean)
   is
      use type AMF.Elements.Element_Access;

      procedure Set_Attribute
       (Property : AMF.CMOF.Properties.CMOF_Property_Access;
        Value    : League.Strings.Universal_String);

      -------------------
      -- Set_Attribute --
      -------------------

      procedure Set_Attribute
       (Property : AMF.CMOF.Properties.CMOF_Property_Access;
        Value    : League.Strings.Universal_String)
      is
         use type AMF.CMOF.Types.CMOF_Type_Access;

         Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;

      begin
         if Property = null then
            raise Program_Error with "Unknown attribute";
         end if;

         Attribute_Type := Property.Get_Type;

         if Attribute_Type = null then
            raise Program_Error with "Type not specified";
         end if;

         if Attribute_Type.all in AMF.CMOF.Data_Types.CMOF_Data_Type'Class then
            Self.Current.Set
             (Property,
              Self.Extent.Create_From_String
               (AMF.CMOF.Data_Types.CMOF_Data_Type_Access (Attribute_Type),
                Value));

         else
            if Property.Is_Multivalued then
               declare
                  Ids : constant League.String_Vectors.Universal_String_Vector
                    := Value.Split (' ');

               begin
                  for J in 1 .. Ids.Length loop
                     if Self.Mapping.Contains (Ids.Element (J)) then
                        Establish_Link
                         (Self,
                          Property,
                          Self.Current,
                          Self.Mapping.Element (Ids.Element (J)));

                     else
                        Self.Postponed.Append
                         ((Self.Current, Property, Ids.Element (J)));
                     end if;
                  end loop;
               end;

            else
               if Self.Mapping.Contains (Value) then
                  Establish_Link
                   (Self,
                    Property,
                    Self.Current,
                    Self.Mapping.Element (Value));

               else
                  Self.Postponed.Append ((Self.Current, Property, Value));
               end if;
            end if;
         end if;
      end Set_Attribute;

      Id          : constant League.Strings.Universal_String
        := Attributes.Value (Self.XMI_Namespace, Id_Name);
      Href_Index  : constant Natural := Attributes.Index (Href_Name);
      Idref_Index : constant Natural
        := Attributes.Index (Self.XMI_Namespace, Idref_Name);

   begin
      --  Set Success flag.

      Success := True;

      --  Push current element into the stack.

      if Self.Current /= null then
         Self.Stack.Append (Self.Current);
      end if;

      if Href_Index /= 0 then
         --  Process XLink 'href' attribute if present.

         declare
            URI       : constant League.Strings.Universal_String
              := Attributes.Value (Href_Index);
            Separator : constant Positive := URI.Index ('#');
            File_Name : constant League.Strings.Universal_String
              := URI.Slice (1, Separator - 1);
            Name      : constant League.Strings.Universal_String
              := URI.Slice (Separator + 1, URI.Length);

         begin
            --  Check whether referenced document is already loaded.

            if Documents.Contains (File_Name) then
               --  When document is loaded resolve referenced element.

               Self.Current := Documents.Element (File_Name).Element (Name);

               if Self.Current = null then
                  raise Program_Error;
               end if;

            else
               --  When document is not loaded queue it and register postponed
               --  cross link.

               URI_Queue.Include (File_Name);

               Postponed_Cross_Links.Append
                ((Self.Stack.Last_Element, Attribute, URI));

               Self.Current := null;

               return;
            end if;
         end;

      elsif Idref_Index /= 0 then
         --  Process XMI 'idref' attribute if present.

         Set_Attribute (Attribute, Attributes.Value (Idref_Index));

      else
         --  Create new element.

         Self.Current := Self.Extent.Create (Meta_Class);
         AMF.Internals.Extents.Associate_Id (Self.Current, Id);
         Self.Mapping.Insert (Id, Self.Current);
      end if;

      --  Establish ownership link.

      if Attribute /= null then
         Establish_Link
          (Self, Attribute, Self.Stack.Last_Element, Self.Current);
      end if;

      --  Process attributes.

      for J in 1 .. Attributes.Length loop
         if Attributes.Namespace_URI (J).Is_Empty then
            if Attributes.Qualified_Name (J) /= Href_Name then
               --  XLink 'href' handled outside of this subprogram.

               declare
                  Property : constant AMF.CMOF.Properties.CMOF_Property_Access
                    := Resolve_Owned_Attribute
                        (Meta_Class, Attributes.Qualified_Name (J));

               begin
                  if Property = null then
                     Self.Diagnosis :=
                       "Unknown property '"
                         & Meta_Class.Get_Name.Value
                         & ":"
                         & Attributes.Qualified_Name (J)
                         & ''';
                     Success := False;

                     return;
                  end if;

                  Set_Attribute (Property, Attributes.Value (J));
               end;
            end if;

         elsif Attributes.Namespace_URI (J) = Self.XMI_Namespace then
            --  XMI namespace is handled outside of this subprogram.

            null;

         else
            --  XXX Is this format violation?

            Put_Line
             (Standard_Error,
              "  "
                & Attributes.Namespace_URI (J).To_Wide_Wide_String
                & "  "
                & Attributes.Local_Name (J).To_Wide_Wide_String
                & "  "
                & Attributes.Value (J).To_Wide_Wide_String);
         end if;
      end loop;
   end Analyze_Object_Element;

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out XMI_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      if Self.Collect_Text then
         Self.Text.Append (Text);
      end if;
   end Characters;

   ------------------
   -- End_Document --
   ------------------

   overriding procedure End_Document
    (Self    : in out XMI_Handler;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

      procedure Establish_Link (Position : Postponed_Link_Vectors.Cursor);

      --------------------
      -- Establish_Link --
      --------------------

      procedure Establish_Link (Position : Postponed_Link_Vectors.Cursor) is
         L : constant Postponed_Link
           := Postponed_Link_Vectors.Element (Position);
         S : constant Natural := L.Id.Index ('#');

      begin
         if S = 0 then
            --  Local link.

            Establish_Link
             (Self, L.Attribute, L.Element, Self.Mapping.Element (L.Id));

         else
            --  Cross link.

            Establish_Link
             (Self,
              L.Attribute,
              L.Element,
              Documents.Element
               (L.Id.Slice (1, S - 1)).Element
                 (L.Id.Slice (S + 1, L.Id.Length)));
         end if;
      end Establish_Link;

   begin
      if Self.Diagnosis.Is_Empty then
         --  Resolve postponed local links.

         Self.Postponed.Iterate (Establish_Link'Access);

         --  Register extent.

         Documents.Insert (Self.Locator.System_Id, Self.Extent);

         --  Load next document in queue.

         declare
            Position : Universal_String_Sets.Cursor := URI_Queue.First;
            URI      : League.Strings.Universal_String;
            Extent   : AMF.URI_Stores.URI_Store_Access;
            pragma Unreferenced (Extent);

         begin
            if Universal_String_Sets.Has_Element (Position) then
               URI := Universal_String_Sets.Element (Position);
               URI_Queue.Delete (Position);
               Extent := XMI.Reader (URI);
            end if;
         end;

         --  Resolve postponed cross links when all documents has been loaded.

         if URI_Queue.Is_Empty then
            Postponed_Cross_Links.Iterate (Establish_Link'Access);
         end if;

      else
         Put_Line (Standard_Error, Self.Diagnosis.To_Wide_Wide_String);
      end if;
   end End_Document;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out XMI_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean)
   is
      pragma Unreferenced (Namespace_URI);
      pragma Unreferenced (Local_Name);
      pragma Unreferenced (Qualified_Name);
      pragma Unreferenced (Success);

      Attribute_Type : AMF.CMOF.Types.CMOF_Type_Access;

   begin
      if Self.Skip_Element /= 0 then
         Self.Skip_Element := Self.Skip_Element - 1;

      elsif not Self.Stack.Is_Empty then
         if Self.Collect_Text then
            Self.Collect_Text := False;
            Attribute_Type := Self.Attribute.Get_Type;

            if Attribute_Type.all
                 in AMF.CMOF.Data_Types.CMOF_Data_Type'Class
            then
               if not Self.Attribute.Is_Multivalued then
                  Self.Current.Set
                   (Self.Attribute,
                    Self.Extent.Create_From_String
                     (AMF.CMOF.Data_Types.CMOF_Data_Type_Access
                       (Attribute_Type),
                      Self.Text));

               else
                  Put_Line
                   (Standard_Error,
                    "Skip - multivalued attribute of DataType");
               end if;

            else
               Put_Line (Standard_Error, "Skip - not DataType");
            end if;

         else
            Self.Current := Self.Stack.Last_Element;
            Self.Stack.Delete_Last;
         end if;
      end if;
   end End_Element;

   ------------
   -- Extent --
   ------------

   function Extent
    (URI : League.Strings.Universal_String)
       return AMF.URI_Stores.URI_Store_Access is
   begin
      if Documents.Contains (URI) then
         return Documents.Element (URI);

      else
         return null;
      end if;
   end Extent;

--   overriding procedure End_Prefix_Mapping
--    (Self    : in out XMI_Handler;
--     Prefix  : League.Strings.Universal_String;
--     Success : in out Boolean) is null;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : XMI_Handler) return League.Strings.Universal_String is
   begin
      return Self.Diagnosis;
   end Error_String;

   --------------------
   -- Establish_Link --
   --------------------

   procedure Establish_Link
    (Self          : in out XMI_Handler;
     Attribute     : not null AMF.CMOF.Properties.CMOF_Property_Access;
     One_Element   : not null AMF.Elements.Element_Access;
     Other_Element : not null AMF.Elements.Element_Access)
   is
      Association : constant AMF.CMOF.Associations.CMOF_Association_Access
        := Attribute.Get_Association;

   begin
      --  This subprograms take in sense constraint of MOF meta models to
      --  handle potentially duplicated links:
      --
      --  "[12] An Association has exactly 2 memberEnds, may never have a
      --  navigableOwnedEnd (they will always be owned by Classes) and may have
      --  at most one ownedEnd."

      if Association.Get_Owned_End.Length = 1 then
         --  One of the ends is owned by association, link must be created
         --  even when order of ends is reversed.

         if Association.Get_Member_End.Element (1) = Attribute then
            Self.Extent.Create_Link (Association, One_Element, Other_Element);

         else
            Self.Extent.Create_Link (Association, Other_Element, One_Element);
         end if;

      else
         --  None of ends are owned by association, link is created when
         --  specified attribute is a first end of the association to prevent
         --  duplicate links.

         if Association.Get_Member_End.Element (1) = Attribute then
            Self.Extent.Create_Link (Association, One_Element, Other_Element);
         end if;
      end if;
   end Establish_Link;

   -----------------
   -- Fatal_Error --
   -----------------

   overriding procedure Fatal_Error
    (Self       : in out XMI_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      if Self.Diagnosis.Is_Empty then
         Self.Diagnosis := "XML fatal error: " & Occurrence.Message;
         Success := False;
      end if;
   end Fatal_Error;

--   overriding procedure Ignorable_Whitespace
--    (Self    : in out XMI_Handler;
--     Text    : League.Strings.Universal_String;
--     Success : in out Boolean) is null;

--   overriding procedure Processing_Instruction
--    (Self    : in out XMI_Handler;
--     Target  : League.Strings.Universal_String;
--     Data    : League.Strings.Universal_String;
--     Success : in out Boolean) is null;

   -----------------------------
   -- Resolve_Owned_Attribute --
   -----------------------------

   function Resolve_Owned_Attribute
    (Class : AMF.CMOF.Classes.CMOF_Class_Access;
     Name  : League.Strings.Universal_String)
       return AMF.CMOF.Properties.CMOF_Property_Access
   is
      use type AMF.Optional_String;

      Attributes    : constant
        AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
          := Class.Get_Owned_Attribute;
      Super_Classes : constant
        AMF.CMOF.Classes.Collections.Set_Of_CMOF_Class
          := Class.Get_Super_Class;
      Aux           : AMF.CMOF.Properties.CMOF_Property_Access;

   begin
      --  Lookup in ownedAttribute set.

      for J in 1 .. Attributes.Length loop
         Aux := Attributes.Element (J);

         if Aux.Get_Name = Name then
            return Aux;
         end if;
      end loop;

      --  Lookup in superclasses.

      for J in 1 .. Super_Classes.Length loop
         Aux := Resolve_Owned_Attribute (Super_Classes.Element (J), Name);

         if Aux /= null then
            return Aux;
         end if;
      end loop;

      --  Lookup failed.

      return null;
   end Resolve_Owned_Attribute;

   -------------------------
   -- Resolve_Owned_Class --
   -------------------------

   function Resolve_Owned_Class
    (Root : not null AMF.CMOF.Packages.CMOF_Package_Access;
     Name : League.Strings.Universal_String)
       return AMF.CMOF.Classes.CMOF_Class_Access
   is
      use type AMF.Optional_String;

      Packaged_Elements : constant
        AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element
          := Root.Get_Packaged_Element;
      Element           :
        AMF.CMOF.Packageable_Elements.CMOF_Packageable_Element_Access;

   begin
      --  Looking in the set of packagedElement.
      --
      --  XXX Minor performance improvement can be achived by looking inside
      --  set of ownedType. Unfortunately, it is derived property and it is not
      --  implemented now.

      for J in 1 .. Packaged_Elements.Length loop
         Element := Packaged_Elements.Element (J);

         if Element.all in AMF.CMOF.Classes.CMOF_Class'Class
           and then Element.Get_Name = Name
         then
            return AMF.CMOF.Classes.CMOF_Class_Access (Element);
         end if;
      end loop;

      --  Lookup failed.

      return null;
   end Resolve_Owned_Class;

   ----------
   -- Root --
   ----------

   function Root (Self : XMI_Handler) return AMF.URI_Stores.URI_Store_Access is
   begin
      return Self.Extent;
   end Root;

   --------------------------
   -- Set_Document_Locator --
   --------------------------

   overriding procedure Set_Document_Locator
    (Self    : in out XMI_Handler;
     Locator : XML.SAX.Locators.SAX_Locator) is
   begin
      Self.Locator := Locator;
   end Set_Document_Locator;

--   overriding procedure Skipped_Entity
--    (Self    : in out XMI_Handler;
--     Name    : League.Strings.Universal_String;
--     Success : in out Boolean) is null;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out XMI_Handler;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      Self.Extent := AMF.Facility.Create_URI_Store;
   end Start_Document;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out XMI_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean)
   is
      pragma Unreferenced (Success);

      use type AMF.CMOF.Associations.CMOF_Association_Access;
      use type AMF.CMOF.Classes.CMOF_Class_Access;
      use type AMF.CMOF.Packages.CMOF_Package_Access;

      Association   : AMF.CMOF.Associations.CMOF_Association_Access;
      Name          : League.Strings.Universal_String;
      Meta          : AMF.CMOF.Classes.CMOF_Class_Access;
      Property      : AMF.CMOF.Properties.CMOF_Property_Access;
      Property_Type : AMF.CMOF.Types.CMOF_Type_Access;
      The_Package   : AMF.CMOF.Packages.CMOF_Package_Access;

   begin
      --  Skip nested elements for unknown element.

      if Self.Skip_Element /= 0 then
         Self.Skip_Element := Self.Skip_Element + 1;

      --  Namespace is missing, XML element represents value of property. This
      --  is most useful case, so it is checked first to achive some
      --  performance improvement.

      elsif Namespace_URI.Is_Empty then
         --  Property of the element, resolve it.

         Property :=
           Resolve_Owned_Attribute
            (Self.Current.Get_Meta_Class, Qualified_Name);

         if Property = null then
            Self.Diagnosis :=
              "Unknown property '"
                & Self.Current.Get_Meta_Class.Get_Name.Value
                & ":"
                & Qualified_Name
                & ''';
            Success := False;

            return;
         end if;

         Association := Property.Get_Association;

         if Association /= null then
            if Attributes.Index (Self.XMI_Namespace, Type_Name) /= 0 then
               --  Metaclass of the element is specified explicitly, resolve
               --  it.

               Name := Attributes.Value (Self.XMI_Namespace, Type_Name);
               Meta :=
                 Resolve_Owned_Class
                  (AMF.CMOF.Packages.CMOF_Package_Access
                    (Self.Prefix_Package_Map.Element
                      (Name.Slice (1, Name.Index (':') - 1))),
                   Name.Slice (Name.Index (':') + 1, Name.Length));

               if Meta = null then
                  raise Program_Error;
               end if;

            else
               --  Fallback to default metaclass - type of the property.

               Property_Type := Property.Get_Type;

               Meta := AMF.CMOF.Classes.CMOF_Class_Access (Property_Type);
            end if;

            Analyze_Object_Element (Self, Meta, Property, Attributes, Success);

         else
            Self.Attribute := Property;
            Self.Collect_Text := True;
            Self.Text.Clear;
         end if;

      --  Process element from XMI namespace before all others, because they
      --  have special meaning.

      elsif Namespace_URI = XMI_2_1_Namespace
        or Namespace_URI = XMI_2_4_Namespace
      then
         if Local_Name = XMI_Name then
            Self.XMI_Namespace := Namespace_URI;

         else
            Self.Skip_Element := 1;
         end if;

      --  Process element from other namespace, it is one of root elements of
      --  the loaded document.

      else
         --  Looking for package associated with namespace URI.

         The_Package :=
           AMF.CMOF.Packages.CMOF_Package_Access
            (Self.URI_Package_Map.Element (Namespace_URI));

         if The_Package = null then
            --  Null package means what corresponding metamodel was not found,
            --  report warning.

            Put_Line
             (Standard_Error,
              "Element of unknown namespace '"
                & Namespace_URI.To_Wide_Wide_String
                & "' is ignored");

            Self.Skip_Element := 1;

         else
            --  Resolve specified class name in the package.

            Meta := Resolve_Owned_Class (The_Package, Local_Name);

            if Meta = null then
               --  Null metaclass means that specified class is not resolved in
               --  the package, treat it as fatal error.

               Put_Line
                (Standard_Error,
                 "Class '"
                   & Local_Name.To_Wide_Wide_String
                   & "' is not defined in '"
                   & Namespace_URI.To_Wide_Wide_String
                   & ''');

               raise Program_Error;
            end if;

            Analyze_Object_Element (Self, Meta, null, Attributes, Success);
         end if;
      end if;
   end Start_Element;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding procedure Start_Prefix_Mapping
    (Self          : in out XMI_Handler;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean)
   is
      pragma Unreferenced (Success);

      use type AMF.Internals.Factories.Factory_Access;

      Factory     : AMF.Internals.Factories.Factory_Access;
      The_Package : AMF.Elements.Element_Access;

   begin
      if Namespace_URI = XMI_2_1_Namespace
        or Namespace_URI = XMI_2_4_Namespace
      then
         --  Ignore all XMI namespaces.

         null;

      else
         --  Resolve element's factory.

         Factory := AMF.Internals.Factories.Get_Factory (Namespace_URI);

         --  Resolve root package of metamodel when factory is available.

         if Factory /= null then
            The_Package := AMF.Elements.Element_Access (Factory.Get_Package);

         else
            Put_Line
             (Standard_Error,
              "No factory for '"
                & Namespace_URI.To_Wide_Wide_String
                & ''');
         end if;

         --  Associate metamodel's package with namespace URI and prefix. Both
         --  are mapped to null when factory is not found; but only prefix
         --  mapping is important because it allows to detect errors in XMI.

         Self.Prefix_Package_Map.Insert (Prefix, The_Package);
         Self.URI_Package_Map.Insert (Namespace_URI, The_Package);
      end if;
   end Start_Prefix_Mapping;

end AMF.Internals.XMI_Handlers;
