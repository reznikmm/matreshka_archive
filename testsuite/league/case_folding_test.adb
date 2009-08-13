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
with League.Strings;

procedure Case_Folding_Test is

   use League.Strings;

   --  Check \u00DF correctly transformed to \u0073\u0073 sequence and
   --  Final_Sigma casing context is never used.

   S1S : Universal_String
     := To_Universal_String
         (Wide_Wide_Character'Val (16#00DF#)
            & 'A' & Wide_Wide_Character'Val (16#03A3#) & 'Z');
   S1E : constant Wide_Wide_String
     := Wide_Wide_Character'Val (16#0073#)
          & Wide_Wide_Character'Val (16#0073#)
          & 'a' & Wide_Wide_Character'Val (16#03C3#) & 'z';
   S2S : Universal_String
     := To_Universal_String
         ('A' & Wide_Wide_Character'Val (16#03A3#));
   S2E : constant Wide_Wide_String
     := 'a' & Wide_Wide_Character'Val (16#03C3#);

begin
   if S1S.To_Casefold.To_Wide_Wide_String /= S1E then
      raise Program_Error;
   end if;

   if S2S.To_Casefold.To_Wide_Wide_String /= S2E then
      raise Program_Error;
   end if;
end Case_Folding_Test;
