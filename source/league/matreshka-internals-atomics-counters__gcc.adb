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
--  This is GCC specific version.
------------------------------------------------------------------------------

package body Matreshka.Internals.Atomics.Counters is

   use type Interfaces.Integer_32;

   procedure Sync_Add_And_Fetch_32
     (Ptr   : not null access Interfaces.Integer_32;
      Value : Interfaces.Integer_32);
   pragma Import (Intrinsic, Sync_Add_And_Fetch_32, "__sync_add_and_fetch_4");

   function Sync_Sub_And_Fetch_32
     (Ptr   : not null access Interfaces.Integer_32;
      Value : Interfaces.Integer_32) return Interfaces.Integer_32;
   procedure Sync_Sub_And_Fetch_32
     (Ptr   : not null access Interfaces.Integer_32;
      Value : Interfaces.Integer_32);
   pragma Import (Intrinsic, Sync_Sub_And_Fetch_32, "__sync_sub_and_fetch_4");

   procedure Sync_Synchronize;
   pragma Import (Intrinsic, Sync_Synchronize, "__sync_synchronize");

   ---------------
   -- Decrement --
   ---------------

   function Decrement (Self : not null access Counter) return Boolean is
   begin
      return Sync_Sub_And_Fetch_32 (Self.Value'Access, 1) = 0;
   end Decrement;

   ---------------
   -- Decrement --
   ---------------

   procedure Decrement (Self : not null access Counter) is
   begin
      Sync_Sub_And_Fetch_32 (Self.Value'Access, 1);
   end Decrement;

   ---------------
   -- Increment --
   ---------------

   procedure Increment (Self : not null access Counter) is
   begin
      Sync_Add_And_Fetch_32 (Self.Value'Access, 1);
   end Increment;

   ------------
   -- Is_One --
   ------------

   function Is_One (Self : not null access Counter) return Boolean is
   begin
      Sync_Synchronize;
      return Self.Value = 1;
   end Is_One;

   -------------
   -- Is_Zero --
   -------------

   function Is_Zero (Self : not null access Counter) return Boolean is
   begin
      Sync_Synchronize;
      return Self.Value = 0;
   end Is_Zero;

   ---------
   -- One --
   ---------

   function One return Counter is
   begin
      return Counter'(Value => 1);
   end One;

   ----------
   -- Zero --
   ----------

   function Zero return Counter is
   begin
      return Counter'(Value => 0);
   end Zero;

end Matreshka.Internals.Atomics.Counters;
