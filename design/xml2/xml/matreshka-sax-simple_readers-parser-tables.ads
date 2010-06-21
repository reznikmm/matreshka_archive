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

   YY_Goto_Matrix : constant array (-1 .. 30) of Goto_Entry :=
    ((   -1,    -1), (   -2,     2), (   -5,     5), (   -3,     7),
     (   -4,    10), (  -10,    11), (   -6,    14), (  -19,    16),
     (  -18,    15), (   -7,    20), (  -19,    22), (  -13,    27),
     (  -12,    26), (  -11,    25), (   -8,    30), (  -20,    32),
     (  -13,    27), (  -12,    33), (   -9,    37), (  -17,    38),
     (  -16,    40), (  -14,    43), (  -10,    41), (  -13,    27),
     (  -12,    26), (  -11,    45), (  -17,    50), (  -16,    52),
     (  -15,    54), (  -10,    53), (  -13,    27), (  -12,    33));

   YY_Goto_Offset : constant array (0 .. 58) of Integer :=
    (    0,    1,    1,    1,    3,    3,    3,    3,
         4,    6,    8,    8,    8,    8,    8,    9,
        10,   10,   10,   10,   10,   14,   14,   14,
        15,   15,   17,   17,   17,   17,   17,   18,
        19,   19,   19,   22,   22,   25,   25,   25,
        25,   25,   25,   26,   26,   29,   31,   31,
        31,   31,   31,   31,   31,   31,   31,   31,
        31,   31,   31);

   YY_Rule_Length : constant array (0 .. 35) of Integer :=
    (    2,    4,    0,    1,    0,    0,    7,    1,
         0,    2,    3,    1,    3,    0,    2,    1,
         0,    1,    1,    4,    5,    1,    1,    3,
         1,    1,    3,    2,    1,    0,    3,    2,
         1,    0,    3,    3);

   YY_Get_LHS_Rule : constant array (0 .. 35) of Integer :=
    (   -1,   -2,   -2,   -3,   -3,   -7,   -5,   -6,
        -6,  -10,  -10,   -8,   -9,   -9,  -11,  -11,
       -11,  -12,  -12,  -13,  -13,  -14,  -14,  -14,
       -15,  -15,  -16,  -17,  -17,  -17,   -4,  -18,
       -18,  -18,  -19,  -20);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 104) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     1), (   -1,    -2), (    3,     3),
     (   -1, -3000), (    0, -3001), (   -1, -3000), (    5,     6),
     (   -1,    -4), (   -1, -3000), (   -1,    -3), (    8,     8),
     (   -1, -3000), (   21,     9), (   -1, -3000), (    9,    12),
     (   10,    13), (   -1,    -8), (    8,    17), (   -1,   -33),
     (   -1,    -1), (   -1,    -7), (   11,    18), (   -1, -3000),
     (   12,    19), (   -1, -3000), (   -1,    -5), (    7,    21),
     (    8,    17), (   -1, -3000), (   -1,   -32), (   22,    23),
     (   -1, -3000), (   -1,    -9), (   11,    24), (   -1, -3000),
     (    6,    29), (   20,    28), (   -1,   -16), (   -1,   -30),
     (   -1,   -31), (   16,    31), (   -1, -3000), (   -1,   -10),
     (    6,    29), (   20,    28), (   -1,   -11), (   -1,   -15),
     (   -1,   -17), (   -1,   -18), (    8,    34), (   15,    35),
     (   -1, -3000), (   13,    36), (   -1,   -13), (   18,    39),
     (   -1,   -29), (   -1,   -34), (   -1,   -14), (    9,    12),
     (   10,    13), (   16,    42), (   -1, -3000), (    8,    44),
     (   -1, -3000), (    6,    29), (   20,    28), (   -1,   -16),
     (    7,    46), (   -1, -3000), (   17,    48), (   18,    47),
     (   -1, -3000), (   -1,   -28), (   -1,   -21), (   19,    49),
     (   -1,   -22), (   18,    39), (   -1,   -29), (    7,    51),
     (   -1, -3000), (    9,    12), (   10,    13), (   16,    42),
     (   -1, -3000), (    6,    29), (   14,    55), (   20,    28),
     (   -1, -3000), (   -1,    -6), (   -1,   -27), (   -1,   -35),
     (    8,    56), (   -1, -3000), (   17,    57), (   18,    47),
     (   -1, -3000), (   -1,   -19), (   -1,   -24), (   -1,   -25),
     (    7,    58), (   -1, -3000), (   -1,   -12), (   -1,   -23),
     (   -1,   -26), (   -1,   -20));

   YY_Shift_Reduce_Offset : constant array (0 .. 58) of Integer :=
    (    0,    2,    4,    6,    8,    9,   10,   12,
        14,   17,   19,   20,   21,   23,   25,   26,
        29,   30,   32,   33,   35,   38,   39,   40,
        42,   43,   46,   47,   48,   49,   52,   54,
        56,   57,   58,   62,   64,   67,   69,   72,
        73,   74,   76,   78,   80,   84,   88,   89,
        90,   91,   93,   96,   97,   98,   99,  101,
       102,  103,  104);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
