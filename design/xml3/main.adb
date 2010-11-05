with Ada.Calendar;
with Ada.Command_Line;
with Ada.Text_IO;

with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Validating_Readers;
with Sources;

procedure Main is
   use type Ada.Calendar.Time;

--   Source : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
   Source :aliased Sources.Source;
   Reader : XML.SAX.Validating_Readers.SAX_Validating_Reader;
   Start  : Ada.Calendar.Time := Ada.Calendar.Clock;

begin
   Source.Open (Ada.Command_Line.Argument (1));
   Reader.Parse (Source'Unchecked_Access);
   Ada.Text_IO.Put_Line (Duration'Image (Ada.Calendar.Clock - Start));
end Main;
