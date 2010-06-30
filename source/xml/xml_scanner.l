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

--
--  Special subranges of Char.
--
--  NOTE: Negative sets with smaller number of characters improves aflex
--  performance and memory requirements extremely.
--
--  [^%&]
CHAR_NO_PERCENT_AMPERSAND			[^\u0025\u0026\uD800-\uDFFF\uFFFE\uFFFF]
--  [^"%&']
CHAR_NO_QUOTATION_PERCENT_AMPERSAND_APOSTROPHE	[^\u0022\u0025\u0026\u0027\uD800-\uDFFF\uFFFE\uFFFF]
--  [^"&'<]
CHAR_NO_QUOTATION_AMPERSAND_APOSTROPHE_LESS	[^\u0022\u0026\u0027\u003C\uD800-\uDFFF\uFFFE\uFFFF]
--  (Char - '-') for comment, rule [15].
CHAR_NO_HYPHEN					[^\u002D\uD800-\uDFFF\uFFFE\uFFFF]
--  [^<&] for CharDara, rule [14].
CHAR_NO_AMPERSAND_LESS				[^\u0026\u003C\uD800-\uDFFF\uFFFE\uFFFF]
--  [^<&[]
CHAR_NO_AMPERSAND_LESS_RIGHT_SQUARE		[^\u0026\u003C\u005D\uD800-\uDFFF\uFFFE\uFFFF]
--  [^<>&[]
CHAR_NO_AMPERSAND_LESS_GREATER_RIGHT_SQUARE	[^\u0026\u003C\u003E\u005D\uD800-\uDFFF\uFFFE\uFFFF]
--  [^[], for CData, rule [20].
CHAR_NO_RIGHT_SQUARE				[^\u005D\uD800-\uDFFF\uFFFE\uFFFF]
--  [^>]]
CHAR_NO_GREATER_RIGHT_SQUARE			[^\u003E\u005D\uD800\uDFFF\uFFFE\uFFFF]
--  [^?], for PI, rule [16].
CHAR_NO_QUESTION				[^\u003F\uD800-\uDFFF\uFFFE\uFFFF]
--  [^>?]
CHAR_NO_GREATER_QUESTION			[^\u003E\u003F\uD800-\uDFFF\uFFFE\uFFFF]

XMLDECL_ATTRIBUTE_CHAR [A-Za-z0-9._-]
--  Synthetic set of character. XMLDECL_ATTRIBUTE_CHAR is a union of characters
--  allowed by [26] VersionNum, [81] EncName, [32] SDDecl.

%x XML_DECL
%x PI
%x PI_DATA
%x DOCTYPE_EXTINT
%x DOCTYPE_INT
%x DOCTYPE_INTSUBSET
%x ELEMENT_DECL
%x ELEMENT_CHILDREN
%x ATTLIST_DECL
%x ATTLIST_TYPE
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
   --  Open of XML declaration or text declaration, rules [23], [77].

   return Process_XML_PI (Self);
}

"<?"{NAME} {
   --  Open of processing instruction, rule [16]. Rule [17] is implemented
   --  implicitly by ordering of open of XMLDecl and open of PI.

   Resolve_Symbol (Self, 2, 0, False, YYLVal);
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

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal (1, 1),
     Is_Whitespace => False,
     Is_CData      => False);
   Reset_Whitespace_Matched (Self);

   return Token_String_Segment;
}

<XML_DECL,PI,PI_DATA>"?>" {
   Enter_Start_Condition (Self, INITIAL);

   Set_String_Internal
    (Item          => YYLVal,
     String        => Matreshka.Internals.Strings.Shared_Empty'Access,
     Is_Whitespace => False,
     Is_CData      => False);

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

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal (0, 2),
     Is_Whitespace => False,
     Is_CData      => False);
   Enter_Start_Condition (Self, INITIAL);

   return Token_PI_Close;
}

"<!DOCTYPE"{WHITE_SPACE}{NAME} {
   --  Open tag of document type declaration and name of root element,
   --  rule [28].

   Enter_Start_Condition (Self, DOCTYPE_EXTINT);
   Resolve_Symbol (Self, 10, 0, True, YYLVal);

   return Token_Doctype_Decl_Open;
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
   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal (1, 1),
     Is_Whitespace => False,
     Is_CData      => False);

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
   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal (1, 1),
     Is_Whitespace => False,
     Is_CData      => False);

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

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal (4, 3),
     Is_Whitespace => False,
     Is_CData      => False);

   return Token_Comment;
}

<DOCTYPE_INTSUBSET>"<!ENTITY" {
   --  Open of entity declaration, rules [71], [72].

   Enter_Start_Condition (Self, ENTITY_DECL);
   Reset_Whitespace_Matched (Self);

   return Token_Entity_Decl_Open;
}

<DOCTYPE_INTSUBSET>"<!ELEMENT"{WHITE_SPACE}{NAME} {
   --  Open of element declaration and name of the element, rule [45].

   Enter_Start_Condition (Self, ELEMENT_DECL);
   Resolve_Symbol (Self, 10, 0, True, YYLVal);

   return Token_Element_Decl_Open;
}

<DOCTYPE_INTSUBSET>"<!ATTLIST"{WHITE_SPACE}{NAME} {
   --  Open of attribute list declaration, rule [52].

   Enter_Start_Condition (Self, ATTLIST_DECL);
   Resolve_Symbol (Self, 10, 0, True, YYLVal);

   return Token_Attlist_Decl_Open;
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
   Resolve_Symbol (Self, 0, 0, False, YYLVal);

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
   Resolve_Symbol (Self, 0, 0, False, YYLVal);

   return Token_Name;
}

<ENTITY_VALUE>{CHAR_NO_QUOTATION_PERCENT_AMPERSAND_APOSTROPHE}+ {
   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal,
     Is_Whitespace => False,
     Is_CData      => False);

   return Token_String_Segment;
}

<ENTITY_VALUE>["'] {
   --  Close of entity value, rule [9].

   return Process_Entity_Value_Close_Delimiter (Self, YY_Text);
}

<INITIAL,ENTITY_VALUE,ATTRIBUTE_VALUE>"&#"[0-9]+";" {
   --  Decimal form of character reference rule [66] in entity value rule [9];
   --  attribute value, rule [10] or content of element, rule [43].

   return Process_Character_Reference (Self, Decimal);
}

<INITIAL,ENTITY_VALUE,ATTRIBUTE_VALUE>"&#x"[0-9a-fA-F]+";" {
   --  Hexadecimal form of character reference rule [66] in entity value rule
   --  [9]; attribute value, rule [10] or content of element, rule [43].

   return Process_Character_Reference (Self, Hexadecimal);
}

<ENTITY_VALUE>"&"{NAME}";" {
   --  General entity reference rule [68] in entity value rule [9].

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal,
     Is_Whitespace => False,
     Is_CData      => False);

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

   Resolve_Symbol (Self, 0, 0, False, YYLVal);

   return Token_Name;
}

<ELEMENT_DECL,ELEMENT_CHILDREN,ATTLIST_DECL,ATTLIST_TYPE>">" {
   --  Close of element declaration, rule [45].
   --  Close of attribute list declaration, rule [52].

   Enter_Start_Condition (Self, DOCTYPE_INTSUBSET);

   return Token_Close;
}

<ATTLIST_DECL>{NAME} {
   --  Name of the attribute, rule [53].

   Resolve_Symbol (Self, 0, 0, False, YYLVal);
   Enter_Start_Condition (Self, ATTLIST_TYPE);

   return Token_Name;
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

   Resolve_Symbol (Self, 0, 0, False, YYLVal);

   return Token_Name;
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

   return Process_Attribute_Value_Open_Delimiter (Self, ATTLIST_DECL);
}

<DOCTYPE_EXTINT,DOCTYPE_INT,DOCTYPE_INTSUBSET,ENTITY_NDATA,ELEMENT_DECL,ELEMENT_CHILDREN,ATTLIST_DECL,ATTLIST_TYPE>{WHITE_SPACE} {
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

   Resolve_Symbol (Self, 1, 0, False, YYLVal);
   Enter_Start_Condition (Self, ELEMENT_START);

   return Token_Element_Open;
}

"</"{NAME} {
   --  Open of and tag, rule [42].

   Resolve_Symbol (Self, 2, 0, False, YYLVal);
   Enter_Start_Condition (Self, ELEMENT_START);

   return Token_End_Open;
}

<ELEMENT_START>{NAME} {
   --  Name of the attribute, rule [41].

   if not Get_Whitespace_Matched (Self) then
      raise Program_Error with "Whitespace is missing before attribute name";
      --  XXX It is recoverable error.
   end if;

   Resolve_Symbol (Self, 0, 0, False, YYLVal);

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

   return Process_Attribute_Value_Open_Delimiter (Self, ELEMENT_START);
}

<ELEMENT_START>. {
   --  Unexpected character in element start tag.

   return Actions.On_Unexpected_Character_In_Element_Start_Tag (Self);
}

<ATTRIBUTE_VALUE>['"] {
   --  Close delimiter of attribute value, rule [10].

   return Process_Attribute_Value_Close_Delimiter (Self);
}

<ATTRIBUTE_VALUE>{CHAR_NO_QUOTATION_AMPERSAND_APOSTROPHE_LESS}+ {
   --  Value of attribute, rule [10].

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal,
     Is_Whitespace => False,
     Is_CData      => False);

   return Token_String_Segment;
}

<ATTRIBUTE_VALUE>"<" {
   --  Less-than sign can't be used in the attribute value.
   --
   --  [3.1 WFC: No < in Attribute Values]
   --
   --  "The replacement text of any entity referred to directly or indirectly
   --  in an attribute value MUST NOT contain a <."

   raise Program_Error
     with "[3.1 WFC: No < in Attribute Values] '<' can't be used in attribute value";
   --  Fatal Error
}

<ATTRIBUTE_VALUE>"&"{NAME}";" {
   --  General entity reference rule [68] in attribute value, rule [10].

   Resolve_Symbol (Self, 1, 1, False, YYLVal);
   Process_General_Entity_Reference_In_Attribute_Value (Self, YYLVal.Symbol);
}

<ATTRIBUTE_VALUE>. {
   Put_Line (YY_Text);
   raise Program_Error with "Unexpected character in ATTRIBUTE_VALUE";
}

{WHITE_SPACE} {
   --  Segment of whitespaces.

   if Process_Whitespace (Self, YY_Text_Internal) then
      return Token_String_Segment;
   end if;
}

(({CHAR_NO_AMPERSAND_LESS_RIGHT_SQUARE}|"]"{CHAR_NO_AMPERSAND_LESS_RIGHT_SQUARE}|"]"{2,}{CHAR_NO_AMPERSAND_LESS_GREATER_RIGHT_SQUARE})+"]"*|"]"+) {
   --  Segment of character data, rule [14].

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal,
     Is_Whitespace => False,
     Is_CData      => False);

   return Token_String_Segment;
}

"<![CDATA["{CHAR_NO_RIGHT_SQUARE}*"]"({CHAR_NO_RIGHT_SQUARE}+"]")*"]"+({CHAR_NO_GREATER_RIGHT_SQUARE}{CHAR_NO_RIGHT_SQUARE}*"]"({CHAR_NO_RIGHT_SQUARE}+"]")*"]"+)*">" {
   --  Segment of CDATA, rules [18], [19], [20], [21].

   Set_String_Internal
    (Item          => YYLVal,
     String        => YY_Text_Internal (9, 3),
     Is_Whitespace => False,
     Is_CData      => True);

   return Token_String_Segment;
}

"&"{NAME}";" {
   --  General entity reference rule [68] in document content.

   Resolve_Symbol (Self, 1, 1, False, YYLVal);
   Process_General_Entity_Reference_In_Document_Content (Self, YYLVal.Symbol);
}

<XML_DECL>. {
   raise Program_Error with "Unexpected character in XML_DECL";
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

<ATTLIST_TYPE>. {
   Put_Line (YY_Text);
   raise Program_Error with "Unexpected character in ATTLIST_TYPE";
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
with Matreshka.Internals.XML.Symbol_Tables;
with Matreshka.Internals.Strings;
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
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier)
       is separate;

   procedure Process_General_Entity_Reference_In_Document_Content
    (Self   : access Integer;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier)
       is separate;

   procedure Process_Parameter_Entity_Reference_In_Entity_Value
    (Self : access Integer;
     Name : League.Strings.Universal_String) is separate;

   type Character_Reference_Form is (Decimal, Hexadecimal);

   function Process_Character_Reference
    (Self  : access Integer;
     Form  : Character_Reference_Form) return Token is separate;

   function Process_Attribute_Value_Open_Delimiter
    (Self  : access Integer;
     State : Integer) return Token is separate;

   function Process_Attribute_Value_Close_Delimiter
    (Self  : access Integer) return Token is separate;

   function Process_Entity_Value_Open_Delimiter
    (Self  : access Integer;
     Image : League.Strings.Universal_String) return Token is separate;

   function Process_Entity_Value_Close_Delimiter
    (Self  : access Integer;
     Image : League.Strings.Universal_String) return Token is separate;

   function Process_Whitespace
    (Self : access Integer;
     Text : Matreshka.Internals.Strings.Shared_String_Access)
       return Boolean is separate;

   function Process_XML_PI (Self : access Integer) return Token is separate;

   procedure Resolve_Symbol
    (Self            : access Integer;
     Trim_Left       : Natural := 0;
     Trim_Right      : Natural := 0;
     Trim_Whitespace : Boolean := False;
     YYLVal          : out YYSType) is separate;

   procedure Set_String_Internal
    (Item          : in out YYSType;
     String        : Matreshka.Internals.Strings.Shared_String_Access;
     Is_Whitespace : Boolean;
     Is_CData      : Boolean) is separate;

   package Actions is

      function On_Unexpected_Character_In_Element_Start_Tag
       (Self : access Integer) return Token;

   end Actions;

   package body Actions is separate;
