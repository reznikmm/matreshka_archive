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

   YY_Goto_Matrix : constant array (-1 .. 49) of Goto_Entry :=
    ((   -1,    -1), (   -7,     2), (   -3,     1), (   -2,     4),
     (  -10,     6), (   -4,     5), (  -11,    10), (  -10,    13),
     (   -5,    12), (  -10,     6), (   -4,    15), (   -6,    18),
     (  -10,    13), (  -16,    20), (  -12,    23), (  -28,    25),
     (  -24,    24), (  -10,     6), (   -4,    27), (   -8,    29),
     (  -13,    32), (  -28,    35), (  -10,    13), (   -9,    39),
     (  -19,    43), (  -18,    42), (  -17,    41), (  -14,    46),
     (  -25,    47), (  -29,    49), (  -19,    43), (  -18,    53),
     (  -15,    57), (  -27,    59), (  -26,    58), (   -6,    60),
     (  -23,    63), (  -22,    66), (  -20,    69), (  -16,    67),
     (  -19,    43), (  -18,    42), (  -17,    71), (  -27,    74),
     (   -6,    60), (  -23,    78), (  -22,    80), (  -21,    82),
     (  -16,    81), (  -19,    43), (  -18,    53));

   YY_Goto_Offset : constant array (0 .. 87) of Integer :=
    (    0,    3,    5,    5,    5,    5,    8,    8,
         8,    8,    8,   10,   10,   11,   11,   11,
        12,   14,   16,   18,   19,   19,   19,   19,
        20,   21,   21,   21,   22,   22,   23,   23,
        23,   27,   28,   28,   28,   29,   29,   29,
        29,   29,   31,   31,   31,   31,   31,   32,
        35,   36,   36,   36,   36,   36,   36,   39,
        39,   42,   42,   44,   44,   44,   44,   44,
        44,   44,   44,   44,   44,   45,   45,   48,
        50,   50,   50,   50,   50,   50,   50,   50,
        50,   50,   50,   50,   50,   50,   50,   50);

   YY_Rule_Length : constant array (0 .. 53) of Integer :=
    (    2,    5,    1,    0,    7,    3,    0,    3,
         0,    2,    1,    0,    1,    2,    0,    0,
         7,    1,    0,    2,    3,    1,    3,    0,
         2,    1,    0,    1,    1,    4,    5,    1,
         1,    3,    1,    1,    3,    2,    1,    0,
         0,    7,    3,    2,    1,    0,    1,    1,
         1,    2,    1,    0,    3,    3);

   YY_Get_LHS_Rule : constant array (0 .. 53) of Integer :=
    (   -1,   -2,   -3,   -3,   -7,   -8,   -8,   -9,
        -9,   -4,   -4,   -4,  -10,   -5,   -5,  -13,
       -11,  -12,  -12,  -16,  -16,  -14,  -15,  -15,
       -17,  -17,  -17,  -18,  -18,  -19,  -19,  -20,
       -20,  -20,  -21,  -21,  -22,  -23,  -23,  -23,
       -25,   -6,   -6,  -26,  -26,  -26,  -27,  -27,
       -27,  -24,  -24,  -24,  -28,  -29);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 157) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     3), (   -1,    -3), (   20,     7),
     (   -1,   -11), (   -1,    -2), (   25,     8), (   -1, -3000),
     (    0, -3001), (   -1, -3000), (    5,    11), (   20,     7),
     (   -1,   -14), (   -1,   -10), (   -1,   -12), (   22,    14),
     (   -1, -3000), (   -1, -3000), (   20,     7), (   -1,   -11),
     (    8,    16), (   -1, -3000), (   21,    17), (   -1, -3000),
     (   -1,    -9), (   18,    19), (   -1, -3000), (   20,     7),
     (   -1,   -13), (    9,    21), (   10,    22), (   -1,   -18),
     (    8,    26), (   -1,   -51), (   20,     7), (   -1,   -11),
     (   26,    28), (   -1,    -6), (   -1,   -17), (   11,    30),
     (   -1, -3000), (   12,    31), (   -1, -3000), (   -1,   -15),
     (    7,    33), (    8,    26), (   24,    34), (   -1, -3000),
     (   -1,   -50), (   22,    36), (   -1, -3000), (   20,     7),
     (   -1,    -1), (   22,    37), (   -1, -3000), (   27,    38),
     (   -1,    -8), (   -1,   -19), (   11,    40), (   -1, -3000),
     (    6,    45), (   20,    44), (   -1,   -26), (   -1,   -40),
     (   -1,   -42), (   -1,   -49), (   16,    48), (   -1, -3000),
     (   18,    50), (   -1, -3000), (   22,    51), (   -1, -3000),
     (    3,    52), (   -1, -3000), (   -1,   -20), (    6,    45),
     (   20,    44), (   -1,   -21), (   -1,   -25), (   -1,   -27),
     (   -1,   -28), (    8,    54), (   15,    55), (   -1, -3000),
     (   13,    56), (   -1,   -23), (   18,    61), (   20,    62),
     (   21,    17), (   -1,   -45), (   18,    64), (   -1,   -39),
     (   -1,   -52), (   -1,    -5), (   18,    65), (   -1, -3000),
     (   -1,    -4), (   -1,   -24), (    9,    21), (   10,    22),
     (   16,    68), (   -1, -3000), (    8,    70), (   -1, -3000),
     (    6,    45), (   20,    44), (   -1,   -26), (    7,    72),
     (   -1, -3000), (   18,    61), (   20,    62), (   21,    17),
     (   23,    73), (   -1, -3000), (   -1,   -44), (   -1,   -46),
     (   -1,   -47), (   -1,   -48), (   17,    76), (   18,    75),
     (   -1, -3000), (   -1,   -38), (   -1,    -7), (   -1,   -31),
     (   19,    77), (   -1,   -32), (   18,    64), (   -1,   -39),
     (    7,    79), (   -1, -3000), (    9,    21), (   10,    22),
     (   16,    68), (   -1, -3000), (    6,    45), (   14,    83),
     (   20,    44), (   -1, -3000), (   -1,   -16), (    7,    84),
     (   -1, -3000), (   -1,   -43), (   -1,   -37), (   -1,   -53),
     (    8,    85), (   -1, -3000), (   17,    86), (   18,    75),
     (   -1, -3000), (   -1,   -29), (   -1,   -34), (   -1,   -35),
     (    7,    87), (   -1, -3000), (   -1,   -22), (   -1,   -41),
     (   -1,   -33), (   -1,   -36), (   -1,   -30));

   YY_Shift_Reduce_Offset : constant array (0 .. 87) of Integer :=
    (    0,    2,    4,    5,    7,    9,   12,   13,
        14,   16,   17,   19,   21,   23,   24,   26,
        28,   31,   33,   35,   37,   38,   40,   42,
        43,   47,   48,   50,   52,   54,   56,   57,
        59,   62,   63,   64,   65,   67,   69,   71,
        73,   74,   77,   78,   79,   80,   83,   85,
        89,   91,   92,   93,   95,   96,   97,  101,
       103,  106,  108,  113,  114,  115,  116,  117,
       120,  121,  122,  123,  125,  127,  129,  133,
       137,  138,  140,  141,  142,  143,  145,  148,
       149,  150,  151,  153,  154,  155,  156,  157);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
