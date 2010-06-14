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

   begin
      Open (File, In_File, Name, "wcem=8");
      Close (File);

      return Result;
   end Read;

   Reader : Matreshka.SAX.Simple_Readers.SAX_Simple_Reader;

begin
   null;
end Demo;
