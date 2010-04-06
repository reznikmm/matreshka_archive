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
with Interfaces;

with Matreshka.Internals.SIMD.Intel;

separate (Matreshka.Internals.Strings)
procedure Fill_Null_Terminator (Self : not null Shared_String_Access) is

   use Interfaces;
   use Matreshka.Internals.SIMD.Intel;

   Fill_Terminator_Mask : constant
     array (Utf16_String_Index range 0 .. 7) of v8hi :=
      (0 => (              others => 0),
       1 => (1      => -1, others => 0),
       2 => (1 .. 2 => -1, others => 0),
       3 => (1 .. 3 => -1, others => 0),
       4 => (1 .. 4 => -1, others => 0),
       5 => (1 .. 5 => -1, others => 0),
       6 => (1 .. 6 => -1, others => 0),
       7 => (1 .. 7 => -1, others => 0));

   type v8hi_Unrestricted_Array is array (Utf16_String_Index) of v8hi;

   Value  : v8hi_Unrestricted_Array;
   for Value'Address use Self.Value'Address;
   Index  : constant Utf16_String_Index := Self.Unused / 8;
   Offset : constant Utf16_String_Index := Self.Unused mod 8;

begin
   Value (Index) :=
     To_v8hi
      (mm_and_si128
        (To_v2di (Value (Index)), To_v2di (Fill_Terminator_Mask (Offset))));
end Fill_Null_Terminator;
