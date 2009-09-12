
with PARSE_TOKENS, Ascan; use PARSE_TOKENS, Ascan;

package body AFLEX_SCANNER is
  function YYLEX return TOKEN is
  begin
    return Ascan.GET_TOKEN;
  end YYLEX;

end AFLEX_SCANNER;
