with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Simple_Readers;

with XMI.Handlers;

function XMI.Reader (File_Name : String) return CMOF.CMOF_Element is
   Reader  : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
   Input   : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
   Handler : aliased XMI.Handlers.XMI_Handler;

begin
   Input.Open (File_Name);
   Reader.Set_Content_Handler (Handler'Unchecked_Access);
   Reader.Parse (Input'Unchecked_Access);

   return Handler.Root;
end XMI.Reader;
