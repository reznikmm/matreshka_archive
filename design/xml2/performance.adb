with Ada.Calendar;
with Ada.Command_Line;

with League.Strings;
with Matreshka.SAX.Simple_Readers;

with Demo_Handlers;
with Put_Line;
with Read_File;

procedure Performance is
   use type Ada.Calendar.Time;

   Reader  : aliased Matreshka.SAX.Simple_Readers.SAX_Simple_Reader;
   Handler : aliased Demo_Handlers.Demo_Handler;
   Text    : constant League.Strings.Universal_String
     := Read_File (Ada.Command_Line.Argument (1));
   Start   : Ada.Calendar.Time;

begin
   Matreshka.SAX.Simple_Readers.Put_Line := Put_Line'Access;

   Reader.Set_Entity_Resolver (Handler'Unchecked_Access);

   Start := Ada.Calendar.Clock;
   Reader.Parse (Text);
   Put_Line
    ("Processing time:"
       & League.Strings.To_Universal_String
          (Duration'Wide_Wide_Image (Ada.Calendar.Clock - Start)));
end Performance;
