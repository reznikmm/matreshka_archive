with League.Holders;

generic
   type Data_Type is private;

   with function To_Holder (Item : Data_Type) return League.Holders.Holder;
   with function Element (Holder : League.Holders.Holder) return Data_Type;

package ORM.Fields.Generic_Fields is

   type Field is new ORM.Fields.Abstract_Field with private;

   function Get (Self : Field'Class) return Data_Type;

   procedure Set (Self : in out Field'Class; Value : Data_Type);

private

   type Field is new ORM.Fields.Abstract_Field with record
      Value : Data_Type;
   end record;

   overriding function Get (Self : Field) return League.Holders.Holder;

   overriding procedure Set
    (Self : in out Field; Value : League.Holders.Holder);

end ORM.Fields.Generic_Fields;
