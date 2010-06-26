%token Token_Xml_Decl_Open
%token Token_PI_Open
%token Token_PI_Close
%token Token_PE_Reference
%token Token_Doctype_Decl_Open
%token Token_Entity_Decl_Open
%token Token_Element_Decl_Open
%token Token_Close
%token Token_Name
%token Token_System
%token Token_Public
%token Token_System_Literal
%token Token_Public_Literal
%token Token_Internal_Subset_Open
%token Token_Internal_Subset_Close
%token Token_Percent
%token Token_Value_Open
%token Token_Value_Close
%token Token_String_Segment
--  String segment is segment of character data comes from different places:
--  attribute value, entity value, XML declaration attribute value, etc.
--  XXX Public_Id and System_Id are handled separately for now, but can be
--  rewritten to use this general string data token.
%token Token_NData
%token Token_Comment
%token Token_Element_Open
%token Token_Equal
%token Token_End_Open
%token Token_Empty_Close
%token Token_Version
%token Token_Encoding
%token Token_Standalone
%token Token_Empty
%token Token_Any
%token Token_Open_Parenthesis
%token Token_Close_Parenthesis
%token Token_Vertical_Bar
%token Token_Comma
%token Token_Question
%token Token_Asterisk
%token Token_Plus
%token Token_PCData
%token Token_Attlist_Decl_Open
%token Token_CData
%token Token_Id
%token Token_IdRef
%token Token_IdRefs
%token Token_Entity
%token Token_Entities
%token Token_NmToken
%token Token_NmTokens
%token Token_Notation
%token Token_Required
%token Token_Implied
%token Token_Fixed

%with Matreshka.Internals.Strings
%with Matreshka.Internals.XML.Symbol_Tables;
%with Matreshka.SAX.Attributes;

{
   type YYSType is record
      String        : Matreshka.Internals.Strings.Shared_String_Access;
      Symbol        : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
      Is_Whitespace : Boolean;
      Is_CData      : Boolean;
   end record;
}

%%

--  XXX Not implemented.
document:  XMLDecl_optional Misc_any doctypedecl_optional element Misc_any
{
   null;
}
  ;

XMLDecl_optional :
    XMLDecl
{
   null;
}
  |
{
   null;
}
  ;

XMLDecl :
    Token_Xml_Decl_Open Token_Version Token_Equal Token_String_Segment EncodingDecl_optional SDDecl_optional Token_PI_Close
{
   null;
}
  ;

TextDecl :
    Token_Xml_Decl_Open VersionDecl_optional Token_Encoding Token_Equal Token_String_Segment Token_PI_Close
{
   null;
}
  ;

VersionDecl_optional :
    Token_Version Token_Equal Token_String_Segment
{
   null;
}
  |
{
   null;
}
  ;

EncodingDecl_optional :
    Token_Encoding Token_Equal Token_String_Segment
{
   null;
}
  |
{
   null;
}
  ;

SDDecl_optional :
    Token_Standalone Token_Equal Token_String_Segment
{
   null;
}
  |
{
   null;
}
  ;

Misc_any :
    Misc_Any Misc
{
   null;
}
  | Misc
{
   null;
}
  |
{
   null;
}
  ;

Misc :
    Token_Comment
{
   Process_Comment (Self, Create ($1.String));
}
  | PI
{
   null;
}
  ;

PI :
    Token_PI_Open Token_PI_Close
{
   Process_Processing_Instruction (Self, Create ($1.String), Create ($2.String));
}
  ;

doctypedecl_optional:
    Token_Doctype_Decl_Open ExternalID
{
   --  Document type declaration, rule [28]. Once external identifier are
   --  recognized external document type declaration subset need to be parsed 
   --  before processing of internal subset. External subset is inserted
   --  immediately after external identifier when present. Thus original
   --  rule [28] is rewritten and extended to reflect this inclusion.

   Process_Document_Type_Declaration
    (Self,
     $1.Symbol,
     True);
}
    external_subset_optional internal_subset_optional Token_Close
{
   null;
}
    Misc_any
{
   null;
}
  |
    Token_Doctype_Decl_Open
{
   --  Document type declaration, rule [28]. Once external identifier are
   --  recognized external document type declaration subset need to be parsed 
   --  before processing of internal subset. External subset is inserted
   --  immediately after external identifier when present. Thus original
   --  rule [28] is rewritten and extended to reflect this inclusion.

   Process_Document_Type_Declaration
    (Self,
     $1.Symbol,
     False);
}
    external_subset_optional internal_subset_optional Token_Close
{
   null;
}
    Misc_any
{
   null;
}
  |
{
   null;
}
  ;

ExternalID:
    Token_System Token_System_Literal
{
   --  ExternalID specified by SYSTEM, rule [75].

   Process_External_Id
    (Self,
     League.Strings.Empty_String,
     Create ($2.String));
}
  | Token_Public Token_Public_Literal Token_System_Literal
{
   --  ExternalID specified by PUBLIC, rule [75].

   Process_External_Id
    (Self,
     Create ($2.String),
     Create ($3.String));
}
  ;

external_subset_optional:
    intSubset_any
{
   null;
}
  ;

internal_subset_optional:
    Token_Internal_Subset_Open intSubset_any Token_Internal_Subset_Close
{
   null;
}
  |
{
   null;
}
  ;

intSubset_any:
    intSubset_any intSubset
{
   null;
}
  | intSubset
{
   null;
}
  |
{
   null;
}
  ;

intSubset:
    EntityDecl
{
   null;
}
  | elementdecl
{
   null;
}
  | AttlistDecl
{
   null;
}
  | Token_Comment
{
   Process_Comment (Self, Create ($1.String));
}
  ;

EntityDecl:
    Token_Entity_Decl_Open Token_Name EntityValue Token_Close
{
   Process_General_Entity_Declaration
    (Self        => Self,
     Symbol      => $2.Symbol,
     Is_External => False,
     Value       => Create ($3.String),
     Notation    => Matreshka.Internals.XML.Symbol_Tables.No_Symbol);
}
  | Token_Entity_Decl_Open Token_Name ExternalID Token_Close
{
   Process_General_Entity_Declaration
    (Self        => Self,
     Symbol      => $2.Symbol,
     Is_External => True,
     Value       => League.Strings.Empty_String,
     Notation    => Matreshka.Internals.XML.Symbol_Tables.No_Symbol);
}
  | Token_Entity_Decl_Open Token_Name ExternalID Token_NData Token_Name Token_Close
{
   Process_General_Entity_Declaration
    (Self        => Self,
     Symbol      => $2.Symbol,
     Is_External => True,
     Value       => League.Strings.Empty_String,
     Notation    => $5.Symbol);
}
  | Token_Entity_Decl_Open Token_Percent Token_Name EntityValue Token_Close
{
   Process_Parameter_Entity_Declaration
    (Self,
     Create ($3.String),
     False,
     Create ($4.String));
}
  | Token_Entity_Decl_Open Token_Percent Token_Name ExternalID Token_Close
{
   Process_Parameter_Entity_Declaration
    (Self,
     Create ($3.String),
     True,
     League.Strings.Empty_String);
}
  ;

EntityValue:
    Token_Value_Open AttributeEntityValue_Content Token_Value_Close
{
   --  Entity value including surrounding delimiters.

   Move ($$, $2);
}
  ;

AttributeEntityValue_Content:
     AttributeEntityValue_Content Token_String_Segment
{
   --  Additional string segment in entity value.

   Move ($$, $1);
   Matreshka.Internals.Strings.Operations.Append ($$.String, $2.String);
}
  | Token_String_Segment
{
   --  Single string segment in entity value.

   Move ($$, $1);
}
  |
{
   Set_String
    (Item          => $$,
     String        => League.Strings.Empty_String,
     Is_Whitespace => False,
     Is_CData      => False);
}
  ;

elementdecl:
    Token_Element_Decl_Open contentspec Token_Close
{
   null;
}
  ;

contentspec:
    Token_Empty
{
   null;
}
  | Token_Any
{
   null;
}
  | Mixed
{
   null;
}
  | children
{
   null;
}
  ;

children:
    choice Token_Question
{
   null;
}
  | choice Token_Asterisk
{
   null;
}
  | choice Token_Plus
{
   null;
}
  | choice
{
   null;
}
  | seq Token_Question
{
   null;
}
  | seq Token_Asterisk
{
   null;
}
  | seq Token_Plus
{
   null;
}
  | seq
{
   null;
}
  ;

choice:
    Token_Open_Parenthesis cp choice_content Token_Close_Parenthesis
{
   null;
}
  ;

seq:
    Token_Open_Parenthesis seq_content Token_Close_Parenthesis
{
   null;
}
  ;

choice_content:
    choice_content Token_Vertical_Bar cp
{
   null;
}
  | Token_Vertical_Bar cp
{
   null;
}
  ;

seq_content:
    seq_content Token_Comma cp
{
   null;
}
  | cp
{
   null;
}
  ;

cp:
    Token_Name Token_Question
{
   null;
}
  | Token_Name Token_Asterisk
{
   null;
}
  | Token_Name Token_Plus
{
   null;
}
  | Token_Name
{
   null;
}
  | choice Token_Question
{
   null;
}
  | choice Token_Asterisk
{
   null;
}
  | choice Token_Plus
{
   null;
}
  | choice
{
   null;
}
  | seq Token_Question
{
   null;
}
  | seq Token_Asterisk
{
   null;
}
  | seq Token_Plus
{
   null;
}
  | seq
{
   null;
}
  ;

Mixed:
    Token_Open_Parenthesis Token_PCData Mixed_content Token_Close_Parenthesis Token_Asterisk
{
   null;
}
  | Token_Open_Parenthesis Token_PCData Token_Close_Parenthesis
{
   null;
}
  ;

Mixed_content:
    Mixed_content Token_Vertical_Bar Token_Name
{
   null;
}
  | Token_Vertical_Bar Token_Name
{
   null;
}
  |
{
   null;
}
  ;

AttlistDecl :
    Token_Attlist_Decl_Open AttDef_any Token_Close
{
   null;
}
  ;

AttDef_any:
    AttDef_any AttDef
{
   null;
}
  | AttDef
{
   null;
}
  |
{
   null;
}
  ;

AttDef :
    Token_Name Token_CData DefaultDecl
{
   null;
}
  | Token_Name Token_Id DefaultDecl
{
   null;
}
  | Token_Name Token_IdRef DefaultDecl
{
   null;
}
  | Token_Name Token_IdRefs DefaultDecl
{
   null;
}
  | Token_Name Token_Entity DefaultDecl
{
   null;
}
  | Token_Name Token_Entities DefaultDecl
{
   null;
}
  | Token_Name Token_NmToken DefaultDecl
{
   null;
}
  | Token_Name Token_NmTokens DefaultDecl
{
   null;
}
  | Token_Name Token_Notation Token_Open_Parenthesis Token_Name Name_any Token_Close_Parenthesis DefaultDecl
{
   null;
}
  | Token_Name Token_Open_Parenthesis Token_Name Name_any Token_Close_Parenthesis DefaultDecl
{
   null;
}
  ;

Name_any:
    Name_any Token_Vertical_Bar Token_Name
{
   null;
}
  | Token_Vertical_Bar Token_Name
{
   null;
}
  |
{
   null;
}
  ;

DefaultDecl:
    Token_Required
{
   null;
}
  | Token_Implied
{
   null;
}
  | AttributeValue
{
   null;
}
  | Token_Fixed AttributeValue
{
   null;
}
  ;

element :
    Token_Element_Open Attribute_Any Token_Close
{
   Process_Start_Tag (Self, $1.Symbol);
}
    content Token_End_Open Token_Close
{
   Process_End_Tag (Self, $6.Symbol);
}
  | Token_Element_Open Attribute_Any Token_Empty_Close
{
   Process_Empty_Element_Tag (Self, $1.Symbol);
}
  ;

content :
    content content_item
{
   null;
}
  | content_item
{
   null;
}
  |
{
   null;
}
  ;

content_item :
    element
{
   null;
}
  | Token_String_Segment
{
   Process_Characters (Self, Create ($1.String), $1.Is_Whitespace);
}
  | Token_Comment
{
   Process_Comment (Self, Create ($1.String));
}
  | PI
{
   null;
}
  | TextDecl
{
   --  TextDecl come from substitution of external parsed entities.

   null;
}
  ;

Attribute_Any :
    Attribute_Any Attribute
{
   Process_Attribute_In_Set (Self);
}
  | Attribute
{
   Process_Attribute_In_Set (Self);
}
  |
{
   null;
}
  ;

Attribute :
    Token_Name Token_Equal AttributeValue
{
   Process_Attribute (Self, $1.Symbol, Create ($3.String));
}
  ;

AttributeValue :
    Token_Value_Open AttributeEntityValue_Content Token_Value_Close
{
   Move ($$, $2);
}
  ;

%%

##
   procedure Parse;
##
with Ada.Wide_Wide_Text_IO;
with League.Strings;
with Matreshka.SAX.Attributes.Internals;
with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.XML.Symbol_Tables;
##
   use type League.Strings.Universal_String;

   function YYLex return Token is separate;

   procedure YYError (Msg : String) is separate;

   procedure puts (Item : String) is separate;

   procedure Process_Comment
    (Self    : access Integer;
     Comment : League.Strings.Universal_String) is separate;

   procedure Process_Document_Type_Declaration
    (Self        : access Integer;
     Symbol      : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
     Is_External : Boolean) is separate;

   procedure Process_General_Entity_Declaration
    (Self        : access Integer;
     Symbol      : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String;
     Notation    : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier)
       is separate;

   procedure Process_Parameter_Entity_Declaration
    (Self        : access Integer;
     Name        : League.Strings.Universal_String;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String) is separate;

   procedure Process_Start_Tag
    (Self   : access Integer;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier)
       is separate;

   procedure Process_End_Tag
    (Self   : access Integer;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier)
       is separate;

   procedure Process_Empty_Element_Tag
    (Self   : access Integer;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier)
       is separate;

   procedure Process_Characters
    (Self          : access Integer;
     Text          : League.Strings.Universal_String;
     Is_Whitespace : Boolean) is separate;

   procedure Process_Attribute_In_Set (Self : access Integer) is separate;

   procedure Process_Attribute
     (Self   : access Integer;
      Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
      Value  : League.Strings.Universal_String) is separate;

   procedure Process_Processing_Instruction
     (Self   : access Integer;
      Target : League.Strings.Universal_String;
      Data   : League.Strings.Universal_String) is separate;

   procedure Process_External_Id
     (Self      : access Integer;
      Public_Id : League.Strings.Universal_String;
      System_Id : League.Strings.Universal_String) is separate;

   function Create (Item : Matreshka.Internals.Strings.Shared_String_Access)
     return League.Strings.Universal_String is separate;

   procedure Move (To : in out YYSType; From : in out YYSType) is separate;

   procedure Set_String
     (Item          : in out YYSType;
      String        : League.Strings.Universal_String;
      Is_Whitespace : Boolean;
      Is_CData      : Boolean) is separate;

   Self     : access Integer;
   Put_Line : access procedure (Item : League.Strings.Universal_String);

   procedure Parse is
##
   begin
      null;
   end Parse;
