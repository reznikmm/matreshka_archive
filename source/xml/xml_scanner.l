------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
-- This unit uses some ideas of regular expression transformation from:     --
--                                                                          --
-- Robert D. Cameron "REX: XML Shallow Parsing with Regular Expressions",   --
-- Technical Report TR 1998-17, School of Computing Science, Simon Fraser   --
-- University, November, 1998.                                              --
-- Copyright (c) 1998, Robert D. Cameron.                                   --
-- The following code may be freely used and distributed provided that      --
-- this copyright and citation notice remains intact and that modifications --
-- or additions are clearly identified.                                     --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
--
--  [3] S ::= (#x20 | #x9 | #xD | #xA)+
--
WHITE_SPACE	[\u0020\u0009\u000D\u000A]+

--
--  [5] Name ::= NameStartChar (NameChar)*
--
NAME		[:A-Z_a-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02FF\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD\u10000-\uEFFFF][-.:0-9A-Z_a-z\u00B7\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u036F\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u203F-\u2040\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD\u10000-\uEFFFF]*

--
--  [7] Nmtoken ::= (NameChar)+
--
NMTOKEN		[-.:0-9A-Z_a-z\u00B7\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u036F\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u203F-\u2040\u2070-\u218F\u2C00-\u2FEF\u3001-\uD7FF\uF900-\uFDCF\uFDF0-\uFFFD\u10000-\uEFFFF]+

--
--  [13] PubidChar ::= #x20 | #xD | #xA | [a-zA-Z0-9] | [-'()+,./:=?;!*#@$_%]
--
PUBID_CHAR			[-'()+,./:=?;!*#@$_%a-zA-Z0-9\u0020\u000D\u000A]
PUBID_CHAR_NO_APOSTROPHE	[-()+,./:=?;!*#@$_%a-zA-Z0-9\u0020\u000D\u000A]

XMLDECL_ATTRIBUTE_CHAR [A-Za-z0-9._-]
--  Synthetic set of character. XMLDECL_ATTRIBUTE_CHAR is a union of characters
--  allowed by [26] VersionNum, [81] EncName, [32] SDDecl.

--
--  Special subranges of Char.
--
--  NOTE: Negative sets with smaller number of characters improves aflex
--  performance and memory requirements extremely.
--
--  XML 1.0:
--
--  [2] Char ::= #x9 | #xA | #xD | [#x20-#xD7FF] | [#xE000-#xFFFD] | [#x10000-#x10FFFF]
--
--  Negative form: [^\u0001-\u0008\u000B\u000C\u000E-\u001F\uD800-\uDFFF\uFFFE\uFFFF]
--
--  XML 1.1:
--
--  [2] Char ::= [#x1-#xD7FF] | [#xE000-#xFFFD] | [#x10000-#x10FFFF]
--
--  Negative form: [^\uD800-\uDFFF\uFFFE\uFFFF]
--
CHAR10							[^\u0001-\u0008\u000B\u000C\u000E-\u001F\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11							[^\uD800-\uDFFF\uFFFE\uFFFF]
--  [^"%&']
CHAR10_NO_QUOTATION_PERCENT_AMPERSAND_APOSTROPHE	[^\u0022\u0025\u0026\u0027\u0001-\u0008\u000B\u000C\u000E-\u001F\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11_NO_QUOTATION_PERCENT_AMPERSAND_APOSTROPHE	[^\u0022\u0025\u0026\u0027\uD800-\uDFFF\uFFFE\uFFFF]
--  [^"&'<]
CHAR10_NO_QUOTATION_AMPERSAND_APOSTROPHE_LESS		[^\u0022\u0026\u0027\u003C\u0001-\u0008\u000B\u000C\u000E-\u001F\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11_NO_QUOTATION_AMPERSAND_APOSTROPHE_LESS		[^\u0022\u0026\u0027\u003C\uD800-\uDFFF\uFFFE\uFFFF]
--  (Char - '-') for comment, rule [15].
CHAR10_NO_HYPHEN					[^\u002D\u0001-\u0008\u000B\u000C\u000E-\u001F\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11_NO_HYPHEN					[^\u002D\uD800-\uDFFF\uFFFE\uFFFF]
--  [^<&]] for CharDara, rule [14].
CHAR10_NO_AMPERSAND_LESS_RIGHT_SQUARE			[^\u0026\u003C\u005D\u0001-\u0008\u000B\u000C\u000E-\u001F\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11_NO_AMPERSAND_LESS_RIGHT_SQUARE			[^\u0026\u003C\u005D\uD800-\uDFFF\uFFFE\uFFFF]
--  [^<>&]]
CHAR10_NO_AMPERSAND_LESS_GREATER_RIGHT_SQUARE		[^\u0026\u003C\u003E\u005D\u0001-\u0008\u000B\u000C\u000E-\u001F\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11_NO_AMPERSAND_LESS_GREATER_RIGHT_SQUARE		[^\u0026\u003C\u003E\u005D\uD800-\uDFFF\uFFFE\uFFFF]
--  [^]], for CData, rule [20].
CHAR10_NO_RIGHT_SQUARE					[^\u005D\u0001-\u0008\u000B\u000C\u000E-\u001F\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11_NO_RIGHT_SQUARE					[^\u005D\uD800-\uDFFF\uFFFE\uFFFF]
--  [^>]]
CHAR10_NO_GREATER_RIGHT_SQUARE				[^\u003E\u005D\u0001-\u0008\u000B\u000C\u000E-\u001F\uD800\uDFFF\uFFFE\uFFFF]
CHAR11_NO_GREATER_RIGHT_SQUARE				[^\u003E\u005D\uD800\uDFFF\uFFFE\uFFFF]
--  [^?], for PI, rule [16].
CHAR10_NO_QUESTION					[^\u003F\u0001-\u0008\u000B\u000C\u000E-\u001F\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11_NO_QUESTION					[^\u003F\uD800-\uDFFF\uFFFE\uFFFF]
--  [^>?]
CHAR10_NO_GREATER_QUESTION				[^\u003E\u003F\u0001-\u0008\u000B\u000C\u000E-\u001F\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11_NO_GREATER_QUESTION				[^\u003E\u003F\uD800-\uDFFF\uFFFE\uFFFF]
--  [^<]
CHAR10_NO_LESS						[^\u0001-\u0008\u000B\u000C\u000E-\u001F\u003C\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11_NO_LESS						[^\u003C\uD800-\uDFFF\uFFFE\uFFFF]
--  [^!]
CHAR10_NO_EXCLAMATION					[^\u0001-\u0008\u000B\u000C\u000E-\u001F\u0021\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11_NO_EXCLAMATION					[^\u0021\uD800-\uDFFF\uFFFE\uFFFF]
--  [^[]
CHAR10_NO_LEFT_SQUARE					[^\u0001-\u0008\u000B\u000C\u000E-\u001F\u005B\uD800-\uDFFF\uFFFE\uFFFF]
CHAR11_NO_LEFT_SQUARE					[^\u005B\uD800-\uDFFF\uFFFE\uFFFF]

%x XML_DECL
%x DOCUMENT_10
%x DOCUMENT_11
%x PI
%x PI_DATA_10
%x PI_DATA_11
%x DOCTYPE_EXTINT
%x DOCTYPE_INT
%x DOCTYPE_INTSUBSET_10
%x DOCTYPE_INTSUBSET_11
%x ELEMENT_DECL
%x ELEMENT_CHILDREN
%x ATTLIST_DECL
%x ATTLIST_NAME
%x ATTLIST_TYPE
%x NOTATION_DECL
%x ENTITY_DECL
%x ENTITY_DEF
%x ENTITY_NDATA
%x ENTITY_VALUE_10
%x ENTITY_VALUE_11
%x CONDITIONAL_DIRECTIVE
%x CONDITIONAL_IGNORE_10
%x CONDITIONAL_IGNORE_11
%x ELEMENT_START
%x ATTRIBUTE_VALUE_10
%x ATTRIBUTE_VALUE_11
--  Factored out processing for ExternalID, rule [75]. When PUBLIC or SYSTEM
--  word is recognized, scanner must be switched to EXTERNAL_ID_PUB or
--  EXTERNAL_ID_SYS state and set state to which scanner is returned after
--  recognition of id.
%x EXTERNAL_ID_SYS
%x EXTERNAL_ID_PUB

%%

"<?xml" {
   --  Open of XML declaration or text declaration, rules [23], [77].

   return Actions.On_Open_Of_XML_Or_Text_Declaration (Self);
}

.|\n {
   --  Any character except literal "<?xml" means there is no XML declaration
   --  in this document/external parsed entity.

   Actions.On_No_XML_Declaration (Self);
}

<DOCTYPE_INTSUBSET_10,DOCTYPE_INTSUBSET_11,DOCUMENT_10,DOCUMENT_11>"<?"{NAME} {
   --  Open of processing instruction, rule [16]. Rule [17] is implemented
   --  implicitly by ordering of open of XMLDecl and open of PI.

   return Actions.On_Open_Of_Processing_Instruction (Self);
}

<DOCUMENT_10,DOCUMENT_11>"<!DOCTYPE"{WHITE_SPACE}{NAME} {
   --  Open tag of document type declaration and name of root element,
   --  rule [28].

   return Actions.On_Open_Of_Document_Type_Declaration (Self);
}

<DOCUMENT_10,DOCUMENT_11>"<"{NAME} {
   --  Open of start tag, rule [40], or empty element, rule [44].

   return Actions.On_Open_Of_Start_Tag (Self);
}

<DOCUMENT_10,DOCUMENT_11>"</"{NAME} {
   --  Open of end tag, rule [42].

   return Actions.On_Open_Of_End_Tag (Self);
}

--  Rule [14]
--
--    [^<&]* - ([^<&]* ']]>' [^<&]*)
--
--  rewritten as:
--
--    [^<&\]]* ((']' [^<&\]]+) | (']'{2,} [^<>&\]]+))* ']'*
--
--  with optional trailing context
--
--    "]]>" | '&' | '<'
--
--  Optional traling context is needed to find longest possible match and to
--  determine illegal literal ']]>' in character data.
--
--  Whitespace rule is separated to prevent from reporting before start of
--  root element and after close of root context. Inside document content
--  this rule cover sequence of ignorable whitespaces.

<DOCUMENT_10,DOCUMENT_11>{WHITE_SPACE}("<"|"&")? {
   --  Segment of whitespaces.

   if Actions.On_Whitespace_In_Document (Self) then
      return Token_String_Segment;
   end if;
}

<DOCUMENT_10>({CHAR10_NO_AMPERSAND_LESS_RIGHT_SQUARE}+("]"{CHAR10_NO_AMPERSAND_LESS_RIGHT_SQUARE}+|"]"{2,}{CHAR10_NO_AMPERSAND_LESS_GREATER_RIGHT_SQUARE}+)*"]"*("]]>"|"<"|"&")?)|(("]"{CHAR10_NO_AMPERSAND_LESS_RIGHT_SQUARE}+|"]"{2,}{CHAR10_NO_AMPERSAND_LESS_GREATER_RIGHT_SQUARE}+)+"]"*("]]>"|"<"|"&")?)|("]"+("]]>"|"<"|"&")?)|("]]>") {
   --  Segment of character data, rule [14].

   return Actions.On_Character_Data (Self);
}

<DOCUMENT_11>({CHAR11_NO_AMPERSAND_LESS_RIGHT_SQUARE}+("]"{CHAR11_NO_AMPERSAND_LESS_RIGHT_SQUARE}+|"]"{2,}{CHAR11_NO_AMPERSAND_LESS_GREATER_RIGHT_SQUARE}+)*"]"*("]]>"|"<"|"&")?)|(("]"{CHAR11_NO_AMPERSAND_LESS_RIGHT_SQUARE}+|"]"{2,}{CHAR11_NO_AMPERSAND_LESS_GREATER_RIGHT_SQUARE}+)+"]"*("]]>"|"<"|"&")?)|("]"+("]]>"|"<"|"&")?)|("]]>") {
   --  Segment of character data, rule [14].

   return Actions.On_Character_Data (Self);
}

<DOCUMENT_10>"<![CDATA["{CHAR10_NO_RIGHT_SQUARE}*"]"({CHAR10_NO_RIGHT_SQUARE}+"]")*"]"+({CHAR10_NO_GREATER_RIGHT_SQUARE}{CHAR10_NO_RIGHT_SQUARE}*"]"({CHAR10_NO_RIGHT_SQUARE}+"]")*"]"+)*">" {
   --  Segment of CDATA, rules [18], [19], [20], [21].

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal (9, 3),
     Is_Whitespace => False,
     Is_CData      => True);

   return Token_String_Segment;
}

<DOCUMENT_11>"<![CDATA["{CHAR11_NO_RIGHT_SQUARE}*"]"({CHAR11_NO_RIGHT_SQUARE}+"]")*"]"+({CHAR11_NO_GREATER_RIGHT_SQUARE}{CHAR11_NO_RIGHT_SQUARE}*"]"({CHAR11_NO_RIGHT_SQUARE}+"]")*"]"+)*">" {
   --  Segment of CDATA, rules [18], [19], [20], [21].

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal (9, 3),
     Is_Whitespace => False,
     Is_CData      => True);

   return Token_String_Segment;
}

<DOCUMENT_10,DOCUMENT_11>"&"{NAME}";" {
   --  General entity reference rule [68] in document content.

   if not Actions.On_General_Entity_Reference_In_Document_Content (Self) then
      --  Error is detected during handling, return error token to parser.

      return Error;
   end if;
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

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal (1, 1),
     Is_Whitespace => False,
     Is_CData      => False);
   Reset_Whitespace_Matched (Self);

   return Token_String_Segment;
}

<XML_DECL>"?>" {
   --  Close of XML declaration (production [23]) or text declaration
   --  (production [77]).

   return Actions.On_Close_Of_XML_Or_Text_Declaration (Self);
}

<PI,PI_DATA_10,PI_DATA_11>"?>" {
   --  Close of processing instruction (rule [16]).

   return Actions.On_Close_Of_Processing_Instruction (Self, True);
}

<PI>{WHITE_SPACE} {
   --  Ignore all whitespaces is followed by processing insturction's name,
   --  rule [16].

   Actions.On_Whitespace_In_Processing_Instruction (Self);
}

<PI_DATA_10>{CHAR10_NO_QUESTION}*"?"+({CHAR10_NO_GREATER_QUESTION}{CHAR10_NO_QUESTION}*"?"+)*">" {
   --  Segment of data and close delimiter of the processing instruction, rule
   --  [16].

   return Actions.On_Close_Of_Processing_Instruction (Self, False);
}

<PI_DATA_11>{CHAR11_NO_QUESTION}*"?"+({CHAR11_NO_GREATER_QUESTION}{CHAR11_NO_QUESTION}*"?"+)*">" {
   --  Segment of data and close delimiter of the processing instruction, rule
   --  [16].

   return Actions.On_Close_Of_Processing_Instruction (Self, False);
}

<DOCTYPE_EXTINT>"SYSTEM" {
   --  Keyword SYSTEM, rule [75].

   Reset_Whitespace_Matched (Self);
   Push_And_Enter_Start_Condition (Self, DOCTYPE_INT, EXTERNAL_ID_SYS);

   return Token_System;
}

<EXTERNAL_ID_SYS>\"[^"]*\"|\'[^']*\' {
   --  System literal, rule [11], used in rule [75].

   return Actions.On_System_Literal (Self);
}

<EXTERNAL_ID_SYS>">" {
   --  Productions [82], [83] allows absence of system literal in
   --  notation declaration.

   Pop_Start_Condition (Self);

   if Start_Condition (Self) = NOTATION_DECL then
      Pop_Start_Condition (Self);
   end if;

   return Token_Close;
}

<DOCTYPE_EXTINT>"PUBLIC" {
   --  Keyword PUBLIC, rule [75].

   Reset_Whitespace_Matched (Self);
   Push_And_Enter_Start_Condition (Self, DOCTYPE_INT, EXTERNAL_ID_PUB);

   return Token_Public;
}

<EXTERNAL_ID_PUB>\"{PUBID_CHAR}*\"|\'{PUBID_CHAR_NO_APOSTROPHE}*\' {
   --  Public id literal, rule [12], used in rule [75].

   return Actions.On_Public_Literal (Self);
}

<DOCTYPE_EXTINT,DOCTYPE_INT>"[" {
   --  Open of internal subset declaration, rule [28].

   return Actions.On_Open_Of_Internal_Subset (Self);
}

<DOCTYPE_INTSUBSET_10,DOCTYPE_INTSUBSET_11>"]" {
   --  Close of internal subset declaration, rule [28].

   Enter_Start_Condition (Self, DOCTYPE_INT);

   return Token_Internal_Subset_Close;
}

<DOCUMENT_10,DOCTYPE_INTSUBSET_10>"<!--"({CHAR10_NO_HYPHEN}|-{CHAR10_NO_HYPHEN})*"-->" {
   --  Text of comment, rule [15].

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal (4, 3),
     Is_Whitespace => False,
     Is_CData      => False);

   return Token_Comment;
}

<DOCUMENT_11,DOCTYPE_INTSUBSET_11>"<!--"({CHAR11_NO_HYPHEN}|-{CHAR11_NO_HYPHEN})*"-->" {
   --  Text of comment, rule [15].

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal (4, 3),
     Is_Whitespace => False,
     Is_CData      => False);

   return Token_Comment;
}

<DOCTYPE_INTSUBSET_10,DOCTYPE_INTSUBSET_11>"%"{NAME}";" {
   --  Parameter entity reference rule [69] in document type declaration.

   if not Actions.On_Parameter_Entity_Reference_In_Document_Declaration (Self) then
      return Error;
   end if;
}

<DOCTYPE_INTSUBSET_10,DOCTYPE_INTSUBSET_11>"<!ENTITY" {
   --  Open of entity declaration, rules [71], [72].

   Enter_Start_Condition (Self, ENTITY_DECL);
   Reset_Whitespace_Matched (Self);

   return Token_Entity_Decl_Open;
}

<DOCTYPE_INTSUBSET_10,DOCTYPE_INTSUBSET_11>"<!ELEMENT"{WHITE_SPACE}{NAME} {
   --  Open of element declaration and name of the element, rule [45].

   return Actions.On_Open_Of_Element_Declaration (Self);
}

<DOCTYPE_INTSUBSET_10,DOCTYPE_INTSUBSET_11>"<!ATTLIST" {
   --  Open of attribute list declaration, rule [52].

   return Actions.On_Open_Of_Attribute_List_Declaration (Self);
}

<DOCTYPE_INTSUBSET_10,DOCTYPE_INTSUBSET_11>"<!NOTATION"{WHITE_SPACE}{NAME} {
   --  Open of notation declaration, production [82].

   return Actions.On_Open_Of_Notation_Declaration (Self);
}

<DOCTYPE_INTSUBSET_10,DOCTYPE_INTSUBSET_11,CONDITIONAL_IGNORE_10,CONDITIONAL_IGNORE_11>"<![" {
   --  Start of conditional section.

   Actions.On_Open_Of_Conditional_Section (Self);
}

<DOCTYPE_INTSUBSET_10,DOCTYPE_INTSUBSET_11,CONDITIONAL_IGNORE_10,CONDITIONAL_IGNORE_11>"]]>" {
   --  Close of conditional section.

   Actions.On_Close_Of_Conditional_Section (Self);
}

<NOTATION_DECL>">" {
   --  Close of notation declaration, production [82].

   Pop_Start_Condition (Self);

   return Token_Close;
}

<ENTITY_DECL>{NAME} {
   --  Name in entity declaration, rules [71], [72].

   return Actions.On_Name_In_Entity_Declaration (Self);
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

<ENTITY_DEF>["'] {
   --  Entity value, rule [9].

   return Actions.On_Entity_Value_Open_Delimiter (Self);
}

<ENTITY_DEF,NOTATION_DECL>"SYSTEM" {
   --  Entity value as ExternalID, rule [75], used by rules [73], [74].

   Reset_Whitespace_Matched (Self);
   Push_Current_And_Enter_Start_Condition (Self, EXTERNAL_ID_SYS);

   return Token_System;
}

<ENTITY_DEF,NOTATION_DECL>"PUBLIC" {
   --  Entity value as ExternalID, rule [75], used by rules [73], [74].
   --  Notation as ExternalID or Public_ID (productions [75], [82], [83]).

   Reset_Whitespace_Matched (Self);
   Push_Current_And_Enter_Start_Condition (Self, EXTERNAL_ID_PUB);

   return Token_Public;
}

<ENTITY_DEF>"NDATA" {
   --  NDATA keyword, rule [76].

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error with "no whitespace before NDATA";
      --  XXX This is recoverable error.
   end if;

   Reset_Whitespace_Matched (Self);
   Enter_Start_Condition (Self, ENTITY_NDATA);

   return Token_NData;
}

<ENTITY_NDATA>{NAME} {
   --  Name of NDATA, rule [76].

   return Actions.On_Name_In_Entity_Declaration_Notation (Self);
}

<ENTITY_VALUE_10>{CHAR10_NO_QUOTATION_PERCENT_AMPERSAND_APOSTROPHE}+ {
   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal,
     Is_Whitespace => False,
     Is_CData      => False);

   return Token_String_Segment;
}

<ENTITY_VALUE_11>{CHAR11_NO_QUOTATION_PERCENT_AMPERSAND_APOSTROPHE}+ {
   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal,
     Is_Whitespace => False,
     Is_CData      => False);

   return Token_String_Segment;
}

<ENTITY_VALUE_10,ENTITY_VALUE_11>["'] {
   --  Close of entity value, rule [9].

   return Process_Entity_Value_Close_Delimiter (Self, YY_Text);
}

<DOCUMENT_10,DOCUMENT_11,ENTITY_VALUE_10,ENTITY_VALUE_11>"&#"[0-9]+";" {
   --  Decimal form of character reference rule [66] in entity value rule [9];
   --  or content of element, rule [43].

   return Actions.On_Character_Reference (Self, False);
}

<ATTRIBUTE_VALUE_10,ATTRIBUTE_VALUE_11>"&#"[0-9]+";" {
   --  Decimal form of character reference rule [66] in attribute value,
   --  rule [10].

   if not Actions.On_Character_Reference_In_Attribute_Value
           (Self, False)
   then
      return Error;
   end if;
}

<DOCUMENT_10,DOCUMENT_11,ENTITY_VALUE_10,ENTITY_VALUE_11>"&#x"[0-9a-fA-F]+";" {
   --  Hexadecimal form of character reference rule [66] in entity value rule
   --  [9] or content of element, rule [43].

   return Actions.On_Character_Reference (Self, True);
}

<ATTRIBUTE_VALUE_10,ATTRIBUTE_VALUE_11>"&#x"[0-9a-fA-F]+";" {
   --  Hexadecimal form of character reference rule [66] in attribute value,
   --  rule [10].

   if not Actions.On_Character_Reference_In_Attribute_Value
           (Self, True)
   then
      return Error;
   end if;
}

<ENTITY_VALUE_10,ENTITY_VALUE_11>"&"{NAME}";" {
   --  General entity reference rule [68] in entity value rule [9].

   return Actions.On_General_Entity_Reference_In_Entity_Value (Self);
}

<ENTITY_VALUE_10,ENTITY_VALUE_11>"%"{NAME}";" {
   --  Parameter entity reference rule [69] in entity value rule [9].
   --
   --  Processing of parameter entity uses separate scanner's state, thus
   --  after processing current state is restored automatically. This allows
   --  to reuse code for three modes: parsing of entity value delimited by
   --  quotation; parsing of entity value delimited by apostrophe; and
   --  parsing of parameter entity replacement text when it is referenced
   --  in any of two form of entity value.

   if not Actions.On_Parameter_Entity_Reference_In_Entity_Value (Self) then
      return Error;
   end if;
}

<ELEMENT_DECL>EMPTY {
   --  EMPTY keyword, rule [46].

   return Token_Empty;
}

<ELEMENT_DECL>ANY {
   --  ANY keyword, rule [46].

   return Token_Any;
}

<ELEMENT_DECL,ELEMENT_CHILDREN>"(" {
   --  Open parenthesis, rules [49], [50], [51].

   Enter_Start_Condition (Self, ELEMENT_CHILDREN);

   return Token_Open_Parenthesis;
}

<ELEMENT_CHILDREN>")" {
   --  Close parenthesis, rules [49], [50], [51].

   return Token_Close_Parenthesis;
}

<ELEMENT_CHILDREN>"?" {
   --  Question mark in rules [47], [48].

   return Token_Question;
}
   
<ELEMENT_CHILDREN>"*" {
   --  Asterisk in rules [47], [48].

   return Token_Asterisk;
}
   
<ELEMENT_CHILDREN>"+" {
   --  Plus sign in rules [47], [48].

   return Token_Plus;
}

<ELEMENT_CHILDREN>"|" {
   --  Vertical bar in rule [49].

   return Token_Vertical_Bar;
}

<ELEMENT_CHILDREN>"," {
   --  Comma in rule [50].

   return Token_Comma;
}

<ELEMENT_CHILDREN>"#PCDATA" {
   --  #PCDATA in rule [51].

   return Token_PCData;
}

<ELEMENT_CHILDREN>{NAME} {
   --  Name in element's children declaration, rules [48], [51].

   return Actions.On_Name_In_Element_Declaration_Children (Self);
}

<ELEMENT_DECL,ELEMENT_CHILDREN,ATTLIST_DECL,ATTLIST_TYPE,ENTITY_DEF>">" {
   --  Close token of entity declaration, rules [71], [72].
   --  Close of element declaration, rule [45].
   --  Close of attribute list declaration, rule [52].

   return Actions.On_Close_Of_Declaration (Self);
}

<ATTLIST_NAME>{NAME} {
   --  Element's name in attribute list declaration, rule [52].

   return Actions.On_Element_Name_In_Attribute_List_Declaration (Self);
}

<ATTLIST_DECL>{NAME} {
   --  Name of the attribute, rule [53].

   return Actions.On_Name_In_Attribute_List_Declaration (Self);
}

<ATTLIST_TYPE>"CDATA" {
   --  CDATA keyword, rule [55].

   return Token_CData;
}

<ATTLIST_TYPE>"ID" {
   --  ID keyword, rule [56].

   return Token_Id;
}

<ATTLIST_TYPE>"IDREF" {
   --  IDREF keyword, rule [56].

   return Token_IdRef;
}

<ATTLIST_TYPE>"IDREFS" {
   --  IDREFS keyword, rule [56].

   return Token_IdRefs;
}

<ATTLIST_TYPE>"ENTITY" {
   --  ENTITY keyword, rule [56].

   return Token_Entity;
}

<ATTLIST_TYPE>"ENTITIES" {
   --  ENTITIES keyword, rule [56].

   return Token_Entities;
}

<ATTLIST_TYPE>"NMTOKEN" {
   --  NMTOKEN keyword, rule [56].

   return Token_NmToken;
}

<ATTLIST_TYPE>"NMTOKENS" {
   --  NMTOKENS keyword, rule [56].

   return Token_NmTokens;
}

<ATTLIST_TYPE>"NOTATION" {
   --  NOTATION keyword, rule [58].

   return Token_Notation;
}

<ATTLIST_TYPE>"#REQUIRED" {
   --  #REQUIRED keyword, rule [60].

   Enter_Start_Condition (Self, ATTLIST_DECL);

   return Token_Required;
}

<ATTLIST_TYPE>"#IMPLIED" {
   --  #IMPLIED keyword, rule [60].

   Enter_Start_Condition (Self, ATTLIST_DECL);

   return Token_Implied;
}

<ATTLIST_TYPE>"#FIXED" {
   --  #FIXED keyword, rule [60].

   return Token_Fixed;
}

<ATTLIST_TYPE>"(" {
   --  Open parenthesis, rules [58], [59].

   return Token_Open_Parenthesis;
}

<ATTLIST_TYPE>")" {
   --  Close parenthesis, rules [58], [59].

   return Token_Close_Parenthesis;
}

<ATTLIST_TYPE>"|" {
   --  Vertical bar, rules [58], [59].

   return Token_Vertical_Bar;
}

<ATTLIST_TYPE>{NAME} {
   --  Name in the rule [58].

   return Actions.On_Name_In_Attribute_List_Declaration_Notation (Self);
}

<ATTLIST_TYPE>{NMTOKEN} {
   --  Nmtoken in the rule [59].

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal,
     Is_Whitespace => False,
     Is_CData      => False);
   --  XXX Need to add flag to mark Nmtoken.

   return Token_Name;
}

<ATTLIST_TYPE>['"] {
   --  Open delimiter of attribute value, rule [10].

   Actions.On_Attribute_Value_Open_Delimiter (Self, ATTLIST_DECL);
}

<ATTLIST_DECL,ATTLIST_NAME,ATTLIST_TYPE,ELEMENT_DECL,ELEMENT_CHILDREN,CONDITIONAL_DIRECTIVE>"%"{NAME}";" {
   --  Parameter entity reference rule [69] in attribute declaration.
   --  Parameter entity reference in element's children declaration, [51].

   if not Actions.On_Parameter_Entity_Reference_In_Markup_Declaration (Self) then
      return Error;
   end if;
}

<DOCTYPE_EXTINT,DOCTYPE_INT,DOCTYPE_INTSUBSET_10,DOCTYPE_INTSUBSET_11,ELEMENT_DECL,ELEMENT_CHILDREN,ATTLIST_DECL,ATTLIST_TYPE,CONDITIONAL_DIRECTIVE>{WHITE_SPACE} {
   --  All white spaces from rules [28] are ignored.
   --  Whitespace before name in rule [76] is ignored.

   null;
}

<CONDITIONAL_DIRECTIVE>"IGNORE" {
   --  IGNORE directive of the conditional section.

   Actions.On_Conditional_Section_Directive (Self, False);
}

<CONDITIONAL_DIRECTIVE>"INCLUDE" {
   --  INCLUDE directive of the conditional section.

   Actions.On_Conditional_Section_Directive (Self, True);
}

<CONDITIONAL_DIRECTIVE>"[" {
   --  Start of content of conditional section.

   Actions.On_Open_Of_Conditional_Section_Content (Self);
}

<CONDITIONAL_IGNORE_10>({CHAR10_NO_LESS}*("<"{CHAR10_NO_EXCLAMATION}|"<!"{CHAR10_NO_LEFT_SQUARE})*"<![")|({CHAR10_NO_RIGHT_SQUARE}*"]"({CHAR10_NO_RIGHT_SQUARE}+"]")*"]"+({CHAR10_NO_GREATER_RIGHT_SQUARE}{CHAR10_NO_RIGHT_SQUARE}*"]"({CHAR10_NO_RIGHT_SQUARE}+"]")*"]"+)*">") {
   --  Content of ignore conditional section. It ends with "]]>" or "<!["
   --  which must be moved back to the buffer to be recognized at the next
   --  cycle.

   Actions.On_Content_Of_Ignore_Conditional_Section (Self);
}

<CONDITIONAL_IGNORE_11>({CHAR11_NO_LESS}*("<"{CHAR11_NO_EXCLAMATION}|"<!"{CHAR11_NO_LEFT_SQUARE})*"<![")|({CHAR11_NO_RIGHT_SQUARE}*"]"({CHAR11_NO_RIGHT_SQUARE}+"]")*"]"+({CHAR11_NO_GREATER_RIGHT_SQUARE}{CHAR11_NO_RIGHT_SQUARE}*"]"({CHAR11_NO_RIGHT_SQUARE}+"]")*"]"+)*">") {
   --  Content of ignore conditional section. It ends with "]]>" or "<!["
   --  which must be moved back to the buffer to be recognized at the next
   --  cycle.

   Actions.On_Content_Of_Ignore_Conditional_Section (Self);
}

<XML_DECL,EXTERNAL_ID_PUB,EXTERNAL_ID_SYS,ENTITY_DECL,ENTITY_DEF,ENTITY_NDATA,NOTATION_DECL,ELEMENT_START,ATTLIST_NAME>{WHITE_SPACE} {
   --  White spaces in entity declaration are not optional, rules [71], [72],
   --  [75], [76].
   --
   --  White spaces in start tag, rule [40], are ignored, but white space
   --  between attribute value and name of the next attribute are must be
   --  present.
   --
   --  All white spaces from rules [23], [24], [25], [32], [80], [82] are
   --  ignored, but white space between attribute value and name of the
   --  next attribute are must be present.

   Set_Whitespace_Matched (Self);
}

<ELEMENT_START>{NAME} {
   --  Name of the attribute, rule [41].

   return Actions.On_Name_In_Element_Start_Tag (Self);
}

<XML_DECL,ELEMENT_START>"=" {
   --  Equal sign as attribute's name value delimiter, rule [25] in rules [41],
   --  [24], [32], [80].

   return Token_Equal;
}

<ELEMENT_START>"/>" {
   --  Close of empty element tag, rule [44].

   return Actions.On_Close_Of_Empty_Element_Tag (Self);
}

<DOCTYPE_EXTINT,DOCTYPE_INT>">" {
   --  Close tag of document type declaration, rule [28].

   if Actions.On_Close_Of_Document_Type_Declaration (Self) then
      return Token_Close;
   end if;
}

<ELEMENT_START>">" {
   --  Close of tag, rule [40].
   --  Close tag of document type declaration, rule [28].

   return Actions.On_Close_Of_Tag (Self);
}

<ELEMENT_START>['"] {
   --  Open delimiter of attribute value, rule [10].

   Actions.On_Attribute_Value_Open_Delimiter (Self, ELEMENT_START);
}

<ATTRIBUTE_VALUE_10,ATTRIBUTE_VALUE_11>['"] {
   --  Close delimiter of attribute value, rule [10].

   if Actions.On_Attribute_Value_Close_Delimiter (Self) then
      return Token_String_Segment;
   end if;
}

<ATTRIBUTE_VALUE_10>{CHAR10_NO_QUOTATION_AMPERSAND_APOSTROPHE_LESS}+ {
   --  Value of attribute, rule [10].

   Actions.On_Attribute_Value_Character_Data (Self);
}

<ATTRIBUTE_VALUE_11>{CHAR11_NO_QUOTATION_AMPERSAND_APOSTROPHE_LESS}+ {
   --  Value of attribute, rule [10].

   Actions.On_Attribute_Value_Character_Data (Self);
}

<ATTRIBUTE_VALUE_10,ATTRIBUTE_VALUE_11>"<" {
   --  Less-than sign can't be used in the attribute value.

   return Actions.On_Less_Than_Sign_In_Attribute_Value (Self);
}

<ATTRIBUTE_VALUE_10,ATTRIBUTE_VALUE_11>"&"{NAME}";" {
   --  General entity reference rule [68] in attribute value, rule [10].

   if not Actions.On_General_Entity_Reference_In_Attribute_Value (Self) then
      return Error;
   end if;
}

<XML_DECL>. {
   raise Program_Error with "Unexpected character in XML_DECL";
}

<DOCTYPE_INT>. {
   raise Program_Error with "Unexpected character in DOCTYPE_INT";
}

<ENTITY_DECL>. {
   raise Program_Error with "Unexpected character in ENTITY_DECL";
}

<ENTITY_NDATA>. {
   raise Program_Error with "Unexpected character in ENTITY_NDATA";
}

<ATTLIST_DECL>. {
   Put_Line (YY_Text);
   raise Program_Error with "Unexpected character in ATTLIST_DECL";
}

<EXTERNAL_ID_PUB>. {
   raise Program_Error with "Unexpected character in pubid literal";
}

<EXTERNAL_ID_SYS>. {
   raise Program_Error with "Unexpected character in system literal";
}

<NOTATION_DECL>. {
   raise Program_Error with "Unexpected character in NOTATION_DECL";
}

<ATTLIST_TYPE,DOCUMENT_10,DOCUMENT_11,DOCTYPE_INTSUBSET_10,DOCTYPE_EXTINT,DOCTYPE_INTSUBSET_11,ENTITY_DEF,ELEMENT_START,PI,PI_DATA_10,PI_DATA_11,ATTRIBUTE_VALUE_10,ATTRIBUTE_VALUE_11,ELEMENT_CHILDREN>.|\n {
   --  Unexpected character.

   return Actions.On_Unexpected_Character (Self);
}

%%
with Xml_Parser_Tokens;
##
   function YYLex return Xml_Parser_Tokens.Token;
##
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Wide_Wide_Text_IO;
with League.Strings;
with Matreshka.Internals.XML.Symbol_Tables;
with Matreshka.Internals.Strings;
##
   use Xml_Parser_Tokens;

   procedure Enter_Start_Condition
    (Self : access Integer; State : Integer) is separate;

   procedure Push_Current_And_Enter_Start_Condition
    (Self  : access Integer; Enter : Integer) is separate;

   procedure Push_And_Enter_Start_Condition
    (Self : access Integer; Push : Integer; Set : Integer) is separate;

   procedure Push_Start_Condition
    (Self : access Integer; State : Integer) is separate;

   procedure Pop_Start_Condition (Self : access Integer) is separate;

   function Start_Condition (Self : access Integer) return Integer is separate;

   procedure Set_Whitespace_Matched (Self : access Integer) is separate;

   function Get_Whitespace_Matched
    (Self : access Integer) return Boolean is separate;

   procedure Reset_Whitespace_Matched (Self : access Integer) is separate;

   function YY_Text
    (Trim_Left       : Natural := 0;
     Trim_Right      : Natural := 0;
     Trim_Whitespace : Boolean := False)
       return League.Strings.Universal_String is separate;

   function YY_Text_Internal
    (Trim_Left       : Natural := 0;
     Trim_Right      : Natural := 0;
     Trim_Whitespace : Boolean := False)
       return Matreshka.Internals.Strings.Shared_String_Access is separate;

   Self     : access Integer;
   YYLVal   : YYSType;
   Put_Line : access procedure (Item : League.Strings.Universal_String);

   procedure Process_General_Entity_Reference_In_Attribute_Value
    (Self   : access Integer;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier)
       is separate;

   function Process_Entity_Value_Close_Delimiter
    (Self  : access Integer;
     Image : League.Strings.Universal_String) return Token is separate;

   procedure Set_String_Internal
    (Item          : in out YYSType;
     String        : Matreshka.Internals.Strings.Shared_String_Access;
     Is_Whitespace : Boolean;
     Is_CData      : Boolean) is separate;

   package Actions is

      procedure On_No_XML_Declaration (Self : access Integer);

      procedure On_Whitespace_In_Processing_Instruction (Self : access Integer);

      function On_Unexpected_Character (Self : access Integer) return Token;

      function On_Less_Than_Sign_In_Attribute_Value
       (Self : access Integer) return Token;

      function On_Character_Data (Self : access Integer) return Token;

      function On_Whitespace_In_Document
       (Self : access Integer) return Boolean;

      function On_Open_Of_Internal_Subset (Self : access Integer) return Token;

      function On_Close_Of_Declaration (Self : access Integer) return Token;

      function On_Open_Of_End_Tag (Self : access Integer) return Token;

      function On_Open_Of_Start_Tag (Self : access Integer) return Token;

      function On_Close_Of_Tag (Self : access Integer) return Token;

      function On_Close_Of_Empty_Element_Tag (Self : access Integer) return Token;

      function On_Open_Of_XML_Or_Text_Declaration
       (Self : access Integer) return Token;

      function On_Open_Of_Processing_Instruction
       (Self : access Integer) return Token;

      function On_Close_Of_Processing_Instruction
       (Self     : access Integer;
        Is_Empty : Boolean) return Token;

      function On_Close_Of_XML_Or_Text_Declaration
       (Self : access Integer) return Token;

      function On_Open_Of_Document_Type_Declaration
       (Self : access Integer) return Token;

      function On_General_Entity_Reference_In_Attribute_Value
       (Self : access Integer) return Boolean;

      function On_General_Entity_Reference_In_Document_Content
       (Self : access Integer) return Boolean;

      function On_General_Entity_Reference_In_Entity_Value
       (Self : access Integer) return Token;

      function On_Parameter_Entity_Reference_In_Entity_Value
       (Self : access Integer) return Boolean;

      function On_Parameter_Entity_Reference_In_Markup_Declaration
       (Self : access Integer) return Boolean;

      function On_Parameter_Entity_Reference_In_Document_Declaration
       (Self : access Integer) return Boolean;

      function On_Open_Of_Element_Declaration
       (Self : access Integer) return Token;

      function On_Open_Of_Attribute_List_Declaration
       (Self : access Integer) return Token;

      function On_Element_Name_In_Attribute_List_Declaration
       (Self : access Integer) return Token;

      function On_Open_Of_Notation_Declaration
       (Self : access Integer) return Token;

      function On_Name_In_Attribute_List_Declaration
       (Self : access Integer) return Token;

      function On_Name_In_Element_Declaration_Children
       (Self : access Integer) return Token;

      function On_Name_In_Element_Start_Tag
       (Self : access Integer) return Token;

      function On_Name_In_Entity_Declaration
       (Self : access Integer) return Token;

      function On_Name_In_Entity_Declaration_Notation
       (Self : access Integer) return Token;

      function On_Name_In_Attribute_List_Declaration_Notation
       (Self : access Integer) return Token;

      function On_Public_Literal (Self : access Integer) return Token;

      function On_System_Literal (Self : access Integer) return Token;

      function On_Entity_Value_Open_Delimiter
       (Self : access Integer) return Token;

      function On_Character_Reference
       (Self : access Integer;
        Hax  : Boolean) return Token;

      function On_Character_Reference_In_Attribute_Value
       (Self : access Integer;
        Hex  : Boolean) return Boolean;

      procedure On_Attribute_Value_Character_Data (Self : access Integer);

      procedure On_Attribute_Value_Open_Delimiter
       (Self  : access Integer;
        State : Integer);

      function On_Attribute_Value_Close_Delimiter
       (Self  : access Integer) return Boolean;

      function On_Close_Of_Document_Type_Declaration
       (Self  : access Integer) return Boolean;

      procedure On_Open_Of_Conditional_Section (Self : access Integer);

      procedure On_Conditional_Section_Directive
       (Self    : access Integer;
        Include : Boolean);

      procedure On_Open_Of_Conditional_Section_Content (Self : access Integer);

      procedure On_Close_Of_Conditional_Section (Self : access Integer);

      procedure On_Content_Of_Ignore_Conditional_Section (Self : access Integer);

   end Actions;

   package body Actions is separate;
