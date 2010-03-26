package Parser_Tokens is


  subtype YYSType is Integer;

    YYLVal, YYVal : YYSType; 
    type Token is
        (End_Of_Input, Error, Char, Number,
         Sectend, Scdecl, Xscdecl,
         Whitespace, Name, Prevccl,
         Eof_Op, Newline, Prop,
         '^', '<', '>',
         ',', '$', '|',
         '/', '*', '+',
         '?', '{', '}',
         '.', '"', '(',
         ')', '[', ']',
         '-' );

    Syntax_Error : exception;

end Parser_Tokens;
