------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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

with League.Characters;
with League.Strings.Hash;
with League.String_Vectors;
with XML.SAX.Attributes;
with XML.SAX.Content_Handlers;
with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Simple_Readers;

package body CSMIB.Parser is

   use type League.Strings.Universal_String;
 
   package String_Sets is
     new Ada.Containers.Hashed_Sets
          (League.Strings.Universal_String,
           League.Strings.Hash,
           League.Strings."=");

   type CSMIB_Parser is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler with record
      Text      : League.Strings.Universal_String;
      Collect   : Boolean := False;
      In_Record : Boolean := False;
      MIB       : Positive;
      Aliases   : League.String_Vectors.Universal_String_Vector;
      All_Names : String_Sets.Set;
   end record;

   overriding procedure Characters
    (Self    : in out CSMIB_Parser;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_Element
    (Self           : in out CSMIB_Parser;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

   overriding function Error_String
    (Self : CSMIB_Parser) return League.Strings.Universal_String;

   overriding procedure Start_Element
    (Self           : in out CSMIB_Parser;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

   function Normalize
    (Item : League.Strings.Universal_String)
       return League.Strings.Universal_String;

   Alias_Element  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("alias");
   Name_Element   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("name");
   Record_Element : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("record");
   Value_Element  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("value");

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out CSMIB_Parser;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Self.Collect then
         Self.Text.Append (Text);
      end if;
   end Characters;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out CSMIB_Parser;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean)
   is
      Name : League.Strings.Universal_String;

   begin
      if Qualified_Name = Alias_Element then
         if Self.In_Record then
            Name := Normalize (Self.Text);

            if not Self.All_Names.Contains (Name) then
               Self.All_Names.Insert (Name);
               Self.Aliases.Append (Name);
            end if;
         end if;

         Self.Text.Clear;
         Self.Collect := False;

      elsif Qualified_Name = Name_Element then
         if Self.In_Record then
            Name := Normalize (Self.Text);

            if Self.All_Names.Contains (Name) then
               --  Name of the character set is in conflict with alias of
               --  someone else character set.

               raise Constraint_Error;
            end if;

            Self.All_Names.Insert (Name);
            Self.Aliases.Append (Name);
         end if;

         Self.Text.Clear;
         Self.Collect := False;

      elsif Qualified_Name = Record_Element then
         for J in 1 .. Self.Aliases.Length loop
            MIBs.Append ((Self.Aliases.Element (J), Self.MIB));
         end loop;

         Self.In_Record := False;
         Self.Aliases.Clear;

      elsif Qualified_Name = Value_Element then
         Self.MIB :=
           Positive'Wide_Wide_Value (Self.Text.To_Wide_Wide_String);
         Self.Text.Clear;
         Self.Collect := False;
      end if;
   end End_Element;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : CSMIB_Parser) return League.Strings.Universal_String is
   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

   ---------------
   -- Normalize --
   ---------------

   function Normalize
    (Item : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      use type League.Characters.Universal_Character;

      Aux   : League.Strings.Universal_String;
      Digit : Boolean := False;

   begin
      for J in 1 .. Item.Length loop
         case Item.Element (J).To_Wide_Wide_Character is
            when 'A' .. 'Z' =>
               Aux.Append (Item.Element (J).Simple_Lowercase_Mapping);
               Digit := False;

            when 'a' .. 'z' =>
               Aux.Append (Item.Element (J));
               Digit := False;

            when '0' .. '9' =>
               if Item.Element (J) /= '0' or Digit then
                  Aux.Append (Item.Element (J));
                  Digit := True;
               end if;

            when others =>
               null;
         end case;
      end loop;

      return Aux;
   end Normalize;

   -----------
   -- Parse --
   -----------

   procedure Parse (File : League.Strings.Universal_String) is
      Source : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
      Reader : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
      Parser : aliased CSMIB_Parser;

   begin
      Reader.Set_Content_Handler (Parser'Unchecked_Access);
      Source.Open_By_File_Name (File);
      Reader.Parse (Source'Unchecked_Access);
      Source.Close;
   end Parse;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out CSMIB_Parser;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
   begin
      if Qualified_Name = Alias_Element then
         Self.Text.Clear;
         Self.Collect := True;

      elsif Qualified_Name = Name_Element then
         Self.Text.Clear;
         Self.Collect := True;

      elsif Qualified_Name = Record_Element then
         Self.Aliases.Clear;
         Self.MIB := Positive'Last;
         Self.In_Record := True;

      elsif Qualified_Name = Value_Element then
         Self.Text.Clear;
         Self.Collect := True;
      end if;
   end Start_Element;

end CSMIB.Parser;
