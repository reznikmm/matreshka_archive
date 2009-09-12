with Ada.Command_Line;

with XML_Parser;

procedure Demo is
begin
   XML_Parser.Parse (Ada.Command_Line.Argument (1));
end Demo;
