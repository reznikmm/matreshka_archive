with Ada.Wide_Wide_Text_IO;
with Ada.Characters.Wide_Wide_Latin_1;

package body Servlets.File is

   function "+"
     (Text : Wide_Wide_String) return League.Strings.Universal_String
      renames League.Strings.To_Universal_String;

   ----------------------
   -- Get_Servlet_Info --
   ----------------------

   overriding function Get_Servlet_Info
     (Self : File_Servlet) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);
      Text : constant Wide_Wide_String :=
        "Hello servlet provides WebSocket upgrade responses";
   begin
      return +Text;
   end Get_Servlet_Info;

   ------------
   -- Do_Get --
   ------------

   overriding procedure Do_Get
     (Self     : in out File_Servlet;
      Request  :        Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
      Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class)
   is
      Result : League.Strings.Universal_String;
      Input  : Ada.Wide_Wide_Text_IO.File_Type;
   begin
      Ada.Wide_Wide_Text_IO.Open
        (Input, Ada.Wide_Wide_Text_IO.In_File, "install/index.html");
      while not Ada.Wide_Wide_Text_IO.End_Of_File (Input) loop
         Result.Append (Ada.Wide_Wide_Text_IO.Get_Line (Input));
         Result.Append (Ada.Characters.Wide_Wide_Latin_1.LF);
      end loop;
      Ada.Wide_Wide_Text_IO.Close (Input);

      Response.Set_Status (Servlet.HTTP_Responses.OK);
      Response.Set_Content_Type (+"text/html");
      Response.Set_Character_Encoding (+"utf-8");

      Response.Get_Output_Stream.Write (Result);
   end Do_Get;

   -----------------
   -- Instantiate --
   -----------------

   overriding function Instantiate
     (Parameters : not null access Servlet.Generic_Servlets
        .Instantiation_Parameters'
        Class)
      return File_Servlet
   is
      pragma Unreferenced (Parameters);
   begin
      return (Servlet.HTTP_Servlets.HTTP_Servlet with null record);
   end Instantiate;

end Servlets.File;
