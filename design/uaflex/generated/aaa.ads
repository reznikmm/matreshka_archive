with Matreshka.Internals.Unicode;
package Aaa is
   type State is mod 68;
   subtype Valid_State is State range 0 .. State'Last - 1;
   DEF : constant State := 0;
   INITIAL : constant State := 4;
   INRULE : constant State := 18;
   NAMELIST : constant State := 27;
   SECT2 : constant State := 31;

   type Character_Class is mod 18;

   type Rule_Index is range 0 .. 18;

   function To_Class (Value : Matreshka.Internals.Unicode.Code_Point)
     return Character_Class;
   pragma Inline (To_Class);

   function Switch (S : State; Class : Character_Class) return State;
   pragma Inline (Switch);

   function Rule (S : State) return Rule_Index;
   pragma Inline (Rule);

end Aaa;
