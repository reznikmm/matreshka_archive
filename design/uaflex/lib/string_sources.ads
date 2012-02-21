with Abstract_Sources;
with League.Strings;
with League.Strings.Cursors.Characters;

package String_Sources is

   type String_Source is new Abstract_Sources.Abstract_Source with private;

   overriding function Get_Next
     (Self : not null access String_Source)
     return Abstract_Sources.Code_Unit_32;

   procedure Create
     (Self : out String_Source;
      Text : League.Strings.Universal_String);

private

   type String_Source is new Abstract_Sources.Abstract_Source with record
      Text   : League.Strings.Universal_String;
      Cursor : League.Strings.Cursors.Characters.Character_Cursor;
   end record;

end String_Sources;
