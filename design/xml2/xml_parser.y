%token Token_Xml_Decl_Open
%token Token_PI_Close
%token Token_PE_Reference
%token Token_Doctype_Decl_Open
%token Token_Entity_Decl_Open
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
%token Token_NData
%token Token_Comment
%token Token_Element_Open
%token Token_Equal
%token Token_End_Open
%token Token_Empty_Close

%with League.Strings
%with Matreshka.Internals.XML.Attributes;
%with Matreshka.SAX.Attributes;

{
   type YYSType is record
      String        : League.Strings.Universal_String;
      Is_External   : Boolean;
      Is_Whitespace : Boolean;
      Public_Id     : League.Strings.Universal_String;
      System_Id     : League.Strings.Universal_String;
      Notation      : League.Strings.Universal_String;
      Attribute     : Matreshka.Internals.XML.Attributes.Attribute;
      Attributes    : Matreshka.SAX.Attributes.SAX_Attributes;
   end record;
}

%%

--  XXX Not implemented.
document:
    Token_Xml_Decl_Open Token_PI_Close doctypedecl_optional element
{
   null;
}
  |
{
   null;
}
  ;

doctypedecl_optional:
    doctypedecl
{
   null;
}
  |
{
   null;
}
  ;

doctypedecl:
    Token_Doctype_Decl_Open Token_Name ExternalID_optional
{
   --  Document type declaration, rule [28]. Once external identifier are
   --  recognized external document type declaration subset need to be parsed 
   --  before processing of internal subset. External subset is inserted
   --  immediately after external identifier when present. Thus original
   --  rule [28] is rewritten and extended to reflect this inclusion.

   Process_Document_Type_Declaration
    (Self,
     $2.String,
     $3.Is_External,
     $3.Public_Id,
     $3.System_Id);
}
   external_subset_optional internal_subset_optional Token_Close
{
   null;
}
  ;

ExternalID_optional:
    ExternalID
{
   $$ :=
    (Is_External => True,
     Public_Id   => $1.Public_Id,
     System_Id   => $1.System_Id,
     others      => <>);
}
  |
{
   $$ :=
    (Is_External => False,
     others      => <>);
}
  ;

ExternalID:
    Token_System Token_System_Literal
{
   --  ExternalID specified by SYSTEM, rule [75].

   $$ :=
    (System_Id => $2.String,
     others    => <>);
}
  | Token_Public Token_Public_Literal Token_System_Literal
{
   --  ExternalID specified by PUBLIC, rule [75].

   $$ :=
    (Public_Id => $2.String,
     System_Id => $3.String,
     others    => <>);
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
  | Token_Comment
{
   Process_Comment (Self, $1.String);
}
  ;

EntityDecl:
    Token_Entity_Decl_Open Token_Name EntityDef Token_Close
{
   Process_General_Entity_Declaration
    (Self,
     $2.String,
     $3.Is_External,
     $3.String,
     $3.Public_Id,
     $3.System_Id,
     $3.Notation);
}
  | Token_Entity_Decl_Open Token_Percent Token_Name PEDef Token_Close
{
   Process_Parameter_Entity_Declaration (Self, $3.String, $4.String);
}
  ;

EntityDef:
    EntityValue
{
   $$ :=
    (Is_External => False,
     String      => $1.String,
     others      => <>);
}
  | ExternalID
{
   $$ :=
    (Is_External => True,
     Public_Id   => $1.Public_Id,
     System_Id   => $1.System_Id,
     others      => <>);
}
  | ExternalID Token_NData Token_Name
{
   $$ :=
    (Is_External => True,
     Public_Id   => $1.Public_Id,
     System_Id   => $1.System_Id,
     Notation    => $3.String,
     others      => <>);
}
  ;

PEDef:
    EntityValue
{
   null;
}
  | ExternalID
{
   null;
}
  ;

EntityValue:
    Token_Value_Open AttributeEntityValue_Content Token_Value_Close
{
   --  Entity value including surrounding delimiters.

   $$.String := $2.String;
}
  ;

AttributeEntityValue_Content:
     AttributeEntityValue_Content Token_String_Segment
{
   --  Additional string segment in entity value.

   $$.String := $1.String & $2.String;
}
  | Token_String_Segment
{
   --  Single string segment in entity value.

   $$.String := $1.String;
}
  |
{
   $$.String := League.Strings.To_Universal_String ("");
}
  ;

element :
    Token_Element_Open Attribute_Any Token_Close
{
   Process_Start_Tag (Self, $1.String, $2.Attributes);
}
    content Token_End_Open Token_Close
{
   Process_End_Tag (Self, $6.String);
}
  | Token_Element_Open Attribute_Any Token_Empty_Close
{
   Process_Empty_Element_Tag (Self, $1.String, $2.Attributes);
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
   Process_Characters (Self, $1.String, $1.Is_Whitespace);
}
  | Token_Comment
{
   Process_Comment (Self, $1.String);
}
  ;

Attribute_Any :
    Attribute_Any Attribute
{
   $$ := $1;
   Matreshka.SAX.Attributes.Internals.Append
    (Self           => $$.Attributes,
     Namespace_URI  => $2.Attribute.Namespace_URI,
     Local_Name     => $2.Attribute.Local_Name,
     Qualified_Name => $2.Attribute.Qualified_Name,
     Value          => $2.Attribute.Value);
}
  | Attribute
{
   $$ := (others => <>);
   Matreshka.SAX.Attributes.Internals.Append
    (Self           => $$.Attributes,
     Namespace_URI  => $1.Attribute.Namespace_URI,
     Local_Name     => $1.Attribute.Local_Name,
     Qualified_Name => $1.Attribute.Qualified_Name,
     Value          => $1.Attribute.Value);
}
  |
{
   $$ := (others => <>);
}
  ;

Attribute :
    Token_Name Token_Equal AttributeValue
{
   $$ :=
    (Attribute =>
      (Qualified_Name => $1.String,
       Value          => $3.String,
       others         => <>),
     others    => <>);
}
  ;

AttributeValue :
    Token_Value_Open AttributeEntityValue_Content Token_Value_Close
{
   null;
}
  ;

%%

##
   procedure Parse;
##
with Ada.Wide_Wide_Text_IO;
with League.Strings;
with Matreshka.SAX.Attributes.Internals;
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
     Name        : League.Strings.Universal_String;
     Is_External : Boolean;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String) is separate;

   procedure Process_General_Entity_Declaration
    (Self        : access Integer;
     Name        : League.Strings.Universal_String;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String;
     Notation    : League.Strings.Universal_String) is separate;

   procedure Process_Parameter_Entity_Declaration
    (Self  : access Integer;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String) is separate;

   procedure Process_Start_Tag
    (Self       : access Integer;
     Name       : League.Strings.Universal_String;
     Attributes : Matreshka.SAX.Attributes.SAX_Attributes) is separate;

   procedure Process_End_Tag
    (Self : access Integer;
     Name : League.Strings.Universal_String) is separate;

   procedure Process_Empty_Element_Tag
    (Self       : access Integer;
     Name       : League.Strings.Universal_String;
     Attributes : Matreshka.SAX.Attributes.SAX_Attributes) is separate;

   procedure Process_Characters
    (Self          : access Integer;
     Text          : League.Strings.Universal_String;
     Is_Whitespace : Boolean) is separate;

   Self     : access Integer;
   Put_Line : access procedure (Item : League.Strings.Universal_String);

   procedure Parse is
##
   begin
      null;
   end Parse;
