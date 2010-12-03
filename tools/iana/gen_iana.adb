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
with Ada.Characters.Handling;
with Ada.Containers.Hashed_Sets;
with Ada.Containers.Vectors;
with Ada.Strings.Fixed;
with Ada.Strings.Unbounded.Hash;
with Ada.Text_IO;

procedure Gen_IANA is

   use Ada.Characters.Handling;
   use Ada.Strings;
   use Ada.Strings.Fixed;
   use Ada.Strings.Unbounded;
   use Ada.Text_IO;

   package Unbounded_String_Vectors is
     new Ada.Containers.Vectors (Positive, Unbounded_String);

   package Unbounded_String_Sets is
     new Ada.Containers.Hashed_Sets (Unbounded_String, Hash, "=");

   type Mapping is record
      Name : Unbounded_String;
      MIB  : Integer;
   end record;

   package Mapping_Vectors is new Ada.Containers.Vectors (Positive, Mapping);

   use Unbounded_String_Sets;
   use Unbounded_String_Vectors;
   use Mapping_Vectors;

   Buffer : String (1 .. 80);
   Last   : Natural;

   Name   : Unbounded_String;
   MIB    : Integer;

   Normalized_Names : Unbounded_String_Sets.Set;
   Name_To_MIB      : Mapping_Vectors.Vector;

--   Full_Name : Unbounded_String_Vectors.Vector;

   function Normalize (Item : Unbounded_String) return Unbounded_String is
      Aux   : Unbounded_String;
      Digit : Boolean := False;

   begin
      for J in 1 .. Length (Item) loop
         case Element (Item, J) is
            when 'A' .. 'Z' =>
               Append (Aux, To_Lower (Element (Item, J)));
               Digit := False;

            when 'a' .. 'z' =>
               Append (Aux, Element (Item, J));
               Digit := False;

            when '0' .. '9' =>
               if Element (Item, J) /= '0' or Digit then
                  Append (Aux, Element (Item, J));
                  Digit := True;
               end if;

            when others =>
               null;
         end case;
      end loop;

      return Aux;
   end Normalize;

   function Image (Item : Character) return String is
      Hex : constant String := "0123456789ABCDEF";
      Aux : String := "16#00XX#";

   begin
      Aux (6) := Hex (Character'Pos (Item) / 16 + 1);
      Aux (7) := Hex (Character'Pos (Item) mod 16 + 1);

      return Aux;
   end Image;

begin
   while not End_Of_File loop
      Get_Line (Buffer, Last);

      if Last >= 5 and then Buffer (1 .. 5) = "Name:" then
         Name := To_Unbounded_String (Trim (Buffer (6 .. Last), Both));

         if Index (Name, " ") /= 0 then
            Name := Unbounded_Slice (Name, 1, Index (Name, " ") - 1);
         end if;

      elsif Last >= 8 and then Buffer (1 .. 8) = "MIBenum:" then
         MIB := Integer'Value (Trim (Buffer (10 .. Last), Both));

         if not Normalized_Names.Contains (Normalize (Name)) then
            Normalized_Names.Insert (Normalize (Name));
            Name_To_MIB.Append ((Normalize (Name), MIB));

         else
            raise Program_Error;
         end if;

      elsif Last >= 6 and then Buffer (1 .. 6) = "Alias:" then
         Name := To_Unbounded_String (Trim (Buffer (7 .. Last), Both));

         if Index (Name, " ") /= 0 then
            Name := Unbounded_Slice (Name, 1, Index (Name, " ") - 1);
         end if;

         if Name /= "None"
           and not Normalized_Names.Contains (Normalize (Name))
         then
            Normalized_Names.Insert (Normalize (Name));
            Name_To_MIB.Append ((Normalize (Name), MIB));
         end if;
      end if;
   end loop;

   Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Put_Line
    ("--                                                                     "
       & "     --");
   Put_Line
    ("--                            Matreshka Project                        "
       & "     --");
   Put_Line
    ("--                                                                     "
       & "     --");
   Put_Line
    ("--         Localization, Internationalization, Globalization for Ada   "
       & "     --");
   Put_Line
    ("--                                                                     "
       & "     --");
   Put_Line
    ("--                        Runtime Library Component                    "
       & "     --");
   Put_Line
    ("--                                                                     "
       & "     --");
   Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Put_Line
    ("--                                                                     "
       & "     --");
   Put_Line
    ("-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                "
       & "     --");
   Put_Line
    ("-- All rights reserved.                                                "
       & "     --");
   Put_Line
    ("--                                                                     "
       & "     --");
   Put_Line
    ("-- Redistribution and use in source and binary forms, with or without  "
       & "     --");
   Put_Line
    ("-- modification, are permitted provided that the following conditions  "
       & "     --");
   Put_Line
    ("-- are met:                                                            "
       & "     --");
   Put_Line
    ("--                                                                     "
       & "     --");
   Put_Line
    ("--  * Redistributions of source code must retain the above copyright   "
       & "     --");
   Put_Line
    ("--    notice, this list of conditions and the following disclaimer.    "
       & "     --");
   Put_Line
    ("--                                                                     "
       & "     --");
   Put_Line
    ("--  * Redistributions in binary form must reproduce the above copyright"
       & "     --");
   Put_Line
    ("--    notice, this list of conditions and the following disclaimer in t"
       & "he   --");
   Put_Line
    ("--    documentation and/or other materials provided with the distributi"
       & "on.  --");
   Put_Line
    ("--                                                                     "
       & "     --");
   Put_Line
    ("--  * Neither the name of the Vadim Godunko, IE nor the names of its   "
       & "     --");
   Put_Line
    ("--    contributors may be used to endorse or promote products derived f"
       & "rom  --");
   Put_Line
    ("--    this software without specific prior written permission.         "
       & "     --");
   Put_Line
    ("--                                                                     "
       & "     --");
   Put_Line
    ("-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "
       & "     --");
   Put_Line
    ("-- ""AS IS"" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT "
       & "       --");
   Put_Line
    ("-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FO"
       & "R    --");
   Put_Line
    ("-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT"
       & "     --");
   Put_Line
    ("-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTA"
       & "L,   --");
   Put_Line
    ("-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIM"
       & "ITED --");
   Put_Line
    ("-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, "
       & "OR   --");
   Put_Line
    ("-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY "
       & "OF   --");
   Put_Line
    ("-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING"
       & "     --");
   Put_Line
    ("-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS  "
       & "     --");
   Put_Line
    ("-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.        "
       & "     --");
   Put_Line
    ("--                                                                     "
       & "     --");
   Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   Put_Line
    ("--  $Revision$ $Date$");
   Put_Line
    ("-----------------------------------------------------------------------"
       & "-------");
   New_Line;
   Put_Line ("with Matreshka.Internals.Strings;");
   New_Line;
   Put_Line
    ("private package Matreshka.Internals.Text_Codecs.IANA_Registry is");
   New_Line;
   Put_Line ("   pragma Preelaborate;");
   New_Line;
   Put_Line ("   type IANA_Record is record");
   Put_Line
    ("      Name : not null Matreshka.Internals.Strings.Shared_String_Access;");
   Put_Line ("      MIB  : Character_Set;");
   Put_Line ("   end record;");

   --  Generate objects for normalized encoding names.

   for J in 1 .. Integer (Name_To_MIB.Length) loop
      Name := Name_To_MIB.Element (J).Name;

      New_Line;
      Put_Line
       ("   N"
          & Trim (Integer'Image (J), Both)
          & " : aliased Matreshka.Internals.Strings.Shared_String");
      Put_Line ("     := (Size   => 48,");
      Put_Line ("         Unused =>" & Integer'Image (Length (Name)) & ",");
      Put_Line ("         Length =>" & Integer'Image (Length (Name)) & ",");
      Put_Line ("         Value  =>");
      Put ("           (");

      for J in 1 .. Length (Name) loop
         Put (Image (Element (Name, J)));

         if J mod 5 = 0 then
            Put_Line (",");
            Put ("            ");

         else
            Put (", ");
         end if;
      end loop;

      Put_Line ("others => 16#0000#),");
      Put_Line ("         others => <>);");
      Put_Line ("   --  " & To_String (Name));
   end loop;

   --  Generate name to MIB mapping.

   New_Line;
   Put_Line ("   To_MIB : constant array (Positive range <>) of IANA_Record");
   Put ("     := (");

   for J in 1 .. Integer (Name_To_MIB.Length) loop
      if J /= 1 then
         Put_Line (",");
         Put ("         ");
      end if;

      Put
       ("(N" & Trim (Integer'Image (J), Both) & "'Access,"
          & Integer'Image (Name_To_MIB.Element (J).MIB) & ")");
   end loop;

   Put_Line (");");
   New_Line;
   Put_Line ("end Matreshka.Internals.Text_Codecs.IANA_Registry;");

end Gen_IANA;
