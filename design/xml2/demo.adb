with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Command_Line;
with Ada.Wide_Wide_Text_IO;

with League.Strings;

with Matreshka.SAX.Simple_Readers;

procedure Demo is

   function Read (Name : String) return League.Strings.Universal_String;

   ----------
   -- Read --
   ----------

   function Read (Name : String) return League.Strings.Universal_String is
      use Ada.Wide_Wide_Text_IO;

      File   : File_Type;
      Result : League.Strings.Universal_String;
      Buffer : Wide_Wide_String (1 .. 1024);
      Last   : Natural;

   begin
      Open (File, In_File, Name, "wcem=8");

      while not End_Of_File (File) loop
         Get_Line (File, Buffer, Last);

--         Result.Append (Buffer (1 .. Last));
         Result.Append
          (League.Strings.To_Universal_String (Buffer (1 .. Last)));

         if not End_Of_File (File) and then End_Of_Line (File) then
            Skip_Line (File);
            Result.Append (Ada.Characters.Wide_Wide_Latin_1.LF);
         end if;
      end loop;

      Close (File);

      return Result;
   end Read;

   Reader : aliased Matreshka.SAX.Simple_Readers.SAX_Simple_Reader;

begin
   Reader.Parse (Read (Ada.Command_Line.Argument (1)));
end Demo;
