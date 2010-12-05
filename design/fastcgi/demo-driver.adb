with Ada.Exceptions;
with Ada.Text_IO;

with FastCGI.Application;
with Demo.Callbacks;

procedure Demo.Driver is
begin
   FastCGI.Application.Initialize;
   FastCGI.Application.Execute (Demo.Callbacks.Handler'Access);
   FastCGI.Application.Finalize;

exception
   when E : others =>
      declare
         File : Ada.Text_IO.File_Type;

      begin
         Ada.Text_IO.Create (File, Ada.Text_IO.Out_File, "/tmp/demo.log");
         Ada.Text_IO.Put_Line (File, Ada.Exceptions.Exception_Information (E));
         Ada.Text_IO.Close (File);
      end;
end Demo.Driver;
