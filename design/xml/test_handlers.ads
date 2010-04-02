with Ada.Strings.Wide_Wide_Unbounded;

with Sax.Content_Handlers;
with Sax.Lexical_Handlers;

package Test_Handlers is

   type Test_Handler is
     limited new Sax.Content_Handlers.Sax_Content_Handler
       and Sax.Lexical_Handlers.Sax_Lexical_Handler with null record;

   overriding procedure Characters
    (Self : not null access Test_Handler;
     Text : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop : in out Boolean);

   overriding procedure Comment
    (Self : not null access Test_Handler;
     Text : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop : in out Boolean);

   overriding procedure End_Document
    (Self : not null access Test_Handler;
     Stop : in out Boolean);

   overriding function Error_String
    (Self : not null access constant Test_Handler)
       return Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;

   overriding procedure Ignorable_Whitespace
    (Self : not null access Test_Handler;
     Text : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop : in out Boolean);

   overriding procedure Processing_Instruction
    (Self   : not null access Test_Handler;
     Target : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Data   : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
     Stop   : in out Boolean);

   overriding procedure Start_Document
    (Self : not null access Test_Handler;
     Stop : in out Boolean);

end Test_Handlers;
