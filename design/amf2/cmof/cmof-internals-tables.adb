
package body Cmof.Internals.Tables is

   use CMOF.Internals.Types;

   -----------------------------------------------
   -- Allocate_Collection_Of_Cmof_Element_Slots --
   -----------------------------------------------

   procedure Allocate_Collection_Of_Cmof_Element_Slots
    (Element : Cmof_Element;
     Count   : Natural)
   is
      First : constant Collection_Of_CMOF_Element
        := Collections.Last + 1;

   begin
      Collections.Set_Last (First + Collection_Of_CMOF_Element (Count));
      Elements.Table (Element).Member (0) := (M_Collection_Of_Element, First);
   end Allocate_Collection_Of_Cmof_Element_Slots;

   -------------
   -- Is_Null --
   -------------

   function Is_Null (Self : Cmof_Element) return Boolean is
   begin
      return Self = Null_Cmof_Element;
   end Is_Null;

   --------------
   -- Is_Valid --
   --------------

   function Is_Valid (Self : Cmof_Element) return Boolean is
   begin
      return Is_Null (Self)
        or else (Self in Elements.First .. Elements.Last
                   and then Elements.Table (Self).Kind /= E_None);
   end Is_Valid;

   ---------------------------------------
   -- Initialize_Ordered_Set_Collection --
   ---------------------------------------

   procedure Initialize_Ordered_Set_Collection
--    (Class      : CMOF_Class;
--     Property   : CMOF_Property;
    (Collection : Collection_Of_CMOF_Element) is
   begin
      Collections.Table (Collection) :=
       (Kind => C_Ordered_Set,
        Head => 0,
        Tail => 0);
   end Initialize_Ordered_Set_Collection;

   -------------------------------
   -- Initialize_Set_Collection --
   -------------------------------

   procedure Initialize_Set_Collection
--    (Class      : CMOF_Class;
--     Property   : CMOF_Property;
    (Collection : Collection_Of_CMOF_Element) is
   begin
      Collections.Table (Collection) :=
       (Kind => C_Set,
        Head => 0,
        Tail => 0);
   end Initialize_Set_Collection;

end Cmof.Internals.Tables;
