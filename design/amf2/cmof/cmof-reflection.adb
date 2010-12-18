with CMOF.Internals.Reflection;

package body CMOF.Reflection is

   --------------------
   -- Get_Meta_Class --
   --------------------

   function Get_Meta_Class (Self : CMOF_Element) return CMOF_Class is
   begin
      return CMOF.Internals.Reflection.Get_Meta_Class (Self);
   end Get_Meta_Class;

--   function Get
--    (Self     : CMOF_Element;
--     Property : CMOF_Property) return Collection_Of_CMOF_Element;

end CMOF.Reflection;
