%token Token_Xml_Decl_Open
%token Token_PI_Open
%token Token_PI_Close
%token Token_PE_Reference
%token Token_Doctype_Decl_Open
%token Token_Entity_Decl_Open
%token Token_Element_Decl_Open
%token Token_Notation_Decl_Open
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

{
   type YYSType is record
      String        : Matreshka.Internals.Strings.Shared_String_Access;
      Symbol        : Matreshka.Internals.XML.Symbol_Identifier;
      Is_Whitespace : Boolean;
      Is_CData      : Boolean;
   end record;
}

%%

document_entity :
   {
      Actions.On_Start_Of_Document (Self);
   }
  XMLDecl_optional document
   {
      Actions.On_End_Of_Document (Self);
   }
  ;

document :
  Misc_any doctypedecl_optional element Misc_any
   {
      null;
   }
| Misc_any doctypedecl_optional element Misc_any error
   {
      On_Fatal_Error;
   }
| Misc_any doctypedecl_optional element Misc_any unexpected_at_end
   {
      On_Fatal_Error;
   }
| error
   {
      On_Fatal_Error;
   }
;

unexpected_at_end :
  Token_String_Segment
   {
      --  Unexpected token after the root element. This rule is required to
      --  handle End_Document callback properly, because ayacc is unable to
      --  recognize syntax error till end of parser stack is reached.

      Actions.On_Unexpected_Token_After_Root_Element (Self);
      Handle_Error;
   }
| Token_End_Open
   {
      --  Unexpected token after the root element. This rule is required to
      --  handle End_Document callback properly, because ayacc is unable to
      --  recognize syntax error till end of parser stack is reached.

      Actions.On_Unexpected_Token_After_Root_Element (Self);
      Handle_Error;
   }
| Token_Element_Open
   {
      --  Unexpected token after the root element. This rule is required to
      --  handle End_Document callback properly, because ayacc is unable to
      --  recognize syntax error till end of parser stack is reached.

      Actions.On_Unexpected_Token_After_Root_Element (Self);
      Handle_Error;
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
  Token_Xml_Decl_Open Token_Version Token_Equal Token_String_Segment
   {
      --  Version information, rule [24] in rule [23].

      Actions.On_XML_Version_Information (Self, $4.String);
   }
  EncodingDecl_optional SDDecl_optional Token_PI_Close
   {
      null;
   }
;

TextDecl :
  Token_Xml_Decl_Open Token_Version Token_Equal Token_String_Segment Token_Encoding Token_Equal Token_String_Segment Token_PI_Close
   {
      --  [XML1.0 2.8]
      --
      --  "Note: When an XML 1.0 processor encounters a document that
      --  specifies a 1.x version number other than '1.0', it will process
      --  it as a 1.0 document. This means that an XML 1.0 processor will
      --  accept 1.x documents provided they do not use any non-1.0
      --  features."
      --
      --  [XML1.1 4.3.4]
      --
      --  "Each entity, including the document entity, can be separately
      --  declared as XML 1.0 or XML 1.1. The version declaration appearing
      --  in the document entity determines the version of the document as a
      --  whole. An XML 1.1 document may invoke XML 1.0 external entities,
      --  so that otherwise duplicated versions of external entities,
      --  particularly DTD external subsets, need not be maintained.
      --  However, in such a case the rules of XML 1.1 are applied to the
      --  entire document."
      --
      --  So, version information is ignored when it is not related to
      --  document entity.

      null;
   }
| Token_Xml_Decl_Open Token_Encoding Token_Equal Token_String_Segment Token_PI_Close
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
      Process_Comment
       (Self,
        League.Strings.Internals.Create
         ($1.String));
   }
| PI
   {
      null;
   }
;

PI :
  Token_PI_Open Token_PI_Close
   {
      Process_Processing_Instruction
       (Self,
        $1.Symbol,
        League.Strings.Internals.Create
         ($2.String));
   }
;

doctypedecl_optional:
  Token_Doctype_Decl_Open ExternalID
   {
      --  Document type declaration, rule [28]. Once external identifier are
      --  recognized external document type declaration subset need to be parsed 
      --  after processing of internal subset. External subset is inserted
      --  immediately after the internal subset. Thus original rule [28] is
      --  rewritten and extended to reflect this inclusion.

      Actions.On_External_Subset_Declaration (Self);
   }
  internal_subset_optional
   {
      Actions.On_End_Of_Internal_Subset (Self);
   }
  external_subset_optional Token_Close
   {
      Actions.On_End_Of_Document_Type_Declaration
       (Self,
        $1.Symbol);
   }
  Misc_any
   {
      null;
   }
| Token_Doctype_Decl_Open internal_subset_optional Token_Close
   {
      --  Document type declaration, rule [28]. 

      Actions.On_End_Of_Document_Type_Declaration
       (Self,
        $1.Symbol);
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
        League.Strings.Empty_Universal_String,
        League.Strings.Internals.Create
         ($2.String));
   }
| Token_Public Token_Public_Literal Token_System_Literal
   {
      --  ExternalID specified by PUBLIC, rule [75].

      Process_External_Id
       (Self,
        League.Strings.Internals.Create
         ($2.String),
        League.Strings.Internals.Create
         ($3.String));
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
| NotationDecl
   {
      null;
   }
| Token_Comment
   {
      Process_Comment
       (Self,
        League.Strings.Internals.Create
         ($1.String));
   }
| PI
   {
      null;
   }
| TextDecl
   {
      --  Text declaration comes from external subset or external entity.

      null;
   }
;

NotationDecl:
  Token_Notation_Decl_Open Token_System Token_System_Literal Token_Close
   {
      null;
   }
| Token_Notation_Decl_Open Token_Public Token_Public_Literal Token_Close
   {
      null;
   }
| Token_Notation_Decl_Open Token_Public Token_Public_Literal Token_System_Literal Token_Close
   {
      null;
   }
;

EntityDecl:
  Token_Entity_Decl_Open Token_Name EntityValue Token_Close
   {
      Actions.On_General_Entity_Declaration
       (Self        => Self,
        Symbol      => $2.Symbol,
        Is_External => False,
        Value       =>
         League.Strings.Internals.Create
          ($3.String),
        Notation    => Matreshka.Internals.XML.No_Symbol);
   }
| Token_Entity_Decl_Open Token_Name ExternalID Token_Close
   {
      Actions.On_General_Entity_Declaration
       (Self        => Self,
        Symbol      => $2.Symbol,
        Is_External => True,
        Value       => League.Strings.Empty_Universal_String,
        Notation    => Matreshka.Internals.XML.No_Symbol);
   }
| Token_Entity_Decl_Open Token_Name ExternalID Token_NData Token_Name Token_Close
   {
      Actions.On_General_Entity_Declaration
       (Self        => Self,
        Symbol      => $2.Symbol,
        Is_External => True,
        Value       => League.Strings.Empty_Universal_String,
        Notation    => $5.Symbol);
   }
| Token_Entity_Decl_Open Token_Percent Token_Name EntityValue Token_Close
   {
      Process_Parameter_Entity_Declaration
       (Self,
        $3.Symbol,
        False,
        League.Strings.Internals.Create
         ($4.String));
   }
| Token_Entity_Decl_Open Token_Percent Token_Name ExternalID Token_Close
   {
      Process_Parameter_Entity_Declaration
       (Self,
        $3.Symbol,
        True,
        League.Strings.Empty_Universal_String);
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

      Move
       ($$,
        $1);
      Matreshka.Internals.Strings.Operations.Append
       ($$.String,
        $2.String);
   }
| Token_String_Segment
   {
      --  Single string segment in entity value.

      Move
       ($$,
        $1);
   }
|
   {
      Set_String
       (Item          => $$,
        String        => League.Strings.Empty_Universal_String,
        Is_Whitespace => False,
        Is_CData      => False);
   }
;

elementdecl:
  Token_Element_Decl_Open
   {
      Actions.On_Start_Of_Element_Declaration
       (Self,
        $1.Symbol);
   }
  contentspec Token_Close
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
      Actions.On_Mixed_Content_Declaration (Self);
   }
| Token_Open_Parenthesis Token_PCData Token_Close_Parenthesis
   {
      Actions.On_Mixed_Content_Declaration (Self);
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
  Token_Attlist_Decl_Open
   {
      Actions.On_Start_Of_Attribute_List_Declaration
       (Self,
        $1.Symbol);
   }
  AttDef_any Token_Close
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
  Token_Name Token_CData
   {
      Actions.On_CDATA_Attribute_Declaration
       (Self   => Self,
        Symbol => $1.Symbol);
   }
  DefaultDecl
   {
      null;
   }
| Token_Name Token_Id
   {
      Actions.On_Id_Attribute_Declaration
       (Self   => Self,
        Symbol => $1.Symbol);
   }
  DefaultDecl
   {
      null;
   }
| Token_Name Token_IdRef
   {
      Actions.On_IdRef_Attribute_Declaration
       (Self   => Self,
        Symbol => $1.Symbol);
   }
  DefaultDecl
   {
      null;
   }
| Token_Name Token_IdRefs
   {
      Actions.On_IdRefs_Attribute_Declaration
       (Self   => Self,
        Symbol => $1.Symbol);
   }
  DefaultDecl
   {
      null;
   }
| Token_Name Token_Entity
   {
      Actions.On_Entity_Attribute_Declaration
       (Self   => Self,
        Symbol => $1.Symbol);
   }
  DefaultDecl
   {
      null;
   }
| Token_Name Token_Entities
   {
      Actions.On_Entities_Attribute_Declaration
       (Self   => Self,
        Symbol => $1.Symbol);
   }
  DefaultDecl
   {
      null;
   }
| Token_Name Token_NmToken
   {
      Actions.On_NmToken_Attribute_Declaration
       (Self   => Self,
        Symbol => $1.Symbol);
   }
  DefaultDecl
   {
      null;
   }
| Token_Name Token_NmTokens
   {
      Actions.On_NmTokens_Attribute_Declaration
       (Self   => Self,
        Symbol => $1.Symbol);
   }
  DefaultDecl
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
      Actions.On_Required_Attribute_Default_Declaration (Self);
   }
| Token_Implied
   {
      Actions.On_Implied_Attribute_Default_Declaration (Self);
   }
| Token_Fixed Token_String_Segment
   {
      Actions.On_Fixed_Attribute_Default_Declaration
       (Self,
        $2.String);
   }
| Token_String_Segment
   {
      Actions.On_Attribute_Default_Declaration
       (Self,
        $1.String);
   }
;

element :
  Token_Element_Open
   {
      Actions.On_Open_Of_Tag
       (Self,
        $1.Symbol);
   }
  element_common
   {
      null;
   }
;

element_common :
  Attribute_Any Token_Close
   {
      Actions.On_Start_Tag (Self);
   }
  content Token_End_Open Token_Close
   {
      Actions.On_End_Tag
       (Self,
        $5.Symbol);
   }
| Attribute_Any Token_Empty_Close
   {
      Actions.On_Empty_Element_Tag (Self);
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
      Actions.On_Character_Data
       (Self,
        $1.String,
        $1.Is_Whitespace);
   }
| Token_Comment
   {
      Process_Comment
       (Self,
        League.Strings.Internals.Create
         ($1.String));
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
  Attribute_Any Token_Name
   {
      Actions.On_Element_Attribute_Name (Self, $2.Symbol);
   }
  Token_Equal Token_String_Segment
   {
      Actions.On_Element_Attribute
       (Self,
        $2.Symbol,
        $5.String);
   }
| Token_Name
   {
      Actions.On_Element_Attribute_Name
       (Self,
        $1.Symbol);
   }
  Token_Equal Token_String_Segment
   {
      Actions.On_Element_Attribute
       (Self,
        $1.Symbol,
        $4.String);
   }
|
   {
      null;
   }
;

%%

##
   procedure Parse;
##
with Ada.Wide_Wide_Text_IO;
with League.Strings.Internals;
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

   procedure Process_Parameter_Entity_Declaration
    (Self        : access Integer;
     Symbol      : Matreshka.Internals.XML.Symbol_Identifier;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String) is separate;

   procedure Process_Processing_Instruction
     (Self   : access Integer;
      Symbol : Matreshka.Internals.XML.Symbol_Identifier;
      Data   : League.Strings.Universal_String) is separate;

   procedure Process_External_Id
     (Self      : access Integer;
      Public_Id : League.Strings.Universal_String;
      System_Id : League.Strings.Universal_String) is separate;

   procedure Move (To : in out YYSType; From : in out YYSType) is separate;

   procedure Set_String
     (Item          : in out YYSType;
      String        : League.Strings.Universal_String;
      Is_Whitespace : Boolean;
      Is_CData      : Boolean) is separate;

   Self     : access Integer;
   Put_Line : access procedure (Item : League.Strings.Universal_String);

   package Actions is

      procedure On_XML_Version_Information
       (Self    : access Integer;
        Version : not null Matreshka.Internals.Strings.Shared_String_Access);

      procedure On_Character_Data
       (Self          : access Integer;
        Text          : not null Matreshka.Internals.Strings.Shared_String_Access;
        Is_Whitespace : Boolean);

      procedure On_Open_Of_Tag
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_Empty_Element_Tag (Self : access Integer);

      procedure On_End_Tag
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_Start_Tag (Self : access Integer);

      procedure On_Element_Attribute
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier;
        Value  : not null Matreshka.Internals.Strings.Shared_String_Access);

      procedure On_Element_Attribute_Name
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_External_Subset_Declaration (Self : access Integer);

      procedure On_End_Of_Internal_Subset (Self : access Integer);

      procedure On_End_Of_Document_Type_Declaration
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_Start_Of_Document (Self : access Integer);

      procedure On_End_Of_Document (Self : access Integer);

      procedure On_Unexpected_Token_After_Root_Element (Self : access Integer);

      procedure On_Start_Of_Attribute_List_Declaration
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_Start_Of_Element_Declaration
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_CDATA_Attribute_Declaration
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_Id_Attribute_Declaration
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_IdRef_Attribute_Declaration
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_IdRefs_Attribute_Declaration
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_Entity_Attribute_Declaration
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_Entities_Attribute_Declaration
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_NmToken_Attribute_Declaration
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_NmTokens_Attribute_Declaration
       (Self   : access Integer;
        Symbol : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_Required_Attribute_Default_Declaration
       (Self : access Integer);

      procedure On_Implied_Attribute_Default_Declaration
       (Self : access Integer);

      procedure On_Fixed_Attribute_Default_Declaration
       (Self    : access Integer;
        Default : Matreshka.Internals.Strings.Shared_String_Access);

      procedure On_Attribute_Default_Declaration
       (Self    : access Integer;
        Default : Matreshka.Internals.Strings.Shared_String_Access);

      procedure On_General_Entity_Declaration
       (Self        : access Integer;
        Symbol      : Matreshka.Internals.XML.Symbol_Identifier;
        Is_External : Boolean;
        Value       : League.Strings.Universal_String;
        Notation    : Matreshka.Internals.XML.Symbol_Identifier);

      procedure On_Mixed_Content_Declaration (Self : access Integer);

   end Actions;

   package body Actions is separate;

   procedure Handle_Error is separate;

   procedure On_Fatal_Error is separate;

   procedure Parse is
##
   begin
      null;
   end Parse;
