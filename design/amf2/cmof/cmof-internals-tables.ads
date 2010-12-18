with GNAT.Table;

with CMOF.Internals.Types;
with Matreshka.Internals.Strings;

private package CMOF.Internals.Tables is

   type Member_Kinds is
    (M_None,
     M_Element,
     M_Collection_Of_Element,
     M_Boolean,
     M_Integer,
     M_Unlimited_Natural,
     M_String);

   type Member_Record (Kind : Member_Kinds := M_None) is record
      case Kind is
         when M_None =>
            null;

         when M_Element =>
            Element : CMOF_Element;

         when M_Collection_Of_Element =>
            Collection : Collection_Of_CMOF_Element;

         when M_Boolean =>
            Boolean_Value : CMOF_Boolean;

         when M_Integer =>
            Integer_Value : CMOF_Integer;

         when M_Unlimited_Natural =>
            Natural_Value : CMOF_Unlimited_Natural;

         when M_String =>
            String_Value : Matreshka.Internals.Strings.Shared_String_Access;
      end case;
   end record;

   type Member_Array is array (Natural range 0 .. 21) of Member_Record;
   --  XXX Size of this array must be generated.

   type Element_Record (Kind : Types.Element_Kinds := Types.E_None) is record
      case Kind is
         when Types.E_None =>
            null;

         when others =>
            Member : Member_Array;
            --  First element (with index 0) contains index of first collection
            --  of class instance. To save space all class's collections have
            --  sequential numbers, thus we need to store only first one. This
            --  first collection is used to establish links with other classes
            --  when correspondig association end is not owned by the class.
      end case;
   end record;

   --  Link can connect:
   --   - single slot to single slot
   --   - collection slot to single slot
   --   - single slot to connetion slot
   --   - connection slot to connection slot
   --   - ? element and collection?

   type Link_Kinds is
    (L_None,
     L_Single_Single,
     L_Single_Multiple,
     L_Multiple_Single,
     L_Multiple_Multiple);

   type Link_Record (Kind : Link_Kinds := L_None) is record
      case Kind is
         when L_None =>
            null;

         when L_Single_Single
           | L_Single_Multiple
           | L_Multiple_Single
           | L_Multiple_Multiple
         =>
            Association    : CMOF_Association;
            First_Element  : CMOF_Element;
            Second_Element : CMOF_Element;
      end case;
   end record;

--   type Link_Kinds is (L_None, L_Slot_Slot, L_Slot_Collection, L_Collection_Slot, L_Collection_Collection);
--
--   type Link_Record (Kind : Link_Kinds := L_None) is record
--      First_Element     : Cmof_Element;
--      First_Property    : Cmof_Element;
----      First_Collection  : Collection_Of_CMOF_Element;
--      Second_Element    : Cmof_Element;
--      Second_Property   : Cmof_Element;
----      Second_Collection : Collection_Of_CMOF_Element;
--
--      case Kind is
--         when L_None =>
--            null;
--
--         when L_Slot_Slot | L_Slot_Collection =>
--            null;
--
--         when L_Collection_Slot | L_Collection_Collection =>
--            null;
----  First_Collection_Element  : Collection_Element_Identifier;
----  Second_Collection_Element : Collection_Element_Identifier;
--      end case;
--   end record;

   type Collection_Element_Identifier is new Natural;

   type Collection_Kinds is (C_None, C_Set, C_Ordered_Set, C_Bag, C_Sequence);

   type Collection_Record (Kind : Collection_Kinds := C_None) is record
--      Owner : CMOF_Element;
      --  Owner of the collection.

--      Read_Only : Boolean;
      Head      : Collection_Element_Identifier;
      Tail      : Collection_Element_Identifier;
      --  First and Last elements in the collection.
--      Size      : Natural;
   end record;

--   type Collection_Element_Kinds is (CE_None, 

   type Collection_Element_Record is record
--      Collection : Collection_Of_Cmof_Element;
      Element    : CMOF_Element;
      Previous   : Collection_Element_Identifier;
      Next       : Collection_Element_Identifier;
   end record;

   package Links is new GNAT.Table (Link_Record, CMOF_Link, 1, 100, 100);

   package Elements is
     new GNAT.Table (Element_Record, Cmof_Element, 1, 300, 100);

   package Collections is
     new GNAT.Table
       (Collection_Record, Collection_Of_CMOF_Element, 1, 2500, 100);

   package Collection_Elements is
     new GNAT.Table
       (Collection_Element_Record, Collection_Element_Identifier, 1, 100, 100);

   function Is_Null (Self : Cmof_Element) return Boolean;
   pragma Inline (Is_Null);
   --  Returns True when specified element is null.

   function Is_Valid (Self : Cmof_Element) return Boolean;
   --  Returns True when specified element is null or present in the elements
   --  table.

   procedure Initialize_Ordered_Set_Collection
    (Collection : Collection_Of_CMOF_Element);
   --  Initialize specified collection as ordered set.

   procedure Initialize_Set_Collection
    (Collection : Collection_Of_CMOF_Element);
   --  Initialize specified collection as set.

   procedure Allocate_Collection_Of_Cmof_Element_Slots
    (Element : Cmof_Element;
     Count   : Natural);
   --  Allocates specified number of collections of CMOF::Element to manage
   --  slots for object's properties. It also initialize collection for
   --  'default' slot.

end CMOF.Internals.Tables;
