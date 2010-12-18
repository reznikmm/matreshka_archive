with CMOF.Internals.Attributes;

package body CMOF.Associations is

   --------------------
   -- Get_Member_End --
   --------------------

   function Get_Member_End
    (Self : CMOF_Association) return Ordered_Set_Of_CMOF_Property is
   begin
      return CMOF.Internals.Attributes.Internal_Get_Member_End (Self);
   end Get_Member_End;

end CMOF.Associations;
