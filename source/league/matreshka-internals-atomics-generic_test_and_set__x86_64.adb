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
--  This is x86_64 version.
------------------------------------------------------------------------------
with Ada.Characters.Latin_1;
with System.Machine_Code;

function Matreshka.Internals.Atomics.Generic_Test_And_Set
 (Target         : not null access T_Access;
  Expected_Value : T_Access;
  New_Value      : T_Access)
    return Boolean
is
   pragma Assert (T_Access'Size = System.Address'Size);

   use Ada.Characters.Latin_1;

   Result : Boolean;
   Dummy  : T_Access;

begin
   System.Machine_Code.Asm
    (Template =>
       "lock" & LF
         & HT & "cmpxchgq" & HT & "%3, %2" & LF
         & HT & "sete" & HT & "%1",
     Outputs  =>
      (T_Access'Asm_Output ("=a", Dummy),
       Boolean'Asm_Output ("=qm", Result),
       T_Access'Asm_Output ("+m", Target.all)),
     Inputs   =>
      (T_Access'Asm_Input ("r", New_Value),
       T_Access'Asm_Input ("0", Expected_Value)));

   return Result;
end Matreshka.Internals.Atomics.Generic_Test_And_Set;
