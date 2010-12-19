with League.Strings;

with AMF.Values;

package CMOF.Factory is

   function Create (Meta_Class : CMOF_Class) return CMOF_Element;

   procedure Create_Link
    (Association    : CMOF_Association;
     First_Element  : CMOF_Element;
     Second_Element : CMOF_Element);

   function Create_From_String
    (Data_Type : CMOF_Data_Type;
     Image     : League.Strings.Universal_String) return AMF.Values.Value;

end CMOF.Factory;
