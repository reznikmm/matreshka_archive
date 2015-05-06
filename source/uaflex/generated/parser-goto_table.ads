------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011-2015, Vadim Godunko <vgodunko@gmail.com>                --
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
package Parser.Goto_Table is

    type Small_Integer is range -32_000 .. 32_000;

    type Goto_Entry is record
        Nonterm  : Small_Integer;
        Newstate : Small_Integer;
    end record;

  --pragma suppress(index_check);

    subtype Row is Integer range -1 .. Integer'Last;

    type Goto_Parse_Table is array (Row range <>) of Goto_Entry;

    Goto_Matrix : constant Goto_Parse_Table :=
       ((-1,-1)  -- Dummy Entry.
-- State  0
,(-5, 2),(-3, 1),(-2, 3)
-- State  1
,(-10, 4)
,(-4, 5)
-- State  2
,(-7, 6),(-6, 11)
-- State  3

-- State  4
,(-11, 16)
,(-8, 13)
-- State  5

-- State  6
,(-8, 17)
-- State  7
,(-9, 19),(-7, 18)

-- State  8
,(-9, 20),(-7, 18)
-- State  9

-- State  10

-- State  11

-- State  12

-- State  13
,(-12, 22)
-- State  14

-- State  15

-- State  16

-- State  17

-- State  18

-- State  19
,(-7, 24)

-- State  20
,(-7, 24)
-- State  21

-- State  22

-- State  23

-- State  24

-- State  25

);
--  The offset vector
GOTO_OFFSET : constant array (0.. 25) of Integer :=
( 0,
 3, 5, 7, 7, 9, 9, 10, 12, 14, 14,
 14, 14, 14, 15, 15, 15, 15, 15, 15, 16,
 17, 17, 17, 17, 17);

subtype Rule        is Natural;
subtype Nonterminal is Integer;

   Rule_Length : constant array (Rule range  0 ..  16) of Natural := ( 2,
 2, 2, 0, 2, 2, 3, 3, 1,
 2, 2, 0, 2, 2, 1, 1, 1);
   Get_LHS_Rule : constant array (Rule range  0 ..  16) of Nonterminal := (-1,
-2,-3,-5,-5,-6,-6,-6,-9,
-9,-4,-10,-10,-11,-7,-8,-12);
end Parser.Goto_Table;
