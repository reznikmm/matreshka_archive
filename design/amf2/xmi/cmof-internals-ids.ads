with League.Strings;

package CMOF.Internals.Ids is

   function Get_Id
    (Element : CMOF_Element) return League.Strings.Universal_String;

   procedure Set_Id
    (Element : CMOF_Element;
     Id      : League.Strings.Universal_String);

end CMOF.Internals.Ids;
