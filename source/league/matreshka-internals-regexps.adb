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
with Ada.Unchecked_Deallocation;

with Matreshka.Internals.Atomics.Generic_Test_And_Set;
with Matreshka.Internals.Strings.Operations;

package body Matreshka.Internals.Regexps is

   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Utf16;

   function Test_And_Set is
     new Matreshka.Internals.Atomics.Generic_Test_And_Set
          (Shared_String, Shared_String_Access);

   -------------
   -- Capture --
   -------------

   function Capture
    (Item   : not null Shared_Match_Access;
     Number : Natural)
       return not null Matreshka.Internals.Strings.Shared_String_Access
   is
      Aux : Shared_String_Access := Item.Captures (Number);

   begin
      if Aux = null then
         Aux :=
           Operations.Slice
            (Item.Source,
             Item.Slices (Number).First_Position,
             Item.Slices (Number).Next_Position
               - Item.Slices (Number).First_Position,
             Item.Slices (Number).Next_Index
               - Item.Slices (Number).First_Index);

         if not Test_And_Set (Item.Captures (Number)'Access, null, Aux) then
            --  Operation can fail when capture is computed by another thread.
            --  In this case computed capture is dereferenced and another
            --  value is used.

            Dereference (Aux);
            Aux := Item.Captures (Number);
         end if;
      end if;

      Reference (Aux);

      return Aux;
   end Capture;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Item : in out Shared_Match_Access) is
      pragma Assert (Item /= null);

      procedure Free is
        new Ada.Unchecked_Deallocation (Shared_Match, Shared_Match_Access);

   begin
      if Item /= Empty_Shared_Match'Access
        and then Matreshka.Internals.Atomics.Counters.Decrement
                  (Item.Counter'Access)
      then
         if Item.Source /= null then
            Dereference (Item.Source);
         end if;

         for J in Item.Captures'Range loop
            if Item.Captures (J) /= null then
               Dereference (Item.Captures (J));
            end if;
         end loop;

         Free (Item);

      else
         Item := null;
      end if;
   end Dereference;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Item : in out Shared_Pattern_Access) is
      pragma Assert (Item /= null);

      procedure Free is
        new Ada.Unchecked_Deallocation (Shared_Pattern, Shared_Pattern_Access);

   begin
      if Item /= Empty_Shared_Pattern'Access
        and then Matreshka.Internals.Atomics.Counters.Decrement
                  (Item.Counter'Access)
      then
         Free (Item);

      else
         Item := null;
      end if;
   end Dereference;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Item : not null Shared_Match_Access) is
   begin
      if Item /= Empty_Shared_Match'Access then
         Matreshka.Internals.Atomics.Counters.Increment (Item.Counter'Access);
      end if;
   end Reference;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Item : not null Shared_Pattern_Access) is
   begin
      if Item /= Empty_Shared_Pattern'Access then
         Matreshka.Internals.Atomics.Counters.Increment (Item.Counter'Access);
      end if;
   end Reference;

end Matreshka.Internals.Regexps;
