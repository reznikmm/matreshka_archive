with Ada.Command_Line;

with Parser;
with Syntax;

procedure Demo is
begin
   Parser.Parse (Ada.Command_Line.Argument (1));
   Syntax.Dump;
end Demo;
