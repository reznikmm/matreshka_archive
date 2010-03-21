with Ada.Command_Line;
with Ada.Wide_Wide_Text_IO;

with Compiler;
with Engine;
with Parser;
with Syntax;

procedure Demo is
begin
   Parser.Parse (Ada.Command_Line.Argument (1));
   Syntax.Dump;

   declare
      P : Engine.Instruction_Array := Compiler.Compile;
      M : Boolean;
      F : Ada.Wide_Wide_Text_IO.File_Type;

   begin
      Ada.Wide_Wide_Text_IO.Open
        (F, Ada.Wide_Wide_Text_IO.In_File, Ada.Command_Line.Argument (2));
      Engine.Execute (P, Ada.Wide_Wide_Text_IO.Get_Line (F), M);
      Ada.Wide_Wide_Text_IO.Close (F);

      if M then
         Ada.Wide_Wide_Text_IO.Put_Line ("matched");

      else
         Ada.Wide_Wide_Text_IO.Put_Line ("not matched");
      end if;
   end;
end Demo;
