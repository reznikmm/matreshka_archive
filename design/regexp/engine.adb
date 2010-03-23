with Ada.Integer_Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Fixed;
with Ada.Wide_Wide_Text_IO;

package body Engine is

   type State is record
      PC : Positive;
      SP : Positive;
      SS : Slice_Array (0 .. 9);
   end record;

   type State_Array is array (Positive range <>) of State;

   ----------
   -- Dump --
   ----------

   procedure Dump (Program : Instruction_Array) is
      use Ada.Integer_Wide_Wide_Text_IO;
      use Ada.Strings;
      use Ada.Strings.Wide_Wide_Fixed;
      use Ada.Wide_Wide_Text_IO;

   begin
      for J in Program'Range loop
         Put (J, 4);
         Put (' ');

         case Program (J).Kind is
            when None =>
               Put ("nop");

            when Jump =>
               Put
                 ("jump ["
                    & Trim (Integer'Wide_Wide_Image (Program (J).Next), Both)
                    & "]");

            when Split =>
               Put
                 ("split ["
                    & Trim (Integer'Wide_Wide_Image (Program (J).Next), Both)
                    & "], ["
                    & Trim (Integer'Wide_Wide_Image (Program (J).Another), Both)
                    & "]");

            when Any_Code_Point =>
               Put
                 ("any ["
                    & Trim (Integer'Wide_Wide_Image (Program (J).Next), Both)
                    & "]");

            when Code_Point =>
               Put
                 ("char "
                    & Wide_Wide_Character'Wide_Wide_Image (Program (J).Code)
                    & " ["
                    & Trim (Integer'Wide_Wide_Image (Program (J).Next), Both)
                    & "]");

            when Match =>
               Put ("match");

            when Save =>
               Put
                 ("save $"
                    & Trim (Integer'Wide_Wide_Image (Program (J).Slot), Both)
                    & " ");

               if Program (J).Start then
                  Put ("{begin}");

               else
                  Put ("{end}");
               end if;

               Put
                 (" ["
                    & Trim (Integer'Wide_Wide_Image (Program (J).Next), Both)
                    & "]");
         end case;

         New_Line;
      end loop;
   end Dump;

   -------------
   -- Execute --
   -------------

   procedure Execute
     (Program : Instruction_Array;
      String  : Wide_Wide_String;
      Matched : out Boolean;
      Slices  : out Slice_Array)
   is
      Stack : State_Array (1 .. 10);
      Last  : Natural := 0;
      PC    : Positive := 1;
      SP    : Positive := String'First;
      SS    : Slice_Array (0 .. 9) := (others => (0, 0));

   begin
      Matched := False;
      Last := Last + 1;
      Stack (Last) := (PC, SP, SS);

      while Last /= 0 loop
         PC := Stack (Last).PC;
         SP := Stack (Last).SP;
         SS := Stack (Last).SS;
         Last := Last - 1;

         loop
            case Program (PC).Kind is
               when Any_Code_Point =>
                  if SP > String'Last then
                     exit;
                  end if;

                  PC := Program (PC).Next;
                  SP := SP + 1;

               when Code_Point =>
                  if SP > String'Last
                    or else String (SP) /= Program (PC).Code
                  then
                     exit;
                  end if;

                  PC := Program (PC).Next;
                  SP := SP + 1;

               when Match =>
                  Matched := True;
                  Slices := SS;

                  return;

               when Jump =>
                  PC := Program (PC).Next;

               when Split =>
                  Last := Last + 1;
                  Stack (Last) := (Program (PC).Another, SP, SS);
                  PC := Program (PC).Next;

               when Save =>
                  if Program (PC).Start then
                     SS (Program (PC).Slot) := (SP, 0);

                  else
                     SS (Program (PC).Slot).Last := SP - 1;
                  end if;

                  PC := Program (PC).Next;

               when others =>
                  raise Program_Error;
            end case;
         end loop;
      end loop;
   end Execute;

end Engine;
