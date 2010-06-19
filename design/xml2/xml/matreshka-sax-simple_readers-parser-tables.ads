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

   YY_Goto_Matrix : constant array (-1 .. 19) of Goto_Entry :=
    ((   -1,    -1), (   -2,     2), (   -4,     5), (   -3,     7),
     (   -7,     9), (   -5,    12), (   -6,    16), (  -10,    20),
     (   -9,    18), (   -8,    19), (  -10,    20), (   -9,    24),
     (  -11,    27), (  -15,    29), (  -12,    32), (   -7,    30),
     (  -13,    33), (  -16,    35), (  -15,    38), (  -14,    40),
     (   -7,    39));

   YY_Goto_Offset : constant array (0 .. 44) of Integer :=
    (    0,    1,    1,    1,    3,    3,    3,    3,
         3,    5,    5,    5,    5,    6,    6,    6,
         9,    9,    9,    9,   11,   11,   11,   11,
        11,   11,   12,   12,   15,   16,   16,   16,
        17,   17,   20,   20,   20,   20,   20,   20,
        20,   20,   20,   20,   20);

   YY_Rule_Length : constant array (0 .. 28) of Integer :=
    (    2,    3,    0,    1,    0,    5,    1,    0,
         2,    3,    3,    0,    1,    2,    0,    1,
         0,    5,    0,    6,    1,    1,    3,    1,
         1,    3,    2,    1,    0);

   YY_Get_LHS_Rule : constant array (0 .. 28) of Integer :=
    (   -1,   -2,   -2,   -3,   -3,   -4,   -5,   -5,
        -7,   -7,   -6,   -6,   -8,   -8,   -8,   -9,
       -11,  -10,  -13,  -10,  -12,  -12,  -12,  -14,
       -14,  -15,  -16,  -16,  -16);

   YY_Shift_Reduce_Matrix : constant array (-1 .. 75) of Shift_Reduce_Entry :=
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
     (   -1,    -5), (   -1,   -10), (   -1,   -13), (   -1,   -16),
     (    8,    28), (   -1, -3000), (    9,    10), (   10,    11),
     (   16,    31), (   -1, -3000), (   -1,   -18), (   -1,   -20),
     (   19,    34), (   -1,   -21), (   18,    36), (   -1,   -28),
     (    7,    37), (   -1, -3000), (    9,    10), (   10,    11),
     (   16,    31), (   -1, -3000), (    8,    41), (   -1, -3000),
     (   17,    42), (   18,    43), (   -1, -3000), (   -1,   -27),
     (   -1,   -17), (   -1,   -23), (   -1,   -24), (    7,    44),
     (   -1, -3000), (   -1,   -22), (   -1,   -25), (   -1,   -26),
     (   -1,   -19));

   YY_Shift_Reduce_Offset : constant array (0 .. 44) of Integer :=
    (    0,    2,    4,    6,    8,    9,   10,   12,
        13,   16,   17,   19,   21,   23,   24,   26,
        28,   30,   31,   32,   35,   36,   39,   40,
        41,   42,   43,   45,   49,   50,   51,   53,
        55,   57,   61,   63,   66,   67,   68,   69,
        70,   72,   73,   74,   75);

end Matreshka.SAX.Simple_Readers.Parser.Tables;
