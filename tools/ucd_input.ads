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
private with Ada.Text_IO;

with Matreshka.Internals.Unicode;

package Ucd_Input is

   type File_Type is limited private;

   procedure Open (File : in out File_Type; Name : String);

   function End_Of_Data (File : File_Type) return Boolean;

   procedure Next_Record (File : in out File_Type);

   function First_Code_Point (File : File_Type)
     return Matreshka.Internals.Unicode.Code_Point;

   function Last_Code_Point (File : File_Type)
     return Matreshka.Internals.Unicode.Code_Point;

   procedure Next_Field (File : in out File_Type);

   function Field (File : File_Type) return String;

   procedure Close (File : in out File_Type);

private

   type File_Type is limited record
      File        : Ada.Text_IO.File_Type;
      Line        : String (1 .. 1024);
      Last        : Natural;
      F_First     : Positive;
      F_Last      : Natural;
      F_Separator : Natural;
      First_Code  : Matreshka.Internals.Unicode.Code_Point;
      Last_Code   : Matreshka.Internals.Unicode.Code_Point;
      End_Of_Data : Boolean;
   end record;

end Ucd_Input;
