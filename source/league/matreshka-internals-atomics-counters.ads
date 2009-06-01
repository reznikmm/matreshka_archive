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
--  Atomic counters. Any objects of Counter type has value 1 by default.
--  This assumption allows declaration of implicitly initialized objects in
--  the preelaborateable units.
------------------------------------------------------------------------------
private with Interfaces;

package Matreshka.Internals.Atomics.Counters is

   pragma Preelaborate;
   pragma Remote_Types;

   type Counter is limited private;

   procedure Increment (Self : not null access Counter);
   pragma Inline (Increment);
   --  Atomicaly increment counter value.

   function Decrement (Self : not null access Counter) return Boolean;
   pragma Inline (Decrement);
   --  Atomicaly decrement counter value. Returns True if counter has zero
   --  value after decrement.

   procedure Decrement (Self : not null access Counter);
   pragma Inline (Decrement);
   --  Atomicaly decrement counter value.

   function Is_Zero (Self : not null access Counter) return Boolean;
   pragma Inline (Is_Zero);
   --  Returns True if counter has zero value.

   function Is_One (Self : not null access Counter) return Boolean;
   pragma Inline (Is_One);
   --  Returns True if counter has one value.

   function Zero return Counter;
   pragma Inline (Zero);
   --  Initialize counter to zero value.

   function One return Counter;
   pragma Inline (One);
   --  Initialize counter to one value.

private

   type Counter is limited record
      Value : aliased Interfaces.Integer_32 := 1;
      pragma Atomic (Value);
   end record;
   --  Note: Record type is used for automatic initial value assignment.

end Matreshka.Internals.Atomics.Counters;
