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

{
   type YYSType is null record;
}

%%

--  XXX Not implemented.
document:
    Token_Xml_Decl_Open Token_PI_Close doctypedecl_optional
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
    Token_Doctype_Decl_Open Token_Name ExternalID_optional internal_subset_optional Token_Close
{
   --  Temporal declaration to test parser transformation capabilities.

   null;
}
  ;

ExternalID_optional:
    Token_System Token_System_Literal
{
   --  ExternalID specified by SYSTEM, rule [75].

   null;
}
  | Token_Public Token_Public_Literal Token_System_Literal
{
   --  ExternalID specified by PUBLIC, rule [75].

   null;
}
  |
{
   null;
}
  ;

internal_subset_optional:
    Token_Internal_Subset_Open intSubset Token_Internal_Subset_Close
{
   null;
}
  |
{
   null;
}
  ;

intSubset:
{
   null;
}
  ;

%%

##
   procedure Parse;
##
with Ada.Wide_Wide_Text_IO;
##
   function YYLex return Token is separate;

   procedure YYError (Msg : String) is separate;

   procedure Parse is
##
   begin
      null;
   end Parse;
