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
with Ada.Unchecked_Deallocation;

with Matreshka.Internals.Atomics.Generic_Test_And_Set;

package body Matreshka.Internals.Strings is

   use Matreshka.Internals.Utf16;

   procedure Free is
     new Ada.Unchecked_Deallocation (Internal_String, Internal_String_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation (Index_Map, Index_Map_Access);

   function Test_And_Set is
     new Matreshka.Internals.Atomics.Generic_Test_And_Set
          (Index_Map, Index_Map_Access);

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Internal_String_Access) is
   begin
      if Self /= null then
         if Matreshka.Internals.Atomics.Counters.Decrement
             (Self.Counter'Access)
         then
--            pragma Assert (Self /= Shared_Empty'Access);

            Free (Self.Index_Map);
            Free (Self);

         else
            Self := null;
         end if;
      end if;
   end Dereference;

   -----------------------
   -- Compute_Index_Map --
   -----------------------

   procedure Compute_Index_Map (Self : in out Internal_String) is
      Map     : Index_Map_Access := Self.Index_Map;
      Current : Positive         := 1;

   begin
      --  Calculate index map if it is unavailable for now.

      if Map = null then
         Map := new Index_Map (Self.Length);

         for J in Map.Map'Range loop
            Map.Map (J) := Current;

            if Self.Value (Current)
                 in High_Surrogate_Utf16_Code_Unit
            then
               Current := Current + 2;

            else
               Current := Current + 1;
            end if;
         end loop;

         if not Test_And_Set (Self.Index_Map'Access, null, Map) then
            --  Operation can fail if mapping has been calculated by
            --  another thread. In this case computed result is
            --  dropped, memory freed and already calculated mapping
            --  is reused.

            Free (Map);
         end if;
      end if;
   end Compute_Index_Map;

end Matreshka.Internals.Strings;
