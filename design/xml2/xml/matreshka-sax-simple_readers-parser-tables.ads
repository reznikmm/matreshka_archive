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

   YY_Goto_Matrix : constant array (-1 .. 17) of Goto_Entry :=
    ((   -1,    -1), (   -2,     2), (   -4,     5), (   -3,     7),
     (   -7,     9), (   -5,    12), (   -6,    16), (  -10,    20),
     (   -9,    18), (   -8,    19), (  -10,    20), (   -9,    24),
     (  -13,    27), (  -11,    30), (   -7,    28), (  -14,    33),
     (  -13,    36), (  -12,    38), (   -7,    37));

   YY_Goto_Offset : constant array (0 .. 42) of Integer :=
    (    0,    1,    1,    1,    3,    3,    3,    3,
         3,    5,    5,    5,    5,    6,    6,    6,
         9,    9,    9,    9,   11,   11,   11,   11,
        11,   11,   14,   14,   14,   14,   15,   15,
        18,   18,   18,   18,   18,   18,   18,   18,
        18,   18,   18);

   YY_Rule_Length : constant array (0 .. 26) of Integer :=
    (    2,    3,    0,    1,    0,    5,    1,    0,
         2,    3,    3,    0,    1,    2,    0,    1,
         4,    5,    1,    1,    3,    1,    1,    3,
         2,    1,    0);

   YY_Get_LHS_Rule : constant array (0 .. 26) of Integer :=
    (   -1,   -2,   -2,   -3,   -3,   -4,   -5,   -5,
        -7,   -7,   -6,   -6,   -8,   -8,   -8,   -9,
       -10,  -10,  -11,  -11,  -11,  -12,  -12,  -13,
       -14,  -14,  -14);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 73) of Shift_Reduce_Entry :=
    ((   -1,    -1), (    2,     1), (   -1,    -2), (    3,     3),
     (   -1, -3000), (    0, -3001), (   -1, -3000), (    5,     6),
     (   -1,    -4), (   -1, -3000), (   -1,    -3), (    8,     8),
     (   -1, -3000), (   -1,    -1), (    9,    10), (   10,    11),
     (   -1,    -7), (   -1,    -6), (   11,    13), (   -1, -3000),
     (   12,    14), (   -1, -3000), (   13,    15), (   -1,   -11),
     (   -1,    -8), (   11,    17), (   -1, -3000), (    6,    21),
     (   -1,   -14), (    7,    22), (   -1, -3000), (   -1,    -9),
     (   -1,   -12), (    6,    21), (   14,    23), (   -1, -3000),
     (   -1,   -15), (    8,    25), (   15,    26), (   -1, -3000),
     (   -1,    -5), (   -1,   -10), (   -1,   -13), (    9,    10),
     (   10,    11), (   16,    29), (   -1, -3000), (    8,    31),
     (   -1, -3000), (   -1,   -18), (   19,    32), (   -1,   -19),
     (   18,    34), (   -1,   -26), (    7,    35), (   -1, -3000),
     (    9,    10), (   10,    11), (   16,    29), (   -1, -3000),
     (    8,    39), (   -1, -3000), (   17,    40), (   18,    41),
     (   -1, -3000), (   -1,   -25), (   -1,   -16), (   -1,   -21),
     (   -1,   -22), (    7,    42), (   -1, -3000), (   -1,   -20),
     (   -1,   -23), (   -1,   -24), (   -1,   -17));

   YY_Shift_Reduce_Offset : constant array (0 .. 42) of Integer :=
    (    0,    2,    4,    6,    8,    9,   10,   12,
        13,   16,   17,   19,   21,   23,   24,   26,
        28,   30,   31,   32,   35,   36,   39,   40,
        41,   42,   46,   48,   49,   51,   53,   55,
        59,   61,   64,   65,   66,   67,   68,   70,
        71,   72,   73);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
