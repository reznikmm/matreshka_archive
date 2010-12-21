with League.Strings;

package CMOF.XMI_Helper is

   function Resolve
    (Name : League.Strings.Universal_String) return CMOF_Element;

   function Resolve_Attribute
    (Class : CMOF_Class;
     Name  : League.Strings.Universal_String) return CMOF_Element;

   function Is_Data_Type (Element : CMOF_Element) return Boolean;

   function Get_Id
    (Element : CMOF_Element) return League.Strings.Universal_String;

   procedure Set_Id
    (Element : CMOF_Element;
     Id      : League.Strings.Universal_String);

end CMOF.XMI_Helper;
