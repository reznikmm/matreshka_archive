with Cmof.Internals.Tables;
with Cmof.Internals.Types;

package body Cmof.Internals.Subclassing is

   use Cmof.Internals.Tables;
   use Cmof.Internals.Types;

   type Element_Classes is
     (C_Association,
      C_Behavioral_Feature,
      C_Class,
      C_Classifier,
      C_Comment,
      C_Constraint,
      C_Data_Type,
      C_Directed_Relationship,
      C_Element,
      C_Element_Import,
      C_Enumeration,
      C_Enumeration_Literal,
      C_Expression,
      C_Feature,
      C_Multiplicity_Element,
      C_Named_Element,
      C_Namespace,
      C_Opaque_Expression,
      C_Operation,
      C_Package,
      C_Package_Import,
      C_Package_Merge,
      C_Packageable_Element,
      C_Parameter,
      C_Primitive_Type,
      C_Property,
      C_Redefinable_Element,
      C_Relationship,
      C_Structural_Feature,
      C_Type,
      C_Typed_Element,
      C_Value_Specification);

   function Is_Subclass
     (Self       : Cmof_Element;
      Superclass : Element_Classes) return Boolean;

   type Class_Bits is array (Element_Classes) of Boolean;
   pragma Pack (Class_Bits);

   Tag : constant array (Element_Classes) of Class_Bits :=
     (C_Association =>
        (C_Association
           | C_Classifier
           | C_Element
           | C_Named_Element
           | C_Namespace
           | C_Packageable_Element
           | C_Relationship
           | C_Type => True,
         others => False),
      C_Behavioral_Feature =>
        (C_Behavioral_Feature
           | C_Element
           | C_Feature
           | C_Named_Element
           | C_Namespace
           | C_Redefinable_Element => True,
         others => False),
      C_Class =>
        (C_Class
           | C_Classifier
           | C_Element
           | C_Named_Element
           | C_Namespace
           | C_Packageable_Element
           | C_Type => True,
         others => False),
      C_Classifier =>
        (C_Classifier
           | C_Element
           | C_Named_Element
           | C_Namespace
           | C_Packageable_Element
           | C_Type => True,
         others => False),
      C_Comment =>
        (C_Comment
           | C_Element => True,
         others => False),
      C_Constraint =>
        (C_Constraint
           | C_Element
           | C_Named_Element
           | C_Packageable_Element => True,
         others => False),
      C_Data_Type =>
        (C_Classifier
           | C_Data_Type
           | C_Element
           | C_Named_Element
           | C_Namespace
           | C_Packageable_Element
           | C_Type => True,
         others => False),
      C_Directed_Relationship =>
        (C_Directed_Relationship
           | C_Element
           | C_Relationship => True,
         others => False),
      C_Element =>
        (C_Element => True,
         others => False),
      C_Element_Import =>
        (C_Directed_Relationship
           | C_Element
           | C_Element_Import
           | C_Relationship => True,
         others => False),
      C_Enumeration =>
        (C_Classifier
           | C_Data_Type
           | C_Element
           | C_Enumeration
           | C_Named_Element
           | C_Namespace
           | C_Packageable_Element
           | C_Type => True,
         others => False),
      C_Enumeration_Literal =>
        (C_Element
           | C_Enumeration_Literal
           | C_Named_Element => True,
         others => False),
      C_Expression =>
        (C_Element
           | C_Expression
           | C_Named_Element
           | C_Packageable_Element
           | C_Typed_Element
           | C_Value_Specification => True,
         others => False),
      C_Feature =>
        (C_Element
           | C_Feature
           | C_Named_Element
           | C_Redefinable_Element => True,
         others => False),
      C_Multiplicity_Element =>
        (C_Element
           | C_Multiplicity_Element => True,
         others => False),
      C_Named_Element =>
        (C_Element
           | C_Named_Element => True,
         others => False),
      C_Namespace =>
        (C_Element
           | C_Named_Element
           | C_Namespace => True,
         others => False),
      C_Opaque_Expression =>
        (C_Element
           | C_Named_Element
           | C_Opaque_Expression
           | C_Packageable_Element
           | C_Typed_Element
           | C_Value_Specification => True,
         others => False),
      C_Operation =>
        (C_Behavioral_Feature
           | C_Element
           | C_Feature
           | C_Named_Element
           | C_Namespace
           | C_Operation
           | C_Redefinable_Element => True,
         others => False),
      C_Package =>
        (C_Element
           | C_Named_Element
           | C_Namespace
           | C_Package
           | C_Packageable_Element => True,
         others => False),
      C_Package_Import =>
        (C_Directed_Relationship
           | C_Element
           | C_Package_Import
           | C_Relationship => True,
         others => False),
      C_Package_Merge =>
        (C_Directed_Relationship
           | C_Element
           | C_Package_Merge
           | C_Relationship => True,
         others => False),
      C_Packageable_Element =>
        (C_Element
           | C_Named_Element
           | C_Packageable_Element => True,
         others => False),
      C_Parameter =>
        (C_Element
           | C_Multiplicity_Element
           | C_Named_Element
           | C_Parameter
           | C_Typed_Element => True,
         others => False),
      C_Primitive_Type =>
        (C_Classifier
           | C_Data_Type
           | C_Element
           | C_Named_Element
           | C_Namespace
           | C_Packageable_Element
           | C_Primitive_Type
           | C_Type => True,
         others => False),
      C_Property =>
        (C_Element
           | C_Feature
           | C_Multiplicity_Element
           | C_Named_Element
           | C_Property
           | C_Redefinable_Element
           | C_Structural_Feature
           | C_Typed_Element => True,
         others => False),
      C_Redefinable_Element =>
        (C_Element
           | C_Named_Element
           | C_Redefinable_Element => True,
         others => False),
      C_Relationship =>
        (C_Element
           | C_Relationship => True,
         others => False),
      C_Structural_Feature =>
        (C_Element
           | C_Feature
           | C_Multiplicity_Element
           | C_Named_Element
           | C_Redefinable_Element
           | C_Structural_Feature
           | C_Typed_Element => True,
         others => False),
      C_Type =>
        (C_Element
           | C_Named_Element
           | C_Packageable_Element
           | C_Type => True,
         others => False),
      C_Typed_Element =>
        (C_Element
           | C_Named_Element
           | C_Typed_Element => True,
         others => False),
      C_Value_Specification =>
        (C_Element
           | C_Named_Element
           | C_Packageable_Element
           | C_Typed_Element
           | C_Value_Specification => True,
         others => False));

   Class : constant array (Class_Element_Kinds) of Element_Classes :=
     (E_Association         => C_Association,
      E_Class               => C_Class,
      E_Comment             => C_Comment,
      E_Constraint          => C_Constraint,
      E_Data_Type           => C_Data_Type,
      E_Element_Import      => C_Element_Import,
      E_Enumeration         => C_Enumeration,
      E_Enumeration_Literal => C_Enumeration_Literal,
      E_Expression          => C_Expression,
      E_Opaque_Expression   => C_Opaque_Expression,
      E_Operation           => C_Operation,
      E_Package             => C_Package,
      E_Package_Import      => C_Package_Import,
      E_Package_Merge       => C_Package_Merge,
      E_Parameter           => C_Parameter,
      E_Primitive_Type      => C_Primitive_Type,
      E_Property            => C_Property);

   --------------------
   -- Is_Association --
   --------------------

   function Is_Association (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Association);
   end Is_Association;

   ---------------------------
   -- Is_Behavioral_Feature --
   ---------------------------

   function Is_Behavioral_Feature (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Behavioral_Feature);
   end Is_Behavioral_Feature;

   --------------
   -- Is_Class --
   --------------

   function Is_Class (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Class);
   end Is_Class;

   -------------------
   -- Is_Classifier --
   -------------------

   function Is_Classifier (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Classifier);
   end Is_Classifier;

   ----------------
   -- Is_Comment --
   ----------------

   function Is_Comment (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Comment);
   end Is_Comment;

   -------------------
   -- Is_Constraint --
   -------------------

   function Is_Constraint (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Constraint);
   end Is_Constraint;

   ------------------
   -- Is_Data_Type --
   ------------------

   function Is_Data_Type (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Data_Type);
   end Is_Data_Type;

   ------------------------------
   -- Is_Directed_Relationship --
   ------------------------------

   function Is_Directed_Relationship (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Directed_Relationship);
   end Is_Directed_Relationship;

   ----------------
   -- Is_Element --
   ----------------

   function Is_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Element);
   end Is_Element;

   -----------------------
   -- Is_Element_Import --
   -----------------------

   function Is_Element_Import (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Element_Import);
   end Is_Element_Import;

   --------------------
   -- Is_Enumeration --
   --------------------

   function Is_Enumeration (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Enumeration);
   end Is_Enumeration;

   ----------------------------
   -- Is_Enumeration_Literal --
   ----------------------------

   function Is_Enumeration_Literal (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Enumeration_Literal);
   end Is_Enumeration_Literal;

   -------------------
   -- Is_Expression --
   -------------------

   function Is_Expression (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Expression);
   end Is_Expression;

   ----------------
   -- Is_Feature --
   ----------------

   function Is_Feature (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Feature);
   end Is_Feature;

   -----------------------------
   -- Is_Multiplicity_Element --
   -----------------------------

   function Is_Multiplicity_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Multiplicity_Element);
   end Is_Multiplicity_Element;

   ----------------------
   -- Is_Named_Element --
   ----------------------

   function Is_Named_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Named_Element);
   end Is_Named_Element;

   ------------------
   -- Is_Namespace --
   ------------------

   function Is_Namespace (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Namespace);
   end Is_Namespace;

   --------------------------
   -- Is_Opaque_Expression --
   --------------------------

   function Is_Opaque_Expression (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Opaque_Expression);
   end Is_Opaque_Expression;

   ------------------
   -- Is_Operation --
   ------------------

   function Is_Operation (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Operation);
   end Is_Operation;

   ----------------
   -- Is_Package --
   ----------------

   function Is_Package (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Package);
   end Is_Package;

   -----------------------
   -- Is_Package_Import --
   -----------------------

   function Is_Package_Import (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Package_Import);
   end Is_Package_Import;

   ----------------------
   -- Is_Package_Merge --
   ----------------------

   function Is_Package_Merge (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Package_Merge);
   end Is_Package_Merge;

   ----------------------------
   -- Is_Packageable_Element --
   ----------------------------

   function Is_Packageable_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Packageable_Element);
   end Is_Packageable_Element;

   ------------------
   -- Is_Parameter --
   ------------------

   function Is_Parameter (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Parameter);
   end Is_Parameter;

   -----------------------
   -- Is_Primitive_Type --
   -----------------------

   function Is_Primitive_Type (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Primitive_Type);
   end Is_Primitive_Type;

   -----------------
   -- Is_Property --
   -----------------

   function Is_Property (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Property);
   end Is_Property;

   ----------------------------
   -- Is_Redefinable_Element --
   ----------------------------

   function Is_Redefinable_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Redefinable_Element);
   end Is_Redefinable_Element;

   ---------------------
   -- Is_Relationship --
   ---------------------

   function Is_Relationship (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Relationship);
   end Is_Relationship;

   ---------------------------
   -- Is_Structural_Feature --
   ---------------------------

   function Is_Structural_Feature (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Structural_Feature);
   end Is_Structural_Feature;

   -----------------
   -- Is_Subclass --
   -----------------

   function Is_Subclass
     (Self       : Cmof_Element;
      Superclass : Element_Classes) return Boolean
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
      return Is_Subclass (Self, C_Type);
   end Is_Type;

   ----------------------
   -- Is_Typed_Element --
   ----------------------

   function Is_Typed_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Typed_Element);
   end Is_Typed_Element;

   ----------------------------
   -- Is_Value_Specification --
   ----------------------------

   function Is_Value_Specification (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass (Self, C_Value_Specification);
   end Is_Value_Specification;

end Cmof.Internals.Subclassing;
