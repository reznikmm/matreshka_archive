------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
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
with Ada.Wide_Wide_Text_IO;

with League.IRIs;
with Matreshka.XML_Catalogs.Normalization;

package body Matreshka.XML_Catalogs.Handlers is

   use Matreshka.XML_Catalogs.Entry_Files;
   use type League.Strings.Universal_String;

   XML_Catalogs_Namespace     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("urn:oasis:names:tc:entity:xmlns:xml:catalog");
   XML_Catalogs_1_0_Public_Id : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("-//OASIS//DTD Entity Resolution XML Catalog V1.0//EN");
   XML_Catalogs_1_1_Public_Id : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("-//OASIS//DTD XML Catalogs V1.1//EN");

   --  Tags names

   Catalog_Tag_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("catalog");
   Delegate_Public_Tag_Name   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("delegatePublic");
   Delegate_System_Tag_Name   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("delegateSystem");
   Delegate_URI_Tag_Name      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("delegateURI");
   Group_Tag_Name             : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("group");
   Next_Catalog_Tag_Name      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("nextCatalog");
   Public_Tag_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("public");
   Rewrite_System_Tag_Name    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("rewriteSystem");
   Rewrite_URI_Tag_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("rewriteURI");
   System_Tag_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("system");
   System_Suffix_Tag_Name     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("systemSuffix");
   URI_Tag_Name               : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("uri");
   URI_Suffix_Tag_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("uriSuffix");

   --  Attributes names

   Catalog_Attribute_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("catalog");
   Name_Attribute_Name             : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("name");
   Prefer_Attribute_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("prefer");
   Public_Id_Attribute_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("publicId");
   Public_Id_Start_String_Attribute_Name :
     constant League.Strings.Universal_String
       := League.Strings.To_Universal_String ("publicIdStartString");
   Rewrite_Prefix_Attribute_Name   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("rewritePrefix");
   System_Id_Attribute_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("systemId");
   System_Id_Start_String_Attribute_Name :
     constant League.Strings.Universal_String
       := League.Strings.To_Universal_String ("systemIdStartString");
   System_Id_Suffix_Attribute_Name : constant League.Strings.Universal_String
       := League.Strings.To_Universal_String ("systemIdSuffix");
   URI_Attribute_Name              : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("uri");
   URI_Start_String_Attribute_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("uriStartString");
   URI_Suffix_Attribute_Name       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("uriSuffix");

   --  Attribute values images

   System_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("system");
   Public_Image : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("public");

   procedure Error
    (Self    : in out XML_Catalog_Handler'Class;
     Message : League.Strings.Universal_String;
     Success : out Boolean);
   --  Sets Success to False and save Message as last error message.

   procedure Error
    (Self    : in out XML_Catalog_Handler'Class;
     Message : Wide_Wide_String;
     Success : out Boolean);
   --  Sets Success to False and save Message as last error message.

   procedure Check_No_Fragment_Identifier
    (Self    : in out XML_Catalog_Handler'Class;
     URI     : League.Strings.Universal_String;
     Success : in out Boolean);
   --  Check that URI is not include fragment identifier.

   procedure Process_Catalog_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "catalog" element.

   procedure Process_Group_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "group" element.

   procedure Process_Group_End_Element
    (Self    : in out XML_Catalog_Handler'Class;
     Success : in out Boolean);
   --  Processes end of "group" element.

   procedure Process_Public_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "public" element.

   procedure Process_System_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "system" element.

   procedure Process_Rewrite_System_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "rewriteSystem" element.

   procedure Process_System_Suffix_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "systemSuffix" element.

   procedure Process_Delegate_Public_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "delegatePublic" element.

   procedure Process_Delegate_System_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "delegateSystem" element.

   procedure Process_URI_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "uri" element.

   procedure Process_Rewrite_URI_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "rewriteURI" element.

   procedure Process_URI_Suffix_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "uriSuffix" element.

   procedure Process_Delegate_URI_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "delegateURI" element.

   procedure Process_Next_Catalog_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);
   --  Processes start of "nextCatalog" element.

   ----------------------------------
   -- Check_No_Fragment_Identifier --
   ----------------------------------

   procedure Check_No_Fragment_Identifier
    (Self    : in out XML_Catalog_Handler'Class;
     URI     : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if URI.Index ('#') /= 0 then
         Error
          (Self,
           "URI reference should not include a fragment identifier",
           Success);
      end if;
   end Check_No_Fragment_Identifier;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out XML_Catalog_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean) is
   begin
      if Namespace_URI = XML_Catalogs_Namespace
        and Local_Name = Group_Tag_Name
      then
         Process_Group_End_Element (Self, Success);
      end if;
   end End_Element;

   -----------
   -- Error --
   -----------

   procedure Error
    (Self    : in out XML_Catalog_Handler'Class;
     Message : Wide_Wide_String;
     Success : out Boolean) is
   begin
      Self.Diagnosis := League.Strings.To_Universal_String (Message);
      Success := False;
   end Error;

   -----------
   -- Error --
   -----------

   procedure Error
    (Self    : in out XML_Catalog_Handler'Class;
     Message : League.Strings.Universal_String;
     Success : out Boolean) is
   begin
      Self.Diagnosis := Message;
      Success := False;
   end Error;

   -----------
   -- Error --
   -----------

   overriding procedure Error
    (Self       : in out XML_Catalog_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       (Ada.Wide_Wide_Text_IO.Standard_Error,
        "(error) " & Occurrence.Message.To_Wide_Wide_String);
   end Error;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : XML_Catalog_Handler) return League.Strings.Universal_String is
   begin
      return Self.Diagnosis;
   end Error_String;

   -----------------
   -- Fatal_Error --
   -----------------

   overriding procedure Fatal_Error
    (Self       : in out XML_Catalog_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       (Ada.Wide_Wide_Text_IO.Standard_Error,
        "(fatal) " & Occurrence.Message.To_Wide_Wide_String);
   end Fatal_Error;

   ----------------------------
   -- Get_Catalog_Entry_File --
   ----------------------------

   function Get_Catalog_Entry_File
    (Self : XML_Catalog_Handler)
       return Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_Access is
   begin
      return Self.Entry_File;
   end Get_Catalog_Entry_File;

   -----------------------------------
   -- Process_Catalog_Start_Element --
   -----------------------------------

   procedure Process_Catalog_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.1. The catalog Entry
      --
      --  "Each XML Catalog entry file consists of a single catalog element.
      --  This element may set the global prefer value and global base URI. It
      --  is otherwise just a container for the other elements.
      --
      --  <catalog
      --    id = id
      --    prefer = "system" | "public"
      --    xml:base = uri-reference >
      --      <!-- Content: (group | public | system | rewriteSystem
      --      | systemSuffix | delegatePublic | delegateSystem | uri
      --      | rewriteURI | uriSuffix | delegateURI | nextCatalog)+ -->
      --  </catalog>"

      Prefer_Index : constant Natural
        := Attributes.Index (Prefer_Attribute_Name);

   begin
      --  Analyze 'prefer' attribute when present.

      if Prefer_Index /= 0 then
         if Attributes.Value (Prefer_Index) = Public_Image then
            Self.Current_Prefer_Mode := Public;

         elsif Attributes.Value (Prefer_Index) = System_Image then
            Self.Current_Prefer_Mode := System;

         else
            Self.Error ("Invalid value of 'prefer' attribute", Success);
         end if;
      end if;

      --  Create new catalog entry file object.

      Self.Entry_File :=
        new Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File;
      Self.Entry_File.Default_Prefer_Mode := Self.Default_Prefer_Mode;
   end Process_Catalog_Start_Element;

   -------------------------------------------
   -- Process_Delegate_Public_Start_Element --
   -------------------------------------------

   procedure Process_Delegate_Public_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.7. The delegatePublic Element
      --
      --  "The delegatePublic element associates an alternate catalog with a
      --  partial public identifier.
      --
      --  <delegatePublic
      --    id = id
      --    publicIdStartString = public-identifier-prefix
      --    catalog = uri-reference
      --    xml:base = uri-reference />
      --
      --  A delegatePublic entry matches a public identifier if the normalized
      --  value (Section 6.2, “Public Identifier Normalization”) of the public
      --  identifier begins precisely with the normalized value of the
      --  publicIdStartString attribute of the entry."
      --
      --  "If the value of the catalog attribute is relative, it must be made
      --  absolute with respect to the base URI currently in effect."

      Public_Id : constant League.Strings.Universal_String
        := Matreshka.XML_Catalogs.Normalization.Normalize_Public_Identifier
            (Attributes.Value (Public_Id_Start_String_Attribute_Name));
      Catalog   : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value (Catalog_Attribute_Name))).To_Universal_String;

   begin
      --  Check that 'publicIdStartString' is not empty.

      if Public_Id.Is_Empty then
         Error (Self, "publicIdStartString is empty", Success);

         return;
      end if;

      Self.Entry_File.Append
       (new Delegate_Public_Entry'
             (Public_Id, Catalog, Self.Current_Prefer_Mode));
   end Process_Delegate_Public_Start_Element;

   -------------------------------------------
   -- Process_Delegate_System_Start_Element --
   -------------------------------------------

   procedure Process_Delegate_System_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.8. The delegateSystem Element
      --
      --  "The delegateSystem element associates an alternate catalog with a
      --  partial system identifier.
      --
      --  <delegateSystem
      --    id = id
      --    systemIdStartString = string
      --    catalog = uri-reference
      --    xml:base = uri-reference />
      --
      --  A delegateSystem entry matches a system identifier if the normalized
      --  value (Section 6.3, “System Identifier and URI Normalization”) of the
      --  system identifier begins precisely with the normalized value of the
      --  systemIdStartString attribute of the entry."
      --
      --  "If the value of the catalog attribute is relative, it must be made
      --  absolute with respect to the base URI currently in effect."

      System_Id : constant League.Strings.Universal_String
        := Matreshka.XML_Catalogs.Normalization.Normalize_System_Identifier
            (Attributes.Value (System_Id_Start_String_Attribute_Name));
      Catalog   : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value (Catalog_Attribute_Name))).To_Universal_String;

   begin
      --  Check that 'systemIdStartString' is not empty.

      if System_Id.Is_Empty then
         Error (Self, "systemIdStartString is empty", Success);

         return;
      end if;

      Self.Entry_File.Append
       (new Delegate_System_Entry'(System_Id, Catalog));
   end Process_Delegate_System_Start_Element;

   ----------------------------------------
   -- Process_Delegate_URI_Start_Element --
   ----------------------------------------

   procedure Process_Delegate_URI_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.12. The delegateURI Element
      --
      --  "The delegateURI element associates an alternate catalog with a
      --  partial URI reference.
      --
      --  <delegateURI
      --    id = id
      --    uriStartString = string
      --    catalog = uri-reference
      --    xml:base = uri-reference />
      --
      --  A delegateURI entry matches a URI reference if the normalized value
      --  (Section 6.3, “System Identifier and URI Normalization”) of the URI
      --  reference begins precisely with the normalized value of the
      --  uriStartString attribute of the entry.
      --
      --  If the value of the catalog attribute is relative, it must be made
      --  absolute with respect to the base URI currently in effect."

      URI     : constant League.Strings.Universal_String
        := Matreshka.XML_Catalogs.Normalization.Normalize_URI
            (Attributes.Value (URI_Start_String_Attribute_Name));
      Catalog : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value (Catalog_Attribute_Name))).To_Universal_String;

   begin
      --  Check that 'uriStartString' is not empty.

      if URI.Is_Empty then
         Error (Self, "uriStartString is empty", Success);

         return;
      end if;

      Self.Entry_File.Append (new Delegate_URI_Entry'(URI, Catalog));
   end Process_Delegate_URI_Start_Element;

   -------------------------------
   -- Process_Group_End_Element --
   -------------------------------

   procedure Process_Group_End_Element
    (Self    : in out XML_Catalog_Handler'Class;
     Success : in out Boolean) is
   begin
      --  Restore preference mode on leave of "group" element.

      Self.Current_Prefer_Mode := Self.Previous_Prefer_Mode;
   end Process_Group_End_Element;

   ---------------------------------
   -- Process_Group_Start_Element --
   ---------------------------------

   procedure Process_Group_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.2. The group Entry
      --
      --  "The group element is a convenience wrapper for specifying a prefer
      --  setting or base URI for a set of catalog entries.  It has no
      --  semantics other than scoping these settings.
      --
      --  <group
      --    id = id
      --    prefer = "system" | "public"
      --    xml:base = uri-reference >
      --      <!-- Content: (public | system | rewriteSystem | systemSuffix |
      --      delegatePublic | delegateSystem | uri | rewriteURI | uriSuffix |
      --      delegateURI | nextCatalog)+ -->
      --  </group>"

      Prefer_Index : constant Natural
        := Attributes.Index (Prefer_Attribute_Name);

   begin
      --  Save current preference mode, analyze 'prefer' attribute when
      --  present, otherwise preserve current mode.

      Self.Previous_Prefer_Mode := Self.Current_Prefer_Mode;

      if Prefer_Index /= 0 then
         if Attributes.Value (Prefer_Index) = Public_Image then
            Self.Current_Prefer_Mode := Public;

         elsif Attributes.Value (Prefer_Index) = System_Image then
            Self.Current_Prefer_Mode := System;

         else
            Self.Error ("Invalid value of 'prefer' attribute", Success);
         end if;
      end if;
   end Process_Group_Start_Element;

   ----------------------------------------
   -- Process_Next_Catalog_Start_Element --
   ----------------------------------------

   procedure Process_Next_Catalog_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.13. The nextCatalog Element
      --
      --  "The nextCatalog elements indicate additional catalog entry file(s)
      --  to be considered during the process of resolution.
      --
      --  <nextCatalog
      --    id = id
      --    catalog = uri-reference
      --    xml:base = uri-reference />
      --
      --  If the value of the catalog attribute is relative, it must be made
      --  absolute with respect to the base URI currently in effect.
      --
      --  Catalogs loaded due to a nextCatalog directive have an initial base
      --  URI that is dependent on the location of the loaded catalog entry
      --  file. No xml:base information is inherited from the originating
      --  catalog.

      Catalog : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value (Catalog_Attribute_Name))).To_Universal_String;

   begin
      Self.Entry_File.Append
       (new Next_Catalog_Entry'(Catalog, Self.Default_Prefer_Mode, null));
   end Process_Next_Catalog_Start_Element;

   ----------------------------------
   -- Process_Public_Start_Element --
   ----------------------------------

   procedure Process_Public_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.3. The public Entry
      --
      --  "The public element associates a URI reference with the public
      --  identifier portion of an external identifier.
      --
      --  <public
      --    id = id
      --    publicId = public-identifier
      --    uri = uri-reference
      --    xml:base = uri-reference />
      --
      --  A public entry matches a public identifier if the normalized value
      --  (Section 6.2, “Public Identifier Normalization”) of the public
      --  identifier is lexically identical to the normalized value of the
      --  publicId attribute of the entry.
      --
      --  If the value of the uri attribute is relative, it must be made
      --  absolute with respect to the base URI currently in effect. The URI
      --  reference should not include a fragment identifier."

      Public_Id : constant League.Strings.Universal_String
        := Matreshka.XML_Catalogs.Normalization.Normalize_Public_Identifier
            (Attributes.Value (Public_Id_Attribute_Name));
      URI       : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value (URI_Attribute_Name))).To_Universal_String;

   begin
      --  Check that 'publicId' is not empty.

      if Public_Id.Is_Empty then
         Error (Self, "publicId is empty", Success);

         return;
      end if;

      --  Check that URI is not include a fragment identifier.

      Check_No_Fragment_Identifier (Self, URI, Success);

      if not Success then
         return;
      end if;

      Self.Entry_File.Append
       (new Public_Entry'(Public_Id, URI, Self.Current_Prefer_Mode));
   end Process_Public_Start_Element;

   ------------------------------------------
   -- Process_Rewrite_System_Start_Element --
   ------------------------------------------

   procedure Process_Rewrite_System_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.5. The rewriteSystem Element
      --
      --  The rewriteSystem element rewrites the beginning of a system
      --  identifier.
      --
      --  <rewriteSystem
      --    id = id
      --    systemIdStartString = string
      --    rewritePrefix = uri-reference />
      --
      --  A rewriteSystem entry matches a system identifier if the normalized
      --  value (Section 6.3, “System Identifier and URI Normalization”) of the
      --  system identifier begins precisely with the normalized value of the
      --  systemIdStartString attribute of the entry.
      --
      --  If the value of the rewritePrefix attribute is relative, it must be
      --  made absolute with respect to the base URI currently in effect.

      System_Id_Start_String : constant League.Strings.Universal_String
        := Matreshka.XML_Catalogs.Normalization.Normalize_System_Identifier
            (Attributes.Value (System_Id_Start_String_Attribute_Name));
      Rewrite_Prefix         : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value
                (Rewrite_Prefix_Attribute_Name))).To_Universal_String;

   begin
      --  Check that 'systemIdStartString' is not empty.

      if System_Id_Start_String.Is_Empty then
         Error (Self, "'systemIdStartString' is empty", Success);

         return;
      end if;

      Self.Entry_File.Append
       (new Rewrite_System_Entry'(System_Id_Start_String, Rewrite_Prefix));
   end Process_Rewrite_System_Start_Element;

   ---------------------------------------
   -- Process_Rewrite_URI_Start_Element --
   ---------------------------------------

   procedure Process_Rewrite_URI_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.10. The rewriteURI Element
      --
      --  The rewriteURI element rewrites the beginning of a URI reference that
      --  is not part of an external identifier.
      --
      --  <rewriteURI
      --    id = id
      --    uriStartString = string
      --    rewritePrefix = uri-reference />
      --
      --  A rewriteURI entry matches a URI reference if the normalized value
      --  (Section 6.3, “System Identifier and URI Normalization”) of the URI
      --  reference begins precisely with the normalized value of the
      --  uriStartString attribute of the entry.
      --
      --  If the value of the rewritePrefix attribute is relative, it must be
      --  made absolute with respect to the base URI currently in effect.

      URI_Start_String : constant League.Strings.Universal_String
        := Matreshka.XML_Catalogs.Normalization.Normalize_URI
            (Attributes.Value (URI_Start_String_Attribute_Name));
      Rewrite_Prefix   : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value
                (Rewrite_Prefix_Attribute_Name))).To_Universal_String;

   begin
      --  Check that 'uriStartString' is not empty.

      if URI_Start_String.Is_Empty then
         Error (Self, "'uriStartString' is empty", Success);

         return;
      end if;

      Self.Entry_File.Append
       (new Rewrite_URI_Entry'(URI_Start_String, Rewrite_Prefix));
   end Process_Rewrite_URI_Start_Element;

   ----------------------------------
   -- Process_System_Start_Element --
   ----------------------------------

   procedure Process_System_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.4. The system Element
      --
      --  "The system element associates a URI reference with the system
      --  identifier portion of an external identifier.
      --
      --  <system
      --    id = id
      --    systemId = string
      --    uri = uri-reference
      --    xml:base = uri-reference />
      --
      --  A system entry matches a system identifier if the normalized value
      --  (Section 6.3, “System Identifier and URI Normalization”) of the
      --  system identifier is lexically identical to the normalized value of
      --  the systemId attribute of the entry.
      --
      --  If the value of the uri attribute is relative, it must be made
      --  absolute with respect to the base URI currently in effect. The URI
      --  reference should not include a fragment identifier."

      System_Id : constant League.Strings.Universal_String
        := Matreshka.XML_Catalogs.Normalization.Normalize_System_Identifier
            (Attributes.Value (System_Id_Attribute_Name));
      URI       : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value (URI_Attribute_Name))).To_Universal_String;

   begin
      --  Check that 'systemId' is not empty.

      if System_Id.Is_Empty then
         Error (Self, "systemId is empty", Success);

         return;
      end if;

      --  Check that URI is not include a fragment identifier.

      Check_No_Fragment_Identifier (Self, URI, Success);

      if not Success then
         return;
      end if;

      Self.Entry_File.Append (new System_Entry'(System_Id, URI));
   end Process_System_Start_Element;

   -----------------------------------------
   -- Process_System_Suffix_Start_Element --
   -----------------------------------------

   procedure Process_System_Suffix_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.6. The systemSuffix Element
      --
      --  "The systemSuffix element associates a URI reference with the suffix
      --  portion of a system identifier.
      --
      --  <systemSuffix
      --    id = id
      --    systemIdSuffix = string
      --    uri = uri-reference
      --    xml:base = uri-reference />
      --
      --  A systemSuffix entry matches a system identifier if the normalized
      --  value (Section 6.3, “System Identifier and URI Normalization”) of the
      --  system identifier ends precisely with the normalized value of the
      --  systemIdSuffix attribute of the entry.
      --
      --  If the value of the uri attribute is relative, it must be made
      --  absolute with respect to the base URI currently in effect. The URI
      --  reference should not include a fragment identifier."

      System_Id_Suffix : constant League.Strings.Universal_String
        := Matreshka.XML_Catalogs.Normalization.Normalize_System_Identifier
            (Attributes.Value (System_Id_Suffix_Attribute_Name));
      URI              : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value (URI_Attribute_Name))).To_Universal_String;

   begin
      --  Check that 'systemIdSuffix' is not empty.

      if System_Id_Suffix.Is_Empty then
         Error (Self, "systemIdSuffix is empty", Success);

         return;
      end if;

      --  Check that URI is not include a fragment identifier.

      Check_No_Fragment_Identifier (Self, URI, Success);

      if not Success then
         return;
      end if;

      Self.Entry_File.Append (new System_Suffix_Entry'(System_Id_Suffix, URI));
   end Process_System_Suffix_Start_Element;

   -------------------------------
   -- Process_URI_Start_Element --
   -------------------------------

   procedure Process_URI_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.9. The uri Element
      --
      --  The uri element associates an alternate URI reference with a URI
      --  reference that is not part of an external identifier.
      --
      --  <uri
      --    id = id
      --    name = string
      --    uri = uri-reference
      --    xml:base = uri-reference />
      --
      --  A uri entry matches a URI reference if the normalized value (Section
      --  6.3, “System Identifier and URI Normalization”) of the URI reference
      --  is lexically identical to the normalized value of the name attribute
      --  of the entry."
      --
      --  "If the value of the uri attribute is relative, it must be made
      --  absolute with respect to the base URI currently in effect."

      Name : constant League.Strings.Universal_String
        := Matreshka.XML_Catalogs.Normalization.Normalize_URI
            (Attributes.Value (Name_Attribute_Name));
      URI  : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value (URI_Attribute_Name))).To_Universal_String;

   begin
      --  Check that 'name' is not empty.

      if Name.Is_Empty then
         Error (Self, "name is empty", Success);

         return;
      end if;

      Self.Entry_File.Append (new URI_Entry'(Name, URI));
   end Process_URI_Start_Element;

   --------------------------------------
   -- Process_URI_Suffix_Start_Element --
   --------------------------------------

   procedure Process_URI_Suffix_Start_Element
    (Self       : in out XML_Catalog_Handler'Class;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      --  [XML Catalogs] 6.5.11. The uriSuffix Element
      --
      --  "The uriSuffix element associates a URI reference with the suffix
      --  portion of a URI reference that is not part of an external
      --  identifier.
      --
      --  <uriSuffix
      --    id = id
      --    uriSuffix = string
      --    uri = uri-reference
      --    xml:base = uri-reference />
      --
      --  A uriSuffix entry matches a URI if the normalized value (Section 6.3,
      --  “System Identifier and URI Normalization”) of the URI ends precisely
      --  with the normalized value of the uriSuffix attribute of the entry.
      --
      --  If the value of the uri attribute is relative, it must be made
      --  absolute with respect to the base URI currently in effect.

      URI_Suffix : constant League.Strings.Universal_String
        := Matreshka.XML_Catalogs.Normalization.Normalize_URI
            (Attributes.Value (URI_Suffix_Attribute_Name));
      URI        : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value (URI_Attribute_Name))).To_Universal_String;

   begin
      --  Check that 'uriSuffix' is not empty.

      if URI_Suffix.Is_Empty then
         Error (Self, "uriSuffix is empty", Success);

         return;
      end if;

      Self.Entry_File.Append (new URI_Suffix_Entry'(URI_Suffix, URI));
   end Process_URI_Suffix_Start_Element;

   -----------------------------
   -- Set_Default_Prefer_Mode --
   -----------------------------

   procedure Set_Default_Prefer_Mode
    (Self : in out XML_Catalog_Handler'Class;
     Mode : Matreshka.XML_Catalogs.Entry_Files.Prefer_Mode) is
   begin
      Self.Default_Prefer_Mode := Mode;
   end Set_Default_Prefer_Mode;

   --------------------------
   -- Set_Document_Locator --
   --------------------------

   overriding procedure Set_Document_Locator
    (Self    : in out XML_Catalog_Handler;
     Locator : XML.SAX.Locators.SAX_Locator) is
   begin
      Self.Locator := Locator;
   end Set_Document_Locator;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out XML_Catalog_Handler;
     Success : in out Boolean) is
   begin
      Self.Diagnosis := League.Strings.Empty_Universal_String;
      Self.Current_Prefer_Mode := Self.Default_Prefer_Mode;
   end Start_Document;

   ---------------
   -- Start_DTD --
   ---------------

   overriding procedure Start_DTD
    (Self      : in out XML_Catalog_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean) is
   begin
      --  Check whether processed document is XML Catalogs entry file.

      if Public_Id /= XML_Catalogs_1_0_Public_Id
        and Public_Id /= XML_Catalogs_1_1_Public_Id
      then
         Self.Error ("Unknown XML Catalogs DTD", Success);
      end if;
   end Start_DTD;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out XML_Catalog_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
   begin
      if Namespace_URI /= XML_Catalogs_Namespace then
         --  Ignore all non-XML Catalogs elements.

         return;
      end if;

      if Local_Name = Catalog_Tag_Name then
         Process_Catalog_Start_Element (Self, Attributes, Success);

      elsif Local_Name = Delegate_Public_Tag_Name then
         Process_Delegate_Public_Start_Element (Self, Attributes, Success);

      elsif Local_Name = Delegate_System_Tag_Name then
         Process_Delegate_System_Start_Element (Self, Attributes, Success);

      elsif Local_Name = Delegate_URI_Tag_Name then
         Process_Delegate_URI_Start_Element (Self, Attributes, Success);

      elsif Local_Name = Group_Tag_Name then
         Process_Group_Start_Element (Self, Attributes, Success);

      elsif Local_Name = Next_Catalog_Tag_Name then
         Process_Next_Catalog_Start_Element (Self, Attributes, Success);

      elsif Local_Name = Public_Tag_Name then
         Process_Public_Start_Element (Self, Attributes, Success);

      elsif Local_Name = Rewrite_System_Tag_Name then
         Process_Rewrite_System_Start_Element (Self, Attributes, Success);

      elsif Local_Name = Rewrite_URI_Tag_Name then
         Process_Rewrite_URI_Start_Element (Self, Attributes, Success);

      elsif Local_Name = System_Tag_Name then
         Process_System_Start_Element (Self, Attributes, Success);

      elsif Local_Name = System_Suffix_Tag_Name then
         Process_System_Suffix_Start_Element (Self, Attributes, Success);

      elsif Local_Name = URI_Tag_Name then
         Process_URI_Start_Element (Self, Attributes, Success);

      elsif Local_Name = URI_Suffix_Tag_Name then
         Process_URI_Suffix_Start_Element (Self, Attributes, Success);
      end if;
   end Start_Element;

   -------------
   -- Warning --
   -------------

   overriding procedure Warning
    (Self       : in out XML_Catalog_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       (Ada.Wide_Wide_Text_IO.Standard_Error,
        "(warning) " & Occurrence.Message.To_Wide_Wide_String);
   end Warning;

end Matreshka.XML_Catalogs.Handlers;
