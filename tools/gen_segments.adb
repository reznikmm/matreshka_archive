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
with Ada.Command_Line;

with Input_Sources.File;

with Segments_Readers;

procedure Gen_Segments is

   CLDR_Root_Directory     : constant String
     := Ada.Command_Line.Argument (1);
   Segments_Root_File_Name : constant String
     := "common/segments/root.xml";

   File   : Input_Sources.File.File_Input;
   Reader : Segments_Readers.Segments_Reader;

begin
   Input_Sources.File.Open
    (CLDR_Root_Directory & '/' & Segments_Root_File_Name, File);
   Reader.Parse (File);
   Input_Sources.File.Close (File);
end Gen_Segments;
