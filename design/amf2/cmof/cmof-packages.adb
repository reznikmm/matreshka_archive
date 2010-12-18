with CMOF.Internals.Attributes;

package body CMOF.Packages is

   --------------------------
   -- Get_Packaged_Element --
   --------------------------

   function Get_Packaged_Element
    (Self : CMOF_Package) return Set_Of_CMOF_Packageable_Element is
   begin
      return CMOF.Internals.Attributes.Internal_Get_Packaged_Element (Self);
   end Get_Packaged_Element;

end CMOF.Packages;
