with Ada.Command_Line;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Wide_Wide_Text_IO;

with Compiler;
with Engine;
with Parser;
with Syntax;

procedure Demo is
begin
   Parser.Parse (Ada.Command_Line.Argument (1));
   Ada.Wide_Wide_Text_IO.Put_Line ("---------- AST ----------");
   Syntax.Dump;

   declare
      P : Engine.Instruction_Array := Compiler.Compile;
      F : Ada.Wide_Wide_Text_IO.File_Type;

   begin
      Ada.Wide_Wide_Text_IO.Put_Line ("---------- Code ----------");
      Engine.Dump (P);
      Ada.Wide_Wide_Text_IO.New_Line;

      Ada.Wide_Wide_Text_IO.Open
        (F,
         Ada.Wide_Wide_Text_IO.In_File,
         Ada.Command_Line.Argument (2),
         "wcem=8");

      declare
         D : Wide_Wide_String := Ada.Wide_Wide_Text_IO.Get_Line (F);
         M : Boolean;
         S : Engine.Slice_Array (0 .. 9);

      begin
         Engine.Execute (P, D, M, S);

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
