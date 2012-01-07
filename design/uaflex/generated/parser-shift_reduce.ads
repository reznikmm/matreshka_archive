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
