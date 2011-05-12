with Ada.Calendar;
with Ada.Command_Line;
with Ada.Text_IO;

with Input_Sources.File;
with Sax.Readers;

procedure Main is
   use type Ada.Calendar.Time;

   Source : Input_Sources.File.File_Input;
   Reader : SAX.Readers.Sax_Reader;
   Time   : Ada.Calendar.Time := Ada.Calendar.Clock;

begin
   Input_Sources.File.Open (Ada.Command_Line.Argument (1), Source);
   Sax.Readers.Parse (Reader, Source);
   Ada.Text_IO.Put_Line (Duration'Image (Ada.Calendar.Clock - Time));
end Main;
