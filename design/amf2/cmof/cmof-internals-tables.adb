with CMOF.Internals.Attribute_Mappings;
with CMOF.Internals.Collections;
with CMOF.Internals.Metamodel;
with CMOF.Multiplicity_Elements;

package body CMOF.Internals.Tables is

   use CMOF.Internals.Metamodel;
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

   --------------------------
   -- Internal_Create_Link --
   --------------------------

   procedure Internal_Create_Link
    (Association     : CMOF_Association;
     First_Element   : CMOF_Element;
     First_Property  : CMOF_Property;
     Second_Element  : CMOF_Element;
     Second_Property : CMOF_Property)
   is
      use CMOF.Internals.Attribute_Mappings;
      use CMOF.Internals.Collections;
      use CMOF.Multiplicity_Elements;

      procedure Create_Single_Single;

      procedure Create_Single_Multiple;

      procedure Create_Multiple_Single;

      procedure Create_Multiple_Multiple;

      ------------------------------
      -- Create_Multiple_Multiple --
      ------------------------------

      procedure Create_Multiple_Multiple is
      begin
         Links.Table (Links.Last) :=
          (L_Multiple_Multiple,
           Association,
           First_Element,
           Second_Element);

         if First_Property not in Cmof_Collection_Of_Element_Property then
            Append
             (Elements.Table (First_Element).Member (0).Collection,
              Second_Element);

         else
            Append
             (Elements.Table (First_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (First_Element).Kind,
                      First_Property)),
              Second_Element);
         end if;

         if Second_Property not in Cmof_Collection_Of_Element_Property then
            Append
             (Elements.Table (Second_Element).Member (0).Collection,
              First_Element);

         else
            Append
             (Elements.Table (Second_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (Second_Element).Kind,
                      Second_Property)),
              First_Element);
         end if;
      end Create_Multiple_Multiple;

      ----------------------------
      -- Create_Multiple_Single --
      ----------------------------

      procedure Create_Multiple_Single is
      begin
         Links.Table (Links.Last) :=
          (L_Multiple_Single,
           Association,
           First_Element,
           Second_Element);

         if First_Property not in Cmof_Collection_Of_Element_Property then
            Append
             (Elements.Table (First_Element).Member (0).Collection,
              Second_Element);

         else
            Append
             (Elements.Table (First_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (First_Element).Kind,
                      First_Property)),
              Second_Element);
         end if;

         Elements.Table (Second_Element).Member
          (Member_Offset
            (Elements.Table (Second_Element).Kind,
             Second_Property)).Element := First_Element;
      end Create_Multiple_Single;

      ----------------------------
      -- Create_Single_Multiple --
      ----------------------------

      procedure Create_Single_Multiple is
      begin
         Links.Table (Links.Last) :=
          (L_Single_Multiple,
           Association,
           First_Element,
           Second_Element);
         Elements.Table (First_Element).Member
          (Member_Offset
            (Elements.Table (First_Element).Kind,
             Second_Property)).Element := Second_Element;

         if Second_Property not in Cmof_Collection_Of_Element_Property then
            Append
             (Elements.Table (Second_Element).Member (0).Collection,
              First_Element);

         else
            Append
             (Elements.Table (Second_Element).Member (0).Collection
                + Collection_Of_CMOF_Element
                   (Collection_Offset
                     (Elements.Table (Second_Element).Kind,
                      Second_Property)),
              First_Element);
         end if;
      end Create_Single_Multiple;

      --------------------------
      -- Create_Single_Single --
      --------------------------

      procedure Create_Single_Single is
      begin
         Links.Table (Links.Last) :=
          (L_Single_Single,
           Association,
           First_Element,
           Second_Element);
         Elements.Table (First_Element).Member
          (Member_Offset
            (Elements.Table (First_Element).Kind,
             Second_Property)).Element := Second_Element;
         Elements.Table (Second_Element).Member
          (Member_Offset
            (Elements.Table (Second_Element).Kind,
             Second_Property)).Element := First_Element;
      end Create_Single_Single;

   begin
      Links.Increment_Last;

      if Is_Multivalued (First_Property) then
         if Is_Multivalued (Second_Property) then
            Create_Multiple_Multiple;

         else
            Create_Multiple_Single;
         end if;

      else
         if Is_Multivalued (Second_Property) then
            Create_Single_Multiple;

         else
            Create_Single_Single;
         end if;
      end if;
   end Internal_Create_Link;

end CMOF.Internals.Tables;
