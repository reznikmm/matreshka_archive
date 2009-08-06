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

package Uca_Data is

   type Collation_Element_Sequence_Access is
     access all Matreshka.Internals.Ucd.Collation_Element_Sequence;

   type Contraction_Data is record
      Codes     : Matreshka.Internals.Ucd.Code_Point_Sequence_Access;
      Expansion : Collation_Element_Sequence_Access;
   end record;

   type Contraction_Data_Array is
     array (Positive range <>) of Contraction_Data;

   type Contraction_Data_Array_Access is access all Contraction_Data_Array;

   type Collation_Record is record
      Expansion   : Collation_Element_Sequence_Access;
      Contraction : Contraction_Data_Array_Access;
   end record;

   type Collation_Data is
     array (Matreshka.Internals.Unicode.Code_Point) of Collation_Record;

   type Collation_Data_Access is access all Collation_Data;

   Colls : Collation_Data_Access;

   procedure Load (Uca_Directory : String);

end Uca_Data;
