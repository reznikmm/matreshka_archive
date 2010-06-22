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

   YY_Goto_Matrix : constant array (-1 .. 40) of Goto_Entry :=
    ((   -1,    -1), (   -6,     2), (   -3,     1), (   -2,     4),
     (   -9,     5), (   -4,     7), (   -5,    12), (  -14,    14),
     (  -10,    17), (  -26,    19), (  -22,    18), (  -11,    24),
     (  -26,    27), (   -7,    30), (  -17,    34), (  -16,    33),
     (  -15,    32), (  -12,    37), (  -23,    38), (  -27,    40),
     (   -8,    43), (  -17,    34), (  -16,    44), (  -13,    48),
     (  -25,    50), (  -24,    49), (   -5,    51), (  -21,    54),
     (  -20,    59), (  -18,    62), (  -14,    60), (  -17,    34),
     (  -16,    33), (  -15,    64), (  -25,    67), (   -5,    51),
     (  -21,    72), (  -20,    74), (  -19,    76), (  -14,    75),
     (  -17,    34), (  -16,    44));

   YY_Goto_Offset : constant array (0 .. 81) of Integer :=
    (    0,    3,    5,    5,    5,    5,    5,    5,
         6,    6,    6,    8,   10,   10,   10,   10,
        10,   10,   11,   12,   12,   12,   13,   13,
        13,   17,   18,   18,   18,   19,   19,   20,
        20,   22,   22,   22,   22,   22,   23,   26,
        27,   27,   27,   27,   27,   27,   30,   30,
        33,   33,   35,   35,   35,   35,   35,   35,
        35,   35,   35,   35,   35,   35,   36,   36,
        39,   41,   41,   41,   41,   41,   41,   41,
        41,   41,   41,   41,   41,   41,   41,   41,
        41,   41);

   YY_Rule_Length : constant array (0 .. 49) of Integer :=
    (    2,    3,    1,    0,    7,    3,    0,    3,
         0,    1,    0,    0,    7,    1,    0,    2,
         3,    1,    3,    0,    2,    1,    0,    1,
         1,    4,    5,    1,    1,    3,    1,    1,
         3,    2,    1,    0,    0,    7,    3,    2,
         1,    0,    1,    1,    1,    2,    1,    0,
         3,    3);

   YY_Get_LHS_Rule : constant array (0 .. 49) of Integer :=
    (   -1,   -2,   -3,   -3,   -6,   -7,   -7,   -8,
        -8,   -4,   -4,  -11,   -9,  -10,  -10,  -14,
       -14,  -12,  -13,  -13,  -15,  -15,  -15,  -16,
       -16,  -17,  -17,  -18,  -18,  -18,  -19,  -19,
       -20,  -21,  -21,  -21,  -23,   -5,   -5,  -24,
       -24,  -24,  -25,  -25,  -25,  -22,  -22,  -22,
       -26,  -27);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 145) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     3), (   -1,    -3), (    5,     6),
     (   -1,   -10), (   -1,    -2), (   25,     8), (   -1, -3000),
     (    0, -3001), (   -1, -3000), (   -1,    -9), (    8,    10),
     (   -1, -3000), (   21,    11), (   -1, -3000), (   22,    13),
     (   -1, -3000), (   -1, -3000), (    9,    15), (   10,    16),
     (   -1,   -14), (    8,    20), (   -1,   -47), (   -1,    -1),
     (   18,    21), (   -1, -3000), (   -1,   -13), (   11,    22),
     (   -1, -3000), (   12,    23), (   -1, -3000), (   -1,   -11),
     (    7,    25), (    8,    20), (   24,    26), (   -1, -3000),
     (   -1,   -46), (   22,    28), (   -1, -3000), (   26,    29),
     (   -1,    -6), (   -1,   -15), (   11,    31), (   -1, -3000),
     (    6,    36), (   20,    35), (   -1,   -22), (   -1,   -36),
     (   -1,   -38), (   -1,   -45), (   16,    39), (   -1, -3000),
     (   22,    41), (   -1, -3000), (   27,    42), (   -1,    -8),
     (   -1,   -16), (    6,    36), (   20,    35), (   -1,   -17),
     (   -1,   -21), (   -1,   -23), (   -1,   -24), (    8,    45),
     (   15,    46), (   -1, -3000), (   13,    47), (   -1,   -19),
     (   18,    52), (   20,    53), (   21,    11), (   -1,   -41),
     (   18,    55), (   -1,   -35), (   -1,   -48), (   18,    56),
     (   -1, -3000), (   22,    57), (   -1, -3000), (    3,    58),
     (   -1, -3000), (   -1,   -20), (    9,    15), (   10,    16),
     (   16,    61), (   -1, -3000), (    8,    63), (   -1, -3000),
     (    6,    36), (   20,    35), (   -1,   -22), (    7,    65),
     (   -1, -3000), (   18,    52), (   20,    53), (   21,    11),
     (   23,    66), (   -1, -3000), (   -1,   -40), (   -1,   -42),
     (   -1,   -43), (   -1,   -44), (   17,    69), (   18,    68),
     (   -1, -3000), (   -1,   -34), (   -1,    -5), (   18,    70),
     (   -1, -3000), (   -1,    -4), (   -1,   -27), (   19,    71),
     (   -1,   -28), (   18,    55), (   -1,   -35), (    7,    73),
     (   -1, -3000), (    9,    15), (   10,    16), (   16,    61),
     (   -1, -3000), (    6,    36), (   14,    77), (   20,    35),
     (   -1, -3000), (   -1,   -12), (    7,    78), (   -1, -3000),
     (   -1,   -39), (   -1,   -33), (   -1,   -49), (   -1,    -7),
     (    8,    79), (   -1, -3000), (   17,    80), (   18,    68),
     (   -1, -3000), (   -1,   -25), (   -1,   -30), (   -1,   -31),
     (    7,    81), (   -1, -3000), (   -1,   -18), (   -1,   -37),
     (   -1,   -29), (   -1,   -32), (   -1,   -26));

   YY_Shift_Reduce_Offset : constant array (0 .. 81) of Integer :=
    (    0,    2,    4,    5,    7,    9,   10,   12,
        14,   16,   17,   20,   22,   23,   25,   26,
        28,   30,   31,   35,   36,   38,   40,   41,
        43,   46,   47,   48,   49,   51,   53,   55,
        56,   59,   60,   61,   62,   65,   67,   71,
        73,   74,   76,   78,   80,   81,   85,   87,
        90,   92,   97,   98,   99,  100,  101,  104,
       105,  106,  108,  109,  110,  112,  114,  116,
       120,  124,  125,  127,  128,  129,  130,  131,
       133,  136,  137,  138,  139,  141,  142,  143,
       144,  145);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
