with CMOF.Internals.Attributes;
with CMOF.Internals.Setup;

package body CMOF.Classes is

   use CMOF.Internals.Attributes;

   -------------------------
   -- Get_Owned_Attribute --
   -------------------------

   function Get_Owned_Attribute
    (Self : CMOF_Class) return Ordered_Set_Of_CMOF_Property is
   begin
      return Internal_Get_Owned_Attribute (Self);
   end Get_Owned_Attribute;

   ---------------------
   -- Get_Super_Class --
   ---------------------

   function Get_Super_Class (Self : CMOF_Class) return Set_Of_CMOF_Class is
   begin
      return Internal_Get_Super_Class (Self);
   end Get_Super_Class;

end CMOF.Classes;
