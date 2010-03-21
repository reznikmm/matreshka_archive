with Ada.Strings.Fixed;
with Ada.Text_IO;

package body Syntax is

   ---------
   -- Add --
   ---------

   procedure Add (Class : Positive; Member : Positive) is
   begin
      if AST (Class).Members = 0 then
         AST (Class).Members := Member;

      else
         Attach (AST (Class).Members, Member);
      end if;
   end Add;

   ------------
   -- Attach --
   ------------

   procedure Attach (Head : Positive; Node : Positive) is
      J : Positive := Head;

   begin
      while AST (J).Next /= 0 loop
         J := AST (J).Next;
      end loop;

      AST (J).Next := Node;
   end Attach;

   ----------
   -- Dump --
   ----------

   procedure Dump is

      use Ada.Strings;
      use Ada.Strings.Fixed;
      use Ada.Text_IO;

      procedure Dump (N : Positive);

      Indent : Ada.Text_IO.Count := 1;
      Offset : constant := 3;

      procedure Dump (N : Positive) is
      begin
         Set_Col (Indent);

         Put (Trim (Integer'Image (N), Both) & ' ' & Node_Kinds'Image (AST (N).Kind));

         case AST (N).Kind is
            when None =>
               null;

            when Code_Point =>
               Put (' ' & Wide_Wide_Character'Image (AST (N).Code));

            when Code_Point_Range =>
               Put
                 (' ' & Wide_Wide_Character'Image (AST (N).Low)
                    & " .. " & Wide_Wide_Character'Image (AST (N).High));

            when Character_Class =>
               if AST (N).Negated then
                  Put (" {negated}");
               end if;

               Indent := Indent + Offset;
               Dump (AST (N).Members);
               Indent := Indent - Offset;

            when Multiplicity =>
               Put (" [" & Trim (Natural'Image (AST (N).Lower), Both) & "..");

               if AST (N).Upper /= Natural'Last then
                  Put (Trim (Natural'Image (AST (N).Upper), Both) & ']');

               else
                  Put ("Infinity]");
               end if;

               if AST (N).Greedy then
                  Put (" {greedy}");

               else
                  Put (" {lazy}");
               end if;

               Indent := Indent + Offset;
               Dump (AST (N).Item);
               Indent := Indent - Offset;

            when Alternation =>
               Indent := Indent + Offset;
               Set_Col (Indent);
               Put ("first");
               Indent := Indent + Offset;
               Dump (AST (N).First);
               Indent := Indent - Offset;
               Indent := Indent - Offset;

               Indent := Indent + Offset;
               Set_Col (Indent);
               Put ("second");
               Indent := Indent + Offset;
               Dump (AST (N).Second);
               Indent := Indent - Offset;
               Indent := Indent - Offset;
         end case;

         if AST (N).Next /= 0 then
            Dump (AST (N).Next);
         end if;
      end Dump;

   begin
      Dump (AST_Start);
   end Dump;

end Syntax;
