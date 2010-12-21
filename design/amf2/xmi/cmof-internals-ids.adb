with League.Strings.Internals;
with Matreshka.Internals.Strings;

with CMOF.Internals.Tables;

package body CMOF.Internals.Ids is

   use CMOF.Internals.Tables;

   ------------
   -- Get_Id --
   ------------

   function Get_Id
    (Element : CMOF_Element) return League.Strings.Universal_String is
   begin
      return League.Strings.Internals.Create (Elements.Table (Element).Id);
   end Get_Id;

   ------------
   -- Set_Id --
   ------------

   procedure Set_Id
    (Element : CMOF_Element;
     Id      : League.Strings.Universal_String) is
   begin
      Matreshka.Internals.Strings.Dereference (Elements.Table (Element).Id);
      Elements.Table (Element).Id := League.Strings.Internals.Get_Shared (Id);
      Matreshka.Internals.Strings.Reference (Elements.Table (Element).Id);
   end Set_Id;

end CMOF.Internals.Ids;
