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

   YY_Goto_Matrix : constant array (-1 .. 25) of Goto_Entry :=
    ((   -1,    -1), (   -6,    11), (   -5,     4), (   -4,     3),
     (   -3,     2), (   -2,    13), (   -6,    11), (   -5,     4),
     (   -4,     3), (   -3,    14), (   -6,    11), (   -5,    17),
     (   -6,    11), (   -5,     4), (   -4,     3), (   -3,    25),
     (   -6,    11), (   -5,     4), (   -4,     3), (   -3,    26),
     (   -7,    29), (   -6,    11), (   -5,     4), (   -4,    33),
     (   -7,    44), (   -6,    11), (   -5,    17));

   YY_Goto_Offset : constant array (0 .. 62) of Integer :=
    (    0,    5,    9,    9,   11,   11,   15,   19,
        19,   19,   19,   19,   19,   20,   20,   20,
        20,   23,   23,   23,   23,   23,   23,   23,
        23,   23,   23,   23,   23,   23,   23,   24,
        24,   24,   26,   26,   26,   26,   26,   26,
        26,   26,   26,   26,   26,   26,   26,   26,
        26,   26,   26,   26,   26,   26,   26,   26,
        26,   26,   26,   26,   26,   26,   26);

   YY_Rule_Length : constant array (0 .. 36) of Integer :=
    (    2,    3,    2,    2,    1,    3,    1,    2,
         1,    2,    2,    2,    2,    2,    2,    6,
         6,    5,    5,    5,    5,    4,    4,    3,
         3,    1,    1,    3,    3,    1,    3,    4,
         4,    2,    4,    4,    0);

   YY_Get_LHS_Rule : constant array (0 .. 36) of Integer :=
    (   -1,   -2,   -2,   -2,   -2,   -3,   -3,   -4,
        -4,   -5,   -5,   -5,   -5,   -5,   -5,   -5,
        -5,   -5,   -5,   -5,   -5,   -5,   -5,   -5,
        -5,   -5,   -5,   -5,   -5,   -5,   -6,   -6,
        -7,   -7,   -7,   -7,   -7);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 167) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     8), (    3,     7), (   11,    12),
     (   20,     5), (   21,     6), (   23,     9), (   24,    10),
     (   27,     1), (   -1, -3000), (    2,     8), (    3,     7),
     (   11,    12), (   20,     5), (   21,     6), (   23,     9),
     (   24,    10), (   -1, -3000), (    4,    16), (   28,    15),
     (   -1,    -4), (    2,     8), (    3,     7), (   11,    12),
     (   20,     5), (   21,     6), (   23,     9), (   24,    10),
     (   -1,    -6), (    5,    18), (    6,    19), (    7,    20),
     (    8,    21), (    9,    22), (   10,    23), (   15,    24),
     (   -1,    -8), (    2,     8), (    3,     7), (   11,    12),
     (   20,     5), (   21,     6), (   23,     9), (   24,    10),
     (   -1, -3000), (    2,     8), (    3,     7), (   11,    12),
     (   20,     5), (   21,     6), (   23,     9), (   24,    10),
     (   -1, -3000), (   -1,   -25), (   -1,   -26), (   26,    27),
     (   -1, -3000), (   26,    28), (   -1, -3000), (   -1,   -29),
     (   13,    30), (   -1,   -36), (    0, -3001), (   -1, -3000),
     (    4,    16), (   28,    32), (   -1,    -2), (   -1,    -3),
     (    2,     8), (    3,     7), (   11,    12), (   20,     5),
     (   21,     6), (   23,     9), (   24,    10), (   -1, -3000),
     (    5,    18), (    6,    19), (    7,    20), (    8,    21),
     (    9,    22), (   10,    23), (   15,    24), (   -1,    -7),
     (   -1,    -9), (   -1,   -10), (   -1,   -11), (   -1,   -12),
     (   -1,   -13), (   -1,   -14), (   18,    35), (   19,    34),
     (   -1, -3000), (    4,    16), (   22,    36), (   -1, -3000),
     (    4,    16), (   22,    37), (   -1, -3000), (   25,    38),
     (   -1, -3000), (   25,    39), (   -1, -3000), (    2,    41),
     (   12,    40), (   23,    42), (   24,    43), (   -1, -3000),
     (   -1,   -36), (   -1, -3000), (   -1,    -1), (    2,     8),
     (    3,     7), (   11,    12), (   20,     5), (   21,     6),
     (   23,     9), (   24,    10), (   -1,    -5), (   16,    46),
     (   17,    47), (   18,    45), (   -1, -3000), (   19,    48),
     (   -1, -3000), (   -1,   -23), (   -1,   -24), (   -1,   -27),
     (   -1,   -28), (   -1,   -30), (   14,    49), (   -1,   -33),
     (   26,    50), (   -1, -3000), (   26,    51), (   -1, -3000),
     (    2,    41), (   12,    52), (   23,    42), (   24,    43),
     (   -1, -3000), (   16,    54), (   17,    55), (   19,    53),
     (   -1, -3000), (   -1,   -21), (   -1,   -22), (   16,    56),
     (   17,    57), (   -1, -3000), (    2,    58), (   -1, -3000),
     (   25,    59), (   -1, -3000), (   25,    60), (   -1, -3000),
     (   -1,   -31), (   16,    61), (   17,    62), (   -1, -3000),
     (   -1,   -19), (   -1,   -20), (   -1,   -17), (   -1,   -18),
     (   -1,   -32), (   -1,   -34), (   -1,   -35), (   -1,   -15),
     (   -1,   -16));

   YY_Shift_Reduce_Offset : constant array (0 .. 62) of Integer :=
    (    0,    9,   17,   20,   28,   36,   44,   52,
        53,   54,   56,   58,   59,   61,   63,   66,
        67,   75,   83,   84,   85,   86,   87,   88,
        89,   92,   95,   98,  100,  102,  107,  108,
       109,  110,  118,  122,  124,  125,  126,  127,
       128,  129,  131,  133,  135,  140,  144,  145,
       146,  149,  151,  153,  155,  156,  159,  160,
       161,  162,  163,  164,  165,  166,  167);

end Matreshka.Internals.Regexps.Compiler.Parser.Tables;
