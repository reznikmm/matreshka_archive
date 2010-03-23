
package body Engine is

   type State is record
      PC : Positive;
      SP : Positive;
   end record;

   type State_Array is array (Positive range <>) of State;

   -------------
   -- Execute --
   -------------

   procedure Execute
     (Program : Instruction_Array;
      String  : Wide_Wide_String;
      Matched : out Boolean)
   is
      Stack : State_Array (1 .. 10);
      Last  : Natural := 0;
      PC    : Positive := 1;
      SP    : Positive := String'First;

   begin
      Matched := False;
      Last := Last + 1;
      Stack (Last) := (PC, SP);

      while Last /= 0 loop
         PC := Stack (Last).PC;
         SP := Stack (Last).SP;
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

                  return;

               when Jump =>
                  PC := Program (PC).Next;

               when Split =>
                  Last := Last + 1;
                  Stack (Last) := (Program (PC).Another, SP);
                  PC := Program (PC).Next;

               when others =>
                  raise Program_Error;
            end case;
         end loop;
      end loop;
   end Execute;

end Engine;
