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
-- Copyright © 2009, 2010 Vadim Godunko <vgodunko@gmail.com>                --
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

procedure String_Hash_Test is

   use League.Strings;

   V : array (1 .. 6) of Hash_Type
     := (To_Universal_String ("A").Hash,
         To_Universal_String ("B").Hash,
         To_Universal_String ("AA").Hash,
         To_Universal_String ("AB").Hash,
         To_Universal_String ("BB").Hash,
         To_Universal_String ("BA").Hash);

begin
   for J in V'Range loop
      for K in J + 1 .. V'Last loop
         if V (J) = V (K) then
            raise Program_Error;
         end if;
      end loop;
   end loop;
end String_Hash_Test;
