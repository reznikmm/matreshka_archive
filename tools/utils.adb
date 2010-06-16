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
-- Copyright © 2009, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Utils is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Ucd;

   --------------------------
   -- Code_Point_Ada_Image --
   --------------------------

   function Code_Point_Ada_Image (Item : Code_Point) return String is
      To_Hex_Digit : constant
        array (Code_Point range 0 .. 15) of Character
          := "0123456789ABCDEF";

   begin
      return Result : String (1 .. 10) := "16#XXXXXX#" do
         Result (9) := To_Hex_Digit (Item mod 16);
         Result (8) := To_Hex_Digit ((Item / 16) mod 16);
         Result (7) := To_Hex_Digit ((Item / 256) mod 16);
         Result (6) := To_Hex_Digit ((Item / 4096) mod 16);
         Result (5) := To_Hex_Digit ((Item / 65536) mod 16);
         Result (4) := To_Hex_Digit ((Item / 1048576) mod 16);
      end return;
   end Code_Point_Ada_Image;

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

   -----------------------
   -- First_Stage_Image --
   -----------------------

   function First_Stage_Image (Item : First_Stage_Index) return String is
      To_Hex_Digit : constant
        array (First_Stage_Index range 0 .. 15) of Character
          := "0123456789ABCDEF";
      Result       : String (1 .. 4);

   begin
      Result (4) := To_Hex_Digit (Item mod 16);
      Result (3) := To_Hex_Digit ((Item / 16) mod 16);
      Result (2) := To_Hex_Digit ((Item / 256) mod 16);
      Result (1) := To_Hex_Digit ((Item / 4096) mod 16);

      return Result;
   end First_Stage_Image;

   -------------------------------
   -- Parse_Code_Point_Sequence --
   -------------------------------

   function Parse_Code_Point_Sequence (Text : String)
     return Code_Point_Sequence
   is
      First       : Positive := Text'First;
      Last        : Natural;
      Result      : Code_Point_Sequence (1 .. Text'Length / 4);
      Last_Result : Sequence_Count := 0;

      procedure Scan;

      ----------
      -- Scan --
      ----------

      procedure Scan is
      begin
         while First < Text'Last
           and then Text (First) = ' '
         loop
            First := First + 1;
         end loop;

         Last := First - 1;

         while Last < Text'Last loop
            Last := Last + 1;

            if Text (Last) not in '0' .. '9'
              and then Text (Last) not in 'A' .. 'F'
            then
               Last := Last - 1;

               exit;
            end if;
         end loop;
      end Scan;

   begin
      while First < Text'Last loop
         Scan;

         Last_Result := Last_Result + 1;
         Result (Last_Result) :=
           Code_Point'Value ("16#" & Text (First .. Last) & "#");

         First := Last + 1;
      end loop;

      return Result (1 .. Last_Result);
   end Parse_Code_Point_Sequence;

   ------------------------
   -- Second_Stage_Image --
   ------------------------

   function Second_Stage_Image (Item : Second_Stage_Index) return String is
      To_Hex_Digit : constant
        array (Second_Stage_Index range 0 .. 15) of Character
          := "0123456789ABCDEF";
      Result       : String (1 .. 2);

   begin
      Result (2) := To_Hex_Digit (Item mod 16);
      Result (1) := To_Hex_Digit ((Item / 16) mod 16);

      return Result;
   end Second_Stage_Image;

   --------------------------
   -- Sequence_Count_Image --
   --------------------------

   function Sequence_Count_Image (Item : Sequence_Count) return String is
      Aux : constant String := Sequence_Count'Image (Item);

   begin
      return Aux (Aux'First + 1 .. Aux'Last);
   end Sequence_Count_Image;

end Utils;
