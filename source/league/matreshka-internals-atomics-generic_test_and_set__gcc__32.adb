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
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
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
--  This is GCC version for 64-bit target.
------------------------------------------------------------------------------
with System;

function Matreshka.Internals.Atomics.Generic_Test_And_Set
 (Target         : not null access T_Access;
  Expected_Value : T_Access;
  New_Value      : T_Access)
    return Boolean
is
   pragma Assert (T_Access'Size = System.Address'Size);
   pragma Assert (T_Access'Size = 32);

   function Sync_Bool_Compare_And_Swap_32
     (Ptr     : not null access T_Access;
      Old_Val : T_Access;
      New_Val : T_Access) return Boolean;
   pragma Import
     (Intrinsic,
      Sync_Bool_Compare_And_Swap_32,
      "__sync_bool_compare_and_swap_4");

begin
   return Sync_Bool_Compare_And_Swap_32 (Target, Expected_Value, New_Value);
end Matreshka.Internals.Atomics.Generic_Test_And_Set;
