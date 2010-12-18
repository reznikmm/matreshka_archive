with CMOF.Internals.Attributes;

package body CMOF.Properties is

   ---------------------
   -- Get_Association --
   ---------------------

   function Get_Association (Self : CMOF_Property) return CMOF_Association is
   begin
      return CMOF.Internals.Attributes.Internal_Get_Association (Self);
   end Get_Association;

end CMOF.Properties;
