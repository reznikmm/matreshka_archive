with XML.SAX.Readers;

package body XML.SAX.Validating_Readers is

   ---------------------
   -- Content_Handler --
   ---------------------

   overriding function Content_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Content_Handler_Access is
   begin
      return Self.Content_Handler;
   end Content_Handler;

   -------------------------
   -- Declaration_Handler --
   -------------------------

   overriding function Declaration_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Declaration_Handler_Access is
   begin
      return Self.Declaration_Handler;
   end Declaration_Handler;

   -----------------
   -- DTD_Handler --
   -----------------

   overriding function DTD_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_DTD_Handler_Access is
   begin
      return Self.DTD_Handler;
   end DTD_Handler;

   ---------------------
   -- Entity_Resolver --
   ---------------------

   overriding function Entity_Resolver
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Entity_Resolver_Access is
   begin
      return Self.Entity_Resolver;
   end Entity_Resolver;

   -------------------
   -- Error_Handler --
   -------------------

   overriding function Error_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Error_Handler_Access is
   begin
      return Self.Error_Handler;
   end Error_Handler;

   ---------------------
   -- Lexical_Handler --
   ---------------------

   overriding function Lexical_Handler
    (Self : not null access constant SAX_Validating_Reader)
       return XML.SAX.Readers.SAX_Lexical_Handler_Access is
   begin
      return Self.Lexical_Handler;
   end Lexical_Handler;

   -------------------------
   -- Set_Content_Handler --
   -------------------------

   overriding procedure Set_Content_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Content_Handler_Access) is
   begin
     Self.Content_Handler := Handler;
   end Set_Content_Handler;

   -----------------------------
   -- Set_Declaration_Handler --
   -----------------------------

   overriding procedure Set_Declaration_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Declaration_Handler_Access) is
   begin
      Self.Declaration_Handler := Handler;
   end Set_Declaration_Handler;

   ---------------------
   -- Set_DTD_Handler --
   ---------------------

   overriding procedure Set_DTD_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_DTD_Handler_Access) is
   begin
      Self.DTD_Handler := Handler;
   end Set_DTD_Handler;

   -------------------------
   -- Set_Entity_Resolver --
   -------------------------

   overriding procedure Set_Entity_Resolver
    (Self     : not null access SAX_Validating_Reader;
     Resolver : XML.SAX.Readers.SAX_Entity_Resolver_Access) is
   begin
      Self.Entity_Resolver := Resolver;
   end Set_Entity_Resolver;

   -----------------------
   -- Set_Error_Handler --
   -----------------------

   overriding procedure Set_Error_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Error_Handler_Access) is
   begin
      Self.Error_Handler := Handler;
   end Set_Error_Handler;

   -------------------------
   -- Set_Lexical_Handler --
   -------------------------

   overriding procedure Set_Lexical_Handler
    (Self    : not null access SAX_Validating_Reader;
     Handler : XML.SAX.Readers.SAX_Lexical_Handler_Access) is
   begin
      Self.Lexical_Handler := Handler;
   end Set_Lexical_Handler;

end XML.SAX.Validating_Readers;
