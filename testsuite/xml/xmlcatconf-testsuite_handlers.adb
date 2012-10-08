------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                            Testsuite Component                           --
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
with Ada.Wide_Wide_Text_IO;

with League.IRIs;
with Matreshka.XML_Catalogs.Entry_Files;
with Matreshka.XML_Catalogs.Loader;
with Matreshka.XML_Catalogs.Resolver;

package body XMLCatConf.Testsuite_Handlers is

   use type League.Strings.Universal_String;

   type Test_Type is (Error, Match, No_Match);

   --  Tags

   Test_Suite_Tag  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("TestSuite");
   Test_Cases_Tag  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("TestCases");
   Entity_Test_Tag : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("EntityTest");
   URI_Test_Tag    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("UriTest");

   --  Attributes

   Catalog_Attribute       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("catalog");
   Expected_File_Attribute : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("expectedFile");
   Expected_URI_Attribute : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("expectedUri");
   Id_Attribute            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("id");
   Prefer_Attribute        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("prefer");
   Public_Id_Attribute     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("publicId");
   System_Id_Attribute     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("systemId");
   Type_Attribute          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("type");
   URI_Attribute           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("uri");

   --  Literals

   Error_Literal    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("error");
   Match_Literal    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("match");
   No_Match_Literal : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("nomatch");
   Public_Literal   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("public");
   System_Literal   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("system");

   procedure Process_Entity_Test_Start_Tag
    (Self       : in out Testsuite_Handler;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);

   procedure Process_Uri_Test_Start_Tag
    (Self       : in out Testsuite_Handler;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean);

   function Value (Image : League.Strings.Universal_String) return Test_Type;
   --  Converts string representation of test type into internal
   --  representation.

   function Value
    (Image : League.Strings.Universal_String)
       return Matreshka.XML_Catalogs.Entry_Files.Prefer_Mode;
   --  Converts string representation of test type into internal
   --  representation.

   -----------
   -- Error --
   -----------

   overriding procedure Error
    (Self       : in out Testsuite_Handler;
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
    (Self : Testsuite_Handler) return League.Strings.Universal_String is
   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

   -----------------
   -- Fatal_Error --
   -----------------

   overriding procedure Fatal_Error
    (Self       : in out Testsuite_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       (Ada.Wide_Wide_Text_IO.Standard_Error,
        "(fatal) " & Occurrence.Message.To_Wide_Wide_String);
   end Fatal_Error;

   -----------------------------------
   -- Process_Entity_Test_Start_Tag --
   -----------------------------------

   procedure Process_Entity_Test_Start_Tag
    (Self       : in out Testsuite_Handler;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      Id            : constant League.Strings.Universal_String
        := Attributes.Value (Id_Attribute);
      Catalog       : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value (Catalog_Attribute))).To_Universal_String;
      Expected_File : constant League.Strings.Universal_String
        := Attributes.Value (Expected_File_Attribute);
      Expected_URI  : constant League.Strings.Universal_String
        := Attributes.Value (Expected_URI_Attribute);
      Kind          : constant Test_Type
        := Value (Attributes.Value (Type_Attribute));
      Public_Id     : constant League.Strings.Universal_String
        := Attributes.Value (Public_Id_Attribute);
      System_Id     : constant League.Strings.Universal_String
        := Attributes.Value (System_Id_Attribute);
      Prefer        : constant Matreshka.XML_Catalogs.Entry_Files.Prefer_Mode
        := Value (Attributes.Value (Prefer_Attribute));

      Expected      : League.Strings.Universal_String;
      Resolved_URI  : League.Strings.Universal_String;
      Resolved      : Boolean;
      File          :
        Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_Access
          := Matreshka.XML_Catalogs.Loader.Load (Catalog, Prefer);
      List          :
        aliased Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List;

   begin
      List.Catalog_Entry_Files.Append (File);

      if Expected_File.Is_Empty and not Expected_URI.Is_Empty then
         Expected := Expected_URI;

      elsif not Expected_File.Is_Empty and Expected_URI.Is_Empty then
         Expected := Expected_File;

      else
         Expected.Clear;
      end if;

      --  Resolve document.

      Matreshka.XML_Catalogs.Resolver.Resolve_External_Identifier
       (List'Unchecked_Access, Public_Id, System_Id, Resolved_URI, Resolved);

      case Kind is
         when Error =>
            if Resolved then
               raise Program_Error;
            end if;

         when Match =>
            if not Resolved then
               Ada.Wide_Wide_Text_IO.Put_Line
                ("FAIL " & Id.To_Wide_Wide_String);
               Ada.Wide_Wide_Text_IO.Put_Line
                ("Expected: '" & Expected.To_Wide_Wide_String & ''');

               raise Program_Error;
            end if;

            --  Construct expected absolute URI.

            Expected :=
              Self.Locator.Base_URI.Resolve
               (League.IRIs.From_Universal_String
                 (Expected)).To_Universal_String;

            if Resolved_URI /= Expected then
               Ada.Wide_Wide_Text_IO.Put_Line
                ("FAIL " & Id.To_Wide_Wide_String);
               Ada.Wide_Wide_Text_IO.Put_Line
                ("  Expected: '" & Expected.To_Wide_Wide_String & ''');
               Ada.Wide_Wide_Text_IO.Put_Line
                ("  Resolved: '" & Resolved_URI.To_Wide_Wide_String & ''');

               raise Program_Error;
            end if;

         when No_Match =>
            if Resolved then
               raise Program_Error;
            end if;

            if Resolved_URI /= Expected then
               Ada.Wide_Wide_Text_IO.Put_Line
                ("FAIL " & Id.To_Wide_Wide_String);
               Ada.Wide_Wide_Text_IO.Put_Line
                ("  Expected: '" & Expected.To_Wide_Wide_String & ''');
               Ada.Wide_Wide_Text_IO.Put_Line
                ("  Resolved: '" & Resolved_URI.To_Wide_Wide_String & ''');

               raise Program_Error;
            end if;
      end case;
   end Process_Entity_Test_Start_Tag;

   --------------------------------
   -- Process_Uri_Test_Start_Tag --
   --------------------------------

   procedure Process_Uri_Test_Start_Tag
    (Self       : in out Testsuite_Handler;
     Attributes : XML.SAX.Attributes.SAX_Attributes;
     Success    : in out Boolean)
   is
      Id            : constant League.Strings.Universal_String
        := Attributes.Value (Id_Attribute);
      Catalog       : constant League.Strings.Universal_String
        := Self.Locator.Base_URI.Resolve
            (League.IRIs.From_Universal_String
              (Attributes.Value (Catalog_Attribute))).To_Universal_String;
      Expected_File : constant League.Strings.Universal_String
        := Attributes.Value (Expected_File_Attribute);
      Expected_URI  : constant League.Strings.Universal_String
        := Attributes.Value (Expected_URI_Attribute);
      Kind          : constant Test_Type
        := Value (Attributes.Value (Type_Attribute));
      URI           : constant League.Strings.Universal_String
        := Attributes.Value (URI_Attribute);

      Expected      : League.Strings.Universal_String;
      Resolved_URI  : League.Strings.Universal_String;
      Resolved      : Boolean;
      File          :
        Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_Access
          := Matreshka.XML_Catalogs.Loader.Load
              (Catalog, Matreshka.XML_Catalogs.Entry_Files.System);
      List          :
        aliased Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_List;

   begin
      List.Catalog_Entry_Files.Append (File);

      if Expected_File.Is_Empty and not Expected_URI.Is_Empty then
         Expected := Expected_URI;

      elsif not Expected_File.Is_Empty and Expected_URI.Is_Empty then
         Expected := Expected_File;

      else
         Expected.Clear;
      end if;

      --  Resolve URI.

      Matreshka.XML_Catalogs.Resolver.Resolve_URI
       (List'Unchecked_Access, URI, Resolved_URI, Resolved);

      case Kind is
         when Error =>
            if Resolved then
               raise Program_Error;
            end if;

         when Match =>
            if not Resolved then
               Ada.Wide_Wide_Text_IO.Put_Line
                ("FAIL " & Id.To_Wide_Wide_String);
               Ada.Wide_Wide_Text_IO.Put_Line
                ("  Expected: '" & Expected.To_Wide_Wide_String & ''');

               raise Program_Error;
            end if;

            --  Construct expected absolute URI.

            Expected :=
              Self.Locator.Base_URI.Resolve
               (League.IRIs.From_Universal_String
                 (Expected)).To_Universal_String;

            if Resolved_URI /= Expected then
               Ada.Wide_Wide_Text_IO.Put_Line
                ("FAIL " & Id.To_Wide_Wide_String);
               Ada.Wide_Wide_Text_IO.Put_Line
                ("  Expected: '" & Expected.To_Wide_Wide_String & ''');
               Ada.Wide_Wide_Text_IO.Put_Line
                ("  Resolved: '" & Resolved_URI.To_Wide_Wide_String & ''');

               raise Program_Error;
            end if;

         when No_Match =>
            if Resolved then
               raise Program_Error;
            end if;

            if Resolved_URI /= Expected then
               Ada.Wide_Wide_Text_IO.Put_Line
                ("FAIL " & Id.To_Wide_Wide_String);
               Ada.Wide_Wide_Text_IO.Put_Line
                ("  Expected: '" & Expected.To_Wide_Wide_String & ''');
               Ada.Wide_Wide_Text_IO.Put_Line
                ("  Resolved: '" & Resolved_URI.To_Wide_Wide_String & ''');

               raise Program_Error;
            end if;
      end case;
   end Process_Uri_Test_Start_Tag;

   --------------------------
   -- Set_Document_Locator --
   --------------------------

   overriding procedure Set_Document_Locator
    (Self    : in out Testsuite_Handler;
     Locator : XML.SAX.Locators.SAX_Locator) is
   begin
      Self.Locator := Locator;
   end Set_Document_Locator;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Testsuite_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
   begin
      if Qualified_Name = Test_Suite_Tag then
         null;

      elsif Qualified_Name = Test_Cases_Tag then
         null;

      elsif Qualified_Name = Entity_Test_Tag then
         Process_Entity_Test_Start_Tag (Self, Attributes, Success);

      elsif Qualified_Name = Uri_Test_Tag then
         Process_Uri_Test_Start_Tag (Self, Attributes, Success);

      else
         raise Program_Error;
      end if;
   end Start_Element;

   -----------
   -- Value --
   -----------

   function Value
    (Image : League.Strings.Universal_String)
       return Matreshka.XML_Catalogs.Entry_Files.Prefer_Mode is
   begin
      if Image = Public_Literal then
         return Matreshka.XML_Catalogs.Entry_Files.Public;

      elsif Image = System_Literal then
         return Matreshka.XML_Catalogs.Entry_Files.System;

      else
         raise Constraint_Error;
      end if;
   end Value;

   -----------
   -- Value --
   -----------

   function Value (Image : League.Strings.Universal_String) return Test_Type is
   begin
      if Image = Error_Literal then
         return Error;

      elsif Image = Match_Literal then
         return Match;

      elsif Image = No_Match_Literal then
         return No_Match;

      else
         raise Constraint_Error;
      end if;
   end Value;

   -------------
   -- Warning --
   -------------

   overriding procedure Warning
    (Self       : in out Testsuite_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Ada.Wide_Wide_Text_IO.Put_Line
       (Ada.Wide_Wide_Text_IO.Standard_Error,
        "(warning) " & Occurrence.Message.To_Wide_Wide_String);
   end Warning;

end XMLCatConf.Testsuite_Handlers;
