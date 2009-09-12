
--CHAR            [\001-\377]
--RESTRICTED_CHAR [\001-\010\013\014\016\017\177-\204\206-\237]
WHITE_SPACE     [\040\011\015\012]
NAME_START_CHAR [:A-Z_a-z\300-\326\330-\336\370-\377]
----  NAME_CHAR       {NAME_START_CHAR} | [-.0-9\267]
NAME_CHAR       [\-\.0-9\267:A-Z_a-z\300-\326\330-\336\370-\377]

--ENCODING_CHARS  [A-Za-z]([A-Za-z0-9._]|'-')*

NO_HYPHEN_CHAR  [\001-\054\056-\377]
NO_QUESTION_CHAR [\001-\076\100-\377]
NO_GREATER_CHAR  [\001-\075\077-\377]
--NO_AMPERSAND_CHAR  [\001-\046\050-\377]
--NO_QUOTATION_CHAR  [\001-\041\043-\377]
NO_AMPERSAND_APOSTROPHE_LESS_CHAR [\001-\045\050-\073\075-\377]
NO_QUOTATION_AMPERSAND_LESS_CHAR [\001-\041\043-\045\047-\073\075-\377]

XMLDECL_ATTRIBUTE_CHAR [A-Za-z0-9._-]
--  Synthetic set of character. XMLDECL_ATTRIBUTE_CHAR is a union of characters
--  allowed by [26] VersionNum, [81] EncName, [32] SDDecl.

--  %x PROLOG
--  %start XML_DECL

%x XML_DECL
%x PI
%x PI_DATA
%x START_TAG
%x END_TAG
%x APOSTROPHE_ATTRIBUTE_VALUE
%x QUOTATION_ATTRIBUTE_VALUE
--%x DOCTYPE
--%x DOCTYPE_INTSUBSET
--%x DOCTYPE_INTSUBSET_ELEMENT
--%x DOCTYPE_INTSUBSET_PI
--%x DOCTYPE_INTSUBSET_PI_DATA

%%

"<?xml" {
   --  [23] XMLDecl

   ENTER (XML_DECL);

   return Token_XML_Decl_Start;
}

--"<?[xX][mM][lL]" {
--   Text_IO.Put_Line ("ERROR!!!!");
--}

"<?"{NAME_START_CHAR}{NAME_CHAR}* {
   --  [16] PI

   ENTER (PI);

--   Text_IO.Put_Line ("PI open          : '" & XML_Scanner.DFA.YYText & ''');
--   return Token_PI_Start;
}

"<"{NAME_START_CHAR}{NAME_CHAR}* {
   --  [44] EmptyElemTag, [40] STag

   ENTER (START_TAG);

   declare
      Aux : constant String := YYText;

   begin
      YYLVal := (Name, new String'(Aux (Aux'First + 1 .. Aux'Last)));

      return Token_Start_Tag_Start;
   end;
}

"</"{NAME_START_CHAR}{NAME_CHAR}* {
   --  [44] EmptyElemTag, [40] STag

   ENTER (END_TAG);

   declare
      Aux : constant String := YYText;

   begin
      YYLVal := (Name, new String'(Aux (Aux'First + 2 .. Aux'Last)));

      return Token_End_Tag_Start;
   end;
}

"<!--"({NO_HYPHEN_CHAR}|-{NO_HYPHEN_CHAR})*"-->" {
   --  [15] Comment

   return Token_Comment;
}

{WHITE_SPACE}+ {
   --  [3] S

   return Token_White_Space;
}

<XML_DECL>version {
   --  [24] VersionInfo

   return Token_Version;
}

<XML_DECL>encoding {
   --  [80] EncodingDecl

   return Token_Encoding;
}

<XML_DECL>standalone {
   --  [32] SDDecl

   return Token_Standalone;
}

<XML_DECL,START_TAG>"=" {
   --  [25] Eq

   return Token_Equal;
}

<XML_DECL>'{XMLDECL_ATTRIBUTE_CHAR}*'|\"{XMLDECL_ATTRIBUTE_CHAR}*\" {
   --  Synthetic rule. XMLDECL_ATTRIBUTE_CHAR is a union of characters allowed
   --  by [26] VersionNum, [81] EncName, [32] SDDecl. Precise check is
   --  processed while parsing.

   return Token_XML_Decl_Attribute_Value;
}

<XML_DECL>"?>" {
   --  [23] XMLDecl

   ENTER (0);

   return Token_XML_Decl_Or_PI_End;
}

<XML_DECL>{WHITE_SPACE}+ {
   --  All whitespaces are ignored.

   null;
}

<XML_DECL>. {
   raise Syntax_Error;
}

<PI>{WHITE_SPACE}+ {
   ENTER (PI_DATA);
}

<PI_DATA>({NO_QUESTION_CHAR}*|"?"{NO_GREATER_CHAR}+)* {
   --  [16] PI

   null;
--   return Token_PI_Data;
--   Text_IO.Put_Line ("PI text          : '" & XML_Scanner.DFA.YYText & ''');
}

<PI,PI_DATA>"?>" {
   --  [16] PI

   ENTER (0);

   return Token_Processing_Instruction;
}

--<PI_DATA>. {
--   Text_IO.Put_Line ("PI: ERROR");
--}


<START_TAG>{NAME_START_CHAR}{NAME_CHAR}* {
   --  [41] Attribute

   return Token_Name;
}

<START_TAG>"'" {
   --  [10] AttValue

   ENTER (APOSTROPHE_ATTRIBUTE_VALUE);

   return Token_Attribute_Value_Start;
}

<START_TAG>\" {
   --  [10] AttValue

   ENTER (QUOTATION_ATTRIBUTE_VALUE);

   return Token_Attribute_Value_Start;
}

<START_TAG,END_TAG>">" {
   --  [40] STag

   ENTER (0);

   return Token_Tag_End;
}

<START_TAG>"/>" {
   --  [44] EmptyElemTag

   ENTER (0);

   return Token_Empty_Tag_End;
}

<START_TAG,END_TAG>{WHITE_SPACE}+ {
   --  All white spaces are ignored.

   null;
}

<APOSTROPHE_ATTRIBUTE_VALUE>{NO_AMPERSAND_APOSTROPHE_LESS_CHAR}* {
   --  [10] AttValue

   Text_IO.Put_Line ("Attr value segment");
   return Token_Attribute_Value;
}

<QUOTATION_ATTRIBUTE_VALUE>{NO_QUOTATION_AMPERSAND_LESS_CHAR}* {
   --  [10] AttValue

   Text_IO.Put_Line ("Attr value segment");
   return Token_Attribute_Value;
}

<APOSTROPHE_ATTRIBUTE_VALUE,QUOTATION_ATTRIBUTE_VALUE>{NAME_START_CHAR}{NAME_CHAR}* {
   --  [68] EntityRef

   return Token_Entity_Ref;
}

<APOSTROPHE_ATTRIBUTE_VALUE,QUOTATION_ATTRIBUTE_VALUE>"&#"[0-9]+";" {
   --  [66] CharRef

   return Token_Char_Ref;
}

<APOSTROPHE_ATTRIBUTE_VALUE,QUOTATION_ATTRIBUTE_VALUE>"&#"[0-9a-fA-F]+";" {
   --  [66] CharRef

   return Token_Char_Ref;
}

<APOSTROPHE_ATTRIBUTE_VALUE>"'" {
   --  [10] AttValue

   ENTER (START_TAG);

   return Token_Attribute_Value_End;
}

<QUOTATION_ATTRIBUTE_VALUE>\" {
   --  [10] AttValue

   ENTER (START_TAG);

   return Token_Attribute_Value_End;
}

<END_TAG>. {
   Text_IO.Put_Line ("ERROR");
}









--
--"<?"{NAME_START_CHAR}{NAME_CHAR}* {
--   --  [16] PI
--   ENTER (PI);
--   Text_IO.Put_Line ("PI open          : '" & XML_Scanner.DFA.YYText & ''');
--}
--
--"<!--"({NO_HYPHEN_CHAR}|-{NO_HYPHEN_CHAR})*"-->" {
--   --  [15] Comment
--   Text_IO.Put_Line ("Comment:         : '" & XML_Scanner.DFA.YYText & ''');
--}
--
--"<!DOCTYPE" {
--   --  [28] doctypedecl
--   ENTER (DOCTYPE);
--   Text_IO.Put_Line ("DOCTYPE declaration");
--}
--
--{WHITE_SPACE}+ {
--   Text_IO.Put_Line ("Whitespaces (not printed)");
--}
--
--<PI,PI_DATA,XML_DECL>"?>" {
--   --  [16] PI, [23] XMLDecl
--   ENTER (0);
--   Text_IO.Put_Line ("PI/XMLDecl close : '" & XML_Scanner.DFA.YYText & ''');
--}
--
--<XML_DECL>{WHITE_SPACE}+ {
--   --  [23] XMLDecl, [24] VersionInfo, [25] Eq, [80] EncodingDecl, [32] SDDecl:
--   --  all white spaces are ignored.
--   null;
--}
--
--<XML_DECL>version {
--   --  [24] VersionInfo
--   null;
--}
--
--<XML_DECL>encoding {
--   --  [80] EncodingDecl
--   null;
--}
--
--<XML_DECL>standalone {
--   --  [32] SDDecl
--   null;
--}
--
--<DOCTYPE>{NAME_START_CHAR}{NAME_CHAR}* {
--   --  [28] doctypedecl: Name
--   Text_IO.Put_Line ("DOCTYPE Name     : '" & XML_Scanner.DFA.YYText & ''');
--}
--
--<DOCTYPE>SYSTEM {
--   --  [75] ExternalID
--   Text_IO.Put_Line ("  SYSTEM");
--}
--
--<DOCTYPE>PUBLIC {
--   --  [75] ExternalID
--   Text_IO.Put_Line ("  SYSTEM");
--}
--
--<DOCTYPE>"[" {
--   --  [28] doctypedecl
--   ENTER (DOCTYPE_INTSUBSET);
--   Text_IO.Put_Line ("  Enter intSubset");
--}
--
--<DOCTYPE>">" {
--   --  [28] doctypedecl
--   ENTER (0);
--}
--
--<DOCTYPE_INTSUBSET>"]" {
--   ENTER (DOCTYPE);
--   Text_IO.Put_Line ("  Leave intSubset");
--}
--
--<DOCTYPE_INTSUBSET>"%"{NAME_START_CHAR}{NAME_CHAR}*";" {
--   --  [69] PEReference
--   Text_IO.Put_Line ("PEReference      : '" & XML_Scanner.DFA.YYText & ''');
--}
--
--<DOCTYPE_INTSUBSET>"<!ELEMENT" {
--   --  [45] elementdecl
--   ENTER (DOCTYPE_INTSUBSET_ELEMENT);
--   Text_IO.Put_Line ("  Enter ELEMENT");
--}
--
--<DOCTYPE_INTSUBSET_ELEMENT>EMPTY {
--   --  [46] contentspec
--   Text_IO.Put_Line ("EMPTY");
--}
--
--<DOCTYPE_INTSUBSET_ELEMENT>ANY {
--   --  [46] contentspec
--   Text_IO.Put_Line ("ANY");
--}
--
--<DOCTYPE_INTSUBSET_ELEMENT>"?" {
--   Text_IO.Put_Line ("QUESTION");
--}
--
--<DOCTYPE_INTSUBSET_ELEMENT>"*" {
--   Text_IO.Put_Line ("ASTERISK");
--}
--
--<DOCTYPE_INTSUBSET_ELEMENT>"+" {
--   Text_IO.Put_Line ("PLUS");
--}
--
--<DOCTYPE_INTSUBSET_ELEMENT>"(" {
--   Text_IO.Put_Line ("LEFT_BRACKET");
--}
--
--<DOCTYPE_INTSUBSET_ELEMENT>")" {
--   Text_IO.Put_Line ("RIGHT_BRACKET");
--}
--
--<DOCTYPE_INTSUBSET_ELEMENT>"|" {
--   Text_IO.Put_Line ("OR");
--}
--
--<DOCTYPE_INTSUBSET_ELEMENT>"#PCDATA" {
--   Text_IO.Put_Line ("#PCDATA");
--}
--
--<DOCTYPE_INTSUBSET_ELEMENT>{NAME_START_CHAR}{NAME_CHAR}* {
--   --  [28] doctypedecl: Name
--   Text_IO.Put_Line ("ELEMENT Name     : '" & XML_Scanner.DFA.YYText & ''');
--}
--
--<DOCTYPE_INTSUBSET_ELEMENT>">" {
--   --  [45] elementdecl
--   ENTER (DOCTYPE_INTSUBSET);
--   Text_IO.Put_Line ("  Leave ELEMENT");
--}
--
--<DOCTYPE_INTSUBSET>"<!--"({NO_HYPHEN_CHAR}|-{NO_HYPHEN_CHAR})*"-->" {
--   --  [15] Comment
--   Text_IO.Put_Line ("Comment:         : '" & XML_Scanner.DFA.YYText & ''');
--}
--
--<DOCTYPE_INTSUBSET>"<?"{NAME_START_CHAR}{NAME_CHAR}* {
--   --  [16] PI
--   ENTER (DOCTYPE_INTSUBSET_PI);
--   Text_IO.Put_Line ("PI open          : '" & XML_Scanner.DFA.YYText & ''');
--}
--
--<DOCTYPE_INTSUBSET_PI,DOCTYPE_INTSUBSET_PI_DATA>"?>" {
--   --  [16] PI
--   ENTER (DOCTYPE_INTSUBSET);
--   Text_IO.Put_Line ("PI/XMLDecl close : '" & XML_Scanner.DFA.YYText & ''');
--}
--
--<DOCTYPE_INTSUBSET_PI>{WHITE_SPACE}+ {
--   ENTER (DOCTYPE_INTSUBSET_PI_DATA);
--}
--
--<DOCTYPE_INTSUBSET_PI_DATA>({NO_QUESTION_CHAR}*|"?"{NO_GREATER_CHAR}+)* {
--   --  [16] PI
--   Text_IO.Put_Line ("PI text          : '" & XML_Scanner.DFA.YYText & ''');
--}
--
--<DOCTYPE_INTSUBSET_PI_DATA>. {
--   Text_IO.Put_Line ("PI: ERROR");
--}
--
--<DOCTYPE,DOCTYPE_INTSUBSET,DOCTYPE_INTSUBSET_ELEMENT>{WHITE_SPACE}+ {
--   --  All white spaces are ignored.
--   null;
--}

--<PROLOG>"<?xml" { ENTER (XML_DECL) }
--
--<XML_DECL>{WHITE_SPACE}* { }
--
--<XML_DECL>= { }
--
--<XML_DECL>'1.1'|\"1.1\" { }
--
--<XML_DECL>'{ENCODING_CHARS}'|\"{ENCODING_CHARS}\" { }
--
--<XML_DECL>version { }
--
--<XML_DECL>encoding { }
--
--<XML_DECL>standalone { }
--
--<XML_DECL>"?>" { ENTER (0); }

%%
with Xml_Parser.Tokens; use Xml_Parser.Tokens;

##
   function YYLex return Token;
##

##

##
