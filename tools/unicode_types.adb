------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
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
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------

package body Unicode_Types is

   Hex_Digit : constant array (Second_Stage range 0 .. 15) of Character
     := "0123456789ABCDEF";

   -----------------------
   -- First_Stage_Image --
   -----------------------

   function First_Stage_Image (Item : First_Stage) return String is
      Result : String (1 .. 4);

   begin
      Result (4) := Hex_Digit (Item mod 16);
      Result (3) := Hex_Digit ((Item / 16) mod 16);
      Result (2) := Hex_Digit ((Item / 256) mod 16);
      Result (1) := Hex_Digit ((Item / 4096) mod 16);

      return Result;
   end First_Stage_Image;

   ------------------------
   -- Second_Stage_Image --
   ------------------------

   function Second_Stage_Image (Item : Second_Stage) return String is
      Result : String (1 .. 2);

   begin
      Result (2) := Hex_Digit (Item mod 16);
      Result (1) := Hex_Digit ((Item / 16) mod 16);

      return Result;
   end Second_Stage_Image;

end Unicode_Types;
