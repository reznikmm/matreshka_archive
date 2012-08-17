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
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Containers.Ordered_Maps;

with League.Characters;
with Matreshka.Internals.URI_Utilities;
with XML.SAX.Input_Sources.Streams.Files;

package body SAX_Events_Writers is

   use Ada.Characters.Wide_Wide_Latin_1;
   use League.Strings;

   package Universal_String_Integer_Maps is
     new Ada.Containers.Ordered_Maps
          (League.Strings.Universal_String, Positive);

   function Escape_Character
    (Item : League.Characters.Universal_Character)
       return League.Strings.Universal_String;
   --  Escapes control and special characters.

   function Escape_String
    (Item : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Escapes control and special character.

   --------------
   -- Add_Line --
   --------------

   not overriding procedure Add_Line
    (Self : in out SAX_Events_Writer;
     Item : League.Strings.Universal_String) is
   begin
      Self.Result.Append (Item & Ada.Characters.Wide_Wide_Latin_1.LF);
   end Add_Line;

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out SAX_Events_Writer;
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

   procedure Done (Self : in out SAX_Events_Writer) is
   begin
      Self.Add_Line (To_Universal_String ("</SAXEvents>"));
   end Done;

   ------------------
   -- End_Document --
   ------------------

   overriding procedure End_Document
    (Self    : in out SAX_Events_Writer;
     Success : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <endDocument/>"));
   end End_Document;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out SAX_Events_Writer;
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
    (Self    : in out SAX_Events_Writer;
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
    (Self       : in out SAX_Events_Writer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Self.Errors := True;
      Self.Add_Line
       ("  <error>" & Escape_String (Occurrence.Message) & "</error>");
   end Error;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : SAX_Events_Writer)
       return League.Strings.Universal_String is
   begin
      return Empty_Universal_String;
   end Error_String;

   ----------------------
   -- Escape_Character --
   ----------------------

   function Escape_Character
    (Item : League.Characters.Universal_Character)
       return League.Strings.Universal_String
   is
      function Image (Item : Wide_Wide_Character)
        return League.Strings.Universal_String;

      -----------
      -- Image --
      -----------

      function Image (Item : Wide_Wide_Character)
        return League.Strings.Universal_String
      is
         To_Hex : constant array (0 .. 15) of Wide_Wide_Character
           := "0123456789ABCDEF";

         Result : Wide_Wide_String (1 .. 6);
         First  : Integer := Result'Last + 1;
         Aux    : Integer := Wide_Wide_Character'Pos (Item);

      begin
         while Aux /= 0 loop
            First := First - 1;
            Result (First) := To_Hex (Aux mod 16);
            Aux := Aux / 16;
         end loop;

         return
           League.Strings.To_Universal_String
            ("&#x" & Result (First .. Result'Last) & ";");
      end Image;

   begin
      case Item.To_Wide_Wide_Character is
         when NUL .. ' ' | DEL .. APC =>
            return Image (Item.To_Wide_Wide_Character);

         when '&' =>
            return To_Universal_String ("&amp;");

         when '<' =>
            return To_Universal_String ("&lt;");

         when '>' =>
            return To_Universal_String ("&gt;");

         when others =>
            return
              To_Universal_String
               (Wide_Wide_String'(1 => Item.To_Wide_Wide_Character));
      end case;
   end Escape_Character;

   -------------------
   -- Escape_String --
   -------------------

   function Escape_String
    (Item : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      Result : League.Strings.Universal_String := Item;

   begin
      for J in reverse 1 .. Item.Length loop
         case Result.Element (J).To_Wide_Wide_Character is
            when HT =>
               Result.Replace (J, J, "&#x9;");

            when LF =>
               Result.Replace (J, J, "&#xA;");

            when CR =>
               Result.Replace (J, J, "&#xD;");

            when ' ' =>
               Result.Replace (J, J, "&#x20;");

            when '&' =>
               Result.Replace (J, J, "&amp;");

            when '<' =>
               Result.Replace (J, J, "&lt;");

            when '>' =>
               Result.Replace (J, J, "&gt;");

            when ''' =>
               Result.Replace (J, J, "&apos;");

            when '"' =>
               Result.Replace (J, J, "&quot;");

            when others =>
               null;
         end case;
      end loop;

      return Result;
   end Escape_String;

   ----------------
   -- Has_Errors --
   ----------------

   not overriding function Has_Errors (Self : SAX_Events_Writer) return Boolean is
   begin
      return Self.Errors;
   end Has_Errors;

   -----------------
   -- Fatal_Error --
   -----------------

   overriding procedure Fatal_Error
    (Self       : in out SAX_Events_Writer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Self.Fatal_Errors := True;
      Self.Add_Line
       ("  <fatalError>"
          & Escape_String (Occurrence.Message)
          & "</fatalError>");
   end Fatal_Error;

   ----------------------
   -- Has_Fatal_Errors --
   ----------------------

   not overriding function Has_Fatal_Errors
    (Self : SAX_Events_Writer) return Boolean is
   begin
      return Self.Fatal_Errors;
   end Has_Fatal_Errors;

   --------------------------
   -- Ignorable_Whitespace --
   --------------------------

   overriding procedure Ignorable_Whitespace
    (Self    : in out SAX_Events_Writer;
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

   overriding procedure Initialize (Self : in out SAX_Events_Writer) is
   begin
      Self.Add_Line
       (To_Universal_String ("<?xml version=""1.0"" encoding=""UTF-8""?>"));
      Self.Add_Line (To_Universal_String ("<SAXEvents>"));
   end Initialize;

   --------------------------
   -- Notation_Declaration --
   --------------------------

   overriding procedure Notation_Declaration
    (Self      : in out SAX_Events_Writer;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <notation>"));
      Self.Add_Line ("    <name>" & Name & "</name>");

      if not Public_Id.Is_Empty then
         Self.Add_Line
          ("    <publicID>" & Escape_String (Public_Id) & "</publicID>");
      end if;

      if not System_Id.Is_Empty then
         Self.Add_Line ("    <systemID>" & System_Id & "</systemID>");
      end if;

      Self.Add_Line (To_Universal_String ("  </notation>"));
   end Notation_Declaration;

   ----------------------------
   -- Processing_Instruction --
   ----------------------------

   overriding procedure Processing_Instruction
    (Self    : in out SAX_Events_Writer;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <processingInstruction>"));
      Self.Add_Line ("    <target>" & Target & "</target>");

      if Data.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <data/>"));

      else
         Self.Add_Line ("    <data>" & Escape_String (Data) & "</data>");
      end if;

      Self.Add_Line (To_Universal_String ("  </processingInstruction>"));
   end Processing_Instruction;

   --------------------
   -- Resolve_Entity --
   --------------------

   overriding procedure Resolve_Entity
    (Self      : in out SAX_Events_Writer;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     Base_URI  : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Source    : out XML.SAX.Input_Sources.SAX_Input_Source_Access;
     Success   : in out Boolean)
   is
      use XML.SAX.Input_Sources.Streams.Files;

      Actual_System_Id  : constant League.Strings.Universal_String
        := Matreshka.Internals.URI_Utilities.Construct_System_Id
            (Base_URI, System_Id);
      Stripped_Base_URI : League.Strings.Universal_String := Base_URI;

   begin
      if Base_URI.Starts_With (Self.URI) then
         Stripped_Base_URI :=
           Base_URI.Slice (Self.URI.Length + 1, Base_URI.Length);
      end if;

      Self.Add_Line (To_Universal_String ("  <resolveEntity>"));
      Self.Add_Line ("    <name>" & Escape_String (Name) & "</name>");

      if not Public_Id.Is_Empty then
         Self.Add_Line
          ("    <publicID>" & Escape_String (Public_Id) & "</publicID>");
      end if;

      if not Stripped_Base_URI.Is_Empty then
         Self.Add_Line
          ("    <baseURI>" & Escape_String (Stripped_Base_URI) & "</baseURI>");
      end if;

      if not System_Id.Is_Empty then
         Self.Add_Line ("    <systemID>" & System_Id & "</systemID>");
      end if;

      Self.Add_Line (To_Universal_String ("  </resolveEntity>"));

      Source := new File_Input_Source;
      File_Input_Source'Class (Source.all).Open_By_URI (Actual_System_Id);
   end Resolve_Entity;

   --------------------------
   -- Set_Document_Locator --
   --------------------------

   overriding procedure Set_Document_Locator
    (Self    : in out SAX_Events_Writer;
     Locator : XML.SAX.Locators.SAX_Locator) is
   begin
      null;
   end Set_Document_Locator;

   -----------------------
   -- Set_Testsuite_URI --
   -----------------------

   not overriding procedure Set_Testsuite_URI
    (Self : in out SAX_Events_Writer;
     URI  : League.Strings.Universal_String) is
   begin
      Self.URI := URI & '/';
   end Set_Testsuite_URI;

   --------------------
   -- Skipped_Entity --
   --------------------

   overriding procedure Skipped_Entity
    (Self    : in out SAX_Events_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      raise Constraint_Error;
   end Skipped_Entity;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out SAX_Events_Writer;
     Success : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <startDocument/>"));
   end Start_Document;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out SAX_Events_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean)
   is
      use Universal_String_Integer_Maps;

      Map      : Universal_String_Integer_Maps.Map;
      Position : Universal_String_Integer_Maps.Cursor;
      Index    : Positive;

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
         Self.Add_Line (To_Universal_String ("    <attributes>"));

         for J in 1 .. Attributes.Length loop
            Map.Insert (Attributes.Qualified_Name (J), J);
         end loop;

         Position := Map.First;

         while Has_Element (Position) loop
            Index := Element (Position);

            Self.Add_Line (To_Universal_String ("      <attribute>"));

            if Attributes.Namespace_URI (Index).Is_Empty then
               Self.Add_Line (To_Universal_String ("        <namespaceURI/>"));

            else
               Self.Add_Line
                ("        <namespaceURI>"
                   & Attributes.Namespace_URI (Index)
                   & "</namespaceURI>");
            end if;

            if Attributes.Local_Name (Index).Is_Empty then
               Self.Add_Line (To_Universal_String ("        <localName/>"));

            else
               Self.Add_Line
                ("        <localName>"
                   & Attributes.Local_Name (Index)
                   & "</localName>");
            end if;

            if Attributes.Qualified_Name (Index).Is_Empty then
               Self.Add_Line
                (To_Universal_String ("        <qualifiedName/>"));

            else
               Self.Add_Line
                ("        <qualifiedName>"
                   & Attributes.Qualified_Name (Index)
                   & "</qualifiedName>");
            end if;

            if Attributes.Value (Index).Is_Empty then
               Self.Add_Line
                (To_Universal_String ("        <value/>"));

            else
               Self.Add_Line
                ("        <value>"
                   & Escape_String (Attributes.Value (Index))
                   & "</value>");
            end if;

            Self.Add_Line
             ("        <type>" & Attributes.Value_Type (Index) & "</type>");

            if Attributes.Is_Declared (Index) then
               Self.Add_Line
                (To_Universal_String
                  ("        <isDeclared>true</isDeclared>"));

            else
               Self.Add_Line
                (To_Universal_String
                  ("        <isDeclared>false</isDeclared>"));
            end if;

            if Attributes.Is_Specified (Index) then
               Self.Add_Line
                (To_Universal_String
                  ("        <isSpecified>true</isSpecified>"));

            else
               Self.Add_Line
                (To_Universal_String
                  ("        <isSpecified>false</isSpecified>"));
            end if;

            Self.Add_Line (To_Universal_String ("      </attribute>"));

            Next (Position);
         end loop;

         Self.Add_Line (To_Universal_String ("    </attributes>"));
      end if;

      Self.Add_Line (To_Universal_String ("  </startElement>"));
   end Start_Element;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding procedure Start_Prefix_Mapping
    (Self    : in out SAX_Events_Writer;
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

      if URI.Is_Empty then
         Self.Add_Line (To_Universal_String ("    <data/>"));

      else
         Self.Add_Line ("    <data>" & URI & "</data>");
      end if;

      Self.Add_Line (To_Universal_String ("  </startPrefixMapping>"));
   end Start_Prefix_Mapping;

   ----------
   -- Text --
   ----------

   not overriding function Text
    (Self : SAX_Events_Writer) return League.Strings.Universal_String is
   begin
      return Self.Result;
   end Text;

   ---------------------------------
   -- Unparsed_Entity_Declaration --
   ---------------------------------

   overriding procedure Unparsed_Entity_Declaration
    (Self          : in out SAX_Events_Writer;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String;
     Success       : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <unparsedEntity>"));
      Self.Add_Line ("    <name>" & Name & "</name>");

      if not Public_Id.Is_Empty then
         Self.Add_Line
          ("    <publicID>" & Escape_String (Public_Id) & "</publicID>");
      end if;

      if not System_Id.Is_Empty then
         Self.Add_Line ("    <systemID>" & System_Id & "</systemID>");
      end if;

      Self.Add_Line ("    <notation>" & Notation_Name & "</notation>");
      Self.Add_Line (To_Universal_String ("  </unparsedEntity>"));
   end Unparsed_Entity_Declaration;

   -------------
   -- Warning --
   -------------

   overriding procedure Warning
    (Self       : in out SAX_Events_Writer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is
   begin
      Self.Add_Line (To_Universal_String ("  <warning/>"));
   end Warning;

end SAX_Events_Writers;
