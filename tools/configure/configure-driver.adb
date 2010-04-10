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
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Strings.Unbounded.Text_IO;
with Ada.Text_IO;

with Configure.Architecture;
with Configure.Instantiate;

procedure Configure.Driver is
begin
   Configure.Architecture;

   declare
      use Ada.Strings.Unbounded.Text_IO;
      use Ada.Text_IO;
      use Maps;

      P : Cursor := Substitutions.First;

   begin
      while Has_Element (P) loop
         Put (Key (P));
         Put (" => ");
         Put (Element (P));
         New_Line;

         Next (P);
      end loop;
   end;

   Configure.Instantiate ("gnat/matreshka_config.gpr");
end Configure.Driver;
