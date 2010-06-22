------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                              XML Processor                               --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                      --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
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

   YY_Goto_Matrix : constant array (-1 .. 57) of Goto_Entry :=
    ((   -1,    -1), (   -7,     2), (   -3,     1), (   -2,     4),
     (  -11,     8), (  -10,     6), (   -4,     5), (  -12,    12),
     (  -11,     8), (  -10,    15), (   -5,    14), (  -11,     8),
     (  -10,     6), (   -4,    18), (   -6,    21), (  -11,     8),
     (  -10,    15), (  -17,    23), (  -13,    26), (  -29,    28),
     (  -25,    27), (  -11,     8), (  -10,     6), (   -4,    30),
     (   -8,    32), (  -14,    35), (  -29,    38), (  -11,     8),
     (  -10,    15), (   -9,    42), (  -20,    46), (  -19,    45),
     (  -18,    44), (  -15,    49), (  -26,    50), (  -30,    52),
     (  -20,    46), (  -19,    56), (  -16,    60), (  -28,    62),
     (  -27,    61), (  -11,    66), (   -6,    63), (  -24,    67),
     (  -23,    70), (  -21,    73), (  -17,    71), (  -20,    46),
     (  -19,    45), (  -18,    75), (  -28,    78), (  -11,    66),
     (   -6,    63), (  -24,    82), (  -23,    84), (  -22,    86),
     (  -17,    85), (  -20,    46), (  -19,    56));

   YY_Goto_Offset : constant array (0 .. 91) of Integer :=
    (    0,    3,    6,    6,    6,    6,   10,   10,
        10,   10,   10,   10,   10,   13,   13,   14,
        14,   14,   14,   16,   18,   20,   23,   24,
        24,   24,   24,   25,   26,   26,   26,   28,
        28,   29,   29,   29,   33,   34,   34,   34,
        35,   35,   35,   35,   35,   37,   37,   37,
        37,   37,   38,   42,   43,   43,   43,   43,
        43,   43,   46,   46,   49,   49,   52,   52,
        52,   52,   52,   52,   52,   52,   52,   52,
        52,   53,   53,   56,   58,   58,   58,   58,
        58,   58,   58,   58,   58,   58,   58,   58,
        58,   58,   58,   58);

   YY_Rule_Length : constant array (0 .. 56) of Integer :=
    (    2,    5,    1,    0,    7,    3,    0,    3,
         0,    2,    1,    0,    1,    1,    2,    2,
         0,    0,    7,    1,    0,    2,    3,    1,
         3,    0,    2,    1,    0,    1,    1,    4,
         5,    1,    1,    3,    1,    1,    3,    2,
         1,    0,    0,    7,    3,    2,    1,    0,
         1,    1,    1,    1,    2,    1,    0,    3,
         3);

   YY_Get_LHS_Rule : constant array (0 .. 56) of Integer :=
    (   -1,   -2,   -3,   -3,   -7,   -8,   -8,   -9,
        -9,   -4,   -4,   -4,  -10,  -10,  -11,   -5,
        -5,  -14,  -12,  -13,  -13,  -17,  -17,  -15,
       -16,  -16,  -18,  -18,  -18,  -19,  -19,  -20,
       -20,  -21,  -21,  -21,  -22,  -22,  -23,  -24,
       -24,  -24,  -26,   -6,   -6,  -27,  -27,  -27,
       -28,  -28,  -28,  -28,  -25,  -25,  -25,  -29,
       -30);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 170) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     3), (   -1,    -3), (    3,     9),
     (   21,     7), (   -1,   -11), (   -1,    -2), (   26,    10),
     (   -1, -3000), (    0, -3001), (   -1, -3000), (    3,     9),
     (    6,    13), (   21,     7), (   -1,   -16), (   -1,   -10),
     (   -1,   -12), (   -1,   -13), (    4,    16), (   -1, -3000),
     (   23,    17), (   -1, -3000), (   -1, -3000), (    3,     9),
     (   21,     7), (   -1,   -11), (    9,    19), (   -1, -3000),
     (   22,    20), (   -1, -3000), (   -1,    -9), (   -1,   -14),
     (   19,    22), (   -1, -3000), (    3,     9), (   21,     7),
     (   -1,   -15), (   10,    24), (   11,    25), (   -1,   -20),
     (    9,    29), (   -1,   -54), (    3,     9), (   21,     7),
     (   -1,   -11), (   27,    31), (   -1,    -6), (   -1,   -19),
     (   12,    33), (   -1, -3000), (   13,    34), (   -1, -3000),
     (   -1,   -17), (    8,    36), (    9,    29), (   25,    37),
     (   -1, -3000), (   -1,   -53), (   23,    39), (   -1, -3000),
     (    3,     9), (   21,     7), (   -1,    -1), (   23,    40),
     (   -1, -3000), (   28,    41), (   -1,    -8), (   -1,   -21),
     (   12,    43), (   -1, -3000), (    7,    48), (   21,    47),
     (   -1,   -28), (   -1,   -42), (   -1,   -44), (   -1,   -52),
     (   17,    51), (   -1, -3000), (   19,    53), (   -1, -3000),
     (   23,    54), (   -1, -3000), (    4,    55), (   -1, -3000),
     (   -1,   -22), (    7,    48), (   21,    47), (   -1,   -23),
     (   -1,   -27), (   -1,   -29), (   -1,   -30), (    9,    57),
     (   16,    58), (   -1, -3000), (   14,    59), (   -1,   -25),
     (    3,     9), (   19,    64), (   21,    65), (   22,    20),
     (   -1,   -47), (   19,    68), (   -1,   -41), (   -1,   -55),
     (   -1,    -5), (   19,    69), (   -1, -3000), (   -1,    -4),
     (   -1,   -26), (   10,    24), (   11,    25), (   17,    72),
     (   -1, -3000), (    9,    74), (   -1, -3000), (    7,    48),
     (   21,    47), (   -1,   -28), (    8,    76), (   -1, -3000),
     (    3,     9), (   19,    64), (   21,    65), (   22,    20),
     (   24,    77), (   -1, -3000), (   -1,   -46), (   -1,   -48),
     (   -1,   -49), (   -1,   -50), (   -1,   -51), (   18,    80),
     (   19,    79), (   -1, -3000), (   -1,   -40), (   -1,    -7),
     (   -1,   -33), (   20,    81), (   -1,   -34), (   19,    68),
     (   -1,   -41), (    8,    83), (   -1, -3000), (   10,    24),
     (   11,    25), (   17,    72), (   -1, -3000), (    7,    48),
     (   15,    87), (   21,    47), (   -1, -3000), (   -1,   -18),
     (    8,    88), (   -1, -3000), (   -1,   -45), (   -1,   -39),
     (   -1,   -56), (    9,    89), (   -1, -3000), (   18,    90),
     (   19,    79), (   -1, -3000), (   -1,   -31), (   -1,   -36),
     (   -1,   -37), (    8,    91), (   -1, -3000), (   -1,   -24),
     (   -1,   -43), (   -1,   -35), (   -1,   -38), (   -1,   -32));

   YY_Shift_Reduce_Offset : constant array (0 .. 91) of Integer :=
    (    0,    2,    5,    6,    8,   10,   14,   15,
        16,   17,   19,   21,   22,   25,   27,   29,
        30,   31,   33,   36,   39,   41,   44,   46,
        47,   49,   51,   52,   56,   57,   59,   62,
        64,   66,   67,   69,   72,   73,   74,   75,
        77,   79,   81,   83,   84,   87,   88,   89,
        90,   93,   95,  100,  102,  103,  104,  106,
       107,  108,  112,  114,  117,  119,  125,  126,
       127,  128,  129,  130,  133,  134,  135,  136,
       138,  140,  142,  146,  150,  151,  153,  154,
       155,  156,  158,  161,  162,  163,  164,  166,
       167,  168,  169,  170);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
