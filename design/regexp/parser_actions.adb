with Syntax;

package body Parser_Actions is

   use Syntax;

   -------------------------
   -- Process_Alternation --
   -------------------------

   function Process_Alternation
     (Alternative_1 : Positive;
      Alternative_2 : Positive) return Positive is
   begin
      AST_Last := AST_Last + 1;
      AST (AST_Last) := (Alternation, 0, Alternative_1, Alternative_2);

      return AST_Last;
   end Process_Alternation;

   ----------------------------
   -- Process_Any_Code_Point --
   ----------------------------

   function Process_Any_Code_Point return Positive is
   begin
      AST_Last := AST_Last + 1;
      AST (AST_Last) := (Any_Code_Point, 0);

      return AST_Last;
   end Process_Any_Code_Point;

   ----------------------------------------
   -- Process_Character_Class_Code_Point --
   ----------------------------------------

   function Process_Character_Class_Code_Point
     (Class : Positive;
      Code  : Wide_Wide_Character) return Positive is
   begin
      AST_Last := AST_Last + 1;
      AST (AST_Last) := (Code_Point, 0, Code);
      Add (Class, AST_Last);

      return Class;
   end Process_Character_Class_Code_Point;

   -----------------------------------
   -- Process_Character_Class_Range --
   -----------------------------------

   function Process_Character_Class_Range
     (Class : Positive;
      Low   : Wide_Wide_Character;
      High  : Wide_Wide_Character) return Positive is
   begin
      AST_Last := AST_Last + 1;
      AST (AST_Last) := (Code_Point_Range, 0, Low, High);
      Add (Class, AST_Last);

      return Class;
   end Process_Character_Class_Range;

   ------------------------
   -- Process_Code_Point --
   ------------------------

   function Process_Code_Point
     (Character : Wide_Wide_Character) return Positive is
   begin
      AST_Last := AST_Last + 1;
      AST (AST_Last) := (Code_Point, 0, Character);

      return AST_Last;
   end Process_Code_Point;

   --------------------------
   -- Process_Multiplicity --
   --------------------------

   function Process_Multiplicity
     (Expression : Positive;
      Lower      : Natural;
      Upper      : Natural;
      Greedy     : Boolean) return Positive is
   begin
      AST_Last := AST_Last + 1;
      AST (AST_Last) := (Multiplicity, 0, Expression, Greedy, Lower, Upper);

      return AST_Last;
   end Process_Multiplicity;

   ------------------------------------
   -- Process_Negate_Character_Class --
   ------------------------------------

   function Process_Negate_Character_Class
     (Class : Positive) return Positive is
   begin
      AST (Class).Negated := True;

      return Class;
   end Process_Negate_Character_Class;

   ---------------------------------
   -- Process_New_Character_Class --
   ---------------------------------

   function Process_New_Character_Class return Positive is
   begin
      AST_Last := AST_Last + 1;
      AST (AST_Last) := (Character_Class, 0, False, 0);

      return AST_Last;
   end Process_New_Character_Class;

end Parser_Actions;
