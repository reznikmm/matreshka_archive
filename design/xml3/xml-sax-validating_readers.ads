with XML.SAX.Readers;

package XML.SAX.Validating_Readers is

   type SAX_Validating_Reader is
     limited new XML.SAX.Readers.SAX_Reader with private;

   overriding function Content_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Content_Handler_Access;

   overriding function Declaration_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Declaration_Handler_Access;

   overriding function DTD_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_DTD_Handler_Access;

   overriding function Entity_Resolver
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Entity_Resolver_Access;

   overriding function Error_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Error_Handler_Access;

   overriding function Lexical_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Lexical_Handler_Access;

   overriding procedure Set_Content_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Content_Handler_Access);

   overriding procedure Set_Declaration_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Declaration_Handler_Access);

   overriding procedure Set_DTD_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_DTD_Handler_Access);

   overriding procedure Set_Entity_Resolver
    (Self     : not null access SAX_Validating_Reader;
     Resolver : XML.SAX.Readers.SAX_Entity_Resolver_Access);

   overriding procedure Set_Error_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Error_Handler_Access);

   overriding procedure Set_Lexical_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Lexical_Handler_Access);

private

   type SAX_Validating_Reader is
     limited new XML.SAX.Readers.SAX_Reader with
   record
      --  Handlers
      Content_Handler     : XML.SAX.Readers.SAX_Content_Handler_Access;
      Declaration_Handler : XML.SAX.Readers.SAX_Declaration_Handler_Access;
      DTD_Handler         : XML.SAX.Readers.SAX_DTD_Handler_Access;
      Entity_Resolver     : XML.SAX.Readers.SAX_Entity_Resolver_Access;
      Error_Handler       : XML.SAX.Readers.SAX_Error_Handler_Access;
      Lexical_Handler     : XML.SAX.Readers.SAX_Lexical_Handler_Access;
   end record;

end XML.SAX.Validating_Readers;
