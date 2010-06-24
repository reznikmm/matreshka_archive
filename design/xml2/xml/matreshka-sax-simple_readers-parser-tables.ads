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

   YY_Goto_Matrix : constant array (-1 .. 60) of Goto_Entry :=
    ((   -1,    -1), (   -7,     2), (   -3,     1), (   -2,     4),
     (  -13,     8), (  -12,     6), (   -4,     5), (  -14,    12),
     (  -13,     8), (  -12,    15), (   -5,    14), (  -13,     8),
     (  -12,     6), (   -4,    18), (   -6,    21), (  -13,     8),
     (  -12,    15), (  -19,    23), (  -15,    26), (  -31,    28),
     (  -27,    27), (  -13,     8), (  -12,     6), (   -4,    30),
     (   -8,    32), (  -16,    35), (  -31,    38), (  -13,     8),
     (  -12,    15), (   -9,    42), (  -22,    46), (  -21,    45),
     (  -20,    44), (  -17,    49), (  -28,    50), (  -32,    52),
     (  -22,    46), (  -21,    56), (  -18,    60), (  -30,    62),
     (  -29,    61), (  -13,    66), (  -10,    67), (   -6,    63),
     (  -26,    69), (  -25,    72), (  -23,    75), (  -19,    73),
     (  -22,    46), (  -21,    45), (  -20,    77), (  -30,    80),
     (  -13,    66), (  -10,    67), (   -6,    63), (  -11,    82),
     (  -26,    86), (  -25,    88), (  -24,    90), (  -19,    89),
     (  -22,    46), (  -21,    56));

   YY_Goto_Offset : constant array (0 .. 101) of Integer :=
    (    0,    3,    6,    6,    6,    6,   10,   10,
        10,   10,   10,   10,   10,   13,   13,   14,
        14,   14,   14,   16,   18,   20,   23,   24,
        24,   24,   24,   25,   26,   26,   26,   28,
        28,   29,   29,   29,   33,   34,   34,   34,
        35,   35,   35,   35,   35,   37,   37,   37,
        37,   37,   38,   43,   44,   44,   44,   44,
        44,   44,   47,   47,   50,   50,   54,   54,
        54,   54,   54,   54,   54,   55,   55,   55,
        55,   55,   55,   56,   56,   59,   61,   61,
        61,   61,   61,   61,   61,   61,   61,   61,
        61,   61,   61,   61,   61,   61,   61,   61,
        61,   61,   61,   61,   61,   61);

   YY_Rule_Length : constant array (0 .. 60) of Integer :=
    (    2,    5,    1,    0,    7,    6,    3,    0,
         3,    0,    3,    0,    2,    1,    0,    1,
         1,    2,    2,    0,    0,    7,    1,    0,
         2,    3,    1,    3,    0,    2,    1,    0,
         1,    1,    4,    5,    1,    1,    3,    1,
         1,    3,    2,    1,    0,    0,    7,    3,
         2,    1,    0,    1,    1,    1,    1,    1,
         2,    1,    0,    3,    3);

   YY_Get_LHS_Rule : constant array (0 .. 60) of Integer :=
    (   -1,   -2,   -3,   -3,   -7,  -10,  -11,  -11,
        -8,   -8,   -9,   -9,   -4,   -4,   -4,  -12,
       -12,  -13,   -5,   -5,  -16,  -14,  -15,  -15,
       -19,  -19,  -17,  -18,  -18,  -20,  -20,  -20,
       -21,  -21,  -22,  -22,  -23,  -23,  -23,  -24,
       -24,  -25,  -26,  -26,  -26,  -28,   -6,   -6,
       -29,  -29,  -29,  -30,  -30,  -30,  -30,  -30,
       -27,  -27,  -27,  -31,  -32);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 189) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     3), (   -1,    -3), (    3,     9),
     (   21,     7), (   -1,   -14), (   -1,    -2), (   26,    10),
     (   -1, -3000), (    0, -3001), (   -1, -3000), (    3,     9),
     (    6,    13), (   21,     7), (   -1,   -19), (   -1,   -13),
     (   -1,   -15), (   -1,   -16), (    4,    16), (   -1, -3000),
     (   23,    17), (   -1, -3000), (   -1, -3000), (    3,     9),
     (   21,     7), (   -1,   -14), (    9,    19), (   -1, -3000),
     (   22,    20), (   -1, -3000), (   -1,   -12), (   -1,   -17),
     (   19,    22), (   -1, -3000), (    3,     9), (   21,     7),
     (   -1,   -18), (   10,    24), (   11,    25), (   -1,   -23),
     (    9,    29), (   -1,   -58), (    3,     9), (   21,     7),
     (   -1,   -14), (   27,    31), (   -1,    -9), (   -1,   -22),
     (   12,    33), (   -1, -3000), (   13,    34), (   -1, -3000),
     (   -1,   -20), (    8,    36), (    9,    29), (   25,    37),
     (   -1, -3000), (   -1,   -57), (   23,    39), (   -1, -3000),
     (    3,     9), (   21,     7), (   -1,    -1), (   23,    40),
     (   -1, -3000), (   28,    41), (   -1,   -11), (   -1,   -24),
     (   12,    43), (   -1, -3000), (    7,    48), (   21,    47),
     (   -1,   -31), (   -1,   -45), (   -1,   -47), (   -1,   -56),
     (   17,    51), (   -1, -3000), (   19,    53), (   -1, -3000),
     (   23,    54), (   -1, -3000), (    4,    55), (   -1, -3000),
     (   -1,   -25), (    7,    48), (   21,    47), (   -1,   -26),
     (   -1,   -30), (   -1,   -32), (   -1,   -33), (    9,    57),
     (   16,    58), (   -1, -3000), (   14,    59), (   -1,   -28),
     (    2,    68), (    3,     9), (   19,    64), (   21,    65),
     (   22,    20), (   -1,   -50), (   19,    70), (   -1,   -44),
     (   -1,   -59), (   -1,    -8), (   19,    71), (   -1, -3000),
     (   -1,    -4), (   -1,   -29), (   10,    24), (   11,    25),
     (   17,    74), (   -1, -3000), (    9,    76), (   -1, -3000),
     (    7,    48), (   21,    47), (   -1,   -31), (    8,    78),
     (   -1, -3000), (    2,    68), (    3,     9), (   19,    64),
     (   21,    65), (   22,    20), (   24,    79), (   -1, -3000),
     (   -1,   -49), (   -1,   -51), (   -1,   -52), (   -1,   -53),
     (   -1,   -54), (   -1,   -55), (   26,    81), (   -1,    -7),
     (   18,    84), (   19,    83), (   -1, -3000), (   -1,   -43),
     (   -1,   -10), (   -1,   -36), (   20,    85), (   -1,   -37),
     (   19,    70), (   -1,   -44), (    8,    87), (   -1, -3000),
     (   10,    24), (   11,    25), (   17,    74), (   -1, -3000),
     (    7,    48), (   15,    91), (   21,    47), (   -1, -3000),
     (   -1,   -21), (    8,    92), (   -1, -3000), (   -1,   -48),
     (   23,    93), (   -1, -3000), (   27,    94), (   -1, -3000),
     (   -1,   -42), (   -1,   -60), (    9,    95), (   -1, -3000),
     (   18,    96), (   19,    83), (   -1, -3000), (   -1,   -34),
     (   -1,   -39), (   -1,   -40), (    8,    97), (   -1, -3000),
     (   -1,   -27), (   -1,   -46), (   19,    98), (   -1, -3000),
     (   23,    99), (   -1, -3000), (   -1,   -38), (   -1,   -41),
     (   -1,   -35), (   -1,    -6), (   19,   100), (   -1, -3000),
     (    4,   101), (   -1, -3000), (   -1,    -5));

   YY_Shift_Reduce_Offset : constant array (0 .. 101) of Integer :=
    (    0,    2,    5,    6,    8,   10,   14,   15,
        16,   17,   19,   21,   22,   25,   27,   29,
        30,   31,   33,   36,   39,   41,   44,   46,
        47,   49,   51,   52,   56,   57,   59,   62,
        64,   66,   67,   69,   72,   73,   74,   75,
        77,   79,   81,   83,   84,   87,   88,   89,
        90,   93,   95,  101,  103,  104,  105,  107,
       108,  109,  113,  115,  118,  120,  127,  128,
       129,  130,  131,  132,  133,  135,  138,  139,
       140,  141,  143,  145,  147,  151,  155,  156,
       158,  159,  161,  163,  164,  165,  167,  170,
       171,  172,  173,  175,  176,  177,  179,  181,
       182,  183,  184,  185,  187,  189);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
