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
with Ada.Characters.Wide_Wide_Latin_1;

with XML.SAX.Input_Sources.Streams.Files;

package body XMLConf.Events_Writers is

   use League.Strings;

   function Escape_Character
    (Item : Wide_Wide_Character) return League.Strings.Universal_String;
   --  Escapes control and special characters.

   --------------
   -- Add_Line --
   --------------

   not overriding procedure Add_Line
    (Self : in out Events_Writer;
     Item : League.Strings.Universal_String) is
   begin
      Self.Result.Append (Item & Ada.Characters.Wide_Wide_Latin_1.LF);
   end Add_Line;

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out Events_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      for J in 1 .. Text.Length loop
         Self.Add_Line
          ("  <characters>"
             & Escape_Character (Text.Element (J))
             & "</characters>");
      end loop;
   end Characters;

   ----------
   -- Done --
   ----------

   procedure Done (Self : in out Events_Writer) is
   begin
      Self.Add_Line (To_Universal_String ("</SAXEvents>"));
   end Done;

   ------------------
   -- End_Document --
   ------------------

   overriding procedure End_Document
    (Self    : in out Events_Writer;
     Success : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <endDocument/>"));
   end End_Document;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out Events_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <endElement>"));

      if Namespace_URI.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <namespaceURI/>"));

      else
         Self.Add_Line
          ("    <namespaceURI>" & Namespace_URI & "</namespaceURI>");
      end if;

      if Local_Name.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <localName/>"));

      else
         Self.Add_Line ("    <localName>" & Local_Name & "</localName>");
      end if;

      if Qualified_Name.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <qualifiedName/>"));

      else
         Self.Add_Line
          ("    <qualifiedName>" & Qualified_Name & "</qualifiedName>");
      end if;

      Self.Add_Line (To_Universal_String ("  </endElement>"));
   end End_Element;

   ------------------------
   -- End_Prefix_Mapping --
   ------------------------

   overriding procedure End_Prefix_Mapping
    (Self    : in out Events_Writer;
     Prefix  : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <endPrefixMapping>"));

      if Prefix.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <prefix/>"));

      else
         Self.Add_Line ("    <prefix>" & Prefix & "</prefix>");
      end if;

      Self.Add_Line (To_Universal_String ("  </endPrefixMapping>"));
   end End_Prefix_Mapping;

   -----------
   -- Error --
   -----------

   overriding procedure Error
    (Self       : in out Events_Writer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <error/>"));
   end Error;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Events_Writer)
       return League.Strings.Universal_String is
   begin
      return Empty_Universal_String;
   end Error_String;

   ----------------------
   -- Escape_Character --
   ----------------------

   function Escape_Character
    (Item : Wide_Wide_Character) return League.Strings.Universal_String
   is
      use Ada.Characters.Wide_Wide_Latin_1;

   begin
      case Item is
         when HT =>
            return To_Universal_String ("&#x9;");

         when LF =>
            return To_Universal_String ("&#xA;");

         when CR =>
            return To_Universal_String ("&#xB;");

         when ' ' =>
            return To_Universal_String ("&#x20;");

         when others =>
            return To_Universal_String (Wide_Wide_String'(1 => Item));
      end case;
   end Escape_Character;

   ----------------
   -- Has_Errors --
   ----------------

   not overriding function Has_Errors (Self : Events_Writer) return Boolean is
   begin
      return Self.Errors;
   end Has_Errors;

   -----------------
   -- Fatal_Error --
   -----------------

   overriding procedure Fatal_Error
    (Self       : in out Events_Writer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Self.Fatal_Errors := True;
      Self.Add_Line (To_Universal_String ("  <fatalError/>"));
   end Fatal_Error;

   ----------------------
   -- Has_Fatal_Errors --
   ----------------------

   not overriding function Has_Fatal_Errors
    (Self : Events_Writer) return Boolean is
   begin
      return Self.Fatal_Errors;
   end Has_Fatal_Errors;

   --------------------------
   -- Ignorable_Whitespace --
   --------------------------

   overriding procedure Ignorable_Whitespace
    (Self    : in out Events_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      for J in 1 .. Text.Length loop
         Self.Add_Line
          ("  <ignorableWhitespace>"
             & Escape_Character (Text.Element (J))
             & "</ignorableWhitespace>");
      end loop;
   end Ignorable_Whitespace;

   ----------------
   -- Initialize --
   ----------------

   overriding procedure Initialize (Self : in out Events_Writer) is
   begin
      Self.Add_Line
       (To_Universal_String ("<?xml version=""1.0"" encoding=""UTF-8""?>"));
      Self.Add_Line (To_Universal_String ("<SAXEvents>"));
   end Initialize;

   ----------------------------
   -- Processing_Instruction --
   ----------------------------

   overriding procedure Processing_Instruction
    (Self    : in out Events_Writer;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <processingInstruction>"));
      Self.Add_Line ("    <target>" & Target & "</target>");

      if Data.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <data/>"));

      else
         Self.Add_Line ("    <data>" & Data & "</data>");
      end if;

      Self.Add_Line (To_Universal_String ("  </processingInstruction>"));
   end Processing_Instruction;

   --------------------
   -- Resolve_Entity --
   --------------------

   overriding procedure Resolve_Entity
    (Self      : in out Events_Writer;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Source    : out XML.SAX.Input_Sources.SAX_Input_Source_Access;
     Success   : in out Boolean)
   is
      use XML.SAX.Input_Sources.Streams.Files;

   begin
      Self.Add_Line (To_Universal_String ("  <resolveEntity>"));

      if not Public_Id.Is_Empty then
         Self.Add_Line ("    <publicID>" & Public_Id & "</publicID>");
      end if;

      if not System_Id.Is_Empty then
         Self.Add_Line ("    <systemID>" & System_Id & "</systemID>");
      end if;

      Self.Add_Line (To_Universal_String ("  </resolveEntity>"));

      Source := new File_Input_Source;
      File_Input_Source'Class (Source.all).Open
       (Ada.Characters.Conversions.To_String
         (System_Id.To_Wide_Wide_String));
   end Resolve_Entity;

   --------------------------
   -- Set_Document_Locator --
   --------------------------

   overriding procedure Set_Document_Locator
    (Self    : in out Events_Writer;
     Locator : XML.SAX.Locators.SAX_Locator) is
   begin
      null;
   end Set_Document_Locator;

   --------------------
   -- Skipped_Entity --
   --------------------

   overriding procedure Skipped_Entity
    (Self    : in out Events_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      raise Constraint_Error;
   end Skipped_Entity;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out Events_Writer;
     Success : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <startDocument/>"));
   end Start_Document;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Events_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <startElement>"));

      if Namespace_URI.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <namespaceURI/>"));

      else
         Self.Add_Line
          ("    <namespaceURI>" & Namespace_URI & "</namespaceURI>");
      end if;

      if Local_Name.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <localName/>"));

      else
         Self.Add_Line
          ("    <localName>" & Local_Name & "</localName>");
      end if;

      if Qualified_Name.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <qualifiedName/>"));

      else
         Self.Add_Line
          ("    <qualifiedName>" & Qualified_Name & "</qualifiedName>");
      end if;

      if Attributes.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <attributes/>"));

      else
         Self.Add_Line (To_Universal_String ("      <attributes>"));

         for J in 1 .. Attributes.Length loop
            null;
         end loop;

         Self.Add_Line (To_Universal_String ("    </attributes>"));
      end if;

      Self.Add_Line (To_Universal_String ("  </startElement>"));
   end Start_Element;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding procedure Start_Prefix_Mapping
    (Self    : in out Events_Writer;
     Prefix  : League.Strings.Universal_String;
     URI     : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <startPrefixMapping>"));

      if Prefix.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <prefix/>"));

      else
         Self.Add_Line ("    <prefix>" & Prefix & "</prefix>");
      end if;

      Self.Add_Line ("    <data>" & URI & "</data>");
      Self.Add_Line (To_Universal_String ("  </startPrefixMapping>"));
   end Start_Prefix_Mapping;

   ----------
   -- Text --
   ----------

   not overriding function Text
    (Self : Events_Writer) return League.Strings.Universal_String is
   begin
      return Self.Result;
   end Text;

   -------------
   -- Warning --
   -------------

   overriding procedure Warning
    (Self       : in out Events_Writer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <warning/>"));
   end Warning;

end XMLConf.Events_Writers;
