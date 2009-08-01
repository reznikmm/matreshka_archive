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
--  Next generation of the UCD data generator. The primary goal is share code
--  as much as possible with the base League packages.
------------------------------------------------------------------------------
with Ada.Command_Line;
with Ada.Text_IO;

with Gen_Cases;
with Gen_Norms;
with Gen_Props;
with Ucd_Data;

procedure Gen_Ucd is
   Unidata_Directory : constant String := Ada.Command_Line.Argument (1);
   Source_Directory  : constant String := Ada.Command_Line.Argument (2);

begin
   Ucd_Data.Load (Unidata_Directory);
   Ada.Text_IO.Put_Line ("Generating (" & Source_Directory & ") ...");
   Gen_Props (Source_Directory);
   Gen_Cases (Source_Directory);
   Gen_Norms (Source_Directory);
end Gen_Ucd;
