
package body ORM.Fields is

   -----------------
   -- Is_Modified --
   -----------------

   function Is_Modified (Self : Abstract_Field'Class) return Boolean is
   begin
      return Self.Is_Modified;
   end Is_Modified;

   -----------------------
   -- Reset_Is_Modified --
   -----------------------

   procedure Reset_Is_Modified (Self : in out Abstract_Field'Class) is
   begin
      Self.Is_Modified := False;
   end Reset_Is_Modified;

end ORM.Fields;
