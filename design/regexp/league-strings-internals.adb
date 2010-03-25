
package body League.Strings.Internals is

   function Get_Shared (Item : Universal_String)
     return not null Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return Item.Data;
   end Get_Shared;

end league.Strings.Internals;
