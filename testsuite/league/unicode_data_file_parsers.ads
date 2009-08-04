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
with Ada.Containers.Indefinite_Vectors;
private with Ada.Finalization;
private with Ada.Text_IO;

package Unicode_Data_File_Parsers is

   package String_Vectors is
     new Ada.Containers.Indefinite_Vectors (Positive, String);

   type Unicode_Data_File_Parser is abstract tagged limited private;

   not overriding procedure Open
    (Self      : in out Unicode_Data_File_Parser;
     File_Name : String);

   not overriding procedure Close (Self : in out Unicode_Data_File_Parser);

   not overriding procedure Parse (Self : in out Unicode_Data_File_Parser);

   not overriding procedure Start_Section
    (Self : in out Unicode_Data_File_Parser;
     Name : String)
       is null;

   not overriding procedure End_Section
    (Self : in out Unicode_Data_File_Parser)
       is null;

   not overriding procedure Data
    (Self  : in out Unicode_Data_File_Parser;
     Data  : String_Vectors.Vector)
       is abstract;

private

   type Unicode_Data_File_Parser is
     abstract new Ada.Finalization.Limited_Controlled with
   record
      File : Ada.Text_IO.File_Type;
      Line : String (1 .. 1024);
      Last : Natural;
   end record;

   overriding procedure Finalize (Self : in out Unicode_Data_File_Parser);

end Unicode_Data_File_Parsers;
