with Ada.Exceptions;
with Ada.Streams;
with Ada.Text_IO;

with League.Application;
with League.Strings;
with League.Text_Codecs;
with FastCGI.Application;
with Demo.Callbacks;

procedure Demo.Driver is
   File : Ada.Text_IO.File_Type;

   function To_String (Item : League.Strings.Universal_String) return String is
      Aux    : Ada.Streams.Stream_Element_Array
        := League.Text_Codecs.Codec_For_Application_Locale.Encode
            (Item).To_Stream_Element_Array;
      Result : String (1 .. Aux'Length);
      Index  : Positive := 1;

   begin
      for J in Aux'Range loop
         Result (Index) := Character'Val (Aux (J));
         Index := Index + 1;
      end loop;

      return Result;
   end To_String;

begin
   Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, "/tmp/demo.log");
--     Ada.Text_IO.Set_Error (File);
   Ada.Text_IO.Put_Line (File, "Started...");

   Ada.Text_IO.Put_Line
     (File,
      To_String (League.Application.Environment.Value
        (League.Strings.To_Universal_String ("_FCGI_X_PIPE_"))));
   Ada.Text_IO.Put_Line
     (File,
      To_String (League.Application.Environment.Value
        (League.Strings.To_Universal_String ("_FCGI_SHUTDOWN_EVENT_"))));

   FastCGI.Application.Initialize;
   FastCGI.Application.Execute (Demo.Callbacks.Handler'Access);
   FastCGI.Application.Finalize;

   Ada.Text_IO.Close (File);

exception
   when E : others =>
      Ada.Text_IO.Put_Line (File, Ada.Exceptions.Exception_Information (E));
      Ada.Text_IO.Close (File);
end Demo.Driver;
