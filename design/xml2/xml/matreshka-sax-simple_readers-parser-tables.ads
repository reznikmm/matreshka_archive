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
     (  -13,     8), (  -12,     6), (   -4,     5), (  -13,     8),
     (  -12,    14), (   -5,    13), (  -19,    17), (  -14,    20),
     (   -6,    22), (  -15,    26), (  -31,    28), (  -27,    27),
     (  -13,     8), (  -12,     6), (   -4,    30), (   -8,    32),
     (  -22,    36), (  -21,    35), (  -20,    34), (  -16,    39),
     (  -31,    42), (  -13,     8), (  -12,    14), (   -9,    46),
     (  -22,    36), (  -21,    47), (  -17,    51), (  -28,    52),
     (  -32,    54), (  -25,    58), (  -23,    61), (  -19,    59),
     (  -22,    36), (  -21,    35), (  -20,    63), (  -30,    66),
     (  -29,    65), (  -13,    70), (  -10,    71), (   -6,    67),
     (  -26,    73), (  -26,    77), (  -25,    79), (  -24,    81),
     (  -19,    80), (  -22,    36), (  -21,    47), (  -18,    83),
     (  -30,    85), (  -13,    70), (  -10,    71), (   -6,    67),
     (  -11,    87), (  -13,     8), (  -12,     6), (   -4,    93),
     (  -13,     8), (  -12,    14));

   YY_Goto_Offset : constant array (0 .. 100) of Integer :=
    (    0,    3,    6,    6,    6,    6,    9,    9,
         9,    9,    9,    9,    9,   11,   12,   12,
        12,   12,   12,   12,   12,   13,   15,   18,
        19,   19,   19,   23,   24,   24,   24,   26,
        26,   27,   27,   29,   29,   29,   29,   29,
        30,   31,   31,   31,   32,   32,   32,   32,
        32,   35,   35,   38,   38,   43,   44,   44,
        44,   44,   44,   44,   44,   45,   45,   48,
        50,   51,   55,   55,   55,   55,   55,   55,
        55,   56,   56,   56,   56,   56,   56,   56,
        56,   56,   56,   56,   59,   59,   59,   59,
        59,   59,   59,   59,   59,   59,   61,   61,
        61,   61,   61,   61,   61);

   YY_Rule_Length : constant array (0 .. 60) of Integer :=
    (    2,    5,    1,    0,    7,    6,    3,    0,
         3,    0,    3,    0,    2,    1,    0,    1,
         1,    2,    0,    0,    8,    0,    1,    0,
         2,    3,    1,    3,    0,    2,    1,    0,
         1,    1,    4,    5,    1,    1,    3,    1,
         1,    3,    2,    1,    0,    0,    7,    3,
         2,    1,    0,    1,    1,    1,    1,    1,
         2,    1,    0,    3,    3);

   YY_Get_LHS_Rule : constant array (0 .. 60) of Integer :=
    (   -1,   -2,   -3,   -3,   -7,  -10,  -11,  -11,
        -8,   -8,   -9,   -9,   -4,   -4,   -4,  -12,
       -12,  -13,  -15,  -18,   -5,   -5,  -14,  -14,
       -19,  -19,  -16,  -17,  -17,  -20,  -20,  -20,
       -21,  -21,  -22,  -22,  -23,  -23,  -23,  -24,
       -24,  -25,  -26,  -26,  -26,  -28,   -6,   -6,
       -29,  -29,  -29,  -30,  -30,  -30,  -30,  -30,
       -27,  -27,  -27,  -31,  -32);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 187) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     3), (   -1,    -3), (    3,     9),
     (   21,     7), (   -1,   -14), (   -1,    -2), (   26,    10),
     (   -1, -3000), (    0, -3001), (   -1, -3000), (    3,     9),
     (    6,    12), (   21,     7), (   -1,   -21), (   -1,   -13),
     (   -1,   -15), (   -1,   -16), (    4,    15), (   -1, -3000),
     (   23,    16), (   -1, -3000), (   -1, -3000), (   10,    18),
     (   11,    19), (   -1,   -23), (   22,    21), (   -1, -3000),
     (   -1,   -12), (   -1,   -17), (   19,    23), (   -1, -3000),
     (   -1,   -22), (   12,    24), (   -1, -3000), (   13,    25),
     (   -1, -3000), (   -1,   -18), (    9,    29), (   -1,   -58),
     (    3,     9), (   21,     7), (   -1,   -14), (   27,    31),
     (   -1,    -9), (   -1,   -24), (   12,    33), (   -1, -3000),
     (    7,    38), (   21,    37), (   -1,   -31), (    8,    40),
     (    9,    29), (   25,    41), (   -1, -3000), (   -1,   -57),
     (   23,    43), (   -1, -3000), (    3,     9), (   21,     7),
     (   -1,    -1), (   23,    44), (   -1, -3000), (   28,    45),
     (   -1,   -11), (   -1,   -25), (    7,    38), (   21,    37),
     (   -1,   -26), (   -1,   -30), (   -1,   -32), (   -1,   -33),
     (    9,    48), (   16,    49), (   -1, -3000), (   14,    50),
     (   -1,   -28), (   -1,   -45), (   -1,   -47), (   -1,   -56),
     (   17,    53), (   -1, -3000), (   19,    55), (   -1, -3000),
     (   23,    56), (   -1, -3000), (    4,    57), (   -1, -3000),
     (   -1,   -29), (   10,    18), (   11,    19), (   17,    60),
     (   -1, -3000), (    9,    62), (   -1, -3000), (    7,    38),
     (   21,    37), (   -1,   -31), (    8,    64), (   -1, -3000),
     (    2,    72), (    3,     9), (   19,    68), (   21,    69),
     (   22,    21), (   -1,   -50), (   19,    74), (   -1,   -44),
     (   -1,   -59), (   -1,    -8), (   19,    75), (   -1, -3000),
     (   -1,    -4), (   -1,   -36), (   20,    76), (   -1,   -37),
     (   19,    74), (   -1,   -44), (    8,    78), (   -1, -3000),
     (   10,    18), (   11,    19), (   17,    60), (   -1, -3000),
     (    7,    38), (   15,    82), (   21,    37), (   -1, -3000),
     (   -1,   -19), (    2,    72), (    3,     9), (   19,    68),
     (   21,    69), (   22,    21), (   24,    84), (   -1, -3000),
     (   -1,   -49), (   -1,   -51), (   -1,   -52), (   -1,   -53),
     (   -1,   -54), (   -1,   -55), (   26,    86), (   -1,    -7),
     (   18,    89), (   19,    88), (   -1, -3000), (   -1,   -43),
     (   -1,   -10), (    9,    90), (   -1, -3000), (   18,    91),
     (   19,    88), (   -1, -3000), (   -1,   -34), (   -1,   -39),
     (   -1,   -40), (    8,    92), (   -1, -3000), (   -1,   -27),
     (    3,     9), (   21,     7), (   -1,   -14), (    8,    94),
     (   -1, -3000), (   -1,   -48), (   23,    95), (   -1, -3000),
     (   27,    96), (   -1, -3000), (   -1,   -42), (   -1,   -60),
     (   -1,   -38), (   -1,   -41), (   -1,   -35), (    3,     9),
     (   21,     7), (   -1,   -20), (   -1,   -46), (   19,    97),
     (   -1, -3000), (   23,    98), (   -1, -3000), (   -1,    -6),
     (   19,    99), (   -1, -3000), (    4,   100), (   -1, -3000),
     (   -1,    -5));

   YY_Shift_Reduce_Offset : constant array (0 .. 100) of Integer :=
    (    0,    2,    5,    6,    8,   10,   14,   15,
        16,   17,   19,   21,   22,   25,   27,   28,
        29,   31,   32,   34,   36,   37,   39,   42,
        44,   45,   47,   50,   54,   55,   57,   60,
        62,   64,   65,   68,   69,   70,   71,   74,
        76,   77,   78,   79,   81,   83,   85,   87,
        88,   92,   94,   97,   99,  105,  107,  108,
       109,  111,  112,  113,  115,  117,  119,  123,
       127,  128,  135,  136,  137,  138,  139,  140,
       141,  143,  146,  147,  148,  150,  153,  154,
       155,  156,  158,  159,  162,  164,  165,  167,
       169,  170,  171,  172,  173,  174,  177,  178,
       180,  182,  183,  185,  187);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
