with League.Strings;
with Matreshka.SAX.Decl_Handlers;
with Matreshka.SAX.DTD_Handlers;

package Demo_Handlers is

   type Demo_Handler is limited
     new Matreshka.SAX.Decl_Handlers.SAX_Decl_Handler
       and Matreshka.SAX.DTD_Handlers.SAX_DTD_Handler with null record;

   overriding function Attribute_Decl
    (Self          : not null access Demo_Handler;
     E_Name        : League.Strings.Universal_String;
     A_Name        : League.Strings.Universal_String;
     A_Type        : League.Strings.Universal_String;
     Value_Default : League.Strings.Universal_String;
     Value         : League.Strings.Universal_String)
       return Boolean;

   overriding function Error_String
    (Self : not null access Demo_Handler)
       return League.Strings.Universal_String;

   overriding function External_Entity_Decl
    (Self      : not null access Demo_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String)
       return Boolean;

   overriding function Internal_Entity_Decl
    (Self  : not null access Demo_Handler;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String)
       return Boolean;

   overriding function Notation_Decl
    (Self          : not null access Demo_Handler;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String)
       return Boolean;

   overriding function Unparsed_Entity_Decl
    (Self          : not null access Demo_Handler;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String)
       return Boolean;

end Demo_Handlers;
