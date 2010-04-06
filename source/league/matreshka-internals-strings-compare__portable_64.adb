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
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
--  This is portable implementation of the package. It doesn't use any
--  platform specific features and its efficiency completely rely on
--  compiler's optimization.
------------------------------------------------------------------------------
with Interfaces;

with Matreshka.Internals.Strings.Constants;

package body Matreshka.Internals.Strings.Compare is

   use Interfaces;
   use Matreshka.Internals.Strings.Constants;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   type Unsigned_64_Unrestricted_Array is
     array (Utf16_String_Index) of Unsigned_64;

   --------------
   -- Is_Equal --
   --------------

   function Is_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean is
   begin
      if Left = Right then
         return True;
      end if;

      if Left.Unused /= Right.Unused then
         return False;
      end if;

      declare
         LV   : Unsigned_64_Unrestricted_Array;
         for LV'Address use Left.Value'Address;
         RV   : Unsigned_64_Unrestricted_Array;
         for RV'Address use Right.Value'Address;
         Last : constant Utf16_String_Index := Left.Unused / 4;

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
      Right : not null Shared_String_Access) return Boolean is
   begin
      if Left = Right then
         return False;
      end if;

      declare
         Last : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused) / 4;

         LV   : Unsigned_64_Unrestricted_Array;
         for LV'Address use Left.Value'Address;
         RV   : Unsigned_64_Unrestricted_Array;
         for RV'Address use Right.Value'Address;

      begin
         for J in 0 .. Last loop
            if LV (J) /= RV (J) then
               for K in J * 4 .. J * 4 + 3 loop
                  if Left.Value (K) /= Right.Value (K) then
                     return Is_Greater (Left.Value (K), Right.Value (K));
                  end if;
               end loop;
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
      Right : not null Shared_String_Access) return Boolean is
   begin
      if Left = Right then
         return True;
      end if;

      declare
         Last : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused) / 4;

         LV   : Unsigned_64_Unrestricted_Array;
         for LV'Address use Left.Value'Address;
         RV   : Unsigned_64_Unrestricted_Array;
         for RV'Address use Right.Value'Address;

      begin
         for J in 0 .. Last loop
            if LV (J) /= RV (J) then
               for K in J * 4 .. J * 4 + 3 loop
                  if Left.Value (K) /= Right.Value (K) then
                     return Is_Greater (Left.Value (K), Right.Value (K));
                  end if;
               end loop;
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
      Right : not null Shared_String_Access) return Boolean is
   begin
      if Left = Right then
         return False;
      end if;

      declare
         Last : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused) / 4;

         LV   : Unsigned_64_Unrestricted_Array;
         for LV'Address use Left.Value'Address;
         RV   : Unsigned_64_Unrestricted_Array;
         for RV'Address use Right.Value'Address;

      begin
         for J in 0 .. Last loop
            if LV (J) /= RV (J) then
               for K in J * 4 .. J * 4 + 3 loop
                  if Left.Value (K) /= Right.Value (K) then
                     return Is_Less (Left.Value (K), Right.Value (K));
                  end if;
               end loop;
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
      Right : not null Shared_String_Access) return Boolean is
   begin
      if Left = Right then
         return True;
      end if;

      declare
         Last : constant Utf16_String_Index
           := Utf16_String_Index'Min (Left.Unused, Right.Unused) / 4;

         LV   : Unsigned_64_Unrestricted_Array;
         for LV'Address use Left.Value'Address;
         RV   : Unsigned_64_Unrestricted_Array;
         for RV'Address use Right.Value'Address;

      begin
         for J in 0 .. Last loop
            if LV (J) /= RV (J) then
               for K in J * 4 .. J * 4 + 3 loop
                  if Left.Value (K) /= Right.Value (K) then
                     return Is_Less (Left.Value (K), Right.Value (K));
                  end if;
               end loop;
            end if;
         end loop;
      end;

      return Left.Unused <= Right.Unused;
   end Is_Less_Or_Equal;

end Matreshka.Internals.Strings.Compare;
