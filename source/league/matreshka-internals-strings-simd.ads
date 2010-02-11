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
--  On some platforms use of Single Instruction Multiple Data processor's
--  instructions can significantly improve performance. Specification of this
--  package provides general interface for such operations. Several platform
--  specific implementation of this package implements specified operations
--  in platform specific manner.

package Matreshka.Internals.Strings.SIMD is

   pragma Preelaborate;

   function Is_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean;
   function Is_Less
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean;
   function Is_Greater
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean;
   function Is_Less_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean;
   function Is_Greater_Or_Equal
     (Left  : not null Shared_String_Access;
      Right : not null Shared_String_Access) return Boolean;
   --  Set of compare operations. All operations compare in code point order
   --  (they are handle UTF-16 surrogate pairs as one code point).

   procedure Fill_Null_Terminator (Self : not null Shared_String_Access);
   pragma Inline (Fill_Null_Terminator);
   --  Fill null terminator after last used code point. On platforms where
   --  SIMD operations are supported it fills all unused elements in the
   --  vector where null terminator must be filled. This allows to simplify
   --  and speedup comparison operations becase where are no need to pay
   --  attention to the unused elements in the last used vector.

private

   Utf16_Fixup : constant
     array (Matreshka.Internals.Utf16.Utf16_Code_Unit range 0 .. 31)
       of Matreshka.Internals.Utf16.Utf16_Code_Unit :=
      (0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 0, 0, 0, 0, 0,
       0, 0, 0, 16#2000#, 16#F800#, 16#F800#, 16#F800#, 16#F800#);

end Matreshka.Internals.Strings.SIMD;
