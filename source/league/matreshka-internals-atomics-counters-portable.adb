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
--  This is inefficient but fully portable version of the package.
------------------------------------------------------------------------------

package body Matreshka.Internals.Atomics.Counters is

   use type Interfaces.C.int;

   protected Guard is

      procedure Increment (Self : not null access Counter);

      procedure Decrement
       (Self    : not null access Counter;
        Is_Zero : out Boolean);

      function Is_Zero (Self : not null access Counter) return Boolean;

   end Guard;

   ---------------
   -- Decrement --
   ---------------

   function Decrement (Self : not null access Counter) return Boolean is
      Result : Boolean;

   begin
      Guard.Decrement (Self, Result);

      return Result;
   end Decrement;

   -----------
   -- Guard --
   -----------

   protected body Guard is

      ---------------
      -- Decrement --
      ---------------

      procedure Decrement
       (Self    : not null access Counter;
        Is_Zero : out Boolean)
      is
      begin
         Self.Value := Self.Value - 1;
         Is_Zero    := Self.Value = 0;
      end Decrement;

      ---------------
      -- Increment --
      ---------------

      procedure Increment (Self : not null access Counter) is
      begin
         Self.Value := Self.Value + 1;
      end Increment;

      -------------
      -- Is_Zero --
      -------------

      function Is_Zero (Self : not null access Counter) return Boolean is
      begin
         return Self.Value = 0;
      end Is_Zero;

   end Guard;

   ---------------
   -- Increment --
   ---------------

   procedure Increment (Self : not null access Counter) is
   begin
      Guard.Increment (Self);
   end Increment;

   -------------
   -- Is_Zero --
   -------------

   function Is_Zero (Self : not null access Counter) return Boolean is
   begin
      return Guard.Is_Zero (Self);
   end Is_Zero;

   ----------
   -- Zero --
   ----------

   function Zero return Counter is
   begin
      return Counter'(Value => 0);
   end Zero;

end Matreshka.Internals.Atomics.Counters;
