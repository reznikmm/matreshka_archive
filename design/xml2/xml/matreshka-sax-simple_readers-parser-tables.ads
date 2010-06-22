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
     (  -10,    15), (  -17,    24), (  -13,    27), (  -29,    29),
     (  -25,    28), (  -11,     8), (  -10,     6), (   -4,    31),
     (   -8,    33), (  -14,    36), (  -29,    39), (  -11,     8),
     (  -10,    15), (   -9,    43), (  -20,    47), (  -19,    46),
     (  -18,    45), (  -15,    50), (  -26,    51), (  -30,    53),
     (  -20,    47), (  -19,    57), (  -16,    61), (  -28,    63),
     (  -27,    62), (  -11,    67), (   -6,    64), (  -24,    68),
     (  -23,    71), (  -21,    74), (  -17,    72), (  -20,    47),
     (  -19,    46), (  -18,    76), (  -28,    79), (  -11,    67),
     (   -6,    64), (  -24,    83), (  -23,    85), (  -22,    87),
     (  -17,    86), (  -20,    47), (  -19,    57));

   YY_Goto_Offset : constant array (0 .. 92) of Integer :=
    (    0,    3,    6,    6,    6,    6,   10,   10,
        10,   10,   10,   10,   10,   13,   13,   14,
        14,   14,   14,   16,   18,   20,   23,   23,
        24,   24,   24,   24,   25,   26,   26,   26,
        28,   28,   29,   29,   29,   33,   34,   34,
        34,   35,   35,   35,   35,   35,   37,   37,
        37,   37,   37,   38,   42,   43,   43,   43,
        43,   43,   43,   46,   46,   49,   49,   52,
        52,   52,   52,   52,   52,   52,   52,   52,
        52,   52,   53,   53,   56,   58,   58,   58,
        58,   58,   58,   58,   58,   58,   58,   58,
        58,   58,   58,   58,   58);

   YY_Rule_Length : constant array (0 .. 56) of Integer :=
    (    2,    5,    1,    0,    7,    3,    0,    3,
         0,    2,    1,    0,    1,    1,    3,    2,
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

   YY_Shift_Reduce_Matrix : constant array (-1 .. 172) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     3), (   -1,    -3), (    3,     9),
     (   21,     7), (   -1,   -11), (   -1,    -2), (   26,    10),
     (   -1, -3000), (    0, -3001), (   -1, -3000), (    3,     9),
     (    6,    13), (   21,     7), (   -1,   -16), (   -1,   -10),
     (   -1,   -12), (   -1,   -13), (   19,    16), (   -1, -3000),
     (   23,    17), (   -1, -3000), (   -1, -3000), (    3,     9),
     (   21,     7), (   -1,   -11), (    9,    19), (   -1, -3000),
     (   22,    20), (   -1, -3000), (   -1,    -9), (    4,    22),
     (   -1, -3000), (   19,    23), (   -1, -3000), (    3,     9),
     (   21,     7), (   -1,   -15), (   10,    25), (   11,    26),
     (   -1,   -20), (    9,    30), (   -1,   -54), (    3,     9),
     (   21,     7), (   -1,   -11), (   -1,   -14), (   27,    32),
     (   -1,    -6), (   -1,   -19), (   12,    34), (   -1, -3000),
     (   13,    35), (   -1, -3000), (   -1,   -17), (    8,    37),
     (    9,    30), (   25,    38), (   -1, -3000), (   -1,   -53),
     (   23,    40), (   -1, -3000), (    3,     9), (   21,     7),
     (   -1,    -1), (   23,    41), (   -1, -3000), (   28,    42),
     (   -1,    -8), (   -1,   -21), (   12,    44), (   -1, -3000),
     (    7,    49), (   21,    48), (   -1,   -28), (   -1,   -42),
     (   -1,   -44), (   -1,   -52), (   17,    52), (   -1, -3000),
     (   19,    54), (   -1, -3000), (   23,    55), (   -1, -3000),
     (    4,    56), (   -1, -3000), (   -1,   -22), (    7,    49),
     (   21,    48), (   -1,   -23), (   -1,   -27), (   -1,   -29),
     (   -1,   -30), (    9,    58), (   16,    59), (   -1, -3000),
     (   14,    60), (   -1,   -25), (    3,     9), (   19,    65),
     (   21,    66), (   22,    20), (   -1,   -47), (   19,    69),
     (   -1,   -41), (   -1,   -55), (   -1,    -5), (   19,    70),
     (   -1, -3000), (   -1,    -4), (   -1,   -26), (   10,    25),
     (   11,    26), (   17,    73), (   -1, -3000), (    9,    75),
     (   -1, -3000), (    7,    49), (   21,    48), (   -1,   -28),
     (    8,    77), (   -1, -3000), (    3,     9), (   19,    65),
     (   21,    66), (   22,    20), (   24,    78), (   -1, -3000),
     (   -1,   -46), (   -1,   -48), (   -1,   -49), (   -1,   -50),
     (   -1,   -51), (   18,    81), (   19,    80), (   -1, -3000),
     (   -1,   -40), (   -1,    -7), (   -1,   -33), (   20,    82),
     (   -1,   -34), (   19,    69), (   -1,   -41), (    8,    84),
     (   -1, -3000), (   10,    25), (   11,    26), (   17,    73),
     (   -1, -3000), (    7,    49), (   15,    88), (   21,    48),
     (   -1, -3000), (   -1,   -18), (    8,    89), (   -1, -3000),
     (   -1,   -45), (   -1,   -39), (   -1,   -56), (    9,    90),
     (   -1, -3000), (   18,    91), (   19,    80), (   -1, -3000),
     (   -1,   -31), (   -1,   -36), (   -1,   -37), (    8,    92),
     (   -1, -3000), (   -1,   -24), (   -1,   -43), (   -1,   -35),
     (   -1,   -38), (   -1,   -32));

   YY_Shift_Reduce_Offset : constant array (0 .. 92) of Integer :=
    (    0,    2,    5,    6,    8,   10,   14,   15,
        16,   17,   19,   21,   22,   25,   27,   29,
        30,   32,   34,   37,   40,   42,   45,   46,
        48,   49,   51,   53,   54,   58,   59,   61,
        64,   66,   68,   69,   71,   74,   75,   76,
        77,   79,   81,   83,   85,   86,   89,   90,
        91,   92,   95,   97,  102,  104,  105,  106,
       108,  109,  110,  114,  116,  119,  121,  127,
       128,  129,  130,  131,  132,  135,  136,  137,
       138,  140,  142,  144,  148,  152,  153,  155,
       156,  157,  158,  160,  163,  164,  165,  166,
       168,  169,  170,  171,  172);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
