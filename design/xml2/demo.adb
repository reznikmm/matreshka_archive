with Ada.Command_Line;

with League.Strings;
with Matreshka.SAX.Simple_Readers;

with Demo_Handlers;
with Put_Line;
with Read_File;

procedure Demo is
   Reader  : aliased Matreshka.SAX.Simple_Readers.SAX_Simple_Reader;
   Handler : aliased Demo_Handlers.Demo_Handler;
   Text    : constant League.Strings.Universal_String
     := Read_File (Ada.Command_Line.Argument (1));

begin
   Matreshka.SAX.Simple_Readers.Put_Line := Put_Line'Access;
   Put_Line (Text);

   Reader.Set_Content_Handler (Handler'Unchecked_Access);
   Reader.Set_Decl_Handler (Handler'Unchecked_Access);
   Reader.Set_DTD_Handler (Handler'Unchecked_Access);
   Reader.Set_Entity_Resolver (Handler'Unchecked_Access);
   Reader.Set_Lexical_Handler (Handler'Unchecked_Access);
   Reader.Parse (Text);
end Demo;
