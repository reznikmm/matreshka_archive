with CMOF.Internals.Reflection;

package body CMOF.Reflection is

--   function Get
--    (Self     : CMOF_Element;
--     Property : CMOF_Property) return Collection_Of_CMOF_Element;

   --------------------
   -- Get_Meta_Class --
   --------------------

   function Get_Meta_Class (Self : CMOF_Element) return CMOF_Class is
   begin
      return CMOF.Internals.Reflection.Get_Meta_Class (Self);
   end Get_Meta_Class;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self     : CMOF_Element;
     Property : CMOF_Property;
     Value    : AMF.Values.Value) is
   begin
      CMOF.Internals.Reflection.Set (Self, Property, Value);
   end Set;

end CMOF.Reflection;
