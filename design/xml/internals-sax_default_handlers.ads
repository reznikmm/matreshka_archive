with Ada.Strings.Wide_Wide_Unbounded;

with Sax.Content_Handlers;
with Sax.Lexical_Handlers;

package Internals.Sax_Default_Handlers is

   type Sax_Default_Handler is
     limited new Sax.Content_Handlers.Sax_Content_Handler
       and Sax.Lexical_Handlers.Sax_Lexical_Handler with null record;

   overriding function Error_String
    (Self : not null access constant Sax_Default_Handler)
       return Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;

   Default_Handler : aliased Sax_Default_Handler;

end Internals.Sax_Default_Handlers;
