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

package body Matreshka.Internals.Unicode is

--   subtype Surrogate_Wide_Character is Wide_Character
--     range Wide_Character'Val (Surrogate_First)
--             .. Wide_Character'Val (Surrogate_Last);
--
--   subtype High_Surrogate_Wide_Character is Surrogate_Wide_Character
--     range Wide_Character'Val (High_Surrogate_First)
--             .. Wide_Character'Val (High_Surrogate_Last);
--
--   subtype Low_Surrogate_Wide_Character is Surrogate_Wide_Character
--     range Wide_Character'Val (Low_Surrogate_First)
--             .. Wide_Character'Val (Low_Surrogate_Last);

   subtype Surrogate_Code_Point is Code_Point
     range Surrogate_First .. Surrogate_Last;

   ---------------------------------
   -- Is_Valid_Unicode_Code_Point --
   ---------------------------------

   function Is_Valid_Unicode_Code_Point (Item : Code_Unit_32) return Boolean is
   begin
      return
        Item in Code_Point'Range
        --  Codes outside Unicode code point range.

          and then Item not in Surrogate_Code_Point
          --  Codes reserved for Utf18 surrogate pairs.

          and then (Item and Code_Unit_32 (16#FFFF#))
            not in 16#FFFE# .. 16#FFFF#;
          --  Two last codes on the each code plain.
   end Is_Valid_Unicode_Code_Point;

end Matreshka.Internals.Unicode;
