with League.Strings;
with Matreshka.SAX.Attributes;
with Matreshka.SAX.Content_Handlers;
with Matreshka.SAX.Decl_Handlers;
with Matreshka.SAX.DTD_Handlers;
with Matreshka.SAX.Entity_Resolvers;
with Matreshka.SAX.Lexical_Handlers;

package Demo_Handlers is

   type Demo_Handler is limited
     new Matreshka.SAX.Content_Handlers.SAX_Content_Handler
       and Matreshka.SAX.Decl_Handlers.SAX_Decl_Handler
       and Matreshka.SAX.DTD_Handlers.SAX_DTD_Handler
       and Matreshka.SAX.Entity_Resolvers.SAX_Entity_Resolver
       and Matreshka.SAX.Lexical_Handlers.SAX_Lexical_Handler with null record;

   overriding procedure Characters
    (Self    : in out Demo_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Comment
    (Self    : in out Demo_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_Element
    (Self           : in out Demo_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

   overriding function Error_String
    (Self : Demo_Handler)
       return League.Strings.Universal_String;

   overriding procedure External_Entity_Decl
    (Self      : in out Demo_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean);

   overriding procedure Ignorable_Whitespace
    (Self    : in out Demo_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Internal_Entity_Decl
    (Self    : in out Demo_Handler;
     Name    : League.Strings.Universal_String;
     Value   : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Processing_Instruction
    (Self    : in out Demo_Handler;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Resolve_Entity
    (Self      : in out Demo_Handler;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Text      : out League.Strings.Universal_String;
     Success   : in out Boolean);

   overriding procedure Start_Element
    (Self           : in out Demo_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : Matreshka.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

   overriding procedure Unparsed_Entity_Decl
    (Self          : in out Demo_Handler;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String;
     Success       : in out Boolean);

end Demo_Handlers;
