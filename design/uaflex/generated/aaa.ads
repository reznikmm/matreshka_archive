package AAA is

   type State is mod 75;
   subtype Valid_State is State range 0 .. State'Last - 1;

   DEF : constant State := 0;
   INITIAL : constant State := 4;
   INRULE : constant State := 15;
   NAMELIST : constant State := 21;
   SECT2 : constant State := 24;

   type Character_Class is mod 18;

   type Rule_Index is range 0 .. 14;

end AAA;
