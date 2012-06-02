with League.Holders;

package ORM.Fields is

   pragma Preelaborate;

   type Abstract_Field is abstract tagged limited private;

   function Is_Modified (Self : Abstract_Field'Class) return Boolean;

   procedure Reset_Is_Modified (Self : in out Abstract_Field'Class);

   not overriding function Get
    (Self : Abstract_Field) return League.Holders.Holder is abstract;

   not overriding procedure Set
    (Self : in out Abstract_Field; Value : League.Holders.Holder) is abstract;

private

   type Abstract_Field is abstract tagged limited record
      Is_Modified : Boolean := False;
   end record;

end ORM.Fields;
