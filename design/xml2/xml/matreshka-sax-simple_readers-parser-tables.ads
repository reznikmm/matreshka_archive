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

   YY_Goto_Matrix : constant array (-1 .. 36) of Goto_Entry :=
    ((   -1,    -1), (   -2,     2), (   -5,     5), (   -3,     7),
     (   -4,    10), (  -10,    11), (   -6,    14), (  -22,    16),
     (  -18,    15), (   -7,    20), (  -22,    23), (  -13,    28),
     (  -12,    27), (  -11,    26), (   -8,    31), (  -19,    32),
     (  -23,    34), (  -13,    28), (  -12,    35), (   -9,    39),
     (  -21,    41), (  -20,    40), (   -4,    42), (  -17,    44),
     (  -16,    46), (  -14,    49), (  -10,    47), (  -13,    28),
     (  -12,    27), (  -11,    51), (  -21,    54), (   -4,    42),
     (  -17,    58), (  -16,    60), (  -15,    62), (  -10,    61),
     (  -13,    28), (  -12,    35));

   YY_Goto_Offset : constant array (0 .. 67) of Integer :=
    (    0,    1,    1,    1,    3,    3,    3,    3,
         4,    6,    8,    8,    8,    8,    8,    9,
        10,   10,   10,   10,   10,   14,   15,   15,
        15,   16,   16,   18,   18,   18,   18,   18,
        19,   22,   23,   23,   23,   26,   26,   29,
        29,   31,   31,   31,   31,   31,   31,   31,
        31,   32,   32,   35,   37,   37,   37,   37,
        37,   37,   37,   37,   37,   37,   37,   37,
        37,   37,   37,   37);

   YY_Rule_Length : constant array (0 .. 42) of Integer :=
    (    2,    4,    0,    1,    0,    0,    7,    1,
         0,    2,    3,    1,    3,    0,    2,    1,
         0,    1,    1,    4,    5,    1,    1,    3,
         1,    1,    3,    2,    1,    0,    0,    7,
         3,    2,    1,    0,    1,    1,    2,    1,
         0,    3,    3);

   YY_Get_LHS_Rule : constant array (0 .. 42) of Integer :=
    (   -1,   -2,   -2,   -3,   -3,   -7,   -5,   -6,
        -6,  -10,  -10,   -8,   -9,   -9,  -11,  -11,
       -11,  -12,  -12,  -13,  -13,  -14,  -14,  -14,
       -15,  -15,  -16,  -17,  -17,  -17,  -19,   -4,
        -4,  -20,  -20,  -20,  -21,  -21,  -18,  -18,
       -18,  -22,  -23);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 120) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     1), (   -1,    -2), (    3,     3),
     (   -1, -3000), (    0, -3001), (   -1, -3000), (    5,     6),
     (   -1,    -4), (   -1, -3000), (   -1,    -3), (    8,     8),
     (   -1, -3000), (   21,     9), (   -1, -3000), (    9,    12),
     (   10,    13), (   -1,    -8), (    8,    17), (   -1,   -40),
     (   -1,    -1), (   -1,    -7), (   11,    18), (   -1, -3000),
     (   12,    19), (   -1, -3000), (   -1,    -5), (    7,    21),
     (    8,    17), (   24,    22), (   -1, -3000), (   -1,   -39),
     (   22,    24), (   -1, -3000), (   -1,    -9), (   11,    25),
     (   -1, -3000), (    6,    30), (   20,    29), (   -1,   -16),
     (   -1,   -30), (   -1,   -32), (   -1,   -38), (   16,    33),
     (   -1, -3000), (   -1,   -10), (    6,    30), (   20,    29),
     (   -1,   -11), (   -1,   -15), (   -1,   -17), (   -1,   -18),
     (    8,    36), (   15,    37), (   -1, -3000), (   13,    38),
     (   -1,   -13), (   21,     9), (   25,    43), (   -1,   -35),
     (   18,    45), (   -1,   -29), (   -1,   -41), (   -1,   -14),
     (    9,    12), (   10,    13), (   16,    48), (   -1, -3000),
     (    8,    50), (   -1, -3000), (    6,    30), (   20,    29),
     (   -1,   -16), (    7,    52), (   -1, -3000), (   21,     9),
     (   23,    53), (   25,    43), (   -1, -3000), (   -1,   -34),
     (   -1,   -36), (   -1,   -37), (   17,    56), (   18,    55),
     (   -1, -3000), (   -1,   -28), (   -1,   -21), (   19,    57),
     (   -1,   -22), (   18,    45), (   -1,   -29), (    7,    59),
     (   -1, -3000), (    9,    12), (   10,    13), (   16,    48),
     (   -1, -3000), (    6,    30), (   14,    63), (   20,    29),
     (   -1, -3000), (   -1,    -6), (    7,    64), (   -1, -3000),
     (   -1,   -33), (   -1,   -27), (   -1,   -42), (    8,    65),
     (   -1, -3000), (   17,    66), (   18,    55), (   -1, -3000),
     (   -1,   -19), (   -1,   -24), (   -1,   -25), (    7,    67),
     (   -1, -3000), (   -1,   -12), (   -1,   -31), (   -1,   -23),
     (   -1,   -26), (   -1,   -20));

   YY_Shift_Reduce_Offset : constant array (0 .. 67) of Integer :=
    (    0,    2,    4,    6,    8,    9,   10,   12,
        14,   17,   19,   20,   21,   23,   25,   26,
        30,   31,   33,   34,   36,   39,   40,   41,
        42,   44,   45,   48,   49,   50,   51,   54,
        56,   59,   61,   62,   63,   67,   69,   72,
        74,   78,   79,   80,   81,   84,   85,   86,
        88,   90,   92,   96,  100,  101,  103,  104,
       105,  106,  108,  111,  112,  113,  114,  116,
       117,  118,  119,  120);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
