
package CMOF.Classes is

   function Get_Owned_Attribute
    (Self : CMOF_Class) return Ordered_Set_Of_CMOF_Property;

   function Get_Super_Class (Self : CMOF_Class) return Set_Of_CMOF_Class;

end CMOF.Classes;
