with Ada.Containers.Hashed_Maps;
with Ada.Containers.Ordered_Sets;
with Ada.Containers.Vectors;
with Ada.Strings.Unbounded.Hash;

package Generator is

   type Element_Record is tagged;
   type Class_Record is tagged;
   type Property_Record is tagged;
   type Association_Record is tagged;
   type Primitive_Type_Record is tagged;
   type Enumeration_Record is tagged;

   type Element_Access is access all Element_Record'Class;
   type Association_Access is access all Association_Record'Class;
   type Class_Access is access all Class_Record'Class;
   type Property_Access is access all Property_Record'Class;
   type Primitive_Type_Access is access all Primitive_Type_Record'Class;
   type Enumeration_Access is access all Enumeration_Record'Class;

   type Property_Expansion_Record;
   type Property_Expansion_Access is access all Property_Expansion_Record;

--   function Hash (Item : Element_Access) return Ada.Containers.Hash_Type;
--   function Hash (Item : Class_Access) return Ada.Containers.Hash_Type;
   function Hash (Item : Property_Access) return Ada.Containers.Hash_Type;

   function "<"
     (Left  : Association_Access;
      Right : Association_Access) return Boolean;
   function "<" (Left : Class_Access; Right : Class_Access) return Boolean;
   function "<"
     (Left  : Enumeration_Access;
      Right : Enumeration_Access) return Boolean;
   function "<"
     (Left  : Primitive_Type_Access;
      Right : Primitive_Type_Access) return Boolean;
   function "<"
     (Left  : Property_Access;
      Right : Property_Access) return Boolean;
   function Full_Less
     (Left  : Property_Access;
      Right : Property_Access) return Boolean;
--   function "<"
--     (Left  : Property_Expansion_Access;
--      Right : Property_Expansion_Access) return Boolean;

   package Element_Maps is
     new Ada.Containers.Hashed_Maps
           (Ada.Strings.Unbounded.Unbounded_String,
            Element_Access,
            Ada.Strings.Unbounded.Hash,
            Ada.Strings.Unbounded."=");

   package Association_Sets is
     new Ada.Containers.Ordered_Sets (Association_Access);

   package Class_Sets is
     new Ada.Containers.Ordered_Sets (Class_Access);

   package Enumeration_Sets is
     new Ada.Containers.Ordered_Sets (Enumeration_Access);

   package Property_Sets is
     new Ada.Containers.Ordered_Sets (Property_Access);

   package Property_Full_Sets is
     new Ada.Containers.Ordered_Sets (Property_Access, Full_Less);
   --  This set allows to use all properties and the only criteria is unique
   --  of the Class::Property pair.

   package Primitive_Type_Sets is
     new Ada.Containers.Ordered_Sets (Primitive_Type_Access);

   package Unbounded_String_Sets is
     new Ada.Containers.Ordered_Sets
           (Ada.Strings.Unbounded.Unbounded_String,
            Ada.Strings.Unbounded."<",
            Ada.Strings.Unbounded."=");

   package Unbounded_String_Vectors is
     new Ada.Containers.Vectors
           (Positive,
            Ada.Strings.Unbounded.Unbounded_String,
            Ada.Strings.Unbounded."=");

--   package Property_Expansion_Sets is
--     new Ada.Containers.Ordered_Sets (Property_Expansion_Access);
   package Property_Expansion_Maps is
     new Ada.Containers.Hashed_Maps
           (Property_Access, Property_Expansion_Access, Hash, "=");

   type Element_Record is abstract tagged limited record
      Id   : Ada.Strings.Unbounded.Unbounded_String;
      Name : Ada.Strings.Unbounded.Unbounded_String;
   end record;

   type Association_Record is new Element_Record with record
      First_End  : Ada.Strings.Unbounded.Unbounded_String;
      Second_End : Ada.Strings.Unbounded.Unbounded_String;
      Owned_End  : Property_Sets.Set;
   end record;

   type Class_Record is new Element_Record with record
      Is_Abstract      : Boolean;
      Super_Classes    : Unbounded_String_Sets.Set;
      Properties       : Property_Sets.Set;

      --  Synthetic attributes, they are filled by analyzer.

      All_Properties   : Property_Full_Sets.Set;
      --  All class's properties, including all redefined properties.

      Expansion        : Property_Expansion_Maps.Map;
      Collection_Slots : Natural;
   end record;

   type Property_Record is new Element_Record with record
      Owned_Class           : Class_Access;
      Owned_Association     : Association_Access;
      Type_Id               : Ada.Strings.Unbounded.Unbounded_String;
      Redefined_Property_Id : Ada.Strings.Unbounded.Unbounded_String;
      Lower                 : Natural;
      Upper                 : Natural;
      Is_Read_Only          : Boolean;
      Is_Derived            : Boolean;
      Is_Derived_Union      : Boolean;

      --  Synthetic attributes, they are filled by analyzer.

      Redefined_Property    : Property_Access;
   end record;

   type Primitive_Type_Record is new Element_Record with null record;

   type Enumeration_Record is new Element_Record with null record;

   type Property_Expansion_Record is record
      Index : Natural;
      --  Index of the non-collection property in the fields array or offset
      --  from the default collection slot.
   end record;

   --  Collected data

   Elements        : Element_Maps.Map;
   Associations    : Association_Sets.Set;
   Classes         : Class_Sets.Set;
   Enumerations    : Enumeration_Sets.Set;
   Primitive_Types : Primitive_Type_Sets.Set;

   --  Utilities subprograms

   function To_Ada_Identifier (Name : String) return String;

   function To_Ada_Identifier
     (Name : Ada.Strings.Unbounded.Unbounded_String) return String;

   function To_Element
     (Id : Ada.Strings.Unbounded.Unbounded_String) return Element_Access;

   function Get_Owner (Item : Property_Access) return Element_Access;

   function Get_Type (Item : Property_Access) return Element_Access;

   function Is_Multivalued (Item : Property_Access) return Boolean;

   function Is_Collection_Of_Element
     (Property : not null Property_Access) return Boolean;
   --  Returns True when Property type is subclass of CMOF::Element, and it is
   --  multivalued.

end Generator;
