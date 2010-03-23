with scanner.DFA; use scanner.DFA;
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Wide_Wide_Text_IO;

package scanner.IO is

   User_Input_File  : Ada.Wide_Wide_Text_IO.File_Type;
   User_Output_File : Ada.Wide_Wide_Text_IO.File_Type;

   Null_In_Input         : exception;
   Aflex_Internal_Error  : exception;
   Unexpected_Last_Match : exception;
   Pushback_Overflow     : exception;
   Aflex_Scanner_Jammed  : exception;

   type EOB_Action_Type is
     (EOB_ACT_RESTART_SCAN,
      EOB_ACT_END_OF_FILE,
      EOB_ACT_LAST_MATCH);

   YY_END_OF_BUFFER_CHAR : constant Wide_Wide_Character :=
     Ada.Characters.Wide_Wide_Latin_1.NUL;
   yy_n_chars : integer;       --  number of characters read into yy_ch_buf

   --  true when we've seen an EOF for the current input file
   yy_eof_has_been_seen : boolean;


   procedure YY_Input
     (Buf      : out Unbounded_Character_Array;
      Result   : out Integer;
      Max_Size : Integer);
   function YY_Get_Next_Buffer return EOB_Action_Type;
   procedure YYUnput (c : Wide_Wide_Character; YY_BP: in out Integer);
   procedure Unput (c : Wide_Wide_Character);
   function Input return Wide_Wide_Character;
   procedure Output (c : Wide_Wide_Character);
   function YYWrap return Boolean;
   procedure Open_Input (FName : String);
   procedure Close_Input;
   procedure Create_Output (FName : String := "");
   procedure Close_Output;


end scanner.IO;
