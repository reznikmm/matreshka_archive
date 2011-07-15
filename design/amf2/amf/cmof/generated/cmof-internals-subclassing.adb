with AMF.Internals.Tables.CMOF_Element_Table;
with AMF.Internals.Tables.CMOF_Types;

package body CMOF.Internals.Subclassing is

   use AMF.Internals.Tables;
   use AMF.Internals.Tables.CMOF_Types;
   use AMF.Internals.Tables.CMOF_Metamodel;

   type Class_Bits is array (CMOF_Meta_Class) of Boolean;
   pragma Pack (Class_Bits);

   Tag : constant array (CMOF_Meta_Class) of Class_Bits :=
     (1 =>
        (1
           | 4
           | 9
           | 16
           | 17
           | 23
           | 28
           | 31 => True,
         others => False),
      2 =>
        (2
           | 9
           | 14
           | 16
           | 17
           | 27 => True,
         others => False),
      3 =>
        (3
           | 4
           | 9
           | 16
           | 17
           | 23
           | 31 => True,
         others => False),
      4 =>
        (4
           | 9
           | 16
           | 17
           | 23
           | 31 => True,
         others => False),
      5 =>
        (5
           | 9 => True,
         others => False),
      6 =>
        (6
           | 9
           | 16
           | 23 => True,
         others => False),
      7 =>
        (4
           | 7
           | 9
           | 16
           | 17
           | 23
           | 31 => True,
         others => False),
      8 =>
        (8
           | 9
           | 28 => True,
         others => False),
      9 =>
        (9 => True,
         others => False),
      10 =>
        (8
           | 9
           | 10
           | 28 => True,
         others => False),
      11 =>
        (4
           | 7
           | 9
           | 11
           | 16
           | 17
           | 23
           | 31 => True,
         others => False),
      12 =>
        (9
           | 12
           | 16 => True,
         others => False),
      13 =>
        (9
           | 13
           | 16
           | 23
           | 32
           | 33 => True,
         others => False),
      14 =>
        (9
           | 14
           | 16
           | 27 => True,
         others => False),
      15 =>
        (9
           | 15 => True,
         others => False),
      16 =>
        (9
           | 16 => True,
         others => False),
      17 =>
        (9
           | 16
           | 17 => True,
         others => False),
      18 =>
        (9
           | 16
           | 18
           | 23
           | 32
           | 33 => True,
         others => False),
      19 =>
        (2
           | 9
           | 14
           | 16
           | 17
           | 19
           | 27 => True,
         others => False),
      20 =>
        (9
           | 16
           | 17
           | 20
           | 23 => True,
         others => False),
      21 =>
        (8
           | 9
           | 21
           | 28 => True,
         others => False),
      22 =>
        (8
           | 9
           | 22
           | 28 => True,
         others => False),
      23 =>
        (9
           | 16
           | 23 => True,
         others => False),
      24 =>
        (9
           | 15
           | 16
           | 24
           | 32 => True,
         others => False),
      25 =>
        (4
           | 7
           | 9
           | 16
           | 17
           | 23
           | 25
           | 31 => True,
         others => False),
      26 =>
        (9
           | 14
           | 15
           | 16
           | 26
           | 27
           | 29
           | 32 => True,
         others => False),
      27 =>
        (9
           | 16
           | 27 => True,
         others => False),
      28 =>
        (9
           | 28 => True,
         others => False),
      29 =>
        (9
           | 14
           | 15
           | 16
           | 27
           | 29
           | 32 => True,
         others => False),
      31 =>
        (9
           | 16
           | 23
           | 31 => True,
         others => False),
      32 =>
        (9
           | 16
           | 32 => True,
         others => False),
      33 =>
        (9
           | 16
           | 23
           | 32
           | 33 => True,
         others => False),
      30 =>
        (9
           | 30 => True,
         others => False));

   Class : constant array (Element_Kinds range E_Association .. E_Tag) of CMOF_Meta_Class :=
     (E_Association         => 1,
      E_Class               => 3,
      E_Comment             => 5,
      E_Constraint          => 6,
      E_Data_Type           => 7,
      E_Element_Import      => 10,
      E_Enumeration         => 11,
      E_Enumeration_Literal => 12,
      E_Expression          => 13,
      E_Opaque_Expression   => 18,
      E_Operation           => 19,
      E_Package             => 20,
      E_Package_Import      => 21,
      E_Package_Merge       => 22,
      E_Parameter           => 24,
      E_Primitive_Type      => 25,
      E_Property            => 26,
      E_Tag                 => 30);

   function Is_Null (Self : Cmof_Element) return Boolean;
   --  Returns True when specified element is null.

   function Is_Valid (Self : Cmof_Element) return Boolean;
   --  Returns True when specified element is null or present in the elements
   --  table.

   -------------
   -- Is_Null --
   -------------

   function Is_Null (Self : Cmof_Element) return Boolean is
      use type AMF.Internals.AMF_Element;

   begin
      return Self = Null_Cmof_Element;
   end Is_Null;

   --------------
   -- Is_Valid --
   --------------

   function Is_Valid (Self : Cmof_Element) return Boolean is
   begin
      return Is_Null (Self)
        or else (Self in CMOF_Element_Table.First .. CMOF_Element_Table.Last
                   and then CMOF_Element_Table.Table (Self).Kind /= E_None);
   end Is_Valid;

   --------------------
   -- Is_Association --
   --------------------

   function Is_Association (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Association);
   end Is_Association;

   ---------------------------
   -- Is_Behavioral_Feature --
   ---------------------------

   function Is_Behavioral_Feature (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Behavioral_Feature);
   end Is_Behavioral_Feature;

   --------------
   -- Is_Class --
   --------------

   function Is_Class (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Class);
   end Is_Class;

   -------------------
   -- Is_Classifier --
   -------------------

   function Is_Classifier (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Classifier);
   end Is_Classifier;

   ----------------
   -- Is_Comment --
   ----------------

   function Is_Comment (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Comment);
   end Is_Comment;

   -------------------
   -- Is_Constraint --
   -------------------

   function Is_Constraint (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Constraint);
   end Is_Constraint;

   ------------------
   -- Is_Data_Type --
   ------------------

   function Is_Data_Type (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Data_Type);
   end Is_Data_Type;

   ------------------------------
   -- Is_Directed_Relationship --
   ------------------------------

   function Is_Directed_Relationship (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Directed_Relationship);
   end Is_Directed_Relationship;

   ----------------
   -- Is_Element --
   ----------------

   function Is_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Element);
   end Is_Element;

   -----------------------
   -- Is_Element_Import --
   -----------------------

   function Is_Element_Import (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Element_Import);
   end Is_Element_Import;

   --------------------
   -- Is_Enumeration --
   --------------------

   function Is_Enumeration (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Enumeration);
   end Is_Enumeration;

   ----------------------------
   -- Is_Enumeration_Literal --
   ----------------------------

   function Is_Enumeration_Literal (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Enumeration_Literal);
   end Is_Enumeration_Literal;

   -------------------
   -- Is_Expression --
   -------------------

   function Is_Expression (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Expression);
   end Is_Expression;

   ----------------
   -- Is_Feature --
   ----------------

   function Is_Feature (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Feature);
   end Is_Feature;

   -----------------------------
   -- Is_Multiplicity_Element --
   -----------------------------

   function Is_Multiplicity_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Multiplicity_Element);
   end Is_Multiplicity_Element;

   ----------------------
   -- Is_Named_Element --
   ----------------------

   function Is_Named_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Named_Element);
   end Is_Named_Element;

   ------------------
   -- Is_Namespace --
   ------------------

   function Is_Namespace (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Namespace);
   end Is_Namespace;

   --------------------------
   -- Is_Opaque_Expression --
   --------------------------

   function Is_Opaque_Expression (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Opaque_Expression);
   end Is_Opaque_Expression;

   ------------------
   -- Is_Operation --
   ------------------

   function Is_Operation (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Operation);
   end Is_Operation;

   ----------------
   -- Is_Package --
   ----------------

   function Is_Package (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Package);
   end Is_Package;

   -----------------------
   -- Is_Package_Import --
   -----------------------

   function Is_Package_Import (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Package_Import);
   end Is_Package_Import;

   ----------------------
   -- Is_Package_Merge --
   ----------------------

   function Is_Package_Merge (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Package_Merge);
   end Is_Package_Merge;

   ----------------------------
   -- Is_Packageable_Element --
   ----------------------------

   function Is_Packageable_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Packageable_Element);
   end Is_Packageable_Element;

   ------------------
   -- Is_Parameter --
   ------------------

   function Is_Parameter (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Parameter);
   end Is_Parameter;

   -----------------------
   -- Is_Primitive_Type --
   -----------------------

   function Is_Primitive_Type (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Primitive_Type);
   end Is_Primitive_Type;

   -----------------
   -- Is_Property --
   -----------------

   function Is_Property (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Property);
   end Is_Property;

   ----------------------------
   -- Is_Redefinable_Element --
   ----------------------------

   function Is_Redefinable_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Redefinable_Element);
   end Is_Redefinable_Element;

   ---------------------
   -- Is_Relationship --
   ---------------------

   function Is_Relationship (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Relationship);
   end Is_Relationship;

   ---------------------------
   -- Is_Structural_Feature --
   ---------------------------

   function Is_Structural_Feature (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Structural_Feature);
   end Is_Structural_Feature;

   -----------------
   -- Is_Subclass --
   -----------------

   function Is_Subclass
     (Self       : CMOF_Meta_Class;
      Superclass : CMOF_Meta_Class) return Boolean
   is
      pragma Assert (not Is_Null (Self));
      pragma Assert (Is_Valid (Self));

   begin
      return
        (Tag (Self) and Tag (Superclass))
           = Tag (Superclass);
   end Is_Subclass;

   ----------------------------
   -- Is_Subclass_Reflective --
   ----------------------------

   function Is_Subclass_Reflective
     (Self       : CMOF_Element;
      Superclass : CMOF_Meta_Class) return Boolean
   is
      pragma Assert (not Is_Null (Self));
      pragma Assert (Is_Valid (Self));

   begin
      return
        (Tag (Class (CMOF_Element_Table.Table (Self).Kind)) and Tag (Superclass))
           = Tag (Superclass);
   end Is_Subclass_Reflective;

   -------------
   -- Is_Type --
   -------------

   function Is_Type (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Type);
   end Is_Type;

   ----------------------
   -- Is_Typed_Element --
   ----------------------

   function Is_Typed_Element (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Typed_Element);
   end Is_Typed_Element;

   ----------------------------
   -- Is_Value_Specification --
   ----------------------------

   function Is_Value_Specification (Self : Cmof_Element) return Boolean is
   begin
      return Is_Subclass_Reflective (Self, MC_CMOF_Value_Specification);
   end Is_Value_Specification;

end CMOF.Internals.Subclassing;
