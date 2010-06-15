------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
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
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------

private package Matreshka.SAX.Simple_Readers.Parser.Tables is

   pragma Preelaborate;

   type Goto_Entry is record
      Nonterm  : Integer;
      Newstate : Integer;
   end record;

   type Shift_Reduce_Entry is record
      T   : Integer;
      Act : Integer;
   end record;

   YY_Default           : constant :=    -1;
   YY_First_Shift_Entry : constant :=     0;
   YY_Accept_Code       : constant := -3001;
   YY_Error_Code        : constant := -3000;

   YY_Goto_Matrix : constant array (-1 .. 5) of Goto_Entry :=
    ((   -1,    -1), (   -2,     2), (   -4,     5), (   -3,     7),
     (   -5,    11), (   -6,    15), (   -7,    17));

   YY_Goto_Offset : constant array (0 .. 19) of Integer :=
    (    0,    1,    1,    1,    3,    3,    3,    3,
         3,    4,    4,    4,    5,    5,    5,    6,
         6,    6,    6,    6);

   YY_Rule_Length : constant array (0 .. 11) of Integer :=
    (    2,    3,    0,    1,    0,    5,    2,    3,
         0,    3,    0,    0);

   YY_Get_LHS_Rule : constant array (0 .. 11) of Integer :=
    (   -1,   -2,   -2,   -3,   -3,   -4,   -5,   -5,
        -5,   -6,   -6,   -7);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 32) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     1), (   -1,    -2), (    3,     3),
     (   -1, -3000), (    0, -3001), (   -1, -3000), (    5,     6),
     (   -1,    -4), (   -1, -3000), (   -1,    -3), (    8,     8),
     (   -1, -3000), (   -1,    -1), (    9,     9), (   10,    10),
     (   -1,    -8), (   11,    12), (   -1, -3000), (   12,    13),
     (   -1, -3000), (   13,    14), (   -1,   -10), (   -1,    -6),
     (   11,    16), (   -1, -3000), (   -1,   -11), (    7,    18),
     (   -1, -3000), (   -1,    -7), (   14,    19), (   -1, -3000),
     (   -1,    -5), (   -1,    -9));

   YY_Shift_Reduce_Offset : constant array (0 .. 19) of Integer :=
    (    0,    2,    4,    6,    8,    9,   10,   12,
        13,   16,   18,   20,   22,   23,   25,   26,
        28,   29,   31,   32);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
