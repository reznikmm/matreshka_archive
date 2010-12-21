with Matreshka.Internals.Strings;

with AMF;
with Cmof.Internals.Attributes;
with Cmof.Internals.Metamodel;
with Cmof.Internals.Tables;
with Cmof.Internals.Types;

package body Cmof.Internals.Constructors is

   use Cmof.Internals.Attributes;
   use Cmof.Internals.Metamodel;
   use Cmof.Internals.Tables;
   use Cmof.Internals.Types;

   ------------------------
   -- Create_Association --
   ------------------------

   function Create_Association return Cmof_Association is
   begin
      Elements.Increment_Last;
      Initialize_Association (Elements.Last);

      return Elements.Last;
   end Create_Association;

   ------------------
   -- Create_Class --
   ------------------

   function Create_Class return Cmof_Class is
   begin
      Elements.Increment_Last;
      Initialize_Class (Elements.Last);

      return Elements.Last;
   end Create_Class;

   --------------------
   -- Create_Comment --
   --------------------

   function Create_Comment return Cmof_Comment is
   begin
      Elements.Increment_Last;
      Initialize_Comment (Elements.Last);

      return Elements.Last;
   end Create_Comment;

   -----------------------
   -- Create_Constraint --
   -----------------------

   function Create_Constraint return Cmof_Constraint is
   begin
      Elements.Increment_Last;
      Initialize_Constraint (Elements.Last);

      return Elements.Last;
   end Create_Constraint;

   ----------------------
   -- Create_Data_Type --
   ----------------------

   function Create_Data_Type return Cmof_Data_Type is
   begin
      Elements.Increment_Last;
      Initialize_Data_Type (Elements.Last);

      return Elements.Last;
   end Create_Data_Type;

   ---------------------------
   -- Create_Element_Import --
   ---------------------------

   function Create_Element_Import return Cmof_Element_Import is
   begin
      Elements.Increment_Last;
      Initialize_Element_Import (Elements.Last);

      return Elements.Last;
   end Create_Element_Import;

   ------------------------
   -- Create_Enumeration --
   ------------------------

   function Create_Enumeration return Cmof_Enumeration is
   begin
      Elements.Increment_Last;
      Initialize_Enumeration (Elements.Last);

      return Elements.Last;
   end Create_Enumeration;

   --------------------------------
   -- Create_Enumeration_Literal --
   --------------------------------

   function Create_Enumeration_Literal return Cmof_Enumeration_Literal is
   begin
      Elements.Increment_Last;
      Initialize_Enumeration_Literal (Elements.Last);

      return Elements.Last;
   end Create_Enumeration_Literal;

   -----------------------
   -- Create_Expression --
   -----------------------

   function Create_Expression return Cmof_Expression is
   begin
      Elements.Increment_Last;
      Initialize_Expression (Elements.Last);

      return Elements.Last;
   end Create_Expression;

   ------------------------------
   -- Create_Opaque_Expression --
   ------------------------------

   function Create_Opaque_Expression return Cmof_Opaque_Expression is
   begin
      Elements.Increment_Last;
      Initialize_Opaque_Expression (Elements.Last);

      return Elements.Last;
   end Create_Opaque_Expression;

   ----------------------
   -- Create_Operation --
   ----------------------

   function Create_Operation return Cmof_Operation is
   begin
      Elements.Increment_Last;
      Initialize_Operation (Elements.Last);

      return Elements.Last;
   end Create_Operation;

   --------------------
   -- Create_Package --
   --------------------

   function Create_Package return Cmof_Package is
   begin
      Elements.Increment_Last;
      Initialize_Package (Elements.Last);

      return Elements.Last;
   end Create_Package;

   ---------------------------
   -- Create_Package_Import --
   ---------------------------

   function Create_Package_Import return Cmof_Package_Import is
   begin
      Elements.Increment_Last;
      Initialize_Package_Import (Elements.Last);

      return Elements.Last;
   end Create_Package_Import;

   --------------------------
   -- Create_Package_Merge --
   --------------------------

   function Create_Package_Merge return Cmof_Package_Merge is
   begin
      Elements.Increment_Last;
      Initialize_Package_Merge (Elements.Last);

      return Elements.Last;
   end Create_Package_Merge;

   ----------------------
   -- Create_Parameter --
   ----------------------

   function Create_Parameter return Cmof_Parameter is
   begin
      Elements.Increment_Last;
      Initialize_Parameter (Elements.Last);

      return Elements.Last;
   end Create_Parameter;

   ---------------------------
   -- Create_Primitive_Type --
   ---------------------------

   function Create_Primitive_Type return Cmof_Primitive_Type is
   begin
      Elements.Increment_Last;
      Initialize_Primitive_Type (Elements.Last);

      return Elements.Last;
   end Create_Primitive_Type;

   ---------------------
   -- Create_Property --
   ---------------------

   function Create_Property return Cmof_Property is
   begin
      Elements.Increment_Last;
      Initialize_Property (Elements.Last);

      return Elements.Last;
   end Create_Property;

   ----------------------------
   -- Initialize_Association --
   ----------------------------

   procedure Initialize_Association (Self : CMOF_Association) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Association,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_Boolean, AMF.False),       --  isDerived
                   2      => (M_Boolean, AMF.False),       --  isFinalSpecialization
                   3      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   4      => (M_Element, 0),               --  namespace
                   5      => (M_Element, 0),               --  owner
                   6      => (M_Element, 0),               --  package
                   7      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 17);
      Initialize_Set_Collection          --  attribute
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  endType
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  feature
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  general
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  inheritedMember
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Ordered_Set_Collection  --  memberEnd
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  navigableOwnedEnd
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Ordered_Set_Collection  --  ownedEnd
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 14);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 15);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 16);
      Initialize_Set_Collection          --  relatedElement
       (Elements.Table (Self).Member (0).Collection + 17);
   end Initialize_Association;

   ----------------------
   -- Initialize_Class --
   ----------------------

   procedure Initialize_Class (Self : CMOF_Class) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Class,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_Boolean, AMF.False),       --  isAbstract
                   2      => (M_Boolean, AMF.False),       --  isFinalSpecialization
                   3      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   4      => (M_Element, 0),               --  namespace
                   5      => (M_Element, 0),               --  owner
                   6      => (M_Element, 0),               --  package
                   7      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 14);
      Initialize_Set_Collection          --  attribute
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  feature
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  general
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  inheritedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Ordered_Set_Collection  --  ownedAttribute
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Ordered_Set_Collection  --  ownedOperation
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 14);
   end Initialize_Class;

   ------------------------
   -- Initialize_Comment --
   ------------------------

   procedure Initialize_Comment (Self : CMOF_Comment) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Comment,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  body
                   2      => (M_Element, 0),               --  owner
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 3);
      Initialize_Set_Collection          --  annotatedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 3);
   end Initialize_Comment;

   ---------------------------
   -- Initialize_Constraint --
   ---------------------------

   procedure Initialize_Constraint (Self : CMOF_Constraint) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Constraint,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_Element, 0),               --  context
                   2      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   3      => (M_Element, 0),               --  namespace
                   4      => (M_Element, 0),               --  owner
                   5      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   6      => (M_Element, 0),               --  specification
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 3);
      Initialize_Ordered_Set_Collection  --  constrainedElement
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 3);
   end Initialize_Constraint;

   --------------------------
   -- Initialize_Data_Type --
   --------------------------

   procedure Initialize_Data_Type (Self : CMOF_Data_Type) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Data_Type,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_Boolean, AMF.False),       --  isFinalSpecialization
                   2      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   3      => (M_Element, 0),               --  namespace
                   4      => (M_Element, 0),               --  owner
                   5      => (M_Element, 0),               --  package
                   6      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 14);
      Initialize_Set_Collection          --  attribute
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  feature
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  general
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  inheritedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Ordered_Set_Collection  --  ownedAttribute
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Ordered_Set_Collection  --  ownedOperation
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 14);
   end Initialize_Data_Type;

   -------------------------------
   -- Initialize_Element_Import --
   -------------------------------

   procedure Initialize_Element_Import (Self : CMOF_Element_Import) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Element_Import,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  alias
                   2      => (M_Element, 0),               --  importedElement
                   3      => (M_Element, 0),               --  importingNamespace
                   4      => (M_Element, 0),               --  owner
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 5);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  relatedElement
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  source
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  target
       (Elements.Table (Self).Member (0).Collection + 5);
   end Initialize_Element_Import;

   ----------------------------
   -- Initialize_Enumeration --
   ----------------------------

   procedure Initialize_Enumeration (Self : CMOF_Enumeration) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Enumeration,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_Boolean, AMF.False),       --  isFinalSpecialization
                   2      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   3      => (M_Element, 0),               --  namespace
                   4      => (M_Element, 0),               --  owner
                   5      => (M_Element, 0),               --  package
                   6      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 15);
      Initialize_Set_Collection          --  attribute
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  feature
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  general
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  inheritedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Ordered_Set_Collection  --  ownedAttribute
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Ordered_Set_Collection  --  ownedLiteral
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Ordered_Set_Collection  --  ownedOperation
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 14);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 15);
   end Initialize_Enumeration;

   ------------------------------------
   -- Initialize_Enumeration_Literal --
   ------------------------------------

   procedure Initialize_Enumeration_Literal (Self : CMOF_Enumeration_Literal) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Enumeration_Literal,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_Element, 0),               --  enumeration
                   2      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   3      => (M_Element, 0),               --  namespace
                   4      => (M_Element, 0),               --  owner
                   5      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 2);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 2);
   end Initialize_Enumeration_Literal;

   ---------------------------
   -- Initialize_Expression --
   ---------------------------

   procedure Initialize_Expression (Self : CMOF_Expression) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Expression,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   2      => (M_Element, 0),               --  namespace
                   3      => (M_Element, 0),               --  owner
                   4      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   5      => (M_Element, 0),               --  type
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 3);
      Initialize_Ordered_Set_Collection  --  operand
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 3);
   end Initialize_Expression;

   ----------------------------------
   -- Initialize_Opaque_Expression --
   ----------------------------------

   procedure Initialize_Opaque_Expression (Self : CMOF_Opaque_Expression) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Opaque_Expression,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   3      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   4      => (M_Element, 0),               --  namespace
                   5      => (M_Element, 0),               --  owner
                   6      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   7      => (M_Element, 0),               --  type
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 2);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 2);
   end Initialize_Opaque_Expression;

   --------------------------
   -- Initialize_Operation --
   --------------------------

   procedure Initialize_Operation (Self : CMOF_Operation) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Operation,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_Element, 0),               --  bodyCondition
                   2      => (M_Element, 0),               --  class
                   3      => (M_Element, 0),               --  datatype
                   4      => (M_Boolean, AMF.False),       --  isLeaf
                   5      => (M_Boolean, AMF.False),       --  isOrdered
                   6      => (M_Boolean, AMF.False),       --  isQuery
                   7      => (M_Boolean, AMF.True),        --  isUnique
                   8      => (M_Integer, 1),               --  lower
                   9      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   10     => (M_Element, 0),               --  namespace
                   11     => (M_Element, 0),               --  owner
                   12     => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   13     => (M_Element, 0),               --  type
                   14     => (M_Unlimited_Natural, (False, 1)),
                                                           --  upper
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 16);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  featuringClassifier
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Ordered_Set_Collection  --  ownedParameter
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  postcondition
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Set_Collection          --  precondition
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Set_Collection          --  raisedException
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Set_Collection          --  redefinedElement
       (Elements.Table (Self).Member (0).Collection + 14);
      Initialize_Set_Collection          --  redefinedOperation
       (Elements.Table (Self).Member (0).Collection + 15);
      Initialize_Set_Collection          --  redefinitionContext
       (Elements.Table (Self).Member (0).Collection + 16);
   end Initialize_Operation;

   ------------------------
   -- Initialize_Package --
   ------------------------

   procedure Initialize_Package (Self : CMOF_Package) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Package,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   2      => (M_Element, 0),               --  namespace
                   3      => (M_Element, 0),               --  nestingPackage
                   4      => (M_Element, 0),               --  owner
                   5      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 12);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  nestedPackage
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  ownedType
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  packageMerge
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Set_Collection          --  packagedElement
       (Elements.Table (Self).Member (0).Collection + 12);
   end Initialize_Package;

   -------------------------------
   -- Initialize_Package_Import --
   -------------------------------

   procedure Initialize_Package_Import (Self : CMOF_Package_Import) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Package_Import,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_Element, 0),               --  importedPackage
                   2      => (M_Element, 0),               --  importingNamespace
                   3      => (M_Element, 0),               --  owner
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 5);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  relatedElement
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  source
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  target
       (Elements.Table (Self).Member (0).Collection + 5);
   end Initialize_Package_Import;

   ------------------------------
   -- Initialize_Package_Merge --
   ------------------------------

   procedure Initialize_Package_Merge (Self : CMOF_Package_Merge) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Package_Merge,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_Element, 0),               --  mergedPackage
                   2      => (M_Element, 0),               --  owner
                   3      => (M_Element, 0),               --  receivingPackage
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 5);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  relatedElement
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  source
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  target
       (Elements.Table (Self).Member (0).Collection + 5);
   end Initialize_Package_Merge;

   --------------------------
   -- Initialize_Parameter --
   --------------------------

   procedure Initialize_Parameter (Self : CMOF_Parameter) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Parameter,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  default
                   3      => (M_Boolean, AMF.False),       --  isOrdered
                   4      => (M_Boolean, AMF.True),        --  isUnique
                   5      => (M_Integer, 1),               --  lower
                   6      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   7      => (M_Element, 0),               --  namespace
                   8      => (M_Element, 0),               --  operation
                   9      => (M_Element, 0),               --  owner
                   10     => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   11     => (M_Element, 0),               --  type
                   12     => (M_Unlimited_Natural, (False, 1)),
                                                           --  upper
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 2);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 2);
   end Initialize_Parameter;

   -------------------------------
   -- Initialize_Primitive_Type --
   -------------------------------

   procedure Initialize_Primitive_Type (Self : CMOF_Primitive_Type) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Primitive_Type,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_Boolean, AMF.False),       --  isFinalSpecialization
                   2      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   3      => (M_Element, 0),               --  namespace
                   4      => (M_Element, 0),               --  owner
                   5      => (M_Element, 0),               --  package
                   6      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 14);
      Initialize_Set_Collection          --  attribute
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  elementImport
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  feature
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  general
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  importedMember
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  inheritedMember
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  member
       (Elements.Table (Self).Member (0).Collection + 7);
      Initialize_Ordered_Set_Collection  --  ownedAttribute
       (Elements.Table (Self).Member (0).Collection + 8);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 9);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 10);
      Initialize_Set_Collection          --  ownedMember
       (Elements.Table (Self).Member (0).Collection + 11);
      Initialize_Ordered_Set_Collection  --  ownedOperation
       (Elements.Table (Self).Member (0).Collection + 12);
      Initialize_Set_Collection          --  ownedRule
       (Elements.Table (Self).Member (0).Collection + 13);
      Initialize_Set_Collection          --  packageImport
       (Elements.Table (Self).Member (0).Collection + 14);
   end Initialize_Primitive_Type;

   -------------------------
   -- Initialize_Property --
   -------------------------

   procedure Initialize_Property (Self : CMOF_Property) is
   begin
      Elements.Table (Self) :=
       (Kind   => E_Property,
        Id     => Matreshka.Internals.Strings.Shared_Empty'Access,
        Member => (0      => (Kind => M_None),
                   1      => (M_Element, 0),               --  association
                   2      => (M_Element, 0),               --  class
                   3      => (M_Element, 0),               --  datatype
                   4      => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  default
                   5      => (M_Boolean, AMF.False),       --  isComposite
                   6      => (M_Boolean, AMF.False),       --  isDerived
                   7      => (M_Boolean, AMF.False),       --  isDerivedUnion
                   8      => (M_Boolean, AMF.False),       --  isLeaf
                   9      => (M_Boolean, AMF.False),       --  isOrdered
                   10     => (M_Boolean, AMF.False),       --  isReadOnly
                   11     => (M_Boolean, AMF.True),        --  isUnique
                   12     => (M_Integer, 1),               --  lower
                   13     => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  name
                   14     => (M_Element, 0),               --  namespace
                   15     => (M_Element, 0),               --  opposite
                   16     => (M_Element, 0),               --  owner
                   17     => (M_Element, 0),               --  owningAssociation
                   18     => (M_String, Matreshka.Internals.Strings.Shared_Empty'Access),
                                                           --  qualifiedName
                   19     => (M_Element, 0),               --  type
                   20     => (M_Unlimited_Natural, (False, 1)),
                                                           --  upper
                   others => (Kind => M_None)));
      Allocate_Collection_Of_Cmof_Element_Slots (Self, 7);
      Initialize_Set_Collection          --  featuringClassifier
       (Elements.Table (Self).Member (0).Collection + 1);
      Initialize_Set_Collection          --  ownedComment
       (Elements.Table (Self).Member (0).Collection + 2);
      Initialize_Set_Collection          --  ownedElement
       (Elements.Table (Self).Member (0).Collection + 3);
      Initialize_Set_Collection          --  redefinedElement
       (Elements.Table (Self).Member (0).Collection + 4);
      Initialize_Set_Collection          --  redefinedProperty
       (Elements.Table (Self).Member (0).Collection + 5);
      Initialize_Set_Collection          --  redefinitionContext
       (Elements.Table (Self).Member (0).Collection + 6);
      Initialize_Set_Collection          --  subsettedProperty
       (Elements.Table (Self).Member (0).Collection + 7);
   end Initialize_Property;

end Cmof.Internals.Constructors;
