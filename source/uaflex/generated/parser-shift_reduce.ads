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
package Parser.Shift_Reduce is

    type Small_Integer is range -32_000 .. 32_000;

    type Shift_Reduce_Entry is record
        T   : Small_Integer;
        Act : Small_Integer;
    end record;
    pragma Pack(Shift_Reduce_Entry);

    subtype Row is Integer range -1 .. Integer'Last;

  --pragma suppress(index_check);

    type Shift_Reduce_Array is array (Row  range <>) of Shift_Reduce_Entry;

    Shift_Reduce_Matrix : constant Shift_Reduce_Array :=
        ( (-1,-1) -- Dummy Entry

-- state  0
,(-1,-3)
-- state  1
,(-1,-11)
-- state  2
,( 2, 9),( 4, 7)
,( 5, 8),( 6, 10),(-1,-3000)
-- state  3
,( 0,-3001)
,(-1,-3000)
-- state  4
,( 6, 15),( 7, 14),(-1,-3000)

-- state  5
,(-1,-1)
-- state  6
,( 7, 14),(-1,-3000)
-- state  7
,( 2, 9)
,(-1,-3000)
-- state  8
,( 2, 9),(-1,-3000)
-- state  9
,(-1,-14)

-- state  10
,(-1,-2)
-- state  11
,(-1,-4)
-- state  12
,(-1,-3000)
-- state  13
,( 8, 21)
,(-1,-3000)
-- state  14
,(-1,-15)
-- state  15
,(-1,-10)
-- state  16
,(-1,-12)

-- state  17
,(-1,-5)
-- state  18
,(-1,-8)
-- state  19
,( 2, 9),( 3, 23)
,(-1,-3000)
-- state  20
,( 2, 9),( 3, 25),(-1,-3000)

-- state  21
,(-1,-16)
-- state  22
,(-1,-13)
-- state  23
,(-1,-6)
-- state  24
,(-1,-9)

-- state  25
,(-1,-7)
);
--  The offset vector
SHIFT_REDUCE_OFFSET : constant array (0.. 25) of Integer :=
( 0,
 1, 2, 7, 9, 12, 13, 15, 17, 19, 20,
 21, 22, 23, 25, 26, 27, 28, 29, 30, 33,
 36, 37, 38, 39, 40);
end Parser.Shift_Reduce;
