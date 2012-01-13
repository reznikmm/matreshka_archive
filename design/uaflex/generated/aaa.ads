with Matreshka.Internals.Unicode;

package AAA is

   type State is mod 82;
   subtype Valid_State is State range 0 .. State'Last - 1;

   DEF : constant State := 0;
   INITIAL : constant State := 4;
   INRULE : constant State := 16;
   NAMELIST : constant State := 22;
   SECT2 : constant State := 26;

   type Character_Class is mod 18;

   type Rule_Index is range 0 .. 19;

end AAA;
