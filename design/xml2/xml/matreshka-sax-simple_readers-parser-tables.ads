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

   YY_Goto_Matrix : constant array (-1 .. 24) of Goto_Entry :=
    ((   -1,    -1), (   -2,     2), (   -4,     5), (   -3,     7),
     (   -9,     9), (   -5,    12), (   -6,    15), (  -12,    19),
     (  -11,    18), (  -10,    17), (   -7,    21), (  -12,    19),
     (  -11,    22), (   -8,    26), (  -15,    27), (  -13,    30),
     (   -9,    28), (  -12,    19), (  -11,    18), (  -10,    32),
     (  -16,    35), (  -15,    38), (  -14,    40), (   -9,    39),
     (  -12,    19), (  -11,    22));

   YY_Goto_Offset : constant array (0 .. 45) of Integer :=
    (    0,    1,    1,    1,    3,    3,    3,    3,
         3,    5,    5,    5,    5,    6,    6,    6,
        10,   10,   12,   12,   12,   12,   13,   13,
        16,   16,   19,   19,   19,   19,   20,   20,
        23,   25,   25,   25,   25,   25,   25,   25,
        25,   25,   25,   25,   25,   25);

   YY_Rule_Length : constant array (0 .. 28) of Integer :=
    (    2,    3,    0,    1,    0,    0,    7,    1,
         0,    2,    3,    1,    3,    0,    1,    2,
         0,    1,    4,    5,    1,    1,    3,    1,
         1,    3,    2,    1,    0);

   YY_Get_LHS_Rule : constant array (0 .. 28) of Integer :=
    (   -1,   -2,   -2,   -3,   -3,   -6,   -4,   -5,
        -5,   -9,   -9,   -7,   -8,   -8,  -10,  -10,
       -10,  -11,  -12,  -12,  -13,  -13,  -13,  -14,
       -14,  -15,  -16,  -16,  -16);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 78) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     1), (   -1,    -2), (    3,     3),
     (   -1, -3000), (    0, -3001), (   -1, -3000), (    5,     6),
     (   -1,    -4), (   -1, -3000), (   -1,    -3), (    8,     8),
     (   -1, -3000), (   -1,    -1), (    9,    10), (   10,    11),
     (   -1,    -8), (   -1,    -7), (   11,    13), (   -1, -3000),
     (   12,    14), (   -1, -3000), (   -1,    -5), (   -1,    -9),
     (   11,    16), (   -1, -3000), (    6,    20), (   -1,   -16),
     (   -1,   -10), (    6,    20), (   -1,   -11), (   -1,   -14),
     (   -1,   -17), (    8,    23), (   15,    24), (   -1, -3000),
     (   13,    25), (   -1,   -13), (   -1,   -15), (    9,    10),
     (   10,    11), (   16,    29), (   -1, -3000), (    8,    31),
     (   -1, -3000), (    6,    20), (   -1,   -16), (    7,    33),
     (   -1, -3000), (   -1,   -20), (   19,    34), (   -1,   -21),
     (   18,    36), (   -1,   -28), (    7,    37), (   -1, -3000),
     (    9,    10), (   10,    11), (   16,    29), (   -1, -3000),
     (    6,    20), (   14,    41), (   -1, -3000), (   -1,    -6),
     (    8,    42), (   -1, -3000), (   17,    43), (   18,    44),
     (   -1, -3000), (   -1,   -27), (   -1,   -18), (   -1,   -23),
     (   -1,   -24), (    7,    45), (   -1, -3000), (   -1,   -12),
     (   -1,   -22), (   -1,   -25), (   -1,   -26), (   -1,   -19));

   YY_Shift_Reduce_Offset : constant array (0 .. 45) of Integer :=
    (    0,    2,    4,    6,    8,    9,   10,   12,
        13,   16,   17,   19,   21,   22,   23,   25,
        27,   28,   30,   31,   32,   35,   37,   38,
        42,   44,   46,   48,   49,   51,   53,   55,
        59,   62,   63,   65,   68,   69,   70,   71,
        72,   74,   75,   76,   77,   78);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
