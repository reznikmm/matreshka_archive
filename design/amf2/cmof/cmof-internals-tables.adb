
package body Cmof.Internals.Tables is

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
      Elements.Table (Element).Member (0) := To_Internal (First);
   end Allocate_Collection_Of_Cmof_Element_Slots;

   ---------
   -- "+" --
   ---------

   function "+"
     (Left  : Interfaces.Integer_32;
      Right : Interfaces.Integer_8) return Collection_Of_Cmof_Element
   is
      use type Interfaces.Integer_32;

   begin
      return Collection_Of_Cmof_Element (Left + Interfaces.Integer_32 (Right));
   end "+";

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

   --------------------------------
   -- Initialize_Metaassociation --
   --------------------------------

   procedure Initialize_Metaassociation
    (Metaassociation : Cmof_Association;
     Collections     : Natural) is
   begin
      Elements.Table (Metaassociation) :=
        (Kind   => E_Association,
         Member => (0      => 0,
                    others => 0));
      Allocate_Collection_Of_Cmof_Element_Slots (Metaassociation, Collections);
   end Initialize_Metaassociation;

   --------------------------
   -- Initialize_Metaclass --
   --------------------------

   procedure Initialize_Metaclass
    (Metaclass : Cmof_Class; Collections : Natural) is
   begin
      Elements.Table (Metaclass) :=
        (Kind   => E_Class,
         Member => (0      => 0,
                    others => 0));
      Allocate_Collection_Of_Cmof_Element_Slots (Metaclass, Collections);
   end Initialize_Metaclass;

   -----------------------------
   -- Initialize_Metaproperty --
   -----------------------------

   procedure Initialize_Metaproperty
    (Metaproperty : Cmof_Property;
     Collections  : Natural) is
   begin
      Elements.Table (Metaproperty) :=
        (Kind   => E_Property,
         Member => (0      => 0,
                    others => 0));
      Allocate_Collection_Of_Cmof_Element_Slots (Metaproperty, Collections);
   end Initialize_Metaproperty;

end Cmof.Internals.Tables;
