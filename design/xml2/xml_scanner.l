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
PUBID_CHAR			[-'()+,./:=?;!*#@$_%a-zA-Z0-9\u0020\u000D\u000A]
PUBID_CHAR_NO_APOSTROPHE	[-()+,./:=?;!*#@$_%a-zA-Z0-9\u0020\u000D\u000A]

--
--  Special subranges of Char.
--
--  NOTE: Negative sets with smaller number of characters improves aflex
--  performance and memory requirements extremely.
--
--  [^%&]
CHAR_NO_PERCENT_AMPERSAND		[\u0001-\u0024\u0027-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
--  [^%&"] - Unused
CHAR_NO_QUOTATION_PERCENT_AMPERSAND	[\u0001-\u0021\u0023-\u0024\u0027-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
--  [^%&'] - Unused
CHAR_NO_PERCENT_AMPERSAND_APOSTROPHE	[\u0001-\u0024\u0028-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
--  [^"%&']
CHAR_NO_QUOTATION_PERCENT_AMPERSAND_APOSTROPHE	[\u0001-\u0021\u0023-\u0024\u0028-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
--  [^"&'<]
CHAR_NO_QUOTATION_AMPERSAND_APOSTROPHE_LESS	[\u0001-\u0021\u0023-\u0025\u0028-\u003B\u003D-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
--  (Char - '-') for comment, rule [15].
CHAR_NO_HYPHEN				[\u0001-\u002C\u002E-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
--  [^<&] for CharDara, rule [14].
CHAR_NO_AMPERSAND_LESS			[\u0001-\u0025\u0027-\u003B\u003D-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
--  [^<&[]
CHAR_NO_AMPERSAND_LESS_RIGHT_SQUARE	[\u0001-\u0025\u0027-\u003B\u003D-\u005C\u005E-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
--  [^<>&[]
CHAR_NO_AMPERSAND_LESS_GREATER_RIGHT_SQUARE	[\u0001-\u0025\u0027-\u003B\u003D\u003F-\u005C\u005E-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
--  [^[], for CData, rule [20].
CHAR_NO_RIGHT_SQUARE			[\u0001-\u005C\u005E-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
--  [^>]]
CHAR_NO_GREATER_RIGHT_SQUARE		[\u0001-\u003D\u003F-\u005C\u005E-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
--  [^?], for PI, rule [16].
--  CHAR_NO_QUESTION			[\u0001-\u003E\u0040-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
CHAR_NO_QUESTION			[^\u003F\uD800-\uDFFF\uFFFE\uFFFF]
--  [^>?]
--  CHAR_NO_GREATER_QUESTION		[\u0001-\u003D\u0040-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]
CHAR_NO_GREATER_QUESTION		[^\u003E\u003F\uD800-\uDFFF\uFFFE\uFFFF]

XMLDECL_ATTRIBUTE_CHAR [A-Za-z0-9._-]
--  Synthetic set of character. XMLDECL_ATTRIBUTE_CHAR is a union of characters
--  allowed by [26] VersionNum, [81] EncName, [32] SDDecl.

%x XML_DECL
%x PI
%x PI_DATA
%x DOCTYPE_DECL
%x DOCTYPE_EXTINT
%x DOCTYPE_INT
%x DOCTYPE_INTSUBSET
%x ENTITY_DECL
%x ENTITY_DEF
%x ENTITY_NDATA
%x ENTITY_VALUE
%x ELEMENT_START
%x ATTRIBUTE_VALUE
--  Factored out processing for ExternalID, rule [75]. When PUBLIC or SYSTEM
--  word is recognized, scanner must be switched to EXTERNAL_ID_PUB or
--  EXTERNAL_ID_SYS state and set state to which scanner is returned after
--  recognition of id.
%x EXTERNAL_ID_SYS
%x EXTERNAL_ID_PUB

%%

"<?xml" {
   Enter_Start_Condition (Self, XML_DECL);
   Reset_Whitespace_Matched (Self);

   return Token_XML_Decl_Open;
}

"<?"{NAME} {
   --  Open of processing instruction, rule [16]. Rule [17] is implemented
   --  implicitly by ordering of open of XMLDecl and open of PI.

   YYLVal := (String => YY_Text (2, 0), others => <>);
   Enter_Start_Condition (Self, PI);
   Reset_Whitespace_Matched (Self);

   return Token_PI_Open;
}

<XML_DECL>version {
   --  [24] VersionInfo

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error with "no whitespace before 'version' keyword";
      --  XXX This is recoverable error.
   end if;

   return Token_Version;
}

<XML_DECL>encoding {
   --  [80] EncodingDecl

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error with "no whitespace before 'encoding' keyword";
      --  XXX This is recoverable error.
   end if;

   return Token_Encoding;
}

<XML_DECL>standalone {
   --  [32] SDDecl

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error with "no whitespace before 'standalone' keyword";
      --  XXX This is recoverable error.
   end if;

   return Token_Standalone;
}

<XML_DECL>'{XMLDECL_ATTRIBUTE_CHAR}*'|\"{XMLDECL_ATTRIBUTE_CHAR}*\" {
   --  Synthetic rule. XMLDECL_ATTRIBUTE_CHAR is a union of characters allowed
   --  by [26] VersionNum, [81] EncName, [32] SDDecl. Precise check is
   --  processed while parsing.

   YYLVal := (String => YY_Text (1, 1), others => <>);
   Reset_Whitespace_Matched (Self);

   return Token_String_Segment;
}

<XML_DECL,PI,PI_DATA>"?>" {
   Enter_Start_Condition (Self, INITIAL);

   YYLVal := (others => <>);

   return Token_PI_Close;
}

<PI>{WHITE_SPACE}+ {
   --  Ignore all whitespaces is followed by processing insturction's name,
   --  rule [16].

   Enter_Start_Condition (Self, PI_DATA);
   Set_Whitespace_Matched (Self);
}

<PI_DATA>{CHAR_NO_QUESTION}*"?"+({CHAR_NO_GREATER_QUESTION}{CHAR_NO_QUESTION}*"?"+)*">" {
   --  Segment of data and close delimiter of the processing instruction, rule
   --  [16].

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error with "no whitespace before processing instruction data";
      --  XXX This is recoverable error.
   end if;

   YYLVal := (String => YY_Text (0, 2), others => <>);
   Enter_Start_Condition (Self, INITIAL);

   return Token_PI_Close;
}

"<!DOCTYPE" {
   --  Open tag of document type declaration, rule [28].

   Enter_Start_Condition (Self, DOCTYPE_DECL);

   return Token_Doctype_Decl_Open;
}

<DOCTYPE_DECL>{NAME} {
   --  Name of root element type, rule [28].

   Enter_Start_Condition (Self, DOCTYPE_EXTINT);
   YYLVal := (String => YY_Text, others => <>);

   return Token_Name;
}

<DOCTYPE_EXTINT,DOCTYPE_INT>">" {
   --  Close tag of document type declaration, rule [28].

   Enter_Start_Condition (Self, INITIAL);

   return Token_Close;
}

<DOCTYPE_EXTINT>"SYSTEM" {
   --  Keyword SYSTEM, rule [75].

   Set_Continue_State (Self, DOCTYPE_INT);
   Reset_Whitespace_Matched (Self);
   Enter_Start_Condition (Self, EXTERNAL_ID_SYS);

   return Token_System;
}

<EXTERNAL_ID_SYS>\"[^"]*\"|\'[^']*\' {
   --  System literal, rule [11], used in rule [75].

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error with "no whitespace before system literal";
      --  XXX This is recoverable error.
   end if;

   Reset_Whitespace_Matched (Self);
   Enter_Start_Condition (Self, Get_Continue_State (Self));
   YYLVal := (String => YY_Text (1, 1), others => <>);

   return Token_System_Literal;
}

<DOCTYPE_EXTINT>"PUBLIC" {
   --  Keyword PUBLIC, rule [75].

   Set_Continue_State (Self, DOCTYPE_INT);
   Reset_Whitespace_Matched (Self);
   Enter_Start_Condition (Self, EXTERNAL_ID_PUB);

   return Token_Public;
}

<EXTERNAL_ID_PUB>\"{PUBID_CHAR}*\"|\'{PUBID_CHAR_NO_APOSTROPHE}*\' {
   --  Public id literal, rule [12], used in rule [75].

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error with "no whitespace before pubid literal";
      --  XXX This is recoverable error.
   end if;

   Reset_Whitespace_Matched (Self);
   Enter_Start_Condition (Self, EXTERNAL_ID_SYS);
   YYLVal := (String => YY_Text (1, 1), others => <>);

   return Token_Public_Literal;
}

<DOCTYPE_EXTINT,DOCTYPE_INT>"[" {
   --  Open of internal subset declaration, rule [28].

   Enter_Start_Condition (Self, DOCTYPE_INTSUBSET);

   return Token_Internal_Subset_Open;
}

<DOCTYPE_INTSUBSET>"]" {
   --  Close of internal subset declaration, rule [28].

   Enter_Start_Condition (Self, DOCTYPE_INT);

   return Token_Internal_Subset_Close;
}

<INITIAL,DOCTYPE_INTSUBSET>"<!--"({CHAR_NO_HYPHEN}|-{CHAR_NO_HYPHEN})*"-->" {
   --  Text of comment, rule [15].

   YYLVal := (String => YY_Text (4, 3), others => <>);

   return Token_Comment;
}

<DOCTYPE_INTSUBSET>"<!ENTITY" {
   --  Open of entity declaration, rules [71], [72].

   Enter_Start_Condition (Self, ENTITY_DECL);
   Reset_Whitespace_Matched (Self);

   return Token_Entity_Decl_Open;
}

<ENTITY_DECL>{NAME} {
   --  Name in entity declaration, rules [71], [72].

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error
        with "no whitespace before name in entity declaration";
      --  XXX This is recoverable error.
   end if;

   Reset_Whitespace_Matched (Self);
   Enter_Start_Condition (Self, ENTITY_DEF);
   YYLVal := (String => YY_Text, others => <>);

   return Token_Name;
}

<ENTITY_DECL>"%" {
   --  Percent mark in parameter entity declaration, rule [72].

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error
        with "no whitespace before percent in parameter entity declaration";
      --  XXX This is recoverable error.
   end if;

   Reset_Whitespace_Matched (Self);

   return Token_Percent;
}

<ENTITY_DEF>">" {
   --  Close token of entity declaration, rules [71], [72].

   Enter_Start_Condition (Self, DOCTYPE_INTSUBSET);

   return Token_Close;
}

<ENTITY_DEF>["'] {
   --  Entity value, rule [9].

   return Process_Entity_Value_Open_Delimiter (Self, YY_Text);
}

<ENTITY_DEF>"SYSTEM" {
   --  Entity value as ExternalID, rule [75], used by rules [73], [74].

   Set_Continue_State (Self, ENTITY_DEF);
   Reset_Whitespace_Matched (Self);
   Enter_Start_Condition (Self, EXTERNAL_ID_SYS);

   return Token_System;
}

<ENTITY_DEF>"PUBLIC" {
   --  Entity value as ExternalID, rule [75], used by rules [73], [74].

   Set_Continue_State (Self, ENTITY_DEF);
   Reset_Whitespace_Matched (Self);
   Enter_Start_Condition (Self, EXTERNAL_ID_PUB);

   return Token_Public;
}

<ENTITY_DEF>"NDATA" {
   --  NDATA keyword, rule [76].

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error with "no whitespace before NDATA";
      --  XXX This is recoverable error.
   end if;

   Enter_Start_Condition (Self, ENTITY_NDATA);

   return Token_NData;
}

<ENTITY_NDATA>{NAME} {
   --  Name of NDATA, rule [76].

   Enter_Start_Condition (Self, ENTITY_DEF);
   YYLVal := (String => YY_Text, others => <>);

   return Token_Name;
}

<ENTITY_VALUE>{CHAR_NO_QUOTATION_PERCENT_AMPERSAND_APOSTROPHE}+ {
   YYLVal := (String => YY_Text, others => <>);

   return Token_String_Segment;
}

<ENTITY_VALUE>["'] {
   --  Close of entity value, rule [9].

   return Process_Entity_Value_Close_Delimiter (Self, YY_Text);
}

<INITIAL,ENTITY_VALUE,ATTRIBUTE_VALUE>"&#"[0-9]+";" {
   --  Decimal form of character reference rule [66] in entity value rule [9];
   --  attribute value, rule [10] or content of element, rule [43].

   return Process_Character_Reference (Self, Decimal, YY_Text (2, 1));
}

<INITIAL,ENTITY_VALUE,ATTRIBUTE_VALUE>"&#x"[0-9a-fA-F]+";" {
   --  Hexadecimal form of character reference rule [66] in entity value rule
   --  [9]; attribute value, rule [10] or content of element, rule [43].

   return Process_Character_Reference (Self, Hexadecimal, YY_Text (3, 1));
}

<ENTITY_VALUE>"&"{NAME}";" {
   --  General entity reference rule [68] in entity value rule [9].

   YYLVal := (String => YY_Text, others => <>);

   return Token_String_Segment;
}

<ENTITY_VALUE>"%"{NAME}";" {
   --  Parameter entity reference rule [69] in entity value rule [9].
   --
   --  Processing of parameter entity uses separate scanner's state, thus
   --  after processing current state is restored automatically. This allows
   --  to reuse code for three modes: parsing of entity value delimited by
   --  quotation; parsing of entity value delimited by apostrophe; and
   --  parsing of parameter entity replacement text when it is referenced
   --  in any of two form of entity value.

   Process_Parameter_Entity_Reference_In_Entity_Value (Self, YY_Text (1, 1));
}

<DOCTYPE_DECL,DOCTYPE_EXTINT,DOCTYPE_INT,DOCTYPE_INTSUBSET,ENTITY_NDATA>{WHITE_SPACE} {
   --  All white spaces from rules [28] are ignored.
   --  Whitespace before name in rule [76] is ignored.

   null;
}

<XML_DECL,EXTERNAL_ID_PUB,EXTERNAL_ID_SYS,ENTITY_DECL,ENTITY_DEF,ELEMENT_START>{WHITE_SPACE} {
   --  White spaces in entity declaration are not optional, rules [71], [72],
   --  [75].
   --
   --  White spaces in start tag, rule [40], are ignored, but white space
   --  between attribute value and name of the next attribute are must be
   --  present.
   --
   --  All white spaces from rules [23], [24], [25], [32], [80] are ignored,
   --  but white space between attribute value and name of the next attribute
   --  are must be present.

   Set_Whitespace_Matched (Self);
}

"<"{NAME} {
   --  Open of start tag, rule [40], or empty element, rule [44].

   YYLVal := (String => YY_Text (1, 0), others => <>);
   Enter_Start_Condition (Self, ELEMENT_START);

   return Token_Element_Open;
}

"</"{NAME} {
   --  Open of and tag, rule [42].

   YYLVal := (String => YY_Text (2, 0), others => <>);
   Enter_Start_Condition (Self, ELEMENT_START);

   return Token_End_Open;
}

<ELEMENT_START>{NAME} {
   --  Name of the attribute, rule [41].

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error with "Whitespace is missing before attribute name";
      --  XXX It is recoverable error.
   end if;

   YYLVal := (String => YY_Text, others => <>);

   return Token_Name;
}

<XML_DECL,ELEMENT_START>"=" {
   --  Equal sign as attribute's name value delimiter, rule [25] in rules [41],
   --  [24], [32], [80].

   return Token_Equal;
}

<ELEMENT_START>"/>" {
   --  Close of empty element tag, rule [44].

   Enter_Start_Condition (Self, INITIAL);

   return Token_Empty_Close;
}

<ELEMENT_START>">" {
   --  Close of tag, rule [40].

   Enter_Start_Condition (Self, INITIAL);

   return Token_Close;
}

<ELEMENT_START>['"] {
   --  Open delimiter of attribute value, rule [10].

   return Process_Attribute_Value_Open_Delimiter (Self, YY_Text);
}

<ATTRIBUTE_VALUE>['"] {
   --  Close delimiter of attribute value, rule [10].

   return Process_Attribute_Value_Close_Delimiter (Self, YY_Text);
}

<ATTRIBUTE_VALUE>{CHAR_NO_QUOTATION_AMPERSAND_APOSTROPHE_LESS}+ {
   --  Value of attribute, rule [10].

   YYLVal := (String => YY_Text, others => <>);

   return Token_String_Segment;
}

<ATTRIBUTE_VALUE>"<" {
   --  Less-than sign can't be used in the attribute value.
   --
   --  3.1 [WFC: No < in Attribute Values]

   raise Program_Error with "'<' can't be used in attribute value";
}

<ATTRIBUTE_VALUE>"&"{NAME}";" {
   --  General entity reference rule [68] in attribute value, rule [10].

   Process_General_Entity_Reference_In_Attribute_Value (Self, YY_Text (1, 1));
}

<ATTRIBUTE_VALUE>. {
   Put_Line (YY_Text);
   raise Program_Error with "Unexpected character in ATTRIBUTE_VALUE";
}

--<DOCTYPE_DECL>"%"{NAME}";" {
--   return Token_PE_Reference;
--}

{WHITE_SPACE} {
   --  Segment of whitespaces.

   if Process_Whitespace (Self, YY_Text) then
      return Token_String_Segment;
   end if;
}

(({CHAR_NO_AMPERSAND_LESS_RIGHT_SQUARE}|"]"{CHAR_NO_AMPERSAND_LESS_RIGHT_SQUARE}|"]"{2,}{CHAR_NO_AMPERSAND_LESS_GREATER_RIGHT_SQUARE})+"]"*|"]"+) {
   --  Segment of character data, rule [14].

   YYLVal := (String => YY_Text, Is_Whitespace => False, others => <>);

   return Token_String_Segment;
}

"<![CDATA["({CHAR_NO_RIGHT_SQUARE}|"]"{CHAR_NO_RIGHT_SQUARE}|"]"{2,}{CHAR_NO_GREATER_RIGHT_SQUARE})*"]]>" {
   --  Segment of CDATA, rules [18], [19], [20], [21].

   YYLVal :=
    (String        => YY_Text (9, 3),
     Is_Whitespace => False,
     Is_CData      => True,
     others        => <>);

   return Token_String_Segment;
}

"&"{NAME}";" {
   --  General entity reference rule [68] in document content.

   Process_General_Entity_Reference_In_Document_Content (Self, YY_Text (1, 1));
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

<DOCTYPE_INTSUBSET>. {
   Put_Line (YY_Text);
   raise Program_Error with "Unexpected character in DOCTYPE_INTSUBSET";
}

<ENTITY_DECL>. {
   raise Program_Error with "Unexpected character in ENTITY_DECL";
}

<ENTITY_DEF>. {
   raise Program_Error with "Unexpected character in ENTITY_DEF";
}

<ENTITY_NDATA>. {
   raise Program_Error with "Unexpected character in ENTITY_NDATA";
}

<EXTERNAL_ID_PUB>. {
   raise Program_Error with "Unexpected character in pubid literal";
}

<EXTERNAL_ID_SYS>. {
   raise Program_Error with "Unexpected character in system literal";
}

.|\n {
   Put_Line (YY_Text);
   raise Program_Error with "Unexpected character in document";
}

%%
with Xml_Parser_Tokens;
##
   function YYLex return Xml_Parser_Tokens.Token;
##
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Wide_Wide_Text_IO;
with League.Strings;
##
   use Xml_Parser_Tokens;

   procedure Enter_Start_Condition
    (Self : access Integer; State : Integer) is separate;

   procedure Set_Continue_State
    (Self : access Integer; State : Integer) is separate;

   function Get_Continue_State
    (Self : access Integer) return Integer is separate;

   procedure Set_Whitespace_Matched (Self : access Integer) is separate;

   function Get_Whitespace_Matched
    (Self : access Integer) return Boolean is separate;

   procedure Reset_Whitespace_Matched (Self : access Integer) is separate;

   function YY_Text
    (Trim_Left  : Natural := 0;
     Trim_Right : Natural := 0)
       return League.Strings.Universal_String is separate;

   Self     : access Integer;
   YYLVal   : YYSType;
   Put_Line : access procedure (Item : League.Strings.Universal_String);

   procedure Process_General_Entity_Reference_In_Attribute_Value
    (Self : access Integer;
     Name : League.Strings.Universal_String) is separate;

   procedure Process_General_Entity_Reference_In_Document_Content
    (Self : access Integer;
     Name : League.Strings.Universal_String) is separate;

   procedure Process_Parameter_Entity_Reference_In_Entity_Value
    (Self : access Integer;
     Name : League.Strings.Universal_String) is separate;

   type Character_Reference_Form is (Decimal, Hexadecimal);

   function Process_Character_Reference
    (Self  : access Integer;
     Form  : Character_Reference_Form;
     Image : League.Strings.Universal_String) return Token is separate;

   function Process_Attribute_Value_Open_Delimiter
    (Self  : access Integer;
     Image : League.Strings.Universal_String) return Token is separate;

   function Process_Attribute_Value_Close_Delimiter
    (Self  : access Integer;
     Image : League.Strings.Universal_String) return Token is separate;

   function Process_Entity_Value_Open_Delimiter
    (Self  : access Integer;
     Image : League.Strings.Universal_String) return Token is separate;

   function Process_Entity_Value_Close_Delimiter
    (Self  : access Integer;
     Image : League.Strings.Universal_String) return Token is separate;

   function Process_Whitespace
    (Self : access Integer;
     Text : League.Strings.Universal_String) return Boolean is separate;
