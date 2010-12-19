with League.Strings;

package CMOF.XMI_Helper is

   function Resolve
    (Name : League.Strings.Universal_String) return CMOF_Element;

   function Resolve_Attribute
    (Class : CMOF_Class;
     Name  : League.Strings.Universal_String) return CMOF_Element;

   function Is_Data_Type (Element : CMOF_Element) return Boolean;

end CMOF.XMI_Helper;
