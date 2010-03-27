with Ada.Containers.Vectors;
with Ada.Strings.Wide_Unbounded;

with Asis;

package Parser_Extractor is

   package Unbounded_Wide_String_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           Ada.Strings.Wide_Unbounded.Unbounded_Wide_String,
           Ada.Strings.Wide_Unbounded."=");

   type Choice_Information (Is_Empty : Boolean := True) is record
      case Is_Empty is
         when True =>
            null;

         when False =>
            Choice : Positive;
            Line   : Positive;
            File   : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
            Text   : Unbounded_Wide_String_Vectors.Vector;
      end case;
   end record;

   package Choice_Vectors is
     new Ada.Containers.Vectors (Positive, Choice_Information);

--   type State_Constant_Information is record
--      Name  : Ada.Strings.Wide_Unbounded.Unbounded_Wide_String;
--      Value : Integer;
--   end record;
--
--   package State_Constants_Vectors is
--     new Ada.Containers.Vectors (Positive, State_Constant_Information);
--
--   type Plane_Information is record
--      Number : Natural;
--      Values : Integer_Vectors.Vector;
--   end record;
--
--   type Reference_Information is record
--      Number    : Natural;
--      Reference : Natural;
--   end record;
--
--   package Plane_Vectors is
--     new Ada.Containers.Vectors (Positive, Plane_Information);
--
--   package Reference_Vectors is
--     new Ada.Containers.Vectors (Positive, Reference_Information);
--
--   YY_End_Of_Buffer  : Integer := -1;
--   YY_Jam_State      : Integer := -1;
--   YY_First_Template : Integer := -1;
--   State_Constants   : State_Constants_Vectors.Vector;
--   YY_EC_Planes      : Plane_Vectors.Vector;
--   YY_EC_Base        : Reference_Vectors.Vector;
--   YY_EC_Base_Others : Natural;
--   YY_Accept         : Integer_Vectors.Vector;
--   YY_Meta           : Integer_Vectors.Vector;
--   YY_Base           : Integer_Vectors.Vector;
--   YY_Def            : Integer_Vectors.Vector;
--   YY_Nxt            : Integer_Vectors.Vector;
--   YY_Chk            : Integer_Vectors.Vector;

   type Pair is record
      First  : Integer;
      Second : Integer;
   end record;

   subtype Pairs_Index is Integer range -1 .. Integer'Last;

   package Pair_Vectors is new Ada.Containers.Vectors (Pairs_Index, Pair);

   package Integer_Vectors is
     new Ada.Containers.Vectors (Natural, Integer);

   YY_Goto_Matrix         : Pair_Vectors.Vector;
   YY_Goto_Offset         : Integer_Vectors.Vector;
   YY_Rule_Length         : Integer_Vectors.Vector;
   YY_Get_LHS_Rule        : Integer_Vectors.Vector;
   YY_Shift_Reduce_Matrix : Pair_Vectors.Vector;
   YY_Shift_Reduce_Offset : Integer_Vectors.Vector;
   YY_Default             : Integer;
   YY_First_Shift_Entry   : Integer;
   YY_Accept_Code         : Integer;
   YY_Error_Code          : Integer;
   Choices                : Choice_Vectors.Vector;

   procedure Extract (Element : Asis.Element);

end Parser_Extractor;
