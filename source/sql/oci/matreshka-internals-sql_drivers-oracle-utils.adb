------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                           SQL Database Access                            --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Strings.Fixed;

with League.Calendars.ISO_8601;

package body Matreshka.Internals.SQL_Drivers.Oracle.Utils is

   Invert : constant array (Boolean) of
     System.Storage_Elements.Storage_Element := (True => 16#FF#, False => 0);

   Sign : constant array (Boolean) of Character := (True => '-', False => '+');

   -----------------
   -- Decode_Date --
   -----------------

   function Decode_Date (Buffer : OCIDate) return League.Calendars.Date is
   begin
      return League.Calendars.ISO_8601.Create
        (Year  => League.Calendars.ISO_8601.Year_Number (Buffer.Year),
         Month => League.Calendars.ISO_8601.Month_Number (Buffer.Month),
         Day   => League.Calendars.ISO_8601.Day_Number (Buffer.Day));
   end Decode_Date;

   -----------------
   -- Encode_Date --
   -----------------

   function Encode_Date (Value : League.Calendars.Date) return OCIDate is
      Year   : League.Calendars.ISO_8601.Year_Number;
      Month  : League.Calendars.ISO_8601.Month_Number;
      Day    : League.Calendars.ISO_8601.Day_Number;
   begin
      League.Calendars.ISO_8601.Split (Value, Year, Month, Day);

      return (Year => Interfaces.Integer_16 (Year),
              Month => Interfaces.Unsigned_8 (Month),
              Day => Interfaces.Unsigned_8 (Day),
              HH => 0, MM => 0, SS => 0);
   end Encode_Date;

   -------------------
   -- Decode_Number --
   -------------------

   function Decode_Number (Buffer : Storage_Array) return String is
      use System.Storage_Elements;

      --  Length of mantissa in base_100 digits (bytes)
      Length    : Natural := Storage_Element'Pos (Buffer (1)) - 1;
      Negative  : constant Boolean := Buffer (2) < 128;
      Exp       : constant Integer :=
        Natural (Buffer (2) xor Invert (Negative)) - 128 - 64;
      Exp_Image : String := Integer'Image (2 * Exp);
      Item      : Storage_Element;
   begin
      if Exp_Image (1) = ' ' then
         Exp_Image (1) := '+';
      end if;

      if Length > 0 and Buffer (Storage_Offset (Length + 2)) = 102 then
         --  Skip trailing 102
         Length := Length - 1;
      end if;

      if Length = 0 then
         return "0";
      else
         declare
            Image : String (1 .. Length * 2 + 4);  --  Image: +0.9988776655E
         begin
            Image (1) := Sign (Negative);
            Image (2) := '0';
            Image (3) := '.';
            Image (Image'Last) := 'E';

            for J in 1 .. Length loop
               Item := Buffer (Storage_Offset (J) + 2);

               if Negative then
                  Item := 101 - Item;
               else
                  Item := Item - 1;
               end if;

               Image (J * 2 + 2) := Character'Val (Item / 10 + 48);
               Image (J * 2 + 3) := Character'Val (Item mod 10 + 48);
            end loop;

            return Image & Exp_Image;
         end;
      end if;
   end Decode_Number;

   -------------------
   -- Encode_Number --
   -------------------

   procedure Encode_Number
     (Image  : String;   --  +1234E+5
      Buffer : in out Storage_Array)
   is
      use System.Storage_Elements;
      procedure Append_Digit (Value : Character);

      Negative : constant Boolean := Image (Image'First) = '-';
      Offset   : Storage_Offset := 2;
      Odd      : Boolean := True;
      Cache    : Storage_Element := 0;

      procedure Append_Digit (Value : Character) is
      begin
         if Odd then
            Cache := Character'Pos (Value) - 48;
         else
            Offset := Offset + 1;
            Buffer (Offset) := Cache * 10 + Character'Pos (Value) - 48;

            if Negative then
               Buffer (Offset) := 101 - Buffer (Offset);
            else
               Buffer (Offset) := Buffer (Offset) + 1;
            end if;
         end if;
         Odd := not Odd;
      end Append_Digit;

      E      : constant Positive := Ada.Strings.Fixed.Index (Image, "E");
      Last   : Positive := E - 1;
      Exp    : constant Integer :=
        Integer'Value (Image (E + 1 .. Image'Last)) + E - 2;
   begin
      Buffer (2) := Storage_Element ((Exp + 1) / 2 + 64 +128)
        xor Invert (Negative);

      if Image /= "+0E+0" then
         while Image (Last) = '0' loop
            Last := Last - 1;
         end loop;

         if Exp mod 2 /= 0 then
            Append_Digit ('0');
         end if;

         for J in 2 .. Last loop
            Append_Digit (Image (J));
         end loop;

         if not Odd then
            Append_Digit ('0');
         end if;

         if Negative and Offset < Buffer'Last then
            Offset := Offset + 1;
            Buffer (Offset) := 102;
         end if;
      end if;

      Buffer (1) := Storage_Element (Offset - 1);
   end Encode_Number;

end Matreshka.Internals.SQL_Drivers.Oracle.Utils;
