with Ada.Command_Line;

with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Simple_Readers;

with XMI.Handlers;

procedure XMI.Reader is
   Reader  : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
   Input   : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
   Handler : aliased XMI.Handlers.XMI_Handler;

begin
   Input.Open (Ada.Command_Line.Argument (1));
   Reader.Set_Content_Handler (Handler'Unchecked_Access);
   Reader.Parse (Input'Unchecked_Access);
end XMI.Reader;
