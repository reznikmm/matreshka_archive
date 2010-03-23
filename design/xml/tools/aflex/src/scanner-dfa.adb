package body scanner.DFA is
function YYText return Wide_Wide_String is
   Aux : constant Wide_Wide_String (1 .. yy_cp - yy_bp)
     := Wide_Wide_String (yy_ch_buf.data (yy_bp .. yy_cp - 1));

begin
   return Aux;
end;

-- returns the length of the matched text
function YYLength return integer is
begin
    return yy_cp - yy_bp;
end YYLength;

-- done after the current pattern has been matched and before the
-- corresponding action - sets up yytext

procedure YY_DO_BEFORE_ACTION is
begin
    yytext_ptr := yy_bp;
    yy_c_buf_p := yy_cp;
end YY_DO_BEFORE_ACTION;

function Previous (Data : ch_buf_type; Index : Integer) return Wide_Wide_Character is
   Aux : constant Integer := Index - 1;

begin
   return Data.Data (Aux);
end Previous;

procedure Next
  (Data  : ch_buf_type;
   Index : in out Integer;
   Code  : out Wide_Wide_Character)
is
begin
   Code := Data.Data (Index);
   Index := Index + 1;
end Next;
end scanner.DFA;
