--
--  [3] S ::= (#x20 | #x9 | #xD | #xA)+
--
WHITE_SPACE	[\u0020\u0009\u000D\u000A]+

--
--  [5] Name ::= NameStartChar (NameChar)*
--
NAME		[:A-Z_a-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02FF\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD\u10000-\uEFFFF][-.:0-9A-Z_a-z\u00B7\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u036F\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u203F-\u2040\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD\u10000-\uEFFFF]*

%s XML_DECL
%s DOCTYPE_DECL

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
   Enter_Start_Condition (Self, DOCTYPE_DECL);

   return Token_Doctype_Decl_Open;
}

<DOCTYPE_DECL>">" {
   Enter_Start_Condition (Self, INITIAL);

   return Token_Close;
}

<DOCTYPE_DECL>"%"{NAME}";" {
   return Token_PE_Reference;
}

<DOCTYPE_DECL>{WHITE_SPACE}+ {
   --  All white spaces from rules [28] are ignored.

   null;
}

<DOCTYPE_DECL>"<!ENTITY" {
   return Token_Entity_Decl_Open;
}

. {
   --  Temporary rule to setup scanner transformation properly.

   null;
}

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
