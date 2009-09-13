with Ascan;

package body Aflex_Scanner is

   function YYLex return Parser.Tokens.Token
     renames Ascan.Get_Token;

end Aflex_Scanner;
