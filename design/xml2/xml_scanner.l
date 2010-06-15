--
--  [3] S ::= (#x20 | #x9 | #xD | #xA)+
--
WHITE_SPACE	[\u0020\u0009\u000D\u000A]+

--
--  [5] Name ::= NameStartChar (NameChar)*
--
NAME		[:A-Z_a-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02FF\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD\u10000-\uEFFFF][-.:0-9A-Z_a-z\u00B7\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u036F\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u203F-\u2040\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD\u10000-\uEFFFF]*

--
--  [13] PubidChar ::= #x20 | #xD | #xA | [a-zA-Z0-9] | [-'()+,./:=?;!*#@$_%]
--
PUBID_CHAR		[-'()+,./:=?;!*#@$_%a-zA-Z0-9\u0020\u000D\u000A]
PUBID_CHAR_NO_QUOTATION	[-()+,./:=?;!*#@$_%a-zA-Z0-9\u0020\u000D\u000A]

%s XML_DECL
%s DOCTYPE_DECL
%s DOCTYPE_EXTINT
%s DOCTYPE_INT
%s DOCTYPE_EXT_SYS
%s DOCTYPE_EXT_PUB

%%

"<?xml" {
   Enter_Start_Condition (Self, XML_DECL);

   return Token_XML_Decl_Open;
}

<XML_DECL>"?>" {
   Enter_Start_Condition (Self, INITIAL);

   return Token_PI_Close;
}

<XML_DECL>{WHITE_SPACE}+ {
   --  All white spaces from rules [23], [24], [25], [32], [80] are ignored.

   null;
}

"<!DOCTYPE" {
   --  Open tag of document type declaration, rule [28].

   Enter_Start_Condition (Self, DOCTYPE_DECL);

   return Token_Doctype_Decl_Open;
}

<DOCTYPE_DECL>{NAME} {
   --  Name of root element type, rule [28].

   Enter_Start_Condition (Self, DOCTYPE_EXTINT);

   return Token_Name;
}

<DOCTYPE_EXTINT,DOCTYPE_INT>">" {
   --  Close tag of document type declaration, rule [28].

   Enter_Start_Condition (Self, INITIAL);

   return Token_Close;
}

<DOCTYPE_EXTINT>"SYSTEM" {
   --  Keyword SYSTEM, rule [75].

   Enter_Start_Condition (Self, DOCTYPE_EXT_SYS);

   return Token_System;
}

<DOCTYPE_EXT_SYS>\"[^"]*\"|\'[^']*\' {
   --  System literal, rule [11], used in rule [75].

   Enter_Start_Condition (Self, DOCTYPE_INT);

   return Token_System_Literal;
}

<DOCTYPE_EXTINT>"PUBLIC" {
   --  Keyword PUBLIC, rule [75].

   Enter_Start_Condition (Self, DOCTYPE_EXT_PUB);

   return Token_Public;
}

<DOCTYPE_EXT_PUB>\"{PUBID_CHAR}*\"|\'{PUBID_CHAR_NO_QUOTATION}*\' {
   --  Public id literal, rule [12], used in rule [75].

   Enter_Start_Condition (Self, DOCTYPE_EXT_SYS);

   return Token_Public_Literal;
}

<DOCTYPE_EXTINT,DOCTYPE_INT>"[" {
   --  Open of internal subset declaration, rule [28].

   return Token_Internal_Subset_Open;
}

--<DOCTYPE_DECL>"%"{NAME}";" {
--   return Token_PE_Reference;
--}

<DOCTYPE_DECL,DOCTYPE_EXTINT,DOCTYPE_EXT_SYS,DOCTYPE_EXT_PUB,DOCTYPE_INT>{WHITE_SPACE} {
   --  All white spaces from rules [28], [75] are ignored.

   null;
}

<XML_DECL>. {
   raise Program_Error with "Unexpected character in XML_DECL";
}

<DOCTYPE_DECL>. {
   raise Program_Error with "Unexpected character in DOCTYPE_DECL";
}

<DOCTYPE_EXTINT>. {
   raise Program_Error with "Unexpected character in DOCTYPE_EXTINT";
}

<DOCTYPE_INT>. {
   raise Program_Error with "Unexpected character in DOCTYPE_INT";
}

<DOCTYPE_EXT_PUB>. {
   raise Program_Error with "Unexpected character in pubid literal";
}

<DOCTYPE_EXT_SYS>. {
   raise Program_Error with "Unexpected character in system literal";
}

.|\n {
   raise Program_Error with "Unexpected character in document";
}

--<DOCTYPE_DECL>"<!ENTITY" {
--   return Token_Entity_Decl_Open;
--}

%%
with Xml_Parser_Tokens;
##
   function YYLex return Xml_Parser_Tokens.Token;
##
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Wide_Wide_Text_IO;
##
   use Xml_Parser_Tokens;

   procedure Enter_Start_Condition
    (Self : access Integer; State : Integer) is separate;

   Self : access Integer;
