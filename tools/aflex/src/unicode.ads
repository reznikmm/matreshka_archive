
package Unicode is

   pragma Pure;

   subtype Unicode_Character is Wide_Wide_Character
     range Wide_Wide_Character'Val (16#00_0000#)
             .. Wide_Wide_Character'Val (16#10_FFFF#);

   BEL : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.BEL));
   BS  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.BS));
   CR  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.CR));
   FF  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.FF));
   HT  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.HT));
   LF  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.LF));
   NUL : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.NUL));
   SOH : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.SOH));
   VT  : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.VT));
   DEL : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.DEL));

   type Secondary_Stage_Index is range 16#00# .. 16#FF#;
   type Primary_Stage_Index is range 16#0000# .. 16#10FF#;

   type Code_Unit_32 is mod 2 ** 32;

   subtype Code_Point is Code_Unit_32 range 0 .. 16#10_FFFF#;

end Unicode;
