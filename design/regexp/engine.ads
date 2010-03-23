
package Engine is

   type Instruction_Kinds is
     (None, Jump, Split, Any_Code_Point, Code_Point, Match, Save);

   type Instruction (Kind : Instruction_Kinds := None) is record
      case Kind is
         when None =>
            null;

         when Match =>
            null;

         when others =>
            Next : Natural;

            case Kind is
               when None =>
                  null;

               when Jump =>
                  null;

               when Match =>
                  null;

               when Any_Code_Point =>
                  null;

               when Split =>
                  Another : Natural;

               when Code_Point =>
                  Code : Wide_Wide_Character;

               when Save =>
                  Slot  : Natural;
                  Start : Boolean;
            end case;
      end case;
   end record;

   type Instruction_Array is array (Positive range <>) of Instruction;

   type Slice is record
      First : Natural;
      Last  : Natural;
   end record;

   type Slice_Array is array (Natural range <>) of Slice;

   procedure Execute
     (Program : Instruction_Array;
      String  : Wide_Wide_String;
      Matched : out Boolean;
      Slices  : out Slice_Array);

   procedure Dump (Program : Instruction_Array);

end Engine;
