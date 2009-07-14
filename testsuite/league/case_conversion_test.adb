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
with Matreshka.Strings;

procedure Case_Conversion_Test is

   use Matreshka.Strings;

   --  This is a testcase for Final_Sigma context. \u03A3 translated to \u03C3
   --  when there is no Final_Sigma context and to \u03C2 in Final_Sigma
   --  context.

   S1S : Universal_String
     := To_Universal_String
         ('A' & Wide_Wide_Character'Val (16#03A3#) & 'Z');
   S1E : constant Wide_Wide_String
     := 'a' & Wide_Wide_Character'Val (16#03C3#) & 'z';
   S2S : Universal_String
     := To_Universal_String
         ('A' & Wide_Wide_Character'Val (16#03A3#));
   S2E : constant Wide_Wide_String
     := 'a' & Wide_Wide_Character'Val (16#03C2#);

begin
   if S1S.To_Lowercase.To_Wide_Wide_String /= S1E then
      raise Program_Error;
   end if;

   if S2S.To_Lowercase.To_Wide_Wide_String /= S2E then
      raise Program_Error;
   end if;
end Case_Conversion_Test;
