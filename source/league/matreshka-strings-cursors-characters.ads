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

package Matreshka.Strings.Cursors.Characters is

   pragma Preelaborate;

   type Character_Cursor is tagged private;

   procedure First
    (Self : in out Character_Cursor'Class;
     Item : in out Universal_String);

   procedure Last
    (Self : in out Character_Cursor'Class;
     Item : in out Universal_String);

   procedure Next (Self : in out Character_Cursor'Class);

   procedure Previous (Self : in out Character_Cursor'Class);

   function Has_Element (Self : Character_Cursor'Class) return Boolean;

   function Element (Self : Character_Cursor'Class)
     return Wide_Wide_Character;

private

   type Character_Cursor is new Abstract_Cursor with record
      Current : Natural := 0;
   end record;

   overriding procedure On_Changed
    (Self          : not null access Character_Cursor;
     Changed_First : Positive;
     Removed_Last  : Natural;
     Inserted_Last : Natural);

end Matreshka.Strings.Cursors.Characters;
