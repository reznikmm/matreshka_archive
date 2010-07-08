with Ada.Calendar;
with Ada.Command_Line;

with League.Strings;
with Matreshka.SAX.Simple_Readers;

with Events_Printers;
with Put_Line;
with Read_File;

procedure Performance is
   use type League.Strings.Universal_String;
   use type Ada.Calendar.Time;

   Reader      : aliased Matreshka.SAX.Simple_Readers.SAX_Simple_Reader;
   Handler     : aliased Events_Printers.Events_Printer;
   Text        : League.Strings.Universal_String;
   Load_Start  : Ada.Calendar.Time;
   Parse_Start : Ada.Calendar.Time;
   Stop        : Ada.Calendar.Time;

--   task type T;
--
--   task body T is
--   begin
--      null;
--   end T;

begin
   Matreshka.SAX.Simple_Readers.Put_Line := Put_Line'Access;

   Reader.Set_Entity_Resolver (Handler'Unchecked_Access);

   Load_Start := Ada.Calendar.Clock;
   Text := Read_File (Ada.Command_Line.Argument (1));
   Parse_Start := Ada.Calendar.Clock;
   Reader.Parse (Text);
   Stop := Ada.Calendar.Clock;
   Put_Line
    ("Loading time:   "
       & League.Strings.To_Universal_String
          (Duration'Wide_Wide_Image (Parse_Start - Load_Start)));
   Put_Line
    ("Parsing time:   "
       & League.Strings.To_Universal_String
          (Duration'Wide_Wide_Image (Stop - Parse_Start)));
   Put_Line
    ("Processing time:"
       & League.Strings.To_Universal_String
          (Duration'Wide_Wide_Image (Stop - Load_Start)));
end Performance;
