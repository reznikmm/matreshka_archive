with Ada.Wide_Wide_Text_IO;

with League.Character_Sets; use League.Character_Sets;

procedure Test_For_Sets is
   procedure Check (Test : Boolean) is
   begin
      if not Test then
         Ada.Wide_Wide_Text_IO.Put_Line ("Some test failed");
      end if;
   end Check;
   
   A, B : Universal_Character_Set;
begin
   A := To_Set ("АБЦДABCD");
   B := To_Set ("123БD");
   
   Check (A /= B);
   Check (A /= not A);
   Check (A = (A and A));
   Check (A /= (A or B));
   Check (A /= (A xor B));
   Check (A /= (A - B));
   Check (A.Has ('Ц'));
   Check (not A.Is_Subset (B));
   Check (not A.Is_Empty);
   
   Check ((A and B) = To_Set ("БD"));
   Check ((A or B) = To_Set ("АБЦДABCD123"));
   Check ((A xor B) = To_Set ("АЦДABC123"));
   Check ((B - A) = To_Set ("123"));
   Check (not A.Has ('X'));
   Check (Is_Subset ((A and B), A));
   Check (Is_Empty (A xor A));
   
end Test_For_Sets;
