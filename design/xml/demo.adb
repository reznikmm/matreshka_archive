with Ada.Command_Line;

with Sax.Readers;
with XML_Parser;
with Test_Handlers;

procedure Demo is
   Handler : aliased Test_Handlers.Test_Handler;
   Reader  : aliased Sax.Readers.Sax_Reader;

begin
--   Reader.Set_Content_Handler (Sax_Content_Handler_Access (Handler'Unchecked_Access));
   Reader.Set_Content_Handler (Handler'Unchecked_Access);
   Reader.Set_Lexical_Handler (Handler'Unchecked_Access);
   XML_Parser.Parse (Reader'Access, Ada.Command_Line.Argument (1));
end Demo;
