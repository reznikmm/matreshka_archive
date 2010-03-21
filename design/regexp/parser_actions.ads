
package Parser_Actions is

   function Process_Alternation
     (Alternative_1 : Positive;
      Alternative_2 : Positive) return Positive;

   function Process_Multiplicity
     (Expression : Positive;
      Lower      : Natural;
      Upper      : Natural;
      Greedy     : Boolean) return Positive;

   function Process_Any_Code_Point return Positive;

   function Process_Code_Point
     (Character : Wide_Wide_Character) return Positive;

   function Process_Negate_Character_Class
     (Class : Positive) return Positive;

   function Process_Character_Class_Range
     (Class : Positive;
      Low   : Wide_Wide_Character;
      High  : Wide_Wide_Character) return Positive;

   function Process_Character_Class_Code_Point
     (Class : Positive;
      Code  : Wide_Wide_Character) return Positive;

   function Process_New_Character_Class return Positive;

end Parser_Actions;
