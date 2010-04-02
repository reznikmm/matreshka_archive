with Ada.Command_Line;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Wide_Wide_Text_IO;

with League.Regexps;
with League.Strings;
with Matreshka.Internals.Regexps.Compiler.Debug;
with Matreshka.Internals.Regexps.Engine.Debug;

procedure Demo is

   function Read (File_Name : String) return League.Strings.Universal_String;

   ----------
   -- Read --
   ----------

   function Read (File_Name : String) return League.Strings.Universal_String is
      File   : Ada.Wide_Wide_Text_IO.File_Type;
      Buffer : Wide_Wide_String (1 .. 1024);
      Last   : Natural;

   begin
      Ada.Wide_Wide_Text_IO.Open
        (File, Ada.Wide_Wide_Text_IO.In_File, File_Name, "wcem=8");
      Ada.Wide_Wide_Text_IO.Get_Line (File, Buffer, Last);
      Ada.Wide_Wide_Text_IO.Close (File);

      return League.Strings.To_Universal_String (Buffer (1 .. Last));
   end Read;

   Expression : League.Strings.Universal_String :=
     Read (Ada.Command_Line.Argument (1));
   String     : League.Strings.Universal_String :=
     Read (Ada.Command_Line.Argument (2));
   Pattern    : League.Regexps.Regexp_Pattern :=
     League.Regexps.Compile (Expression);
   Match      : League.Regexps.Regexp_Match :=
     Pattern.Find_Match (String);

begin
   if Match.Is_Matched then
      Ada.Wide_Wide_Text_IO.Put_Line
        ("Match found:"
           & Integer'Wide_Wide_Image (Match.First_Index)
           & " .."
           & Integer'Wide_Wide_Image (Match.Last_Index)
           & " => '"
           & League.Strings.To_Wide_Wide_String (Match.Capture)
           & "'");

      for J in 1 .. Match.Capture_Count loop
         Ada.Wide_Wide_Text_IO.Put_Line
           ("         \"
              & Ada.Strings.Wide_Wide_Fixed.Trim
                  (Integer'Wide_Wide_Image (J), Ada.Strings.Both)
              & ":"
              & Integer'Wide_Wide_Image (Match.First_Index (J))
              & " .."
              & Integer'Wide_Wide_Image (Match.Last_Index (J))
              & " => '"
              & League.Strings.To_Wide_Wide_String (Match.Capture (J))
              & "'");
      end loop;

   else
      Ada.Wide_Wide_Text_IO.Put_Line ("Not matched");
   end if;
end Demo;
