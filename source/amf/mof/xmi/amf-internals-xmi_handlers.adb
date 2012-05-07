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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Wide_Wide_Text_IO;

with League.IRIs;
with League.String_Vectors;
with XML.SAX.Parse_Exceptions.Internals;

with AMF.CMOF.Associations;
with AMF.CMOF.Classes.Collections;
with AMF.CMOF.Data_Types;
with AMF.CMOF.Packageable_Elements.Collections;
with AMF.CMOF.Packages.Collections;
with AMF.CMOF.Properties.Collections;
with AMF.CMOF.Types;
with AMF.Facility;
with AMF.Holders.Reflective_Collections;
with AMF.Internals.XMI_URI_Rewriter;

package body AMF.Internals.XMI_Handlers is

   use type AMF.CMOF.Properties.CMOF_Property_Access;
   use type League.Strings.Universal_String;

   XMI_2_1_Namespace   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://schema.omg.org/spec/XMI/2.1");
   XMI_2_4_Namespace   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.omg.org/spec/XMI/20100901");
   XMI_2_4_1_Namespace : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.omg.org/spec/XMI/20110701");
   XMI_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("XMI");
   Id_Name             : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("id");
   Idref_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("idref");
   Type_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("type");
   Href_Name           : constant League.Strings.Universal_String
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
                        AMF.Internals.XMI_Readers.Establish_Link
                         (Self.Extent,
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
                  AMF.Internals.XMI_Readers.Establish_Link
                   (Self.Extent,
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
      Has_Id      : constant Boolean
        := Attributes.Is_Specified (Self.XMI_Namespace, Id_Name);
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
            URI          : constant League.Strings.Universal_String
              := Attributes.Value (Href_Index);
            Separator    : constant Positive := URI.Index ('#');
            File_Name    : constant League.Strings.Universal_String
              := URI.Slice (1, Separator - 1);
            Name         : constant League.Strings.Universal_String
              := URI.Slice (Separator + 1, URI.Length);
            Resolved_URI : constant League.Strings.Universal_String
              := Self.Locator.Base_URI.Resolve
                  (League.IRIs.From_Universal_String
                    (File_Name)).To_Universal_String;

         begin
            --  Check whether referenced document is already loaded.

            if AMF.Internals.XMI_Readers.Documents.Contains (File_Name) then
               --  When document is loaded resolve referenced element.

               Self.Current :=
                 AMF.Internals.XMI_Readers.Documents.Element
                  (File_Name).Element (Name);

               if Self.Current = null then
                  raise Program_Error;
               end if;

            else
               --  When document is not loaded queue it and register postponed
               --  cross link.

               Self.Context.URI_Queue.Include (Resolved_URI);

               Self.Context.Cross_Links.Append
                ((Element   => Self.Stack.Last_Element,
                  Attribute => Attribute,
                  Extent    => Self.Extent,
                  Id        => Resolved_URI & '#' & Name,
                  Public_Id => Self.Locator.Public_Id,
                  System_Id => Self.Locator.System_Id,
                  Line      => Self.Locator.Line,
                  Column    => Self.Locator.Column));

               Self.Current := null;

               return;
            end if;
         end;

      elsif Idref_Index /= 0 then
         --  Process XMI 'idref' attribute if present.

         Set_Attribute (Attribute, Attributes.Value (Idref_Index));

         Self.Current := null;

         return;

      elsif Has_Id then
         --  Create new element, assign identifier and register it.

         Self.Current := Self.Extent.Create (Meta_Class, Id);
         Self.Mapping.Insert (Id, Self.Current);

      else
         --  Create new element without identifier.

         Self.Current := Self.Extent.Create (Meta_Class);
      end if;

      --  Establish ownership link.

      if Attribute /= null then
         AMF.Internals.XMI_Readers.Establish_Link
          (Self.Extent, Attribute, Self.Stack.Last_Element, Self.Current);
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
--                     Success := False;

--                     return;

                  else
                     Set_Attribute (Property, Attributes.Value (J));
                  end if;

               end;
            end if;

         elsif Attributes.Namespace_URI (J) = Self.XMI_Namespace then
            --  XMI namespace is handled outside of this subprogram.

            null;

         else
            --  XXX Is this format violation?

            Ada.Wide_Wide_Text_IO.Put_Line
             (Ada.Wide_Wide_Text_IO.Standard_Error,
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

      procedure Establish_Link (Position : Postponed_Link_Vectors.Cursor);

      --------------------
      -- Establish_Link --
      --------------------

      procedure Establish_Link (Position : Postponed_Link_Vectors.Cursor) is
         L : constant Postponed_Link
           := Postponed_Link_Vectors.Element (Position);

      begin
         if not Self.Mapping.Contains (L.Id) then
            Self.Context.Error_Handler.Error
             (XML.SAX.Parse_Exceptions.Internals.Create
               (Public_Id => Self.Locator.Public_Id,
                System_Id => Self.Locator.System_Id,
                Line      => Self.Locator.Line,
                Column    => Self.Locator.Column,
                Message   => "Unknown element '" & L.Id & "'"),
              Success);

            if not Success then
               raise Program_Error;
            end if;

         else
            AMF.Internals.XMI_Readers.Establish_Link
             (Self.Extent, L.Attribute, L.Element, Self.Mapping.Element (L.Id));
         end if;
      end Establish_Link;

   begin
      --  Resolve postponed local links.

      Self.Postponed.Iterate (Establish_Link'Access);

      --  Register extent.

      AMF.Internals.XMI_Readers.Documents.Insert
       (Self.Locator.System_Id, Self.Extent);
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
                  AMF.Holders.Reflective_Collections.Element
                   (Self.Current.Get (Self.Attribute)).Add
                     (Self.Extent.Create_From_String
                       (AMF.CMOF.Data_Types.CMOF_Data_Type_Access
                         (Attribute_Type),
                        Self.Text));
               end if;

            else
               Self.Context.Error_Handler.Error
                (XML.SAX.Parse_Exceptions.Internals.Create
                  (Public_Id => Self.Locator.Public_Id,
                   System_Id => Self.Locator.System_Id,
                   Line      => Self.Locator.Line,
                   Column    => Self.Locator.Column,
                   Message   =>
                     "Character data for '"
                       & Self.Attribute.Get_Name.Value
                       & "' is ignored"),
                 Success);

               if not Success then
                  raise Program_Error;
               end if;
            end if;

         else
            Self.Current := Self.Stack.Last_Element;
            Self.Stack.Delete_Last;
         end if;
      end if;
   end End_Element;

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

   ------------
   -- Extent --
   ------------

   function Extent
    (URI : League.Strings.Universal_String)
       return AMF.URI_Stores.URI_Store_Access is
   begin
      if AMF.Internals.XMI_Readers.Documents.Contains (URI) then
         return AMF.Internals.XMI_Readers.Documents.Element (URI);

      else
         return null;
      end if;
   end Extent;

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

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out XMI_Handler;
     Success : in out Boolean)
   is
      pragma Unreferenced (Success);

   begin
      Self.Extent := AMF.Facility.Create_URI_Store (Self.Locator.System_Id);
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
      use type AMF.CMOF.Associations.CMOF_Association_Access;
      use type AMF.CMOF.Classes.CMOF_Class_Access;
      use type AMF.CMOF.Packages.CMOF_Package_Access;

      Association   : AMF.CMOF.Associations.CMOF_Association_Access;
      Name          : League.Strings.Universal_String;
      Meta          : AMF.CMOF.Classes.CMOF_Class_Access;
      Property      : AMF.CMOF.Properties.CMOF_Property_Access;
      Property_Type : AMF.CMOF.Types.CMOF_Type_Access;
      Aux           : League.Strings.Universal_String;
      --  XXX GCC 4.6: This variable is used to workaround bug.

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
               Aux := Name.Slice (Name.Index (':') + 1, Name.Length);
               Meta :=
                 Resolve_Owned_Class
                  (Self.Prefix_Package_Map.Element
                    (Name.Slice (1, Name.Index (':') - 1)),
                   Aux);

               if Meta = null then
                  --  Metaclass is not defined in metamodel, report warning and
                  --  skip all nested elements.

                  Self.Context.Error_Handler.Error
                   (XML.SAX.Parse_Exceptions.Internals.Create
                     (Public_Id => Self.Locator.Public_Id,
                      System_Id => Self.Locator.System_Id,
                      Line      => Self.Locator.Line,
                      Column    => Self.Locator.Column,
                      Message   =>
                        "Class '"
                          & Aux
                          & "' is not defined in '"
                          & Self.Prefix_Package_Map.Element
                             (Name.Slice
                               (1, Name.Index (':') - 1)).Get_URI.Value
                          & "'"),
                    Success);

                  if not Success then
                     raise Program_Error;
                  end if;

                  Self.Skip_Element := 1;

                  return;
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
        or Namespace_URI = XMI_2_4_1_Namespace
      then
         if Local_Name = XMI_Name then
            Self.XMI_Namespace := Namespace_URI;

         else
            Self.Skip_Element := 1;
         end if;

      --  Process element from other namespace, it is one of root elements of
      --  the loaded document.

      else
         declare
            Position : constant String_Package_Maps.Cursor
              := Self.URI_Package_Map.Find (Namespace_URI);

         begin
            --  Looking for package associated with namespace URI.

            if not String_Package_Maps.Has_Element (Position) then
               --  Corresponding metamodel was not found, report warning.

               Self.Skip_Element := 1;

            else
               --  Resolve specified class name in the package.

               Meta :=
                 Resolve_Owned_Class
                  (String_Package_Maps.Element (Position), Local_Name);

               if Meta = null then
                  --  Null metaclass means that specified class is not resolved
                  --  in the package, treat it as fatal error.

                  Self.Context.Error_Handler.Error
                   (XML.SAX.Parse_Exceptions.Internals.Create
                     (Public_Id => Self.Locator.Public_Id,
                      System_Id => Self.Locator.System_Id,
                      Line      => Self.Locator.Line,
                      Column    => Self.Locator.Column,
                      Message   =>
                        "Class '"
                          & Local_Name
                          & "' is not defined in '"
                          & Namespace_URI
                          & "'"),
                    Success);

                  if not Success then
                     raise Program_Error;
                  end if;

                  Self.Skip_Element := 1;

               else
                  Analyze_Object_Element
                   (Self, Meta, null, Attributes, Success);
               end if;
            end if;
         end;
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
      use type AMF.CMOF.Packages.CMOF_Package_Access;

      The_Package   : AMF.CMOF.Packages.CMOF_Package_Access;
      Metamodel_URI : League.Strings.Universal_String;
      Packages      : AMF.CMOF.Packages.Collections.Set_Of_CMOF_Package;

   begin
      if Namespace_URI = XMI_2_1_Namespace
        or Namespace_URI = XMI_2_4_Namespace
        or Namespace_URI = XMI_2_4_1_Namespace
      then
         --  Ignore all XMI namespaces.

         null;

      else
         --  Rewrite metamodel's URI to supported one.

         Metamodel_URI :=
           AMF.Internals.XMI_URI_Rewriter.Rewrite_Namespace_URI
            (Namespace_URI);

         --  Resolve metamodel's package.

         Packages := Self.Extent.Get_Package;

         for J in 1 .. Packages.Length loop
            if Packages.Element (J).Get_URI = Metamodel_URI then
               The_Package := Packages.Element (J);

               exit;
            end if;
         end loop;

         if The_Package /= null then
            --  Associate metamodel's package with namespace URI and prefix.
            --  Both are mapped to null when factory is not found; but only
            --  prefix mapping is important because it allows to detect errors
            --  in XMI.

            Self.Prefix_Package_Map.Insert (Prefix, The_Package);
            Self.URI_Package_Map.Insert (Namespace_URI, The_Package);

         else
            Self.Context.Error_Handler.Error
             (XML.SAX.Parse_Exceptions.Internals.Create
               (Public_Id => Self.Locator.Public_Id,
                System_Id => Self.Locator.System_Id,
                Line      => Self.Locator.Line,
                Column    => Self.Locator.Column,
                Message   =>
                  "Unknown namespace '" & Namespace_URI & "'"),
              Success);

            if not Success then
               raise Program_Error;
            end if;
         end if;
      end if;
   end Start_Prefix_Mapping;

end AMF.Internals.XMI_Handlers;
