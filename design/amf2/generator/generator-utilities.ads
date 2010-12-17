
package Generator.Utilities is

   function Constant_Name_In_Metamodel
    (Element : not null Association_Access) return String;
   --  Returns name of corresponding constant in meta model package.

   function Constant_Name_In_Metamodel
    (Element : not null Class_Access) return String;
   --  Returns name of corresponding constant in meta model package.

   function Constant_Name_In_Metamodel
    (Element : not null Property_Access) return String;
   --  Returns name of corresponding constant in meta model package.

   function Has_Boolean_Type
    (Property : not null Property_Access) return Boolean;

   function Has_Integer_Type
    (Property : not null Property_Access) return Boolean;

   function Has_Unlimited_Natural_Type
    (Property : not null Property_Access) return Boolean;

end Generator.Utilities;
