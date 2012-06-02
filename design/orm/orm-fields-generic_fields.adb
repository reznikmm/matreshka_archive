
package body ORM.Fields.Generic_Fields is

   ---------
   -- Get --
   ---------

   function Get (Self : Field'Class) return Data_Type is
   begin
      return Self.Value;
   end Get;

   ---------
   -- Get --
   ---------

   overriding function Get (Self : Field) return League.Holders.Holder is
   begin
      return To_Holder (Self.Value);
   end Get;

   ---------
   -- Set --
   ---------

   procedure Set (Self : in out Field'Class; Value : Data_Type) is
   begin
      if Self.Value /= Value then
         Self.Value := Value;
         Self.Is_Modified := True;
      end if;
   end Set;

   ---------
   -- Set --
   ---------

   overriding procedure Set
    (Self : in out Field; Value : League.Holders.Holder) is
   begin
      Self.Set (Element (Value));
   end Set;

end ORM.Fields.Generic_Fields;
