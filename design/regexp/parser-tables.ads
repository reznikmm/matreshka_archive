
private package Parser.Tables is

--    type Small_Integer is range -32_000 .. 32_000;
--
   type Shift_Reduce_Entry is record
      T   : Integer;
      Act : Integer;
   end record;
--    pragma Pack(Shift_Reduce_Entry);
--
--    subtype Row is Integer range -1 .. Integer'Last;
--
--  --pragma suppress(index_check);
--
--    type Shift_Reduce_Array is array (Row  range <>) of Shift_Reduce_Entry;

   Shift_Reduce_Matrix : constant array (-1 .. 92) of Shift_Reduce_Entry :=
    ((-1,-1),    --  Dummy Entry
     ( 2, 6),    --  state  0
     ( 3, 5),
     ( 11, 8),
     ( 20, 4),
     (-1,-3000),
     ( 0,-3001), --  state  1
     ( 4, 10),
     (-1,-3000),
     ( 2, 6),    --  state  2
     ( 3, 5),
     ( 11, 8),
     ( 20, 4),
     (-1,-2),
     ( 5, 12),   --  state  3
     ( 6, 13),
     ( 7, 14),
     ( 8, 15),
     ( 9, 16),
     ( 10, 17),
     ( 15, 18),
     (-1,-4),
     ( 2, 6),    --  state  4
     ( 3, 5),
     ( 11, 8),
     ( 20, 4),
     (-1,-3000),
     (-1,-18),    --  state  5
     (-1,-19),    --  state  6
     (-1,-20),    --  state  7
     ( 13, 21),   --  state  8
     (-1,-25),    --  state  9
     (-1,-3000),
     ( 2, 6),     --  state  10
     ( 3, 5),
     ( 11, 8),
     ( 20, 4),
     (-1,-3000),
     ( 5, 12),    --  state  11
     ( 6, 13),
     ( 7, 14),
     ( 8, 15),
     ( 9, 16),
     ( 10, 17),
     ( 15, 18),
     (-1,-3),
     (-1,-5),     --  state  12
     (-1,-6),     --  state  13
     (-1,-7),     --  state  14
     (-1,-8),     --  state  15
     (-1,-9),     --  state  16
     (-1,-10),    --  state  17
     ( 19, 23),   --  state  18
     (-1,-3000),
     ( 4, 10),    --  state  19
     ( 21, 24),
     (-1,-3000),
     ( 2, 26),    --  state  20
     ( 12, 25),
     (-1,-3000),
     (-1,-25),    --  state  21
     ( 2, 6),     --  state  22
     ( 3, 5),
     ( 11, 8),
     ( 20, 4),
     (-1,-1),
     ( 16, 29),   --  state  23
     ( 17, 30),
     ( 18, 28),
     (-1,-3000),
     (-1,-17),    --  state  24
     (-1,-21),    --  state  25
     ( 14, 31),   --  state  26
     (-1,-24),
     ( 2, 26),    --  state  27
     ( 12, 32),
     (-1,-3000),
     ( 16, 34),   --  state  28
     ( 17, 35),
     ( 19, 33),
     (-1,-3000),
     (-1,-15),    --  state  29
     (-1,-16),    --  state  30

-- state  31
( 2, 36),(-1,-3000)

-- state  32
,(-1,-22)
-- state  33
,( 16, 37),( 17, 38),(-1,-3000)

-- state  34
,(-1,-13)
-- state  35
,(-1,-14)
-- state  36
,(-1,-23)
-- state  37
,(-1,-11)

-- state  38
,(-1,-12)
);
--  The offset vector
SHIFT_REDUCE_OFFSET : array (0.. 38) of Integer :=
( 0,
 5, 8, 13, 21, 26, 27, 28, 29, 31, 32,
 37, 45, 46, 47, 48, 49, 50, 51, 53, 56,
 59, 60, 65, 69, 70, 71, 73, 76, 80, 81,
 82, 84, 85, 88, 89, 90, 91, 92);

--    type Small_Integer is range -32_000 .. 32_000;

   type Goto_Entry is record
      Nonterm  : Integer;
      Newstate : Integer;
   end record;

--  --pragma suppress(index_check);
--
--    subtype Row is Integer range -1 .. Integer'Last;
--
--    type Goto_Parse_Table is array (Row range <>) of Goto_Entry;
--
    Goto_Matrix : constant array (-1 .. 16) of Goto_Entry :=
       ((-1,-1)  -- Dummy Entry.
-- State  0
,(-5, 7),(-4, 3),(-3, 2),(-2, 1)

-- State  1

-- State  2
,(-5, 7),(-4, 11)
-- State  3

-- State  4
,(-5, 7),(-4, 3)
,(-3, 2),(-2, 19)
-- State  5

-- State  6

-- State  7

-- State  8
,(-6, 20)
-- State  9

-- State  10
,(-5, 7)
,(-4, 3),(-3, 22)
-- State  11

-- State  12

-- State  13

-- State  14

-- State  15

-- State  16

-- State  17

-- State  18

-- State  19

-- State  20

-- State  21
,(-6, 27)
-- State  22
,(-5, 7)
,(-4, 11)
-- State  23

-- State  24

-- State  25

-- State  26

-- State  27

-- State  28

-- State  29

-- State  30

-- State  31

-- State  32

-- State  33

-- State  34

-- State  35

-- State  36

-- State  37

-- State  38

);
--  The offset vector
GOTO_OFFSET : array (0.. 38) of Integer :=
( 0,
 4, 4, 6, 6, 10, 10, 10, 10, 11, 11,
 14, 14, 14, 14, 14, 14, 14, 14, 14, 14,
 14, 15, 17, 17, 17, 17, 17, 17, 17, 17,
 17, 17, 17, 17, 17, 17, 17, 17);

--subtype Rule        is Natural;
--subtype Nonterminal is Integer;
--
   Rule_Length : array (0 ..  25) of Integer := ( 2,
 3, 1, 2, 1, 2, 2, 2, 2,
 2, 2, 6, 6, 5, 5, 4, 4,
 3, 1, 1, 1, 3, 4, 4, 2,
 0);
   Get_LHS_Rule: array (0 ..  25) of Integer := (-1,
-2,-2,-3,-3,-4,-4,-4,-4,
-4,-4,-4,-4,-4,-4,-4,-4,
-4,-4,-4,-4,-5,-5,-6,-6,
-6);
end Parser.Tables;
