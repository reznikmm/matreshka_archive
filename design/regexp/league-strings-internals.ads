with Matreshka.Internals.Strings;

package League.Strings.Internals is

   function Get_Shared (Item : Universal_String)
     return not null Matreshka.Internals.Strings.Shared_String_Access;

end league.Strings.Internals;
