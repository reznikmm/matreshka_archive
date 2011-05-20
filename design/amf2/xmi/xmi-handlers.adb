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
with Ada.Characters.Conversions;
with Ada.Containers.Hashed_Maps;
with Ada.Wide_Wide_Text_IO;

with League.String_Vectors;
with XMI.Reader;

with AMF.Factories.Registry;
with AMF.Values;
with CMOF.Associations;
with CMOF.Classes;
with CMOF.Collections;
with CMOF.Extents;
with CMOF.Multiplicity_Elements;
with CMOF.Named_Elements;
with CMOF.Properties;
with CMOF.Typed_Elements;
with CMOF.XMI_Helper;

package body XMI.Handlers is

   use Ada.Wide_Wide_Text_IO;
   use CMOF;
   use CMOF.Associations;
   use CMOF.Collections;
   use CMOF.Extents;
   use CMOF.Multiplicity_Elements;
   use CMOF.Named_Elements;
   use CMOF.Properties;
   use CMOF.Typed_Elements;
   use CMOF.XMI_Helper;
   use type League.Strings.Universal_String;

   XMI_Namespace  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://schema.omg.org/spec/XMI/2.1");
   CMOF_Namespace : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://schema.omg.org/spec/MOF/2.0/cmof.xml");
   Tag_Class_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Tag");
   Id_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("id");
   Type_Name      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("type");
   Href_Name      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("href");

   function Resolve_Owned_Attribute
    (Class : CMOF.CMOF_Class;
     Name  : League.Strings.Universal_String) return CMOF.CMOF_Property;
   --  Resolves class's owned attribute by its name.

   function Index
    (String    : League.Strings.Universal_String;
     Character : Wide_Wide_Character) return Natural;

   procedure Analyze_Object_Element
    (Self       : in out XMI_Handler;
     Meta_Class : CMOF.CMOF_Class;
     Attribute  : CMOF.CMOF_Property;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : out Boolean);
   --  Analyze current XML element which represents AMF.Element: resolves
   --  XLink reference or creates new element. For created elements analyze
   --  XML attributes and set element's attributes or creates links. Creates
   --  ownership link when current element is nested into another element.

   procedure Establish_Link
    (Self          : in out XMI_Handler;
     Attribute     : CMOF.CMOF_Property;
     One_Element   : not null AMF.Elements.Element_Access;
     Other_Element : not null AMF.Elements.Element_Access);
   --  Creates link between specified elements, but prevents to create
   --  duplicate links. Duplicate links are created for association which
   --  is not composition association, because opposite element referered
   --  on both ends.

   package Universal_String_Extent_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           CMOF_Extent,
           League.Strings.Hash,
           League.Strings."=");

   Documents : Universal_String_Extent_Maps.Map;
   --  Map file name of document to extent.

   ----------------------------
   -- Analyze_Object_Element --
   ----------------------------

   procedure Analyze_Object_Element
    (Self       : in out XMI_Handler;
     Meta_Class : CMOF.CMOF_Class;
     Attribute  : CMOF.CMOF_Property;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : out Boolean)
   is
      use type AMF.Elements.Element_Access;

      procedure Set_Attribute
       (Property : CMOF_Property; Value : League.Strings.Universal_String);

      -------------------
      -- Set_Attribute --
      -------------------

      procedure Set_Attribute
       (Property : CMOF_Property; Value : League.Strings.Universal_String)
      is
         Association : CMOF_Association;

      begin
         if Property = Null_CMOF_Element then
            raise Program_Error with "Unknown attribute";
         end if;

         if Get_Type (Property) = Null_CMOF_Element then
            raise Program_Error with "Type not specified";
         end if;

         if CMOF.XMI_Helper.Is_Data_Type (Get_Type (Property)) then
            Self.Current.Set
             (Property,
              Self.Factory.Create_From_String (Get_Type (Property), Value));

         else
            Association := Get_Association (Property);

            if Is_Multivalued (Property) then
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

      Id         : constant League.Strings.Universal_String
        := Attributes.Value (XMI_Namespace, Id_Name);
      Href_Index : constant Natural := Attributes.Index (Href_Name);

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
            use type AMF.Elements.Element_Access;

            URI       : constant League.Strings.Universal_String
              := Attributes.Value (Href_Index);
            Separator : constant Positive := Index (URI, '#');
            File_Name : constant League.Strings.Universal_String
              := URI.Slice (1, Separator - 1);
            Name      : constant League.Strings.Universal_String
              := URI.Slice (Separator + 1, URI.Length);

         begin
            if not Documents.Contains (File_Name) then
               Documents.Insert
                (File_Name,
                 XMI.Reader
                  (Ada.Characters.Conversions.To_String
                    (File_Name.To_Wide_Wide_String)));
            end if;

            Self.Current := Object (Documents.Element (File_Name), Name);

            if Self.Current = null then
               raise Program_Error;
            end if;
         end;

      else
         --  Create new element.

         Self.Current := Self.Factory.Create (Self.Extent, Meta_Class);
         Set_Id (Self.Current, Id);
         Self.Mapping.Insert (Id, Self.Current);
      end if;

      --  Establish ownership link.

      if Attribute /= Null_CMOF_Element then
         Establish_Link
          (Self, Attribute, Self.Stack.Last_Element, Self.Current);
      end if;

      --  Process attributes.

      for J in 1 .. Attributes.Length loop
         if Attributes.Namespace_URI (J).Is_Empty then
            if Attributes.Qualified_Name (J) /= Href_Name then
               --  XLink 'href' handled outside of this subprogram.

               declare
                  Property : CMOF_Property
                    := Resolve_Owned_Attribute
                        (Meta_Class, Attributes.Qualified_Name (J));

               begin
                  if Property = Null_CMOF_Element then
                     Self.Diagnosis :=
                       "Unknown property '"
                         & Get_Name (Meta_Class)
                         & ":"
                         & Attributes.Qualified_Name (J)
                         & ''';
                     Success := False;

                     return;
                  end if;

                  Set_Attribute (Property, Attributes.Value (J));
               end;
            end if;

         elsif Attributes.Namespace_URI (J) = XMI_Namespace then
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
     Success : in out Boolean) is
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
         Establish_Link
          (Self, L.Attribute, L.Element, Self.Mapping.Element (L.Id));
      end Establish_Link;

   begin
      if Self.Diagnosis.Is_Empty then
         Self.Postponed.Iterate (Establish_Link'Access);

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
     Success        : in out Boolean) is
   begin
      if Self.Skip_End_Element /= 0 then
         Self.Skip_End_Element := Self.Skip_End_Element - 1;

      elsif not Self.Stack.Is_Empty then
         if Self.Collect_Text then
            Self.Collect_Text := False;

            if CMOF.XMI_Helper.Is_Data_Type (Get_Type (Self.Attribute)) then
               if not Is_Multivalued (Self.Attribute) then
                  Self.Current.Set
                   (Self.Attribute,
                    Self.Factory.Create_From_String
                     (Get_Type (Self.Attribute), Self.Text));

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
     Attribute     : CMOF.CMOF_Property;
     One_Element   : not null AMF.Elements.Element_Access;
     Other_Element : not null AMF.Elements.Element_Access)
   is
      Association : constant CMOF_Association := Get_Association (Attribute);

   begin
      --  This subprograms take in sense constraint of MOF meta models to
      --  handle potentially duplicated links:
      --
      --  "[12] An Association has exactly 2 memberEnds, may never have a
      --  navigableOwnedEnd (they will always be owned by Classes) and may have
      --  at most one ownedEnd."

      if Length (Get_Owned_End (Association)) = 1 then
         --  One of the ends is owned by association, link must be created
         --  even when order of ends is reversed.

         if Element (Get_Member_End (Association), 1) = Attribute then
            Self.Factory.Create_Link (Association, One_Element, Other_Element);

         else
            Self.Factory.Create_Link (Association, Other_Element, One_Element);
         end if;

      else
         --  None of ends are owned by association, link is created when
         --  specified attribute is a first end of the association to prevent
         --  duplicate links.

         if Element (Get_Member_End (Association), 1) = Attribute then
            Self.Factory.Create_Link (Association, One_Element, Other_Element);
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
      end if;
   end Fatal_Error;

--   overriding procedure Ignorable_Whitespace
--    (Self    : in out XMI_Handler;
--     Text    : League.Strings.Universal_String;
--     Success : in out Boolean) is null;

   -----------
   -- Index --
   -----------

   function Index
    (String    : League.Strings.Universal_String;
     Character : Wide_Wide_Character) return Natural
   is
      use type League.Strings.Universal_Character;

   begin
      for J in 1 .. String.Length loop
         if String.Element (J) = Character then
            return J;
         end if;
      end loop;

      return 0;
   end Index;

--   overriding procedure Processing_Instruction
--    (Self    : in out XMI_Handler;
--     Target  : League.Strings.Universal_String;
--     Data    : League.Strings.Universal_String;
--     Success : in out Boolean) is null;

   -----------------------------
   -- Resolve_Owned_Attribute --
   -----------------------------

   function Resolve_Owned_Attribute
    (Class : CMOF.CMOF_Class;
     Name  : League.Strings.Universal_String) return CMOF.CMOF_Property
   is
      use CMOF.Classes;
      use CMOF.Named_Elements;

      Attributes    : constant Ordered_Set_Of_CMOF_Property
        := Get_Owned_Attribute (Class);
      Super_Classes : constant Set_Of_CMOF_Class := Get_Super_Class (Class);
      Aux           : CMOF_Property;

   begin
      --  Lookup in ownedAttribute set.

      for J in 1 .. Length (Attributes) loop
         Aux := Element (Attributes, J);

         if Get_Name (Aux) = Name then
            return Aux;
         end if;
      end loop;

      --  Lookup in superclasses.

      for J in 1 .. Length (Super_Classes) loop
         Aux := Resolve_Owned_Attribute (Element (Super_Classes, J), Name);

         if Aux /= Null_CMOF_Element then
            return Aux;
         end if;
      end loop;

      --  Lookup failed.

      return Null_CMOF_Element;
   end Resolve_Owned_Attribute;

   ----------
   -- Root --
   ----------

   function Root (Self : XMI_Handler) return CMOF.CMOF_Extent is
   begin
      return Self.Extent;
   end Root;

--   overriding procedure Set_Document_Locator
--    (Self    : in out XMI_Handler;
--     Locator : XML.SAX.Locators.SAX_Locator) is null;
--
--   overriding procedure Skipped_Entity
--    (Self    : in out XMI_Handler;
--     Name    : League.Strings.Universal_String;
--     Success : in out Boolean) is null;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out XMI_Handler;
     Success : in out Boolean) is
   begin
      Self.Extent := CMOF.Extents.Create_Extent;
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
      use CMOF.Classes;

      Name     : League.Strings.Universal_String;
      Meta     : CMOF.CMOF_Element;
      Property : CMOF_Property;

   begin
      if Namespace_URI.Is_Empty then
         --  Property of the element, resolve it.

         Property :=
           Resolve_Owned_Attribute
            (Self.Current.Get_Meta_Class, Qualified_Name);

         if Property = Null_CMOF_Element then
            Self.Diagnosis :=
              "Unknown property '"
                & Get_Name (Self.Current.Get_Meta_Class)
                & ":"
                & Qualified_Name
                & ''';
            Success := False;

            return;
         end if;

         if Get_Association (Property) /= Null_CMOF_Element then
            if Attributes.Index (XMI_Namespace, Type_Name) /= 0 then
               --  Metaclass of the element is specified explicitly, resolve
               --  it.

               Name := Attributes.Value (XMI_Namespace, Type_Name);
               Meta :=
                 CMOF.XMI_Helper.Resolve
                  (Name.Slice (Index (Name, ':') + 1, Name.Length));

               if Meta = Null_CMOF_Element then
                  raise Program_Error;
               end if;

            else
               --  Fallback to default metaclass - type of the property.

               Meta := Get_Type (Property);
            end if;

            Analyze_Object_Element
             (Self, Meta, Property, Attributes, Success);

         else
            Self.Attribute := Property;
            Self.Collect_Text := True;
            Self.Text.Clear;
         end if;

      elsif Namespace_URI = CMOF_Namespace then
         --  XXX Only root element is processed now; tags are ignored,
         --  not more than one root element is tested now. All these
         --  limitations must be removed.

         if Local_Name = Tag_Class_Name then
--            Put_Line (Namespace_URI.To_Wide_Wide_String);
--            Put_Line (Local_Name.To_Wide_Wide_String);

            return;
         end if;

         Meta := CMOF.XMI_Helper.Resolve (Local_Name);

         Analyze_Object_Element
          (Self, Meta, Null_CMOF_Element, Attributes, Success);
      end if;
   end Start_Element;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding procedure Start_Prefix_Mapping
    (Self          : in out XMI_Handler;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean) is
   begin
      if Namespace_URI /= XMI_Namespace then
         Self.Factory := AMF.Factories.Registry.Resolve (Namespace_URI);
      end if;
   end Start_Prefix_Mapping;

end XMI.Handlers;
