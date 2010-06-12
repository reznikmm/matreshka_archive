%token Token_Xml_Decl_Open

{
   type YYSType is null record;
}

%%

document:
    Token_Xml_Decl_Open
  |
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
