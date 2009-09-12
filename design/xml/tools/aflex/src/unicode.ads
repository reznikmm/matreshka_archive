
package Unicode is

   subtype Unicode_Character is Wide_Wide_Character
     range Wide_Wide_Character'Val (16#00_0000#)
             .. Wide_Wide_Character'Val (16#10_FFFF#);

   LF : constant Unicode_Character
     := Wide_Wide_Character'Val (Character'Pos (ASCII.LF));

end Unicode;
