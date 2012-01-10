package body String_Sources is

   --------------
   -- Get_Next --
   --------------

   overriding function Get_Next
     (Self : not null access String_Source)
      return Abstract_Sources.Code_Unit_32
   is
   begin
      if Self.Cursor.Has_Element then
         return Result : Abstract_Sources.Code_Unit_32 do
            Result := Wide_Wide_Character'Pos
              (Self.Cursor.Element);
            Self.Cursor.Next;
         end return;
      else
         return Abstract_Sources.End_Of_Input;
      end if;
   end Get_Next;

   ------------
   -- Create --
   ------------

   procedure Create
     (Self : out String_Source;
      Text : League.Strings.Universal_String) is
   begin
      Self.Text := Text;
      Self.Cursor.First (Self.Text);
   end Create;

end String_Sources;
