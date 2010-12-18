with CMOF.Internals.Attributes;

package body CMOF.Named_Elements is

   --------------
   -- Get_Name --
   --------------

   function Get_Name
    (Self : CMOF_Named_Element) return League.Strings.Universal_String is
   begin
      return CMOF.Internals.Attributes.Internal_Get_Name (Self);
   end Get_Name;

end CMOF.Named_Elements;
