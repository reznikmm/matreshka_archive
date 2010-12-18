with CMOF.Internals.Attributes;

package body CMOF.Multiplicity_Elements is

   use CMOF.Internals.Attributes;

   --------------------
   -- Is_Multivalued --
   --------------------

   function Is_Multivalued
    (Self : CMOF_Multiplicity_Element) return Boolean is
   begin
      return Internal_Get_Upper (Self) > 1;
   end Is_Multivalued;

end CMOF.Multiplicity_Elements;
