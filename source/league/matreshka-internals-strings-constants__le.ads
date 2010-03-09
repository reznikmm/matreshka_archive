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
--  This package provides several constants to avoid duplication of 32-bit
--  and 64-bit optimized implementations of string management subprograms for
--  little-endian and big-endian platforms.
--
--  This package is for little-endian platforms.
------------------------------------------------------------------------------
with Interfaces;
with Matreshka.Internals.Utf16;

private package Matreshka.Internals.Strings.Constants is

   pragma Preelaborate;

   Terminator_Mask_32 : constant
     array (Matreshka.Internals.Utf16.Utf16_String_Index range 0 .. 1)
       of Interfaces.Unsigned_32
         := (0 => 16#0000_0000#,
             1 => 16#0000_FFFF#);
   --  This mask is used to set unused components of the element to zero on
   --  32-bits platforms.

   Terminator_Mask_64 : constant
     array (Matreshka.Internals.Utf16.Utf16_String_Index range 0 .. 3)
       of Interfaces.Unsigned_64
         := (0 => 16#0000_0000_0000_0000#,
             1 => 16#0000_0000_0000_FFFF#,
             2 => 16#0000_0000_FFFF_FFFF#,
             3 => 16#0000_FFFF_FFFF_FFFF#);
   --  This mask is used to set unused components of the element to zero on
   --  64-bits platforms.

end Matreshka.Internals.Strings.Constants;
