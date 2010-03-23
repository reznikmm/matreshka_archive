package body scanner.DFA is

   function YYText return Wide_Wide_String is
      Aux : constant Wide_Wide_String (1 .. YY_CP - YY_BP)
        := Wide_Wide_String (YY_Ch_Buf.Data (YY_BP .. YY_CP - 1));

   begin
      return Aux;
   end YYText;

   --  returns the length of the matched text
   function YYLength return Integer is
   begin
      return YY_CP - YY_BP;
   end YYLength;

   --  done after the current pattern has been matched and before the
   --  corresponding action - sets up yytext

   procedure YY_DO_BEFORE_ACTION is
   begin
      YYText_Ptr := YY_BP;
      YY_C_Buf_P := YY_CP;
   end YY_DO_BEFORE_ACTION;

   function Previous
     (Data : CH_Buf_Type; Index : Integer) return Wide_Wide_Character
   is
      Aux : constant Integer := Index - 1;

   begin
      return Data.Data (Aux);
   end Previous;

   procedure Next
     (Data  : CH_Buf_Type;
      Index : in out Integer;
      Code  : out Wide_Wide_Character) is
   begin
      Code := Data.Data (Index);
      Index := Index + 1;
   end Next;
end scanner.DFA;
