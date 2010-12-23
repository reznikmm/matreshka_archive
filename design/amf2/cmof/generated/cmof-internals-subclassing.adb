with Cmof.Internals.Metamodel;
with Cmof.Internals.Tables;
with Cmof.Internals.Types;

package body Cmof.Internals.Subclassing is

   use Cmof.Internals.Metamodel;
   use Cmof.Internals.Tables;
   use Cmof.Internals.Types;

   type Class_Bits is array (CMOF_Meta_Class) of Boolean;
   pragma Pack (Class_Bits);

   Tag : constant array (CMOF_Meta_Class) of Class_Bits :=
     (MC_CMOF_Association =>
        (MC_CMOF_Association
           | MC_CMOF_Classifier
           | MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Namespace
           | MC_CMOF_Packageable_Element
           | MC_CMOF_Relationship
           | MC_CMOF_Type => True,
         others => False),
      MC_CMOF_Behavioral_Feature =>
        (MC_CMOF_Behavioral_Feature
           | MC_CMOF_Element
           | MC_CMOF_Feature
           | MC_CMOF_Named_Element
           | MC_CMOF_Namespace
           | MC_CMOF_Redefinable_Element => True,
         others => False),
      MC_CMOF_Class =>
        (MC_CMOF_Class
           | MC_CMOF_Classifier
           | MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Namespace
           | MC_CMOF_Packageable_Element
           | MC_CMOF_Type => True,
         others => False),
      MC_CMOF_Classifier =>
        (MC_CMOF_Classifier
           | MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Namespace
           | MC_CMOF_Packageable_Element
           | MC_CMOF_Type => True,
         others => False),
      MC_CMOF_Comment =>
        (MC_CMOF_Comment
           | MC_CMOF_Element => True,
         others => False),
      MC_CMOF_Constraint =>
        (MC_CMOF_Constraint
           | MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Packageable_Element => True,
         others => False),
      MC_CMOF_Data_Type =>
        (MC_CMOF_Classifier
           | MC_CMOF_Data_Type
           | MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Namespace
           | MC_CMOF_Packageable_Element
           | MC_CMOF_Type => True,
         others => False),
      MC_CMOF_Directed_Relationship =>
        (MC_CMOF_Directed_Relationship
           | MC_CMOF_Element
           | MC_CMOF_Relationship => True,
         others => False),
      MC_CMOF_Element =>
        (MC_CMOF_Element => True,
         others => False),
      MC_CMOF_Element_Import =>
        (MC_CMOF_Directed_Relationship
           | MC_CMOF_Element
           | MC_CMOF_Element_Import
           | MC_CMOF_Relationship => True,
         others => False),
      MC_CMOF_Enumeration =>
        (MC_CMOF_Classifier
           | MC_CMOF_Data_Type
           | MC_CMOF_Element
           | MC_CMOF_Enumeration
           | MC_CMOF_Named_Element
           | MC_CMOF_Namespace
           | MC_CMOF_Packageable_Element
           | MC_CMOF_Type => True,
         others => False),
      MC_CMOF_Enumeration_Literal =>
        (MC_CMOF_Element
           | MC_CMOF_Enumeration_Literal
           | MC_CMOF_Named_Element => True,
         others => False),
      MC_CMOF_Expression =>
        (MC_CMOF_Element
           | MC_CMOF_Expression
           | MC_CMOF_Named_Element
           | MC_CMOF_Packageable_Element
           | MC_CMOF_Typed_Element
           | MC_CMOF_Value_Specification => True,
         others => False),
      MC_CMOF_Feature =>
        (MC_CMOF_Element
           | MC_CMOF_Feature
           | MC_CMOF_Named_Element
           | MC_CMOF_Redefinable_Element => True,
         others => False),
      MC_CMOF_Multiplicity_Element =>
        (MC_CMOF_Element
           | MC_CMOF_Multiplicity_Element => True,
         others => False),
      MC_CMOF_Named_Element =>
        (MC_CMOF_Element
           | MC_CMOF_Named_Element => True,
         others => False),
      MC_CMOF_Namespace =>
        (MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Namespace => True,
         others => False),
      MC_CMOF_Opaque_Expression =>
        (MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Opaque_Expression
           | MC_CMOF_Packageable_Element
           | MC_CMOF_Typed_Element
           | MC_CMOF_Value_Specification => True,
         others => False),
      MC_CMOF_Operation =>
        (MC_CMOF_Behavioral_Feature
           | MC_CMOF_Element
           | MC_CMOF_Feature
           | MC_CMOF_Named_Element
           | MC_CMOF_Namespace
           | MC_CMOF_Operation
           | MC_CMOF_Redefinable_Element => True,
         others => False),
      MC_CMOF_Package =>
        (MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Namespace
           | MC_CMOF_Package
           | MC_CMOF_Packageable_Element => True,
         others => False),
      MC_CMOF_Package_Import =>
        (MC_CMOF_Directed_Relationship
           | MC_CMOF_Element
           | MC_CMOF_Package_Import
           | MC_CMOF_Relationship => True,
         others => False),
      MC_CMOF_Package_Merge =>
        (MC_CMOF_Directed_Relationship
           | MC_CMOF_Element
           | MC_CMOF_Package_Merge
           | MC_CMOF_Relationship => True,
         others => False),
      MC_CMOF_Packageable_Element =>
        (MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Packageable_Element => True,
         others => False),
      MC_CMOF_Parameter =>
        (MC_CMOF_Element
           | MC_CMOF_Multiplicity_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Parameter
           | MC_CMOF_Typed_Element => True,
         others => False),
      MC_CMOF_Primitive_Type =>
        (MC_CMOF_Classifier
           | MC_CMOF_Data_Type
           | MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Namespace
           | MC_CMOF_Packageable_Element
           | MC_CMOF_Primitive_Type
           | MC_CMOF_Type => True,
         others => False),
      MC_CMOF_Property =>
        (MC_CMOF_Element
           | MC_CMOF_Feature
           | MC_CMOF_Multiplicity_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Property
           | MC_CMOF_Redefinable_Element
           | MC_CMOF_Structural_Feature
           | MC_CMOF_Typed_Element => True,
         others => False),
      MC_CMOF_Redefinable_Element =>
        (MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Redefinable_Element => True,
         others => False),
      MC_CMOF_Relationship =>
        (MC_CMOF_Element
           | MC_CMOF_Relationship => True,
         others => False),
      MC_CMOF_Structural_Feature =>
        (MC_CMOF_Element
           | MC_CMOF_Feature
           | MC_CMOF_Multiplicity_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Redefinable_Element
           | MC_CMOF_Structural_Feature
           | MC_CMOF_Typed_Element => True,
         others => False),
      MC_CMOF_Type =>
        (MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Packageable_Element
           | MC_CMOF_Type => True,
         others => False),
      MC_CMOF_Typed_Element =>
        (MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Typed_Element => True,
         others => False),
      MC_CMOF_Value_Specification =>
        (MC_CMOF_Element
           | MC_CMOF_Named_Element
           | MC_CMOF_Packageable_Element
           | MC_CMOF_Typed_Element
           | MC_CMOF_Value_Specification => True,
         others => False));

   Class : constant array (Class_Element_Kinds) of CMOF_Meta_Class :=
     (E_Association         => MC_CMOF_Association,
      E_Class               => MC_CMOF_Class,
      E_Comment             => MC_CMOF_Comment,
      E_Constraint          => MC_CMOF_Constraint,
      E_Data_Type           => MC_CMOF_Data_Type,
      E_Element_Import      => MC_CMOF_Element_Import,
      E_Enumeration         => MC_CMOF_Enumeration,
      E_Enumeration_Literal => MC_CMOF_Enumeration_Literal,
      E_Expression          => MC_CMOF_Expression,
      E_Opaque_Expression   => MC_CMOF_Opaque_Expression,
      E_Operation           => MC_CMOF_Operation,
      E_Package             => MC_CMOF_Package,
      E_Package_Import      => MC_CMOF_Package_Import,
      E_Package_Merge       => MC_CMOF_Package_Merge,
      E_Parameter           => MC_CMOF_Parameter,
      E_Primitive_Type      => MC_CMOF_Primitive_Type,
      E_Property            => MC_CMOF_Property);

   --------------------
   -- Is_Association --
   --------------------

   function Is_Association (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Association);
   end Is_Association;

   ---------------------------
   -- Is_Behavioral_Feature --
   ---------------------------

   function Is_Behavioral_Feature (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Behavioral_Feature);
   end Is_Behavioral_Feature;

   --------------
   -- Is_Class --
   --------------

   function Is_Class (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Class);
   end Is_Class;

   -------------------
   -- Is_Classifier --
   -------------------

   function Is_Classifier (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Classifier);
   end Is_Classifier;

   ----------------
   -- Is_Comment --
   ----------------

   function Is_Comment (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Comment);
   end Is_Comment;

   -------------------
   -- Is_Constraint --
   -------------------

   function Is_Constraint (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Constraint);
   end Is_Constraint;

   ------------------
   -- Is_Data_Type --
   ------------------

   function Is_Data_Type (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Data_Type);
   end Is_Data_Type;

   ------------------------------
   -- Is_Directed_Relationship --
   ------------------------------

   function Is_Directed_Relationship (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Directed_Relationship);
   end Is_Directed_Relationship;

   ----------------
   -- Is_Element --
   ----------------

   function Is_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Element);
   end Is_Element;

   -----------------------
   -- Is_Element_Import --
   -----------------------

   function Is_Element_Import (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Element_Import);
   end Is_Element_Import;

   --------------------
   -- Is_Enumeration --
   --------------------

   function Is_Enumeration (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Enumeration);
   end Is_Enumeration;

   ----------------------------
   -- Is_Enumeration_Literal --
   ----------------------------

   function Is_Enumeration_Literal (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Enumeration_Literal);
   end Is_Enumeration_Literal;

   -------------------
   -- Is_Expression --
   -------------------

   function Is_Expression (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Expression);
   end Is_Expression;

   ----------------
   -- Is_Feature --
   ----------------

   function Is_Feature (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Feature);
   end Is_Feature;

   -----------------------------
   -- Is_Multiplicity_Element --
   -----------------------------

   function Is_Multiplicity_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Multiplicity_Element);
   end Is_Multiplicity_Element;

   ----------------------
   -- Is_Named_Element --
   ----------------------

   function Is_Named_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Named_Element);
   end Is_Named_Element;

   ------------------
   -- Is_Namespace --
   ------------------

   function Is_Namespace (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Namespace);
   end Is_Namespace;

   --------------------------
   -- Is_Opaque_Expression --
   --------------------------

   function Is_Opaque_Expression (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Opaque_Expression);
   end Is_Opaque_Expression;

   ------------------
   -- Is_Operation --
   ------------------

   function Is_Operation (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Operation);
   end Is_Operation;

   ----------------
   -- Is_Package --
   ----------------

   function Is_Package (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Package);
   end Is_Package;

   -----------------------
   -- Is_Package_Import --
   -----------------------

   function Is_Package_Import (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Package_Import);
   end Is_Package_Import;

   ----------------------
   -- Is_Package_Merge --
   ----------------------

   function Is_Package_Merge (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Package_Merge);
   end Is_Package_Merge;

   ----------------------------
   -- Is_Packageable_Element --
   ----------------------------

   function Is_Packageable_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Packageable_Element);
   end Is_Packageable_Element;

   ------------------
   -- Is_Parameter --
   ------------------

   function Is_Parameter (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Parameter);
   end Is_Parameter;

   -----------------------
   -- Is_Primitive_Type --
   -----------------------

   function Is_Primitive_Type (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Primitive_Type);
   end Is_Primitive_Type;

   -----------------
   -- Is_Property --
   -----------------

   function Is_Property (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Property);
   end Is_Property;

   ----------------------------
   -- Is_Redefinable_Element --
   ----------------------------

   function Is_Redefinable_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Redefinable_Element);
   end Is_Redefinable_Element;

   ---------------------
   -- Is_Relationship --
   ---------------------

   function Is_Relationship (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Relationship);
   end Is_Relationship;

   ---------------------------
   -- Is_Structural_Feature --
   ---------------------------

   function Is_Structural_Feature (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Structural_Feature);
   end Is_Structural_Feature;

   -----------------
   -- Is_Subclass --
   -----------------

   function Is_Subclass
     (Self       : Cmof_Element;
      Superclass : CMOF_Class) return Boolean
   is
      pragma Assert (not Is_Null (Self));
      pragma Assert (Is_Valid (Self));

   begin
      return
        (Tag (Class (Elements.Table (Self).Kind)) and Tag (Superclass))
           = Tag (Superclass);
   end Is_Subclass;

   -------------
   -- Is_Type --
   -------------

   function Is_Type (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Type);
   end Is_Type;

   ----------------------
   -- Is_Typed_Element --
   ----------------------

   function Is_Typed_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Typed_Element);
   end Is_Typed_Element;

   ----------------------------
   -- Is_Value_Specification --
   ----------------------------

   function Is_Value_Specification (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, MC_CMOF_Value_Specification);
   end Is_Value_Specification;

end Cmof.Internals.Subclassing;
