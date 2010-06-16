------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2009-2010, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Strings.Unbounded;

with Matreshka.Internals.Unicode.Ucd;
with Matreshka.Internals.Utf16;

package body League.Strings.Debug is

   use Ada.Strings.Unbounded;
   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Ucd;
   use Matreshka.Internals.Utf16;

   function Code_Point_Image (Item : Code_Point) return String;

   function Collation_Weight_Image (Item : Collation_Weight) return String;

   ----------------------
   -- Code_Point_Image --
   ----------------------

   function Code_Point_Image (Item : Code_Point) return String is
      To_Hex_Digit : constant
        array (Code_Point range 0 .. 15) of Character
          := "0123456789ABCDEF";

   begin
      if Item <= 16#FFFF# then
         return Result : String (1 .. 4) do
            Result (4) := To_Hex_Digit (Item mod 16);
            Result (3) := To_Hex_Digit ((Item / 16) mod 16);
            Result (2) := To_Hex_Digit ((Item / 256) mod 16);
            Result (1) := To_Hex_Digit ((Item / 4096) mod 16);
         end return;

      else
         return Result : String (1 .. 6) do
            Result (6) := To_Hex_Digit (Item mod 16);
            Result (5) := To_Hex_Digit ((Item / 16) mod 16);
            Result (4) := To_Hex_Digit ((Item / 256) mod 16);
            Result (3) := To_Hex_Digit ((Item / 4096) mod 16);
            Result (2) := To_Hex_Digit ((Item / 65536) mod 16);
            Result (1) := To_Hex_Digit ((Item / 1048576) mod 16);
         end return;
      end if;
   end Code_Point_Image;

   ----------------------------
   -- Collation_Weight_Image --
   ----------------------------

   function Collation_Weight_Image (Item : Collation_Weight) return String is
      To_Hex_Digit : constant
        array (Collation_Weight range 0 .. 15) of Character
          := "0123456789ABCDEF";
      Result       : String (1 .. 4);

   begin
      Result (4) := To_Hex_Digit (Item mod 16);
      Result (3) := To_Hex_Digit ((Item / 16) mod 16);
      Result (2) := To_Hex_Digit ((Item / 256) mod 16);
      Result (1) := To_Hex_Digit ((Item / 4096) mod 16);

      return Result;
   end Collation_Weight_Image;

   -----------------
   -- Debug_Image --
   -----------------

   function Debug_Image (Item : Sort_Key) return String is
      D      : constant Shared_Sort_Key_Access := Item.Data;
      Result : Unbounded_String;

   begin
      Append (Result, '[');

      for J in 1 .. D.Last loop
         if J /= 1 then
            Append (Result, ' ');
         end if;

         if D.Data (J) = 0 then
            Append (Result, "|");

         else
            Append (Result, Collation_Weight_Image (D.Data (J)));
         end if;
      end loop;

      Append (Result, ']');

      return To_String (Result);
   end Debug_Image;

   -----------------
   -- Debug_Image --
   -----------------

   function Debug_Image (Item : Universal_String) return String is
      D      : constant Shared_String_Access := Item.Data;
      Result : Unbounded_String;
      Index  : Utf16_String_Index := 0;
      Code   : Code_Point;

   begin
      while Index < D.Unused loop
         if Index /= 1 then
            Append (Result, ' ');
         end if;

         Unchecked_Next (D.Value, Index, Code);
         Append (Result, Code_Point_Image (Code));
      end loop;

      return To_String (Result);
   end Debug_Image;

end League.Strings.Debug;
