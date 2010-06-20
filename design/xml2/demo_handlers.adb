
package body Demo_Handlers is

   --------------------
   -- Attribute_Decl --
   --------------------

   overriding function Attribute_Decl
    (Self          : not null access Demo_Handler;
     E_Name        : League.Strings.Universal_String;
     A_Name        : League.Strings.Universal_String;
     A_Type        : League.Strings.Universal_String;
     Value_Default : League.Strings.Universal_String;
     Value         : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Attribute_Decl;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : not null access Demo_Handler)
       return League.Strings.Universal_String is
   begin
      return X : League.Strings.Universal_String;
   end Error_String;

   --------------------------
   -- External_Entity_Decl --
   --------------------------

   overriding function External_Entity_Decl
    (Self      : not null access Demo_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end External_Entity_Decl;

   --------------------------
   -- Internal_Entity_Decl --
   --------------------------

   overriding function Internal_Entity_Decl
    (Self  : not null access Demo_Handler;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String)
       return Boolean is
   begin
      return True;
   end Internal_Entity_Decl;

end Demo_Handlers;
