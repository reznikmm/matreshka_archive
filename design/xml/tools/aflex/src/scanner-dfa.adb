package body scanner.DFA is
function YYText return String is
   Aux : constant String (1 .. yy_cp - yy_bp)
     := String (yy_ch_buf (yy_bp .. yy_cp - 1));

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

end scanner.DFA;
