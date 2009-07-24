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

package body Matreshka.Strings.Cursors is

   use type Matreshka.Internals.Locales.Locale_Data_Access;

   --------------
   -- Finalize --
   --------------

   overriding procedure Finalize (Self : in out Abstract_Tailored_Cursor) is
   begin
      if Self.Locale /= null then
         Matreshka.Internals.Locales.Dereference (Self.Locale);
      end if;

      Abstract_Cursor (Self).Finalize;
   end Finalize;

   ----------------
   -- Set_Locale --
   ----------------

   procedure Set_Locale (Self : in out Abstract_Tailored_Cursor'Class) is
   begin
      if Self.Locale /= null then
         Matreshka.Internals.Locales.Dereference (Self.Locale);
      end if;

      Self.Locale := Matreshka.Internals.Locales.Get_Locale;
   end Set_Locale;

end Matreshka.Strings.Cursors;
