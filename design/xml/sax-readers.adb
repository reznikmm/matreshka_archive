
package body Sax.Readers is

   ---------------------
   -- Content_Handler --
   ---------------------

   not overriding function Content_Handler
    (Self : not null access constant Sax_Reader)
       return not null Sax_Content_Handler_Access
   is
   begin
      return Self.Content_Handler;
   end Content_Handler;

   ---------------------
   -- Lexical_Handler --
   ---------------------

   not overriding function Lexical_Handler
    (Self : not null access constant Sax_Reader)
       return not null Sax_Lexical_Handler_Access
   is
   begin
      return Self.Lexical_Handler;
   end Lexical_Handler;

   -------------------------
   -- Set_Content_Handler --
   -------------------------

   not overriding procedure Set_Content_Handler
    (Self    : not null access Sax_Reader;
     Handler : not null Sax_Content_Handler_Access)
   is
   begin
      Self.Content_Handler := Handler;
   end Set_Content_Handler;

   -------------------------
   -- Set_Lexical_Handler --
   -------------------------

   not overriding procedure Set_Lexical_Handler
    (Self    : not null access Sax_Reader;
     Handler : not null Sax_Lexical_Handler_Access)
   is
   begin
      Self.Lexical_Handler := Handler;
   end Set_Lexical_Handler;

end Sax.Readers;
