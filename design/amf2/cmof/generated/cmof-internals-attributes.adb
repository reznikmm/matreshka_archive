with League.Strings.Internals;
with Matreshka.Internals.Strings;

with Cmof.Internals.Attribute_Mappings;
with Cmof.Internals.Metamodel;
with Cmof.Internals.Subclassing;
with Cmof.Internals.Tables;

package body Cmof.Internals.Attributes is

   use Cmof.Internals.Attribute_Mappings;
   use Cmof.Internals.Metamodel;
   use Cmof.Internals.Subclassing;
   use Cmof.Internals.Tables;

   ------------------------
   -- Internal_Get_Alias --
   ------------------------

   function Internal_Get_Alias
     (Self : CMOF_Element) return AMF.AMF_String
   is
   begin
      return
        League.Strings.Internals.Create
         (Elements.Table (Self).Member
           (Member_Offset
             (Elements.Table (Self).Kind,
              MP_CMOF_Element_Import_Alias)).String_Value);
   end Internal_Get_Alias;

   ------------------------
   -- Internal_Set_Alias --
   ------------------------

   procedure Internal_Set_Alias
     (Self : CMOF_Element;
      To   : AMF.AMF_String) is
   begin
      Matreshka.Internals.Strings.Dereference
       (Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Element_Import_Alias)).String_Value);
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
            MP_CMOF_Element_Import_Alias)).String_Value := League.Strings.Internals.Get_Shared (To);
      Matreshka.Internals.Strings.Reference
       (Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Element_Import_Alias)).String_Value);
   end Internal_Set_Alias;

   ------------------------------------
   -- Internal_Get_Annotated_Element --
   ------------------------------------

   function Internal_Get_Annotated_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Comment_Annotated_Element));
   end Internal_Get_Annotated_Element;

   ------------------------------
   -- Internal_Get_Association --
   ------------------------------

   function Internal_Get_Association
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Property_Association)).Element;
   end Internal_Get_Association;

   ------------------------------
   -- Internal_Set_Association --
   ------------------------------

   procedure Internal_Set_Association
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Property_Association)).Element := To;
   end Internal_Set_Association;

   ----------------------------
   -- Internal_Get_Attribute --
   ----------------------------

   function Internal_Get_Attribute
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Classifier_Attribute));
   end Internal_Get_Attribute;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
     (Self : CMOF_Element) return AMF.AMF_String
   is
   begin
      if Is_Comment (Self) then
         return
           League.Strings.Internals.Create
            (Elements.Table (Self).Member
              (Member_Offset
                (Elements.Table (Self).Kind,
                 MP_CMOF_Comment_Body)).String_Value);

      elsif Is_Opaque_Expression (Self) then
         return
           League.Strings.Internals.Create
            (Elements.Table (Self).Member
              (Member_Offset
                (Elements.Table (Self).Kind,
                 MP_CMOF_Opaque_Expression_Body)).String_Value);
      end if;
   end Internal_Get_Body;

   -----------------------
   -- Internal_Set_Body --
   -----------------------

   procedure Internal_Set_Body
     (Self : CMOF_Element;
      To   : AMF.AMF_String) is
   begin
      if Is_Comment (Self) then
         Matreshka.Internals.Strings.Dereference
          (Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Comment_Body)).String_Value);
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
               MP_CMOF_Comment_Body)).String_Value := League.Strings.Internals.Get_Shared (To);
         Matreshka.Internals.Strings.Reference
          (Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Comment_Body)).String_Value);

      elsif Is_Opaque_Expression (Self) then
         Matreshka.Internals.Strings.Dereference
          (Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Opaque_Expression_Body)).String_Value);
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
               MP_CMOF_Opaque_Expression_Body)).String_Value := League.Strings.Internals.Get_Shared (To);
         Matreshka.Internals.Strings.Reference
          (Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Opaque_Expression_Body)).String_Value);
      end if;
   end Internal_Set_Body;

   ---------------------------------
   -- Internal_Get_Body_Condition --
   ---------------------------------

   function Internal_Get_Body_Condition
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Operation_Body_Condition)).Element;
   end Internal_Get_Body_Condition;

   ---------------------------------
   -- Internal_Set_Body_Condition --
   ---------------------------------

   procedure Internal_Set_Body_Condition
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Operation_Body_Condition)).Element := To;
   end Internal_Set_Body_Condition;

   ------------------------
   -- Internal_Get_Class --
   ------------------------

   function Internal_Get_Class
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      if Is_Operation (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Operation_Class)).Element;

      elsif Is_Property (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Property_Class)).Element;
      end if;
   end Internal_Get_Class;

   ------------------------
   -- Internal_Set_Class --
   ------------------------

   procedure Internal_Set_Class
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      if Is_Operation (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Operation_Class)).Element := To;

      elsif Is_Property (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Property_Class)).Element := To;
      end if;
   end Internal_Set_Class;

   --------------------------------------
   -- Internal_Get_Constrained_Element --
   --------------------------------------

   function Internal_Get_Constrained_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Constraint_Constrained_Element));
   end Internal_Get_Constrained_Element;

   --------------------------
   -- Internal_Get_Context --
   --------------------------

   function Internal_Get_Context
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Constraint_Context)).Element;
   end Internal_Get_Context;

   --------------------------
   -- Internal_Set_Context --
   --------------------------

   procedure Internal_Set_Context
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Constraint_Context)).Element := To;
   end Internal_Set_Context;

   ---------------------------
   -- Internal_Get_Datatype --
   ---------------------------

   function Internal_Get_Datatype
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      if Is_Operation (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Operation_Datatype)).Element;

      elsif Is_Property (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Property_Datatype)).Element;
      end if;
   end Internal_Get_Datatype;

   ---------------------------
   -- Internal_Set_Datatype --
   ---------------------------

   procedure Internal_Set_Datatype
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      if Is_Operation (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Operation_Datatype)).Element := To;

      elsif Is_Property (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Property_Datatype)).Element := To;
      end if;
   end Internal_Set_Datatype;

   --------------------------
   -- Internal_Get_Default --
   --------------------------

   function Internal_Get_Default
     (Self : CMOF_Element) return AMF.AMF_String
   is
   begin
      if Is_Parameter (Self) then
         return
           League.Strings.Internals.Create
            (Elements.Table (Self).Member
              (Member_Offset
                (Elements.Table (Self).Kind,
                 MP_CMOF_Parameter_Default)).String_Value);

      elsif Is_Property (Self) then
         return
           League.Strings.Internals.Create
            (Elements.Table (Self).Member
              (Member_Offset
                (Elements.Table (Self).Kind,
                 MP_CMOF_Property_Default)).String_Value);
      end if;
   end Internal_Get_Default;

   --------------------------
   -- Internal_Set_Default --
   --------------------------

   procedure Internal_Set_Default
     (Self : CMOF_Element;
      To   : AMF.AMF_String) is
   begin
      if Is_Parameter (Self) then
         Matreshka.Internals.Strings.Dereference
          (Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Parameter_Default)).String_Value);
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
               MP_CMOF_Parameter_Default)).String_Value := League.Strings.Internals.Get_Shared (To);
         Matreshka.Internals.Strings.Reference
          (Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Parameter_Default)).String_Value);

      elsif Is_Property (Self) then
         Matreshka.Internals.Strings.Dereference
          (Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Property_Default)).String_Value);
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
               MP_CMOF_Property_Default)).String_Value := League.Strings.Internals.Get_Shared (To);
         Matreshka.Internals.Strings.Reference
          (Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Property_Default)).String_Value);
      end if;
   end Internal_Set_Default;

   ----------------------------
   -- Internal_Get_Direction --
   ----------------------------

   function Internal_Get_Direction
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        0;
   end Internal_Get_Direction;

   ----------------------------
   -- Internal_Set_Direction --
   ----------------------------

   procedure Internal_Set_Direction
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      null;
   end Internal_Set_Direction;

   ---------------------------------
   -- Internal_Get_Element_Import --
   ---------------------------------

   function Internal_Get_Element_Import
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Namespace_Element_Import));
   end Internal_Get_Element_Import;

   ---------------------------
   -- Internal_Get_End_Type --
   ---------------------------

   function Internal_Get_End_Type
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Association_End_Type));
   end Internal_Get_End_Type;

   ------------------------------
   -- Internal_Get_Enumeration --
   ------------------------------

   function Internal_Get_Enumeration
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Enumeration_Literal_Enumeration)).Element;
   end Internal_Get_Enumeration;

   ------------------------------
   -- Internal_Set_Enumeration --
   ------------------------------

   procedure Internal_Set_Enumeration
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Enumeration_Literal_Enumeration)).Element := To;
   end Internal_Set_Enumeration;

   --------------------------
   -- Internal_Get_Feature --
   --------------------------

   function Internal_Get_Feature
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Classifier_Feature));
   end Internal_Get_Feature;

   ---------------------------------------
   -- Internal_Get_Featuring_Classifier --
   ---------------------------------------

   function Internal_Get_Featuring_Classifier
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Feature_Featuring_Classifier));
   end Internal_Get_Featuring_Classifier;

   --------------------------
   -- Internal_Get_General --
   --------------------------

   function Internal_Get_General
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Classifier_General));
   end Internal_Get_General;

   -----------------------------------
   -- Internal_Get_Imported_Element --
   -----------------------------------

   function Internal_Get_Imported_Element
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Element_Import_Imported_Element)).Element;
   end Internal_Get_Imported_Element;

   -----------------------------------
   -- Internal_Set_Imported_Element --
   -----------------------------------

   procedure Internal_Set_Imported_Element
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Element_Import_Imported_Element)).Element := To;
   end Internal_Set_Imported_Element;

   ----------------------------------
   -- Internal_Get_Imported_Member --
   ----------------------------------

   function Internal_Get_Imported_Member
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Namespace_Imported_Member));
   end Internal_Get_Imported_Member;

   -----------------------------------
   -- Internal_Get_Imported_Package --
   -----------------------------------

   function Internal_Get_Imported_Package
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Package_Import_Imported_Package)).Element;
   end Internal_Get_Imported_Package;

   -----------------------------------
   -- Internal_Set_Imported_Package --
   -----------------------------------

   procedure Internal_Set_Imported_Package
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Package_Import_Imported_Package)).Element := To;
   end Internal_Set_Imported_Package;

   --------------------------------------
   -- Internal_Get_Importing_Namespace --
   --------------------------------------

   function Internal_Get_Importing_Namespace
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      if Is_Element_Import (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Element_Import_Importing_Namespace)).Element;

      elsif Is_Package_Import (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Package_Import_Importing_Namespace)).Element;
      end if;
   end Internal_Get_Importing_Namespace;

   --------------------------------------
   -- Internal_Set_Importing_Namespace --
   --------------------------------------

   procedure Internal_Set_Importing_Namespace
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      if Is_Element_Import (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Element_Import_Importing_Namespace)).Element := To;

      elsif Is_Package_Import (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Package_Import_Importing_Namespace)).Element := To;
      end if;
   end Internal_Set_Importing_Namespace;

   -----------------------------------
   -- Internal_Get_Inherited_Member --
   -----------------------------------

   function Internal_Get_Inherited_Member
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Classifier_Inherited_Member));
   end Internal_Get_Inherited_Member;

   ------------------------------
   -- Internal_Get_Is_Abstract --
   ------------------------------

   function Internal_Get_Is_Abstract
     (Self : Cmof_Element) return AMF.AMF_Boolean
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Class_Is_Abstract)).Boolean_Value;
   end Internal_Get_Is_Abstract;

   ------------------------------
   -- Internal_Set_Is_Abstract --
   ------------------------------

   procedure Internal_Set_Is_Abstract
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Class_Is_Abstract)).Boolean_Value := To;
   end Internal_Set_Is_Abstract;

   -------------------------------
   -- Internal_Get_Is_Composite --
   -------------------------------

   function Internal_Get_Is_Composite
     (Self : Cmof_Element) return AMF.AMF_Boolean
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Property_Is_Composite)).Boolean_Value;
   end Internal_Get_Is_Composite;

   -------------------------------
   -- Internal_Set_Is_Composite --
   -------------------------------

   procedure Internal_Set_Is_Composite
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Property_Is_Composite)).Boolean_Value := To;
   end Internal_Set_Is_Composite;

   -----------------------------
   -- Internal_Get_Is_Derived --
   -----------------------------

   function Internal_Get_Is_Derived
     (Self : Cmof_Element) return AMF.AMF_Boolean
   is
   begin
      if Is_Association (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Association_Is_Derived)).Boolean_Value;

      elsif Is_Property (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Property_Is_Derived)).Boolean_Value;
      end if;
   end Internal_Get_Is_Derived;

   -----------------------------
   -- Internal_Set_Is_Derived --
   -----------------------------

   procedure Internal_Set_Is_Derived
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean) is
   begin
      if Is_Association (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Association_Is_Derived)).Boolean_Value := To;

      elsif Is_Property (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Property_Is_Derived)).Boolean_Value := To;
      end if;
   end Internal_Set_Is_Derived;

   -----------------------------------
   -- Internal_Get_Is_Derived_Union --
   -----------------------------------

   function Internal_Get_Is_Derived_Union
     (Self : Cmof_Element) return AMF.AMF_Boolean
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Property_Is_Derived_Union)).Boolean_Value;
   end Internal_Get_Is_Derived_Union;

   -----------------------------------
   -- Internal_Set_Is_Derived_Union --
   -----------------------------------

   procedure Internal_Set_Is_Derived_Union
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Property_Is_Derived_Union)).Boolean_Value := To;
   end Internal_Set_Is_Derived_Union;

   ------------------------------------------
   -- Internal_Get_Is_Final_Specialization --
   ------------------------------------------

   function Internal_Get_Is_Final_Specialization
     (Self : Cmof_Element) return AMF.AMF_Boolean
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Classifier_Is_Final_Specialization)).Boolean_Value;
   end Internal_Get_Is_Final_Specialization;

   ------------------------------------------
   -- Internal_Set_Is_Final_Specialization --
   ------------------------------------------

   procedure Internal_Set_Is_Final_Specialization
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Classifier_Is_Final_Specialization)).Boolean_Value := To;
   end Internal_Set_Is_Final_Specialization;

   --------------------------
   -- Internal_Get_Is_Leaf --
   --------------------------

   function Internal_Get_Is_Leaf
     (Self : Cmof_Element) return AMF.AMF_Boolean
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Redefinable_Element_Is_Leaf)).Boolean_Value;
   end Internal_Get_Is_Leaf;

   --------------------------
   -- Internal_Set_Is_Leaf --
   --------------------------

   procedure Internal_Set_Is_Leaf
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Redefinable_Element_Is_Leaf)).Boolean_Value := To;
   end Internal_Set_Is_Leaf;

   -----------------------------
   -- Internal_Get_Is_Ordered --
   -----------------------------

   function Internal_Get_Is_Ordered
     (Self : Cmof_Element) return AMF.AMF_Boolean
   is
   begin
      if Is_Multiplicity_Element (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Multiplicity_Element_Is_Ordered)).Boolean_Value;

      elsif Is_Operation (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Operation_Is_Ordered)).Boolean_Value;
      end if;
   end Internal_Get_Is_Ordered;

   -----------------------------
   -- Internal_Set_Is_Ordered --
   -----------------------------

   procedure Internal_Set_Is_Ordered
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean) is
   begin
      if Is_Multiplicity_Element (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Multiplicity_Element_Is_Ordered)).Boolean_Value := To;

      elsif Is_Operation (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Operation_Is_Ordered)).Boolean_Value := To;
      end if;
   end Internal_Set_Is_Ordered;

   ---------------------------
   -- Internal_Get_Is_Query --
   ---------------------------

   function Internal_Get_Is_Query
     (Self : Cmof_Element) return AMF.AMF_Boolean
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Operation_Is_Query)).Boolean_Value;
   end Internal_Get_Is_Query;

   ---------------------------
   -- Internal_Set_Is_Query --
   ---------------------------

   procedure Internal_Set_Is_Query
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Operation_Is_Query)).Boolean_Value := To;
   end Internal_Set_Is_Query;

   -------------------------------
   -- Internal_Get_Is_Read_Only --
   -------------------------------

   function Internal_Get_Is_Read_Only
     (Self : Cmof_Element) return AMF.AMF_Boolean
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Property_Is_Read_Only)).Boolean_Value;
   end Internal_Get_Is_Read_Only;

   -------------------------------
   -- Internal_Set_Is_Read_Only --
   -------------------------------

   procedure Internal_Set_Is_Read_Only
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Property_Is_Read_Only)).Boolean_Value := To;
   end Internal_Set_Is_Read_Only;

   ----------------------------
   -- Internal_Get_Is_Unique --
   ----------------------------

   function Internal_Get_Is_Unique
     (Self : Cmof_Element) return AMF.AMF_Boolean
   is
   begin
      if Is_Multiplicity_Element (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Multiplicity_Element_Is_Unique)).Boolean_Value;

      elsif Is_Operation (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Operation_Is_Unique)).Boolean_Value;
      end if;
   end Internal_Get_Is_Unique;

   ----------------------------
   -- Internal_Set_Is_Unique --
   ----------------------------

   procedure Internal_Set_Is_Unique
     (Self : CMOF_Element;
      To   : AMF.AMF_Boolean) is
   begin
      if Is_Multiplicity_Element (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Multiplicity_Element_Is_Unique)).Boolean_Value := To;

      elsif Is_Operation (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Operation_Is_Unique)).Boolean_Value := To;
      end if;
   end Internal_Set_Is_Unique;

   ---------------------------
   -- Internal_Get_Language --
   ---------------------------

   function Internal_Get_Language
     (Self : CMOF_Element) return Collection_Of_CMOF_String
   is
   begin
      return
0;
   end Internal_Get_Language;

   ------------------------
   -- Internal_Get_Lower --
   ------------------------

   function Internal_Get_Lower
     (Self : Cmof_Element) return AMF.AMF_Integer
   is
   begin
      if Is_Multiplicity_Element (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Multiplicity_Element_Lower)).Integer_Value;

      elsif Is_Operation (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Operation_Lower)).Integer_Value;
      end if;
   end Internal_Get_Lower;

   ------------------------
   -- Internal_Set_Lower --
   ------------------------

   procedure Internal_Set_Lower
     (Self : CMOF_Element;
      To   : AMF.AMF_Integer) is
   begin
      if Is_Multiplicity_Element (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Multiplicity_Element_Lower)).Integer_Value := To;

      elsif Is_Operation (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Operation_Lower)).Integer_Value := To;
      end if;
   end Internal_Set_Lower;

   -------------------------
   -- Internal_Get_Member --
   -------------------------

   function Internal_Get_Member
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Namespace_Member));
   end Internal_Get_Member;

   -----------------------------
   -- Internal_Get_Member_End --
   -----------------------------

   function Internal_Get_Member_End
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Association_Member_End));
   end Internal_Get_Member_End;

   ---------------------------------
   -- Internal_Get_Merged_Package --
   ---------------------------------

   function Internal_Get_Merged_Package
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Package_Merge_Merged_Package)).Element;
   end Internal_Get_Merged_Package;

   ---------------------------------
   -- Internal_Set_Merged_Package --
   ---------------------------------

   procedure Internal_Set_Merged_Package
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Package_Merge_Merged_Package)).Element := To;
   end Internal_Set_Merged_Package;

   -----------------------
   -- Internal_Get_Name --
   -----------------------

   function Internal_Get_Name
     (Self : CMOF_Element) return AMF.AMF_String
   is
   begin
      return
        League.Strings.Internals.Create
         (Elements.Table (Self).Member
           (Member_Offset
             (Elements.Table (Self).Kind,
              MP_CMOF_Named_Element_Name)).String_Value);
   end Internal_Get_Name;

   -----------------------
   -- Internal_Set_Name --
   -----------------------

   procedure Internal_Set_Name
     (Self : CMOF_Element;
      To   : AMF.AMF_String) is
   begin
      Matreshka.Internals.Strings.Dereference
       (Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Named_Element_Name)).String_Value);
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
            MP_CMOF_Named_Element_Name)).String_Value := League.Strings.Internals.Get_Shared (To);
      Matreshka.Internals.Strings.Reference
       (Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Named_Element_Name)).String_Value);
   end Internal_Set_Name;

   ----------------------------
   -- Internal_Get_Namespace --
   ----------------------------

   function Internal_Get_Namespace
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Named_Element_Namespace)).Element;
   end Internal_Get_Namespace;

   --------------------------------------
   -- Internal_Get_Navigable_Owned_End --
   --------------------------------------

   function Internal_Get_Navigable_Owned_End
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Association_Navigable_Owned_End));
   end Internal_Get_Navigable_Owned_End;

   ---------------------------------
   -- Internal_Get_Nested_Package --
   ---------------------------------

   function Internal_Get_Nested_Package
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Package_Nested_Package));
   end Internal_Get_Nested_Package;

   ----------------------------------
   -- Internal_Get_Nesting_Package --
   ----------------------------------

   function Internal_Get_Nesting_Package
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Package_Nesting_Package)).Element;
   end Internal_Get_Nesting_Package;

   ----------------------------------
   -- Internal_Set_Nesting_Package --
   ----------------------------------

   procedure Internal_Set_Nesting_Package
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Package_Nesting_Package)).Element := To;
   end Internal_Set_Nesting_Package;

   --------------------------
   -- Internal_Get_Operand --
   --------------------------

   function Internal_Get_Operand
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Expression_Operand));
   end Internal_Get_Operand;

   ----------------------------
   -- Internal_Get_Operation --
   ----------------------------

   function Internal_Get_Operation
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Parameter_Operation)).Element;
   end Internal_Get_Operation;

   ----------------------------
   -- Internal_Set_Operation --
   ----------------------------

   procedure Internal_Set_Operation
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Parameter_Operation)).Element := To;
   end Internal_Set_Operation;

   ---------------------------
   -- Internal_Get_Opposite --
   ---------------------------

   function Internal_Get_Opposite
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Property_Opposite)).Element;
   end Internal_Get_Opposite;

   ----------------------------------
   -- Internal_Get_Owned_Attribute --
   ----------------------------------

   function Internal_Get_Owned_Attribute
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      if Is_Class (Self) then
         return
           Elements.Table (Self).Member (0).Collection
             + Collection_Of_CMOF_Element
                (Collection_Offset
                  (Elements.Table (Self).Kind,
                   MP_CMOF_Class_Owned_Attribute));

      elsif Is_Data_Type (Self) then
         return
           Elements.Table (Self).Member (0).Collection
             + Collection_Of_CMOF_Element
                (Collection_Offset
                  (Elements.Table (Self).Kind,
                   MP_CMOF_Data_Type_Owned_Attribute));
      end if;
   end Internal_Get_Owned_Attribute;

   --------------------------------
   -- Internal_Get_Owned_Comment --
   --------------------------------

   function Internal_Get_Owned_Comment
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Element_Owned_Comment));
   end Internal_Get_Owned_Comment;

   --------------------------------
   -- Internal_Get_Owned_Element --
   --------------------------------

   function Internal_Get_Owned_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Element_Owned_Element));
   end Internal_Get_Owned_Element;

   ----------------------------
   -- Internal_Get_Owned_End --
   ----------------------------

   function Internal_Get_Owned_End
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Association_Owned_End));
   end Internal_Get_Owned_End;

   --------------------------------
   -- Internal_Get_Owned_Literal --
   --------------------------------

   function Internal_Get_Owned_Literal
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Enumeration_Owned_Literal));
   end Internal_Get_Owned_Literal;

   -------------------------------
   -- Internal_Get_Owned_Member --
   -------------------------------

   function Internal_Get_Owned_Member
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Namespace_Owned_Member));
   end Internal_Get_Owned_Member;

   ----------------------------------
   -- Internal_Get_Owned_Operation --
   ----------------------------------

   function Internal_Get_Owned_Operation
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      if Is_Class (Self) then
         return
           Elements.Table (Self).Member (0).Collection
             + Collection_Of_CMOF_Element
                (Collection_Offset
                  (Elements.Table (Self).Kind,
                   MP_CMOF_Class_Owned_Operation));

      elsif Is_Data_Type (Self) then
         return
           Elements.Table (Self).Member (0).Collection
             + Collection_Of_CMOF_Element
                (Collection_Offset
                  (Elements.Table (Self).Kind,
                   MP_CMOF_Data_Type_Owned_Operation));
      end if;
   end Internal_Get_Owned_Operation;

   ----------------------------------
   -- Internal_Get_Owned_Parameter --
   ----------------------------------

   function Internal_Get_Owned_Parameter
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      if Is_Behavioral_Feature (Self) then
         return
           Elements.Table (Self).Member (0).Collection
             + Collection_Of_CMOF_Element
                (Collection_Offset
                  (Elements.Table (Self).Kind,
                   MP_CMOF_Behavioral_Feature_Owned_Parameter));

      elsif Is_Operation (Self) then
         return
           Elements.Table (Self).Member (0).Collection
             + Collection_Of_CMOF_Element
                (Collection_Offset
                  (Elements.Table (Self).Kind,
                   MP_CMOF_Operation_Owned_Parameter));
      end if;
   end Internal_Get_Owned_Parameter;

   -----------------------------
   -- Internal_Get_Owned_Rule --
   -----------------------------

   function Internal_Get_Owned_Rule
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Namespace_Owned_Rule));
   end Internal_Get_Owned_Rule;

   -----------------------------
   -- Internal_Get_Owned_Type --
   -----------------------------

   function Internal_Get_Owned_Type
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Package_Owned_Type));
   end Internal_Get_Owned_Type;

   ------------------------
   -- Internal_Get_Owner --
   ------------------------

   function Internal_Get_Owner
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Element_Owner)).Element;
   end Internal_Get_Owner;

   -------------------------------------
   -- Internal_Get_Owning_Association --
   -------------------------------------

   function Internal_Get_Owning_Association
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Property_Owning_Association)).Element;
   end Internal_Get_Owning_Association;

   -------------------------------------
   -- Internal_Set_Owning_Association --
   -------------------------------------

   procedure Internal_Set_Owning_Association
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Property_Owning_Association)).Element := To;
   end Internal_Set_Owning_Association;

   --------------------------
   -- Internal_Get_Package --
   --------------------------

   function Internal_Get_Package
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Type_Package)).Element;
   end Internal_Get_Package;

   --------------------------
   -- Internal_Set_Package --
   --------------------------

   procedure Internal_Set_Package
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Type_Package)).Element := To;
   end Internal_Set_Package;

   ---------------------------------
   -- Internal_Get_Package_Import --
   ---------------------------------

   function Internal_Get_Package_Import
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Namespace_Package_Import));
   end Internal_Get_Package_Import;

   --------------------------------
   -- Internal_Get_Package_Merge --
   --------------------------------

   function Internal_Get_Package_Merge
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Package_Package_Merge));
   end Internal_Get_Package_Merge;

   -----------------------------------
   -- Internal_Get_Packaged_Element --
   -----------------------------------

   function Internal_Get_Packaged_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Package_Packaged_Element));
   end Internal_Get_Packaged_Element;

   --------------------------------
   -- Internal_Get_Postcondition --
   --------------------------------

   function Internal_Get_Postcondition
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Operation_Postcondition));
   end Internal_Get_Postcondition;

   -------------------------------
   -- Internal_Get_Precondition --
   -------------------------------

   function Internal_Get_Precondition
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Operation_Precondition));
   end Internal_Get_Precondition;

   ---------------------------------
   -- Internal_Get_Qualified_Name --
   ---------------------------------

   function Internal_Get_Qualified_Name
     (Self : CMOF_Element) return AMF.AMF_String
   is
   begin
      return
        League.Strings.Internals.Create
         (Elements.Table (Self).Member
           (Member_Offset
             (Elements.Table (Self).Kind,
              MP_CMOF_Named_Element_Qualified_Name)).String_Value);
   end Internal_Get_Qualified_Name;

   -----------------------------------
   -- Internal_Get_Raised_Exception --
   -----------------------------------

   function Internal_Get_Raised_Exception
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      if Is_Behavioral_Feature (Self) then
         return
           Elements.Table (Self).Member (0).Collection
             + Collection_Of_CMOF_Element
                (Collection_Offset
                  (Elements.Table (Self).Kind,
                   MP_CMOF_Behavioral_Feature_Raised_Exception));

      elsif Is_Operation (Self) then
         return
           Elements.Table (Self).Member (0).Collection
             + Collection_Of_CMOF_Element
                (Collection_Offset
                  (Elements.Table (Self).Kind,
                   MP_CMOF_Operation_Raised_Exception));
      end if;
   end Internal_Get_Raised_Exception;

   ------------------------------------
   -- Internal_Get_Receiving_Package --
   ------------------------------------

   function Internal_Get_Receiving_Package
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Package_Merge_Receiving_Package)).Element;
   end Internal_Get_Receiving_Package;

   ------------------------------------
   -- Internal_Set_Receiving_Package --
   ------------------------------------

   procedure Internal_Set_Receiving_Package
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Package_Merge_Receiving_Package)).Element := To;
   end Internal_Set_Receiving_Package;

   ------------------------------------
   -- Internal_Get_Redefined_Element --
   ------------------------------------

   function Internal_Get_Redefined_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Redefinable_Element_Redefined_Element));
   end Internal_Get_Redefined_Element;

   --------------------------------------
   -- Internal_Get_Redefined_Operation --
   --------------------------------------

   function Internal_Get_Redefined_Operation
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Operation_Redefined_Operation));
   end Internal_Get_Redefined_Operation;

   -------------------------------------
   -- Internal_Get_Redefined_Property --
   -------------------------------------

   function Internal_Get_Redefined_Property
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Property_Redefined_Property));
   end Internal_Get_Redefined_Property;

   ---------------------------------------
   -- Internal_Get_Redefinition_Context --
   ---------------------------------------

   function Internal_Get_Redefinition_Context
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Redefinable_Element_Redefinition_Context));
   end Internal_Get_Redefinition_Context;

   ----------------------------------
   -- Internal_Get_Related_Element --
   ----------------------------------

   function Internal_Get_Related_Element
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Relationship_Related_Element));
   end Internal_Get_Related_Element;

   -------------------------
   -- Internal_Get_Source --
   -------------------------

   function Internal_Get_Source
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Directed_Relationship_Source));
   end Internal_Get_Source;

   --------------------------------
   -- Internal_Get_Specification --
   --------------------------------

   function Internal_Get_Specification
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member
         (Member_Offset
           (Elements.Table (Self).Kind,
            MP_CMOF_Constraint_Specification)).Element;
   end Internal_Get_Specification;

   --------------------------------
   -- Internal_Set_Specification --
   --------------------------------

   procedure Internal_Set_Specification
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      Elements.Table (Self).Member
       (Member_Offset
         (Elements.Table (Self).Kind,
          MP_CMOF_Constraint_Specification)).Element := To;
   end Internal_Set_Specification;

   -------------------------------------
   -- Internal_Get_Subsetted_Property --
   -------------------------------------

   function Internal_Get_Subsetted_Property
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Property_Subsetted_Property));
   end Internal_Get_Subsetted_Property;

   ------------------------------
   -- Internal_Get_Super_Class --
   ------------------------------

   function Internal_Get_Super_Class
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Class_Super_Class));
   end Internal_Get_Super_Class;

   -------------------------
   -- Internal_Get_Target --
   -------------------------

   function Internal_Get_Target
     (Self : Cmof_Element) return Collection_Of_Cmof_Element
   is
   begin
      return
        Elements.Table (Self).Member (0).Collection
          + Collection_Of_CMOF_Element
             (Collection_Offset
               (Elements.Table (Self).Kind,
                MP_CMOF_Directed_Relationship_Target));
   end Internal_Get_Target;

   -----------------------
   -- Internal_Get_Type --
   -----------------------

   function Internal_Get_Type
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      if Is_Operation (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Operation_Type)).Element;

      elsif Is_Typed_Element (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Typed_Element_Type)).Element;
      end if;
   end Internal_Get_Type;

   -----------------------
   -- Internal_Set_Type --
   -----------------------

   procedure Internal_Set_Type
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      if Is_Operation (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Operation_Type)).Element := To;

      elsif Is_Typed_Element (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Typed_Element_Type)).Element := To;
      end if;
   end Internal_Set_Type;

   ------------------------
   -- Internal_Get_Upper --
   ------------------------

   function Internal_Get_Upper
     (Self : Cmof_Element) return AMF.AMF_Unlimited_Natural
   is
   begin
      if Is_Multiplicity_Element (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Multiplicity_Element_Upper)).Natural_Value;

      elsif Is_Operation (Self) then
         return
           Elements.Table (Self).Member
            (Member_Offset
              (Elements.Table (Self).Kind,
               MP_CMOF_Operation_Upper)).Natural_Value;
      end if;
   end Internal_Get_Upper;

   ------------------------
   -- Internal_Set_Upper --
   ------------------------

   procedure Internal_Set_Upper
     (Self : CMOF_Element;
      To   : AMF.AMF_Unlimited_Natural) is
   begin
      if Is_Multiplicity_Element (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Multiplicity_Element_Upper)).Natural_Value := To;

      elsif Is_Operation (Self) then
         Elements.Table (Self).Member
          (Member_Offset
            (Elements.Table (Self).Kind,
             MP_CMOF_Operation_Upper)).Natural_Value := To;
      end if;
   end Internal_Set_Upper;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
     (Self : Cmof_Element) return Cmof_Element
   is
   begin
      if Is_Element_Import (Self) then
         return
           0;

      elsif Is_Named_Element (Self) then
         return
           0;

      elsif Is_Package_Import (Self) then
         return
           0;
      end if;
   end Internal_Get_Visibility;

   -----------------------------
   -- Internal_Set_Visibility --
   -----------------------------

   procedure Internal_Set_Visibility
     (Self : CMOF_Element;
      To   : CMOF_Element) is
   begin
      if Is_Element_Import (Self) then
         null;

      elsif Is_Named_Element (Self) then
         null;

      elsif Is_Package_Import (Self) then
         null;
      end if;
   end Internal_Set_Visibility;

end Cmof.Internals.Attributes;
