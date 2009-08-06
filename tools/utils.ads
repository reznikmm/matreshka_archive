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
with Matreshka.Internals.Ucd;
with Matreshka.Internals.Unicode;

package Utils is

   function Code_Point_Image (Item : Matreshka.Internals.Unicode.Code_Point)
     return String;
   --  Returns image of code point.

   function First_Stage_Image
    (Item : Matreshka.Internals.Ucd.First_Stage_Index)
       return String;
   --  Returns image in the XXXX format.

   function Second_Stage_Image
    (Item : Matreshka.Internals.Ucd.Second_Stage_Index)
       return String;
   --  Returns image in the XX format.

   function Code_Point_Ada_Image
    (Item : Matreshka.Internals.Unicode.Code_Point)
       return String;
   --  Returns image of code point.

   function Sequence_Count_Image
    (Item : Matreshka.Internals.Ucd.Sequence_Count)
       return String;
   --  Returns image of Sequence count without leading space.

   function Parse_Code_Point_Sequence (Text : String)
     return Matreshka.Internals.Ucd.Code_Point_Sequence;

end Utils;
