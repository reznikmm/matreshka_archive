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
with Ada.Integer_Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Wide_Wide_Text_IO;

with League.Strings.Internals;
with Matreshka.Internals.Strings;
with Matreshka.Internals.Utf16;

package body CSMIB.Generator is

   use Ada.Integer_Wide_Wide_Text_IO;
   use Ada.Wide_Wide_Text_IO;

   procedure Generate_String_Constant (Number : Positive);
   --  Generates object declaration and initialization for specified string.

   ------------------------------
   -- Generate_String_Constant --
   ------------------------------

   procedure Generate_String_Constant (Number : Positive) is
      use type Matreshka.Internals.Utf16.Utf16_String_Index;

      Internal : constant Matreshka.Internals.Strings.Shared_String_Access
        := League.Strings.Internals.Internal (MIBs (Number).Name);

      procedure Put (Item : Matreshka.Internals.Utf16.Utf16_Code_Unit);

      ---------
      -- Put --
      ---------

      procedure Put (Item : Matreshka.Internals.Utf16.Utf16_Code_Unit) is
         use type Matreshka.Internals.Utf16.Utf16_Code_Unit;

         Hex    : constant
           array (Matreshka.Internals.Utf16.Utf16_Code_Unit range 0 .. 15)
             of Wide_Wide_Character := "0123456789ABCDEF";
         Result : Wide_Wide_String := "16#XXXX#";

      begin
         Result (4) := Hex (Item / 4096);
         Result (5) := Hex ((Item / 256) mod 16);
         Result (6) := Hex ((Item / 16) mod 16);
         Result (7) := Hex (Item mod 16);

         Put (Result);
      end Put;

   begin
      New_Line;
      Put ("   N");
      Put (Number, Width => 0);
      Put_Line (" : aliased Matreshka.Internals.Strings.Shared_String");
      Put ("     := (Size   => ");
      Put (Integer (Internal.Size), Width => 0);
      Put_Line (",");
      Put ("         Unused => ");
      Put (Integer (Internal.Unused), Width => 0);
      Put_Line (",");
      Put ("         Length => ");
      Put (Internal.Length, Width => 0);
      Put_Line (",");
      Put_Line ("         Value  =>");
      Put ("          (");

      for J in 0 .. Internal.Unused - 1 loop
         if J /= 0 and J mod 4 = 0 then
            Put_Line (",");
            Put ("           ");

         elsif J /= 0 then
            Put (", ");
         end if;

         Put (Internal.Value (J));
      end loop;

      Put_Line (",");
      Put_Line ("           others => 16#0000#),");
      Put_Line ("         others => <>);");
      Put_Line ("   --  " & MIBs.Element (Number).Name.To_Wide_Wide_String);
   end Generate_String_Constant;

   --------------
   -- Generate --
   --------------

   procedure Generate is
   begin
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--                            Matreshka Project                     "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--         Localization, Internationalization, Globalization for Ada"
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--                        Runtime Library Component                 "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("-- Copyright © 2010-2013, Vadim Godunko <vgodunko@gmail.com>        "
          & "        --");
      Put_Line
       ("-- All rights reserved.                                             "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("-- Redistribution and use in source and binary forms, with or withou"
          & "t       --");
      Put_Line
       ("-- modification, are permitted provided that the following condition"
          & "s       --");
      Put_Line
       ("-- are met:                                                         "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--  * Redistributions of source code must retain the above copyright"
          & "        --");
      Put_Line
       ("--    notice, this list of conditions and the following disclaimer. "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--  * Redistributions in binary form must reproduce the above copyri"
          & "ght     --");
      Put_Line
       ("--    notice, this list of conditions and the following disclaimer i"
          & "n the   --");
      Put_Line
       ("--    documentation and/or other materials provided with the distrib"
          & "ution.  --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--  * Neither the name of the Vadim Godunko, IE nor the names of its"
          & "        --");
      Put_Line
       ("--    contributors may be used to endorse or promote products derive"
          & "d from  --");
      Put_Line
       ("--    this software without specific prior written permission.      "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTO"
          & "RS      --");
      Put_Line
       ("-- ""AS IS"" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT N"
          & "OT        --");
      Put_Line
       ("-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS"
          & " FOR    --");
      Put_Line
       ("-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRI"
          & "GHT     --");
      Put_Line
       ("-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDE"
          & "NTAL,   --");
      Put_Line
       ("-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT "
          & "LIMITED --");
      Put_Line
       ("-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DAT"
          & "A, OR   --");
      Put_Line
       ("-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEO"
          & "RY OF   --");
      Put_Line
       ("-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUD"
          & "ING     --");
      Put_Line
       ("-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THI"
          & "S       --");
      Put_Line
       ("-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     "
          & "        --");
      Put_Line
       ("--                                                                  "
          & "        --");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
      Put_Line
       ("--  $Revision" & "$ $Date" & "$");
      Put_Line
       ("--------------------------------------------------------------------"
          & "----------");
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
       ("      Name :"
          & " not null Matreshka.Internals.Strings.Shared_String_Access;");
      Put_Line ("      MIB  : Character_Set;");
      Put_Line ("   end record;");

      --  Generate objects for normalized encoding names.

      for J in 1 .. Integer (MIBs.Length) loop
         Generate_String_Constant (J);
      end loop;

      --  Generate name to MIB mapping.

      New_Line;
      Put_Line
       ("   To_MIB : constant array (Positive range <>) of IANA_Record");
      Put ("     := (");

      for J in 1 .. Integer (MIBs.Length) loop
         if J /= 1 then
            Put_Line (",");
            Put ("         ");
         end if;

         Put ("(N");
         Put (J, Width => 0);
         Put ("'Access, ");
         Put (MIBs.Element (J).MIB, Width => 0);
         Put (")");
      end loop;

      Put_Line (");");
      New_Line;
      Put_Line ("end Matreshka.Internals.Text_Codecs.IANA_Registry;");
   end Generate;

end CSMIB.Generator;
