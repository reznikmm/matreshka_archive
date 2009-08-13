------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                            Testsuite Component                           --
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
with Ada.Text_IO;

with League.Strings.Debug;

procedure Additional_Normalization_Test is

   use League.Strings;
   use League.Strings.Debug;

   S : Universal_String
     := To_Universal_String
         (Wide_Wide_Character'Val (16#0FB2#)
            & Wide_Wide_Character'Val (16#0591#)
            & Wide_Wide_Character'Val (16#0F81#)
            & Wide_Wide_Character'Val (16#0061#));
   D : Universal_String := S.To_NFD;
   E : Universal_String
     := To_Universal_String
         (Wide_Wide_Character'Val (16#0FB2#)
            & Wide_Wide_Character'Val (16#0F71#)
            & Wide_Wide_Character'Val (16#0F80#)
            & Wide_Wide_Character'Val (16#0591#)
            & Wide_Wide_Character'Val (16#0061#));

begin
   if not D.Is_Binary_Equal (E) then
      Ada.Text_IO.Put_Line ("S        => " & Debug_Image (S));
      Ada.Text_IO.Put_Line ("NFD (S)  => " & Debug_Image (D));
      Ada.Text_IO.Put_Line ("Expected => " & Debug_Image (E));

      raise Program_Error;
   end if;
end Additional_Normalization_Test;
