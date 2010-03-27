with Ada.Command_Line;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Wide_Wide_Text_IO;

with League.Regexps;
with League.Strings.Internals;

with Matreshka.Internals.Regexps.Engine;
with Matreshka.Internals.Regexps.Compiler.Generator;

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
        (File,
         Ada.Wide_Wide_Text_IO.In_File,
         File_Name,
         "wcem=8");
      Ada.Wide_Wide_Text_IO.Get_Line (File, Buffer, Last);
      Ada.Wide_Wide_Text_IO.Close (File);

      return League.Strings.To_Universal_String (Buffer (1 .. Last));
   end Read;

   Expression : League.Strings.Universal_String :=
     Read (Ada.Command_Line.Argument (1));
   Pattern    : League.Regexps.Pattern := League.Regexps.Compile (Expression);

begin
   Ada.Wide_Wide_Text_IO.Put_Line ("---------- AST ----------");
   Matreshka.Internals.Regexps.Compiler.Dump;

   declare
      P : Matreshka.Internals.Regexps.Engine.Instruction_Array := Matreshka.Internals.Regexps.Compiler.Generator.Generate;
      F : Ada.Wide_Wide_Text_IO.File_Type;

   begin
      Ada.Wide_Wide_Text_IO.Put_Line ("---------- Code ----------");
      Matreshka.Internals.Regexps.Engine.Dump (P);
      Ada.Wide_Wide_Text_IO.New_Line;

      Ada.Wide_Wide_Text_IO.Open
        (F,
         Ada.Wide_Wide_Text_IO.In_File,
         Ada.Command_Line.Argument (2),
         "wcem=8");

      declare
         D : Wide_Wide_String := Ada.Wide_Wide_Text_IO.Get_Line (F);
         M : Boolean;
         S : Matreshka.Internals.Regexps.Engine.Slice_Array (0 .. 9);

      begin
         Matreshka.Internals.Regexps.Engine.Execute (P, D, M, S);

         if M then
            Ada.Wide_Wide_Text_IO.Put_Line
              ("Match found:"
                 & Integer'Wide_Wide_Image (S (0).First)
                 & " .."
                 & Integer'Wide_Wide_Image (S (0).Last)
                 & " => '"
                 & D (S (0).First .. S (0).Last)
                 & "'");

            for J in 1 .. 9 loop
               if S (J).First /= 0 then
                  Ada.Wide_Wide_Text_IO.Put_Line
                    ("         \"
                       & Ada.Strings.Wide_Wide_Fixed.Trim
                           (Integer'Wide_Wide_Image (J), Ada.Strings.Both)
                       & ":"
                       & Integer'Wide_Wide_Image (S (J).First)
                       & " .."
                       & Integer'Wide_Wide_Image (S (J).Last)
                       & " => '"
                       & D (S (J).First .. S (J).Last)
                       & "'");
               end if;
            end loop;

         else
            Ada.Wide_Wide_Text_IO.Put_Line ("not matched");
         end if;
      end;

      Ada.Wide_Wide_Text_IO.Close (F);
   end;
end Demo;
