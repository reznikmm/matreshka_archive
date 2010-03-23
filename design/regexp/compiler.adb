with Ada.Containers.Vectors;

package body Compiler is

   use Engine;
   use Syntax;

   package Integer_Vectors is
     new Ada.Containers.Vectors (Positive, Integer);

   -------------
   -- Compile --
   -------------

   function Compile return Engine.Instruction_Array is
      use Integer_Vectors;

      Program : Instruction_Array (1 .. AST_Last * 3);
      Last    : Natural := 0;

      procedure Compile
        (Expression  : Positive;
         Instruction : out Positive;
         Tails       : out Vector);

      -------------
      -- Compile --
      -------------

      procedure Compile
        (Expression  : Positive;
         Instruction : out Positive;
         Tails       : out Vector) is
      begin
         Last := Last + 1;
         Instruction := Last;
         Tails.Clear;

         case AST (Expression).Kind is
            when Alternation =>
               declare
                  Ins_1   : Positive;
                  Ins_2   : Positive;
                  Tails_1 : Vector;
                  Tails_2 : Vector;

               begin
                  Compile (AST (Expression).First, Ins_1, Tails_1);
                  Compile (AST (Expression).Second, Ins_2, Tails_2);
                  Program (Instruction) := (Split, Ins_1, Ins_2);

                  Tails := Tails_1 & Tails_2;
               end;

            when Any_Code_Point =>
               Program (Instruction) := (Any_Code_Point, 0);

               if AST (Expression).Next = 0 then
                  Tails.Append (Instruction);

               else
                  declare
                     Ins : Positive;

                  begin
                     Compile (AST (Expression).Next, Ins, Tails);
                     Program (Instruction).Next := Ins;
                  end;
               end if;

            when Code_Point =>
               Program (Instruction) := (Code_Point, 0, AST (Expression).Code);

               if AST (Expression).Next = 0 then
                  Tails.Append (Instruction);

               else
                  declare
                     Ins : Positive;

                  begin
                     Compile (AST (Expression).Next, Ins, Tails);
                     Program (Instruction).Next := Ins;
                  end;
               end if;

            when others =>
               raise Program_Error;
         end case;
      end Compile;

      Ins      : Positive;
      Tails    : Vector;
      Position : Cursor;

   begin
      Compile (AST_Start, Ins, Tails);

      if Ins /= 1 then
         raise Program_Error;
      end if;

      Last := Last + 1;
      Program (Last) := (Kind => Match);

      Position := Tails.First;

      while Has_Element (Position) loop
         Program (Element (Position)).Next := Last;
         Next (Position);
      end loop;

      return Program (1 .. Last);
   end Compile;

end Compiler;
