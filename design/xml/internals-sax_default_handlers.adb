
package body Internals.Sax_Default_Handlers is

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : not null access constant Sax_Default_Handler)
       return Ada.Strings.Unbounded.Unbounded_String
   is
   begin
      return Ada.Strings.Unbounded.Null_Unbounded_String;
   end Error_String;

end Internals.Sax_Default_Handlers;
