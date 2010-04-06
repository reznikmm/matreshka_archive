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

with Matreshka.Internals.Strings.Constants;

separate (Matreshka.Internals.Strings)
procedure Fill_Null_Terminator (Self : not null Shared_String_Access) is

   use Interfaces;
   use Matreshka.Internals.Strings.Constants;

   type Unsigned_32_Unrestricted_Array is
     array (Utf16_String_Index) of Unsigned_32;

   SV     : Unsigned_32_Unrestricted_Array;
   for SV'Address use Self.Value'Address;
   Index  : constant Utf16_String_Index := Self.Unused / 2;
   Offset : constant Utf16_String_Index := Self.Unused mod 2;

begin
   SV (Index) := SV (Index) and Terminator_Mask_32 (Offset);
end Fill_Null_Terminator;
