with Ada.Characters.Handling;

package body Generator is

   use Ada.Characters.Handling;
   use Ada.Strings.Unbounded;

   ---------
   -- "<" --
   ---------

   function "<"
     (Left  : Association_Access;
      Right : Association_Access) return Boolean is
   begin
      return Left.Name < Right.Name;
   end "<";

   ---------
   -- "<" --
   ---------

   function "<" (Left : Class_Access; Right : Class_Access) return Boolean is
   begin
      return Left.Name < Right.Name;
   end "<";

   ---------
   -- "<" --
   ---------

   function "<"
     (Left  : Enumeration_Access;
      Right : Enumeration_Access) return Boolean is
   begin
      return Left.Name < Right.Name;
   end "<";

   ---------
   -- "<" --
   ---------

   function "<"
     (Left  : Primitive_Type_Access;
      Right : Primitive_Type_Access) return Boolean is
   begin
      return Left.Name < Right.Name;
   end "<";

   ---------
   -- "<" --
   ---------

   function "<"
     (Left  : Property_Access;
      Right : Property_Access) return Boolean is
   begin
      return Left.Name < Right.Name;
   end "<";

   ---------
   -- "<" --
   ---------

--   function "<"
--     (Left  : Property_Expansion_Access;
--      Right : Property_Expansion_Access) return Boolean is
--   begin
--      return Left.Property < Right.Property;
--   end "<";

   ---------------
   -- Full_Less --
   ---------------

   function Full_Less
     (Left  : Property_Access;
      Right : Property_Access) return Boolean is
   begin
      if Left.Name = Right.Name then
         return Left.Owned_Class.Name < Right.Owned_Class.Name;

      else
         return Left.Name < Right.Name;
      end if;
   end Full_Less;

   ---------------
   -- Get_Owner --
   ---------------

   function Get_Owner (Item : Property_Access) return Element_Access is
   begin
      if Item.Owned_Class /= null then
         return Element_Access (Item.Owned_Class);

      else
         return Element_Access (Item.Owned_Association);
      end if;
   end Get_Owner;

   --------------
   -- Get_Type --
   --------------

   function Get_Type (Item : Property_Access) return Element_Access is
   begin
      return Elements.Element (Item.Type_Id);
   end Get_Type;

   ----------
   -- Hash --
   ----------

   function Hash (Item : Property_Access) return Ada.Containers.Hash_Type is
   begin
      return Hash (Item.Id);
   end Hash;

   ------------------------------
   -- Is_Collection_Of_Element --
   ------------------------------

   function Is_Collection_Of_Element
     (Property : not null Property_Access) return Boolean is
   begin
      return Is_Multivalued (Property)
        and then Get_Type (Property).all in Class_Record'Class;
   end Is_Collection_Of_Element;

   --------------------
   -- Is_Multivalued --
   --------------------

   function Is_Multivalued (Item : Property_Access) return Boolean is
   begin
      return Item.Upper > 1;
   end Is_Multivalued;

   -----------------------
   -- To_Ada_Identifier --
   -----------------------

   function To_Ada_Identifier (Name : String) return String is
      Aux  : String (1 .. Name'Length * 2);
      Last : Natural := 0;

   begin
      for J in Name'Range loop
         if J = Name'First then
            Last := Last + 1;
            Aux (Last) := To_Upper (Name (J));

         else
            if Is_Upper (Name (J)) then
               Last := Last + 1;
               Aux (Last) := '_';
            end if;

            Last := Last + 1;
            Aux (Last) := Name (J);
         end if;
      end loop;

      return Aux (Aux'First .. Last);
   end To_Ada_Identifier;

   -----------------------
   -- To_Ada_Identifier --
   -----------------------

   function To_Ada_Identifier
     (Name : Ada.Strings.Unbounded.Unbounded_String) return String is
   begin
      return To_Ada_Identifier (To_String (Name));
   end To_Ada_Identifier;

   ----------------
   -- To_Element --
   ----------------

   function To_Element (Id : Unbounded_String) return Element_Access is
   begin
      return Elements.Element (Id);
   end To_Element;

end Generator;
