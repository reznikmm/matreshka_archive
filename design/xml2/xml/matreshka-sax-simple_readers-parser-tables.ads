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

   YY_Goto_Matrix : constant array (-1 .. 19) of Goto_Entry :=
    ((   -1,    -1), (   -2,     2), (   -4,     5), (   -3,     7),
     (   -7,     9), (   -5,    12), (   -6,    16), (  -10,    20),
     (   -9,    18), (   -8,    19), (  -10,    20), (   -9,    24),
     (  -11,    27), (  -15,    29), (  -12,    32), (   -7,    30),
     (  -13,    33), (  -16,    35), (  -15,    38), (  -14,    40),
     (   -7,    39));

   YY_Goto_Offset : constant array (0 .. 44) of Integer :=
    (    0,    1,    1,    1,    3,    3,    3,    3,
         3,    5,    5,    5,    5,    6,    6,    6,
         9,    9,    9,    9,   11,   11,   11,   11,
        11,   11,   12,   12,   15,   16,   16,   16,
        17,   17,   20,   20,   20,   20,   20,   20,
        20,   20,   20,   20,   20);

   YY_Rule_Length : constant array (0 .. 28) of Integer :=
    (    2,    3,    0,    1,    0,    5,    1,    0,
         2,    3,    3,    0,    1,    2,    0,    1,
         0,    5,    0,    6,    1,    1,    3,    1,
         1,    3,    2,    1,    0);

   YY_Get_LHS_Rule : constant array (0 .. 28) of Integer :=
    (   -1,   -2,   -2,   -3,   -3,   -4,   -5,   -5,
        -7,   -7,   -6,   -6,   -8,   -8,   -8,   -9,
       -11,  -10,  -13,  -10,  -12,  -12,  -12,  -14,
       -14,  -15,  -16,  -16,  -16);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 75) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     1), (   -1,    -2), (    3,     3),
     (   -1, -3000), (    0, -3001), (   -1, -3000), (    5,     6),
     (   -1,    -4), (   -1, -3000), (   -1,    -3), (    8,     8),
     (   -1, -3000), (   -1,    -1), (    9,    10), (   10,    11),
     (   -1,    -7), (   -1,    -6), (   11,    13), (   -1, -3000),
     (   12,    14), (   -1, -3000), (   13,    15), (   -1,   -11),
     (   -1,    -8), (   11,    17), (   -1, -3000), (    6,    21),
     (   -1,   -14), (    7,    22), (   -1, -3000), (   -1,    -9),
     (   -1,   -12), (    6,    21), (   14,    23), (   -1, -3000),
     (   -1,   -15), (    8,    25), (   15,    26), (   -1, -3000),
     (   -1,    -5), (   -1,   -10), (   -1,   -13), (   -1,   -16),
     (    8,    28), (   -1, -3000), (    9,    10), (   10,    11),
     (   16,    31), (   -1, -3000), (   -1,   -18), (   -1,   -20),
     (   19,    34), (   -1,   -21), (   18,    36), (   -1,   -28),
     (    7,    37), (   -1, -3000), (    9,    10), (   10,    11),
     (   16,    31), (   -1, -3000), (    8,    41), (   -1, -3000),
     (   17,    42), (   18,    43), (   -1, -3000), (   -1,   -27),
     (   -1,   -17), (   -1,   -23), (   -1,   -24), (    7,    44),
     (   -1, -3000), (   -1,   -22), (   -1,   -25), (   -1,   -26),
     (   -1,   -19));

   YY_Shift_Reduce_Offset : constant array (0 .. 44) of Integer :=
    (    0,    2,    4,    6,    8,    9,   10,   12,
        13,   16,   17,   19,   21,   23,   24,   26,
        28,   30,   31,   32,   35,   36,   39,   40,
        41,   42,   43,   45,   49,   50,   51,   53,
        55,   57,   61,   63,   66,   67,   68,   69,
        70,   72,   73,   74,   75);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
