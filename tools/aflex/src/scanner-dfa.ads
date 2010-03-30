package scanner.DFA is
Aflex_Debug : Boolean := False;

   YYText_Ptr : Integer; -- points to start of yytext in buffer

   --  yy_ch_buf has to be 2 characters longer than YY_BUF_SIZE because we
   --  need to put in 2 end-of-buffer characters (this is explained where
   --  it is done) at the end of yy_ch_buf
   YY_READ_BUF_SIZE : constant Integer := 8192;
   YY_BUF_SIZE      : constant Integer := YY_READ_BUF_SIZE * 2;
   --  Size of input buffer

   type Unbounded_Character_Array is
     array (Integer range <>) of Wide_Wide_Character;

   type Ch_Buf_Type is record
      Data : Unbounded_Character_Array (0 .. YY_BUF_SIZE + 1);
   end record;

   function Previous
     (Data : Ch_Buf_Type; Index : Integer) return Wide_Wide_Character;
   procedure Next
     (Data  : Ch_Buf_Type;
      Index : in out Integer;
      Code  : out Wide_Wide_Character);

   YY_Ch_Buf : Ch_Buf_Type;
   YY_CP     : Integer;
   YY_BP     : Integer;

   YY_C_Buf_P : Integer;  --  Points to current character in buffer

   function YYText return Wide_Wide_String;
   function YYLength return Integer;
   procedure YY_DO_BEFORE_ACTION;

   --  These variables are needed between calls to YYLex.

   YY_Init  : Boolean := True;  --  do we need to initialize YYLex?
   YY_Start : Integer := 0;     -- current start state number
   subtype YY_State_Type is Integer;
   YY_Last_Accepting_State : YY_State_Type;
   YY_Last_Accepting_Cpos  : Integer;

end scanner.DFA;
