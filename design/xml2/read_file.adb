with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Wide_Wide_Text_IO;

function Read_File (Name : String) return League.Strings.Universal_String is
   use Ada.Wide_Wide_Text_IO;

   File   : File_Type;
   Result : League.Strings.Universal_String;
   Buffer : Wide_Wide_String (1 .. 1024);
   Last   : Natural;

begin
   Open (File, In_File, Name, "wcem=8");

   while not End_Of_File (File) loop
      Get_Line (File, Buffer, Last);
      Result.Append
       (League.Strings.To_Universal_String (Buffer (1 .. Last)));
      Result.Append (Ada.Characters.Wide_Wide_Latin_1.LF);
   end loop;

   Close (File);

   return Result;
end Read_File;
