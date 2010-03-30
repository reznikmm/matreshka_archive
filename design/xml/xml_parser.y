--  Declarations Section

--  [2]  Char           ::= [#x1-#xD7FF] | [#xE000-#xFFFD] | [#x10000-#x10FFFF]
--  [2a] RestrictedChar ::= [#x1-#x8] | [#xB-#xC] | [#xE-#x1F] | [#x7F-#x84]
--                            | [#x86-#x9F]
--
--  [3] S ::= (#x20 | #x9 | #xD | #xA)+
--
--  [4]  NameStartChar  ::= ":" | [A-Z] | "_" | [a-z] | [#xC0-#xD6]
--                            | [#xD8-#xF6] | [#xF8-#x2FF] | [#x370-#x37D]
--                            | [#x37F-#x1FFF] | [#x200C-#x200D]
--                            | [#x2070-#x218F] | [#x2C00-#x2FEF]
--                            | [#x3001-#xD7FF] | [#xF900-#xFDCF]
--                            | [#xFDF0-#xFFFD] | [#x10000-#xEFFFF]
--
--  [4a] NameChar       ::= NameStartChar | "-" | "." | [0-9] | #xB7
--                            | [#x0300-#x036F] | [#x203F-#x2040]
--  [5]  Name           ::= NameStartChar (NameChar)*
--  [6]  Names          ::= Name (#x20 Name)*
--  [7]  Nmtoken        ::= (NameChar)+
--  [8]  Nmtokens       ::= Nmtoken (#x20 Nmtoken)*
--
--  [9]  EntityValue    ::= '"' ([^%&"] | PEReference | Reference)* '"'
--                            | "'" ([^%&'] | PEReference | Reference)* "'"
--  [10] AttValue       ::= '"' ([^<&"] | Reference)* '"' | "'" ([^<&']
--                            | Reference)* "'"
--  [11] SystemLiteral  ::= ('"' [^"]* '"') | ("'" [^']* "'")
--  [12] PubidLiteral   ::= '"' PubidChar* '"' | "'" (PubidChar - "'")* "'"
--  [13] PubidChar      ::= #x20 | #xD | #xA | [a-zA-Z0-9]
--                            | [-'()+,./:=?;!*#@$_%]
--
--  [14] CharData       ::= [^<&]* - ([^<&]* ']]>' [^<&]*)
--
--  [15] Comment        ::= '<!--' ((Char - '-') | ('-' (Char - '-')))* '-->'
--
--  [16] PI             ::= '<?' PITarget (S (Char* - (Char* '?>' Char*)))? '?>'
--  [17] PITarget       ::= Name - (('X' | 'x') ('M' | 'm') ('L' | 'l'))
--
--  [18] CDSect         ::= CDStart CData CDEnd
--  [19] CDStart        ::= '<![CDATA['
--  [20] CData          ::= (Char* - (Char* ']]>' Char*))
--  [21] CDEnd          ::= ']]>'
--
--  Prolog
--
--  [22] prolog         ::= XMLDecl Misc* (doctypedecl Misc*)?
--  [23] XMLDecl        ::= '<?xml' VersionInfo EncodingDecl? SDDecl? S? '?>'
--  [24] VersionInfo    ::= S 'version' Eq ("'" VersionNum "'"
--                            | '"' VersionNum '"')
--  [25] Eq             ::= S? '=' S?
--  [26] VersionNum     ::= '1.1'
--  [27] Misc           ::= Comment | PI | S 

--  I don't known is it possible or not to control lexer by the parser at
--  present time, so [2], [2a] and [3] is rewritten as:
--
--  OtherChar ::= Char - RestrictedChar - S

--%token Other_Char
--%token Restricted_Char
--%token White_Space

--%token SPACE
--%token TABULATION
--%token CARRIAGE_RETURN
--%token LINE_FEED
--%token QUOTATION_MARK        --  '"'
--%token APOSTROPHE            --  '''
--%token LESS_THAN_SIGN        --  '<'
--%token EQUALS_SIGN           --  '='
--%token GREATER_THAN_SIGN     --  '>'
--%token QUESTION_MARK         --  '?'
--%token FULL_STOP             --  '.'
--%token DIGIT_ONE             --  '1'
--%token LATIN_SMALL_LETTER_E  --  'e'
--%token LATIN_SMALL_LETTER_I  --  'i'
--%token LATIN_SMALL_LETTER_L  --  'l'
--%token LATIN_SMALL_LETTER_M  --  'm'
--%token LATIN_SMALL_LETTER_N  --  'n'
--%token LATIN_SMALL_LETTER_O  --  'o'
--%token LATIN_SMALL_LETTER_R  --  'r'
--%token LATIN_SMALL_LETTER_S  --  's'
--%token LATIN_SMALL_LETTER_V  --  'v'
--%token LATIN_SMALL_LETTER_X  --  'x'

%token Token_XML_Decl_Start
%token Token_Start_Tag_Start
%token Token_End_Tag_Start
%token Token_Processing_Instruction
%token Token_White_Space
%token Token_Character_Data
%token Token_Comment
%token Token_CDData

--  Appear only inside PI or XMLDecl
%token Token_XML_Decl_Or_PI_End

--  Appear only inside XMLDecl
%token Token_Version
%token Token_Encoding
%token Token_Standalone
%token Token_XML_Decl_Attribute_Value

--  Appear only inside XMLDecl, STag or EmptyElemTag
%token Token_Equal

%token Token_Tag_End
%token Token_Empty_Tag_End

--  Appear only inside STag or EmptyElemTag
%token Token_Name
%token Token_Attribute_Value_Start
%token Token_Attribute_Value_End
%token Token_Attribute_Value

%token Token_Entity_Ref
%token Token_Char_Ref

%with Ada.Strings.Unbounded;
%with Xml
--  %use Xml

{
--   type Xml_Version is (Xml_1_0, Xml_1_1);
--   type Standalone_Mark is (Yes, No, Undefined);
--
--   type YYSType is record
--      Version    : Xml_Version;
--      Standalone : Standalone_Mark;
--   end record;

--   type String_Access is access all String;

   type YYSKind is (Empty, Text, Name_Value);

   type YYSType (Kind : YYSKind := Empty) is record
      case Kind is
         when Text =>
            Text : Ada.Strings.Unbounded.Unbounded_String;

         when Name_Value =>
            Name  : Ada.Strings.Unbounded.Unbounded_String;
            Value : Ada.Strings.Unbounded.Unbounded_String;

         when Empty =>
            null;
      end case;
   end record;

}

%%

--  Rules Section

--  [1] document, [22] prolog

document :
    XMLDecl_optional
    Misc_any
--    prologue
    element
    Misc_any
  ;

Misc_any :
    Misc
  | Misc_any Misc
  |
  ;

--  [27] Misc, [16] PI

Misc :
    Token_White_Space
    {
      --  XXX There is no reason to report whitespace outside of the element
      --  content. Thus, processing code is temporary commented out.

--      Reader.Content_Handler.Ignorable_Whitespace ($1.Text, Stop_Processing);
--      Check_Processing_Stopped;
      null;
    }
  | Token_Comment
    {
      Reader.Lexical_Handler.Comment ($1.Text, Stop_Processing);
      Check_Processing_Stopped;
    }
  | Token_Processing_Instruction
    {
      Reader.Content_Handler.Processing_Instruction
       ($1.Name, $1.Value, Stop_Processing);
      Check_Processing_Stopped;
    }
  ;

--  [23] XMLDecl ::= '<?xml' VersionInfo EncodingDecl? SDDecl? S? '?>'

XMLDecl_optional :
    XMLDecl
  |
  ;

XMLDecl :
    Token_XML_Decl_Start
    VersionInfo
    EncodingDecl_optional
    SDDecl_optional
    Token_XML_Decl_Or_PI_End
{
   Ada.Wide_Wide_Text_IO.Put_Line ("XML Declaration parsed");
--   $$ := $1;
   $$ := $2;
   $$ := $3;
--   if $4.Standalone = Undefined then
--      Text_IO.Put_Line ("YES");
--   end if;
   $$ := $4;
--   $$ := $5;
}
  ;

VersionInfo :
    Token_Version
    Token_Equal
    Token_XML_Decl_Attribute_Value
{
--    $$.Version := 
   Ada.Wide_Wide_Text_IO.Put_Line ("version information");
}
  ;

EncodingDecl_optional :
    Token_Encoding
    Token_Equal
    Token_XML_Decl_Attribute_Value
{
   Ada.Wide_Wide_Text_IO.Put_Line ("encoding information");
}
  |
{
   Ada.Wide_Wide_Text_IO.Put_Line ("encoding information missing");
}
  ;

SDDecl_optional :
    Token_Standalone
    Token_Equal
    Token_XML_Decl_Attribute_Value
{
   Ada.Wide_Wide_Text_IO.Put_Line ("standalone information");
}
|
--{
--   $$.Standalone := Undefined;
--}
;

--  [39] element

--element :
--    Token_Start_Tag_Start
--    Attribute_any
--    Token_Empty_Tag_End
--{
--   Text_IO.Put_Line ("Empty element");
--}
--  | Token_Start_Tag_Start
--    Attribute_any
--    Token_Tag_End
--    content_any
--    Token_End_Tag_Start
--    Token_Tag_End
--{
--   Text_IO.Put_Line ("Element");
--}
--  ;

element :
    Token_Start_Tag_Start
{
   Ada.Wide_Wide_Text_IO.Put_Line ("Start tag '" & To_String ($1.Text) & ''');

   if Current_Element_Node /= null then
      Element_Node_Stack.Append (Current_Element_Node);
   end if;

   Current_Element_Node := new XML_Element_Node;
   Current_Element_Node.Name := $1.Text;
}
    Attribute_any
    element_1
  ;

element_1 :
    Token_Empty_Tag_End
{
   Ada.Wide_Wide_Text_IO.Put_Line ("Empty element");

   if not Element_Node_Stack.Is_Empty then
      Current_Element_Node := Element_Node_Stack.Last_Element;
      Element_Node_Stack.Delete_Last;

   else
      Current_Element_Node := null;
   end if;
}
  | Token_Tag_End
    content_any
    Token_End_Tag_Start
    Token_Tag_End
{
   Ada.Wide_Wide_Text_IO.Put_Line ("End element '" & To_String ($3.Text) & ''');

   if Current_Element_Node.Name /= $3.Text then
      raise Program_Error;
   end if;

   if not Element_Node_Stack.Is_Empty then
      Current_Element_Node := Element_Node_Stack.Last_Element;
      Element_Node_Stack.Delete_Last;

   else
      Current_Element_Node := null;
   end if;
}
  ;


Attribute_any :
    Attribute
  | Attribute_any Attribute
  |
  ;

--  [41] Attribute

Attribute :
    Token_Name
    Token_Equal
    Token_Attribute_Value_Start
    attribute_value_segment_any
    Token_Attribute_Value_End
{
   Ada.Wide_Wide_Text_IO.Put_Line ("Tag's attributes");
}
  ;

attribute_value_segment_any :
    attribute_value_segment
{
   Ada.Wide_Wide_Text_IO.Put_Line ("attribute_value_segment");
}
  | attribute_value_segment_any attribute_value_segment
{
   Ada.Wide_Wide_Text_IO.Put_Line ("attribute_value_segment_any attribute_value_segment");
}
  |
  ;

attribute_value_segment :
    Token_Attribute_Value
  | Token_Entity_Ref
  | Token_Char_Ref
  ;

content_any :
    content_segment
  | content_any content_segment
  |
  ;

content_segment :
    Token_White_Space
    {
      --  Segment of whitespaces inside element content is a subclass of
      --  segment of character data.

      Reader.Content_Handler.Ignorable_Whitespace ($1.Text, Stop_Processing);
      Check_Processing_Stopped;
    }

  | Token_Character_Data
    {
      Reader.Content_Handler.Characters ($1.Text, Stop_Processing);
      Check_Processing_Stopped;
    }
  | Token_Entity_Ref
  | Token_Char_Ref
  | element
  | Token_CDData
  | Token_Comment
  | Token_Processing_Instruction
    {
      Reader.Content_Handler.Processing_Instruction
       ($1.Name, $1.Value, Stop_Processing);
      Check_Processing_Stopped;
    }
  ;







----  [1]  document ::= ( prolog element Misc* ) - ( Char* RestrictedChar Char* )
--
--document : prolog ;  --  element Misc*
--
--prolog : xml_decl ;  --  Misc* (doctypedecl Misc*)?
--
----  [23] XMLDecl ::= '<?xml' VersionInfo EncodingDecl? SDDecl? S? '?>'
--
--xml_decl : LESS_THAN_SIGN QUESTION_MARK
--  LATIN_SMALL_LETTER_X LATIN_SMALL_LETTER_M LATIN_SMALL_LETTER_L
--  version_info
--  encoding_decl_optional
--  sd_decl_optional
--  s_optional
--  QUESTION_MARK GREATER_THAN_SIGN ;
--
----  [24] VersionInfo ::=
----         S 'version' Eq ("'" VersionNum "'" | '"' VersionNum '"')
--
--version_info : s
--  LATIN_SMALL_LETTER_V LATIN_SMALL_LETTER_E LATIN_SMALL_LETTER_R
--  LATIN_SMALL_LETTER_S LATIN_SMALL_LETTER_I LATIN_SMALL_LETTER_O
--  LATIN_SMALL_LETTER_N eq internal_version_num;
--
--internal_version_num :
--  QUOTATION_MARK version_num QUOTATION_MARK
--    | APOSTROPHE version_num APOSTROPHE ;
--
----  [26] VersionNum ::= '1.1'
--
--version_num : DIGIT_ONE FULL_STOP DIGIT_ONE ;
--
----  [25] Eq ::= S? '=' S?
--
--eq : s_optional EQUALS_SIGN s_optional ;
--
--encoding_decl_optional : ;
--
----  
--
--sd_decl_optional : ;
--
--s_optional : | s ;
--
----  [3] S ::= (#x20 | #x9 | #xD | #xA)+
--
--s : white_space | s white_space ;
--white_space : SPACE | TABULATION | CARRIAGE_RETURN | LINE_FEED ;

%%
with Sax.Readers;
##
   procedure Parse
    (Reader    : not null access Sax.Readers.Sax_Reader'Class;
     File_Name : String);
##
--  with Ada.Containers.Vectors;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Wide_Wide_Text_IO;

with Xml;         use Xml;
with Xml_Scanner; use Xml_Scanner;
with Xml_Scanner.IO;

##
   procedure Parse
    (Reader    : not null access Sax.Readers.Sax_Reader'Class;
     File_Name : String)
   is

      Stop_Processing : Boolean := False;

      procedure Check_Processing_Stopped is
      begin
         if Stop_Processing then
            raise Program_Error;
         end if;
      end Check_Processing_Stopped;

      procedure YYError (S : String) is
      begin
--         Ada.Wide_Wide_Text_IO.Put_Line (S);
         null;
      end YYError;

--   type XML_Element_Node is record
--      Name : String_Access;
--   end record;
--
--   type XML_Element_Node_Access is access all XML_Element_Node;
--
--   package XML_Element_Node_Access_Vectors is
--     new Ada.Containers.Vectors (Positive, XML_Element_Node_Access);

   Element_Node_Stack : XML_Element_Node_Access_Vectors.Vector;
   Current_Element_Node : XML_Element_Node_Access;

##
   begin
      Xml_Scanner.IO.Open_Input (File_Name);
      Reader.Content_Handler.Start_Document (Stop_Processing);
      Check_Processing_Stopped;
      YYParse;
      Reader.Content_Handler.End_Document (Stop_Processing);
      Check_Processing_Stopped;
   end Parse;
