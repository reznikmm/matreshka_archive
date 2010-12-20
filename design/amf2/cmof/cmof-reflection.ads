--  Reflection
with AMF.Values;

package CMOF.Reflection is

   function Get_Meta_Class (Self : CMOF_Element) return CMOF_Class;

   function Get
    (Self     : CMOF_Element;
     Property : CMOF_Property) return AMF.Values.Value;

   procedure Set
    (Self     : CMOF_Element;
     Property : CMOF_Property;
     Value    : AMF.Values.Value);

end CMOF.Reflection;
