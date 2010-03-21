
package body Compiler is

   use Engine;
   use Syntax;

   -------------
   -- Compile --
   -------------

   function Compile return Engine.Instruction_Array is
      Program : Instruction_Array (1 .. AST_Last * 3);
      Last    : Natural := 1;

      function Compile (Expression : Positive) return Positive;

      -------------
      -- Compile --
      -------------

      function Compile (Expression : Positive) return Positive is
         Ins : Positive;

      begin
         Last := Last + 1;
         Ins  := Last;

         case AST (Expression).Kind is
            when None =>
               null;

            when Alternation =>
               Program (Ins) :=
                 (Split,
                  Compile (AST (Expression).First),
                  Compile (AST (Expression).Second));

            when Code_Point =>
               Program (Ins) := (Code_Point, 0, AST (Expression).Code);

               if AST (Expression).Next = 0 then
                  Last := Last + 1;
                  Program (Last) := (Kind => Match);
                  Program (Ins).Next := Last;
               end if;

            when others =>
               raise Program_Error;
         end case;

         return Ins;
      end Compile;

      Ins : Natural := Last;

   begin
      Program (Ins) := (Jump, Compile (AST_Start));

      return Program (1 .. Last);
   end Compile;

end Compiler;
