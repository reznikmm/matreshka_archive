with CMOF.Internals.Attributes;

package body CMOF.Typed_Elements is

   --------------
   -- Get_Type --
   --------------

   function Get_Type (Self : CMOF_Typed_Element) return CMOF_Type is
   begin
      return CMOF.Internals.Attributes.Internal_Get_Type (Self);
   end Get_Type;

end CMOF.Typed_Elements;
