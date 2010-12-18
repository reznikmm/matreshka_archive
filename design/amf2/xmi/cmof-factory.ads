
package CMOF.Factory is

   function Create (Meta_Class : CMOF_Class) return CMOF_Element;

   procedure Create_Link
    (Association    : CMOF_Association;
     First_Element  : CMOF_Element;
     Second_Element : CMOF_Element);

end CMOF.Factory;
