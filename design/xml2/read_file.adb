with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Wide_Wide_Text_IO;

function Read_File (Name : String) return League.Strings.Universal_String is
   use Ada.Wide_Wide_Text_IO;

   File   : File_Type;
   Result : League.Strings.Universal_String;

begin
   Open (File, In_File, Name, "wcem=8");

   while not End_Of_File (File) loop
      Result.Append (League.Strings.To_Universal_String (Get_Line (File)));
      Result.Append (Ada.Characters.Wide_Wide_Latin_1.LF);
   end loop;

   Close (File);

   return Result;
end Read_File;
