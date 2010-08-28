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
--  This is portable implementation of the package. It doesn't use any
--  platform specific features and its efficiency completely rely on
--  compiler's optimization.
------------------------------------------------------------------------------
with Interfaces;

package body Matreshka.Internals.Strings.Compare is

   use Interfaces;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   type Unsigned_32_Unrestricted_Array is
     array (Utf16_String_Index) of Unsigned_32;

   --------------
   -- Is_Equal --
   --------------

   function Is_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      pragma Suppress (Access_Check);
      pragma Suppress (Alignment_Check);

   begin
      if Left = Right then
         return True;
      end if;

      if Left.Unused /= Right.Unused then
         return False;
      end if;

      declare
         LV   : Unsigned_32_Unrestricted_Array;
         for LV'Address use Left.Value'Address;
         RV   : Unsigned_32_Unrestricted_Array;
         for RV'Address use Right.Value'Address;
         Last : constant Utf16_String_Index := Left.Unused / 2;

      begin
         for J in 0 .. Last loop
            if LV (J) /= RV (J) then
               return False;
            end if;
         end loop;
      end;

      return True;
   end Is_Equal;

   ----------------
   -- Is_Greater --
   ----------------

   function Is_Greater
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      pragma Suppress (Access_Check);
      pragma Suppress (Alignment_Check);
      pragma Suppress (Index_Check);

   begin
      if Left = Right then
         return False;
      end if;

      declare
         Last : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused) / 2;

         LV   : Unsigned_32_Unrestricted_Array;
         for LV'Address use Left.Value'Address;
         RV   : Unsigned_32_Unrestricted_Array;
         for RV'Address use Right.Value'Address;

      begin
         for J in 0 .. Last loop
            if LV (J) /= RV (J) then
               if Left.Value (J * 2) /= Right.Value (J * 2) then
                  return Is_Greater (Left.Value (J * 2), Right.Value (J * 2));

               else
                  return
                    Is_Greater
                     (Left.Value (J * 2 + 1), Right.Value (J * 2 + 1));
               end if;
            end if;
         end loop;
      end;

      return Left.Unused > Right.Unused;
   end Is_Greater;

   -------------------------
   -- Is_Greater_Or_Equal --
   -------------------------

   function Is_Greater_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      pragma Suppress (Access_Check);
      pragma Suppress (Alignment_Check);
      pragma Suppress (Index_Check);

   begin
      if Left = Right then
         return True;
      end if;

      declare
         Last : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused) / 2;

         LV   : Unsigned_32_Unrestricted_Array;
         for LV'Address use Left.Value'Address;
         RV   : Unsigned_32_Unrestricted_Array;
         for RV'Address use Right.Value'Address;

      begin
         for J in 0 .. Last loop
            if LV (J) /= RV (J) then
               if Left.Value (J * 2) /= Right.Value (J * 2) then
                  return Is_Greater (Left.Value (J * 2), Right.Value (J * 2));

               else
                  return
                    Is_Greater
                     (Left.Value (J * 2 + 1), Right.Value (J * 2 + 1));
               end if;
            end if;
         end loop;
      end;

      return Left.Unused >= Right.Unused;
   end Is_Greater_Or_Equal;

   -------------
   -- Is_Less --
   -------------

   function Is_Less
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      pragma Suppress (Access_Check);
      pragma Suppress (Alignment_Check);
      pragma Suppress (Index_Check);

   begin
      if Left = Right then
         return False;
      end if;

      declare
         Last : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused) / 2;

         LV   : Unsigned_32_Unrestricted_Array;
         for LV'Address use Left.Value'Address;
         RV   : Unsigned_32_Unrestricted_Array;
         for RV'Address use Right.Value'Address;

      begin
         for J in 0 .. Last loop
            if LV (J) /= RV (J) then
               if Left.Value (J * 2) /= Right.Value (J * 2) then
                  return Is_Less (Left.Value (J * 2), Right.Value (J * 2));

               else
                  return
                    Is_Less (Left.Value (J * 2 + 1), Right.Value (J * 2 + 1));
               end if;
            end if;
         end loop;
      end;

      return Left.Unused < Right.Unused;
   end Is_Less;

   ----------------------
   -- Is_Less_Or_Equal --
   ----------------------

   function Is_Less_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean
   is
      pragma Suppress (Access_Check);
      pragma Suppress (Alignment_Check);
      pragma Suppress (Index_Check);

   begin
      if Left = Right then
         return True;
      end if;

      declare
         Last : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused) / 2;

         LV   : Unsigned_32_Unrestricted_Array;
         for LV'Address use Left.Value'Address;
         RV   : Unsigned_32_Unrestricted_Array;
         for RV'Address use Right.Value'Address;

      begin
         for J in 0 .. Last loop
            if LV (J) /= RV (J) then
               if Left.Value (J * 2) /= Right.Value (J * 2) then
                  return Is_Less (Left.Value (J * 2), Right.Value (J * 2));

               else
                  return
                    Is_Less (Left.Value (J * 2 + 1), Right.Value (J * 2 + 1));
               end if;
            end if;
         end loop;
      end;

      return Left.Unused <= Right.Unused;
   end Is_Less_Or_Equal;

end Matreshka.Internals.Strings.Compare;
