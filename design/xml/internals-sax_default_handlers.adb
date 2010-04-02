
package body Internals.Sax_Default_Handlers is

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : not null access constant Sax_Default_Handler)
       return Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String
   is
   begin
      return Ada.Strings.Wide_Wide_Unbounded.Null_Unbounded_Wide_Wide_String;
   end Error_String;

end Internals.Sax_Default_Handlers;
