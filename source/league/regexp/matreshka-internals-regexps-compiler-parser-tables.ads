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

private package Matreshka.Internals.Regexps.Compiler.Parser.Tables is

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

   YY_Goto_Matrix : constant array (-1 .. 21) of Goto_Entry :=
    ((   -1,    -1), (   -6,    10), (   -5,     3), (   -4,     2),
     (   -3,     1), (   -2,    14), (   -6,    10), (   -5,    16),
     (   -6,    10), (   -5,     3), (   -4,     2), (   -3,    24),
     (   -6,    10), (   -5,     3), (   -4,     2), (   -3,    25),
     (   -7,    28), (   -6,    10), (   -5,     3), (   -4,    31),
     (   -7,    42), (   -6,    10), (   -5,    16));

   YY_Goto_Offset : constant array (0 .. 60) of Integer :=
    (    0,    5,    5,    7,    7,   11,   15,   15,
        15,   15,   15,   15,   15,   15,   16,   16,
        19,   19,   19,   19,   19,   19,   19,   19,
        19,   19,   19,   19,   19,   19,   20,   20,
        22,   22,   22,   22,   22,   22,   22,   22,
        22,   22,   22,   22,   22,   22,   22,   22,
        22,   22,   22,   22,   22,   22,   22,   22,
        22,   22,   22,   22,   22);

   YY_Rule_Length : constant array (0 .. 35) of Integer :=
    (    2,    1,    3,    1,    2,    1,    2,    2,
         2,    2,    2,    2,    6,    6,    5,    5,
         5,    5,    4,    4,    3,    3,    1,    1,
         3,    3,    1,    1,    1,    3,    4,    4,
         2,    4,    4,    0);

   YY_Get_LHS_Rule : constant array (0 .. 35) of Integer :=
    (   -1,   -2,   -3,   -3,   -4,   -4,   -5,   -5,
        -5,   -5,   -5,   -5,   -5,   -5,   -5,   -5,
        -5,   -5,   -5,   -5,   -5,   -5,   -5,   -5,
        -5,   -5,   -5,   -5,   -5,   -6,   -6,   -7,
        -7,   -7,   -7,   -7);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 166) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     7), (    3,     6), (   11,    13),
     (   20,     4), (   21,     5), (   23,     8), (   24,     9),
     (   27,    11), (   28,    12), (   -1, -3000), (    4,    15),
     (   -1,    -1), (    2,     7), (    3,     6), (   11,    13),
     (   20,     4), (   21,     5), (   23,     8), (   24,     9),
     (   27,    11), (   28,    12), (   -1,    -3), (    5,    17),
     (    6,    18), (    7,    19), (    8,    20), (    9,    21),
     (   10,    22), (   15,    23), (   -1,    -5), (    2,     7),
     (    3,     6), (   11,    13), (   20,     4), (   21,     5),
     (   23,     8), (   24,     9), (   27,    11), (   28,    12),
     (   -1, -3000), (    2,     7), (    3,     6), (   11,    13),
     (   20,     4), (   21,     5), (   23,     8), (   24,     9),
     (   27,    11), (   28,    12), (   -1, -3000), (   -1,   -22),
     (   -1,   -23), (   26,    26), (   -1, -3000), (   26,    27),
     (   -1, -3000), (   -1,   -26), (   -1,   -27), (   -1,   -28),
     (   13,    29), (   -1,   -35), (    0, -3001), (   -1, -3000),
     (    2,     7), (    3,     6), (   11,    13), (   20,     4),
     (   21,     5), (   23,     8), (   24,     9), (   27,    11),
     (   28,    12), (   -1, -3000), (    5,    17), (    6,    18),
     (    7,    19), (    8,    20), (    9,    21), (   10,    22),
     (   15,    23), (   -1,    -4), (   -1,    -6), (   -1,    -7),
     (   -1,    -8), (   -1,    -9), (   -1,   -10), (   -1,   -11),
     (   18,    33), (   19,    32), (   -1, -3000), (    4,    15),
     (   22,    34), (   -1, -3000), (    4,    15), (   22,    35),
     (   -1, -3000), (   25,    36), (   -1, -3000), (   25,    37),
     (   -1, -3000), (    2,    39), (   12,    38), (   23,    40),
     (   24,    41), (   -1, -3000), (   -1,   -35), (   -1, -3000),
     (    2,     7), (    3,     6), (   11,    13), (   20,     4),
     (   21,     5), (   23,     8), (   24,     9), (   27,    11),
     (   28,    12), (   -1,    -2), (   16,    44), (   17,    45),
     (   18,    43), (   -1, -3000), (   19,    46), (   -1, -3000),
     (   -1,   -20), (   -1,   -21), (   -1,   -24), (   -1,   -25),
     (   -1,   -29), (   14,    47), (   -1,   -32), (   26,    48),
     (   -1, -3000), (   26,    49), (   -1, -3000), (    2,    39),
     (   12,    50), (   23,    40), (   24,    41), (   -1, -3000),
     (   16,    52), (   17,    53), (   19,    51), (   -1, -3000),
     (   -1,   -18), (   -1,   -19), (   16,    54), (   17,    55),
     (   -1, -3000), (    2,    56), (   -1, -3000), (   25,    57),
     (   -1, -3000), (   25,    58), (   -1, -3000), (   -1,   -30),
     (   16,    59), (   17,    60), (   -1, -3000), (   -1,   -16),
     (   -1,   -17), (   -1,   -14), (   -1,   -15), (   -1,   -31),
     (   -1,   -33), (   -1,   -34), (   -1,   -12), (   -1,   -13));

   YY_Shift_Reduce_Offset : constant array (0 .. 60) of Integer :=
    (    0,   10,   12,   22,   30,   40,   50,   51,
        52,   54,   56,   57,   58,   59,   61,   63,
        73,   81,   82,   83,   84,   85,   86,   87,
        90,   93,   96,   98,  100,  105,  106,  107,
       117,  121,  123,  124,  125,  126,  127,  128,
       130,  132,  134,  139,  143,  144,  145,  148,
       150,  152,  154,  155,  158,  159,  160,  161,
       162,  163,  164,  165,  166);

end Matreshka.Internals.Regexps.Compiler.Parser.Tables;
