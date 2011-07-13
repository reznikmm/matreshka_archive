package body AMF.Internals.UML_Opaque_Behaviors is

   --------------
   -- Get_Body --
   --------------

   overriding function Get_Body
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Sequence_Of_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Body unimplemented");
      raise Program_Error with "Unimplemented function Get_Body";
      return Get_Body (Self);
   end Get_Body;

   ------------------
   -- Get_Language --
   ------------------

   overriding function Get_Language
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Ordered_Set_Of_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Language unimplemented");
      raise Program_Error with "Unimplemented function Get_Language";
      return Get_Language (Self);
   end Get_Language;

   -----------------
   -- Get_Context --
   -----------------

   overriding function Get_Context
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Context unimplemented");
      raise Program_Error with "Unimplemented function Get_Context";
      return Get_Context (Self);
   end Get_Context;

   ----------------------
   -- Get_Is_Reentrant --
   ----------------------

   overriding function Get_Is_Reentrant
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Reentrant unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Reentrant";
      return Get_Is_Reentrant (Self);
   end Get_Is_Reentrant;

   ----------------------
   -- Set_Is_Reentrant --
   ----------------------

   overriding procedure Set_Is_Reentrant
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Reentrant unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Reentrant";
   end Set_Is_Reentrant;

   -------------------------
   -- Get_Owned_Parameter --
   -------------------------

   overriding function Get_Owned_Parameter
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Parameters.Collections.Ordered_Set_Of_UML_Parameter
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Parameter";
      return Get_Owned_Parameter (Self);
   end Get_Owned_Parameter;

   -----------------------------
   -- Get_Owned_Parameter_Set --
   -----------------------------

   overriding function Get_Owned_Parameter_Set
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Parameter_Sets.Collections.Set_Of_UML_Parameter_Set
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Parameter_Set unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Parameter_Set";
      return Get_Owned_Parameter_Set (Self);
   end Get_Owned_Parameter_Set;

   -----------------------
   -- Get_Postcondition --
   -----------------------

   overriding function Get_Postcondition
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Postcondition unimplemented");
      raise Program_Error with "Unimplemented function Get_Postcondition";
      return Get_Postcondition (Self);
   end Get_Postcondition;

   ----------------------
   -- Get_Precondition --
   ----------------------

   overriding function Get_Precondition
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Precondition unimplemented");
      raise Program_Error with "Unimplemented function Get_Precondition";
      return Get_Precondition (Self);
   end Get_Precondition;

   ----------------------------
   -- Get_Redefined_Behavior --
   ----------------------------

   overriding function Get_Redefined_Behavior
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefined_Behavior unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefined_Behavior";
      return Get_Redefined_Behavior (Self);
   end Get_Redefined_Behavior;

   -----------------------
   -- Get_Specification --
   -----------------------

   overriding function Get_Specification
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Behavioral_Features.UML_Behavioral_Feature_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Specification unimplemented");
      raise Program_Error with "Unimplemented function Get_Specification";
      return Get_Specification (Self);
   end Get_Specification;

   -----------------------
   -- Set_Specification --
   -----------------------

   overriding procedure Set_Specification
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.Behavioral_Features.UML_Behavioral_Feature_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Specification unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Specification";
   end Set_Specification;

   -------------------
   -- Get_Extension --
   -------------------

   overriding function Get_Extension
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Extensions.Collections.Set_Of_UML_Extension
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Extension unimplemented");
      raise Program_Error with "Unimplemented function Get_Extension";
      return Get_Extension (Self);
   end Get_Extension;

   ---------------------
   -- Get_Is_Abstract --
   ---------------------

   overriding function Get_Is_Abstract
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Abstract unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Abstract";
      return Get_Is_Abstract (Self);
   end Get_Is_Abstract;

   ---------------------
   -- Set_Is_Abstract --
   ---------------------

   overriding procedure Set_Is_Abstract
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Abstract unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Abstract";
   end Set_Is_Abstract;

   -------------------
   -- Get_Is_Active --
   -------------------

   overriding function Get_Is_Active
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Active unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Active";
      return Get_Is_Active (Self);
   end Get_Is_Active;

   -------------------
   -- Set_Is_Active --
   -------------------

   overriding procedure Set_Is_Active
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Active unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Active";
   end Set_Is_Active;

   ---------------------------
   -- Get_Nested_Classifier --
   ---------------------------

   overriding function Get_Nested_Classifier
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Classifiers.Collections.Ordered_Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Nested_Classifier unimplemented");
      raise Program_Error with "Unimplemented function Get_Nested_Classifier";
      return Get_Nested_Classifier (Self);
   end Get_Nested_Classifier;

   -------------------------
   -- Get_Owned_Attribute --
   -------------------------

   overriding function Get_Owned_Attribute
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Attribute unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Attribute";
      return Get_Owned_Attribute (Self);
   end Get_Owned_Attribute;

   -------------------------
   -- Get_Owned_Operation --
   -------------------------

   overriding function Get_Owned_Operation
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Operations.Collections.Ordered_Set_Of_UML_Operation
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Operation unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Operation";
      return Get_Owned_Operation (Self);
   end Get_Owned_Operation;

   -------------------------
   -- Get_Owned_Reception --
   -------------------------

   overriding function Get_Owned_Reception
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Receptions.Collections.Set_Of_UML_Reception
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Reception unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Reception";
      return Get_Owned_Reception (Self);
   end Get_Owned_Reception;

   ---------------------
   -- Get_Super_Class --
   ---------------------

   overriding function Get_Super_Class
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Classes.Collections.Set_Of_UML_Class
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Super_Class unimplemented");
      raise Program_Error with "Unimplemented function Get_Super_Class";
      return Get_Super_Class (Self);
   end Get_Super_Class;

   -----------------------------
   -- Get_Classifier_Behavior --
   -----------------------------

   overriding function Get_Classifier_Behavior
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Behaviors.UML_Behavior_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Classifier_Behavior unimplemented");
      raise Program_Error with "Unimplemented function Get_Classifier_Behavior";
      return Get_Classifier_Behavior (Self);
   end Get_Classifier_Behavior;

   -----------------------------
   -- Set_Classifier_Behavior --
   -----------------------------

   overriding procedure Set_Classifier_Behavior
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.Behaviors.UML_Behavior_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Classifier_Behavior unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Classifier_Behavior";
   end Set_Classifier_Behavior;

   -------------------------------
   -- Get_Interface_Realization --
   -------------------------------

   overriding function Get_Interface_Realization
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Interface_Realizations.Collections.Set_Of_UML_Interface_Realization
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Interface_Realization unimplemented");
      raise Program_Error with "Unimplemented function Get_Interface_Realization";
      return Get_Interface_Realization (Self);
   end Get_Interface_Realization;

   ------------------------
   -- Get_Owned_Behavior --
   ------------------------

   overriding function Get_Owned_Behavior
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Behavior unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Behavior";
      return Get_Owned_Behavior (Self);
   end Get_Owned_Behavior;

   -------------------
   -- Get_Attribute --
   -------------------

   overriding function Get_Attribute
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Properties.Collections.Set_Of_UML_Property
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Attribute unimplemented");
      raise Program_Error with "Unimplemented function Get_Attribute";
      return Get_Attribute (Self);
   end Get_Attribute;

   ---------------------------
   -- Get_Collaboration_Use --
   ---------------------------

   overriding function Get_Collaboration_Use
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Collaboration_Uses.Collections.Set_Of_UML_Collaboration_Use
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Collaboration_Use unimplemented");
      raise Program_Error with "Unimplemented function Get_Collaboration_Use";
      return Get_Collaboration_Use (Self);
   end Get_Collaboration_Use;

   -----------------
   -- Get_Feature --
   -----------------

   overriding function Get_Feature
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Features.Collections.Set_Of_UML_Feature
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Feature unimplemented");
      raise Program_Error with "Unimplemented function Get_Feature";
      return Get_Feature (Self);
   end Get_Feature;

   -----------------
   -- Get_General --
   -----------------

   overriding function Get_General
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_General unimplemented");
      raise Program_Error with "Unimplemented function Get_General";
      return Get_General (Self);
   end Get_General;

   ------------------------
   -- Get_Generalization --
   ------------------------

   overriding function Get_Generalization
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Generalizations.Collections.Set_Of_UML_Generalization
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Generalization unimplemented");
      raise Program_Error with "Unimplemented function Get_Generalization";
      return Get_Generalization (Self);
   end Get_Generalization;

   --------------------------
   -- Get_Inherited_Member --
   --------------------------

   overriding function Get_Inherited_Member
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Inherited_Member unimplemented");
      raise Program_Error with "Unimplemented function Get_Inherited_Member";
      return Get_Inherited_Member (Self);
   end Get_Inherited_Member;

   ---------------------------------
   -- Get_Is_Final_Specialization --
   ---------------------------------

   overriding function Get_Is_Final_Specialization
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Final_Specialization unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Final_Specialization";
      return Get_Is_Final_Specialization (Self);
   end Get_Is_Final_Specialization;

   ---------------------------------
   -- Set_Is_Final_Specialization --
   ---------------------------------

   overriding procedure Set_Is_Final_Specialization
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Final_Specialization unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Final_Specialization";
   end Set_Is_Final_Specialization;

   ----------------------------------
   -- Get_Owned_Template_Signature --
   ----------------------------------

   overriding function Get_Owned_Template_Signature
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Template_Signature unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Template_Signature";
      return Get_Owned_Template_Signature (Self);
   end Get_Owned_Template_Signature;

   ----------------------------------
   -- Set_Owned_Template_Signature --
   ----------------------------------

   overriding procedure Set_Owned_Template_Signature
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Owned_Template_Signature unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Owned_Template_Signature";
   end Set_Owned_Template_Signature;

   ------------------------
   -- Get_Owned_Use_Case --
   ------------------------

   overriding function Get_Owned_Use_Case
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Use_Cases.Collections.Set_Of_UML_Use_Case
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Use_Case unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Use_Case";
      return Get_Owned_Use_Case (Self);
   end Get_Owned_Use_Case;

   --------------------------
   -- Get_Powertype_Extent --
   --------------------------

   overriding function Get_Powertype_Extent
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Generalization_Sets.Collections.Set_Of_UML_Generalization_Set
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Powertype_Extent unimplemented");
      raise Program_Error with "Unimplemented function Get_Powertype_Extent";
      return Get_Powertype_Extent (Self);
   end Get_Powertype_Extent;

   ------------------------------
   -- Get_Redefined_Classifier --
   ------------------------------

   overriding function Get_Redefined_Classifier
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefined_Classifier unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefined_Classifier";
      return Get_Redefined_Classifier (Self);
   end Get_Redefined_Classifier;

   ------------------------
   -- Get_Representation --
   ------------------------

   overriding function Get_Representation
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Representation unimplemented");
      raise Program_Error with "Unimplemented function Get_Representation";
      return Get_Representation (Self);
   end Get_Representation;

   ------------------------
   -- Set_Representation --
   ------------------------

   overriding procedure Set_Representation
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Representation unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Representation";
   end Set_Representation;

   ----------------------
   -- Get_Substitution --
   ----------------------

   overriding function Get_Substitution
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Substitutions.Collections.Set_Of_UML_Substitution
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Substitution unimplemented");
      raise Program_Error with "Unimplemented function Get_Substitution";
      return Get_Substitution (Self);
   end Get_Substitution;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Get_Template_Parameter";
      return Get_Template_Parameter (Self);
   end Get_Template_Parameter;

   ----------------------------
   -- Set_Template_Parameter --
   ----------------------------

   overriding procedure Set_Template_Parameter
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Template_Parameter";
   end Set_Template_Parameter;

   ------------------
   -- Get_Use_Case --
   ------------------

   overriding function Get_Use_Case
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Use_Cases.Collections.Set_Of_UML_Use_Case
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Use_Case unimplemented");
      raise Program_Error with "Unimplemented function Get_Use_Case";
      return Get_Use_Case (Self);
   end Get_Use_Case;

   ------------------------
   -- Get_Element_Import --
   ------------------------

   overriding function Get_Element_Import
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Element_Import unimplemented");
      raise Program_Error with "Unimplemented function Get_Element_Import";
      return Get_Element_Import (Self);
   end Get_Element_Import;

   -------------------------
   -- Get_Imported_Member --
   -------------------------

   overriding function Get_Imported_Member
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Imported_Member unimplemented");
      raise Program_Error with "Unimplemented function Get_Imported_Member";
      return Get_Imported_Member (Self);
   end Get_Imported_Member;

   ----------------
   -- Get_Member --
   ----------------

   overriding function Get_Member
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Member unimplemented");
      raise Program_Error with "Unimplemented function Get_Member";
      return Get_Member (Self);
   end Get_Member;

   ----------------------
   -- Get_Owned_Member --
   ----------------------

   overriding function Get_Owned_Member
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Member unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Member";
      return Get_Owned_Member (Self);
   end Get_Owned_Member;

   --------------------
   -- Get_Owned_Rule --
   --------------------

   overriding function Get_Owned_Rule
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Rule unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Rule";
      return Get_Owned_Rule (Self);
   end Get_Owned_Rule;

   ------------------------
   -- Get_Package_Import --
   ------------------------

   overriding function Get_Package_Import
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Package_Import unimplemented");
      raise Program_Error with "Unimplemented function Get_Package_Import";
      return Get_Package_Import (Self);
   end Get_Package_Import;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Client_Dependency unimplemented");
      raise Program_Error with "Unimplemented function Get_Client_Dependency";
      return Get_Client_Dependency (Self);
   end Get_Client_Dependency;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.Optional_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Name unimplemented");
      raise Program_Error with "Unimplemented function Get_Name";
      return Get_Name (Self);
   end Get_Name;

   --------------
   -- Set_Name --
   --------------

   overriding procedure Set_Name
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.Optional_String)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Name unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Name";
   end Set_Name;

   -------------------------
   -- Get_Name_Expression --
   -------------------------

   overriding function Get_Name_Expression
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.String_Expressions.UML_String_Expression_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Name_Expression unimplemented");
      raise Program_Error with "Unimplemented function Get_Name_Expression";
      return Get_Name_Expression (Self);
   end Get_Name_Expression;

   -------------------------
   -- Set_Name_Expression --
   -------------------------

   overriding procedure Set_Name_Expression
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.String_Expressions.UML_String_Expression_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Name_Expression unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Name_Expression";
   end Set_Name_Expression;

   -------------------
   -- Get_Namespace --
   -------------------

   overriding function Get_Namespace
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Namespaces.UML_Namespace_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Namespace unimplemented");
      raise Program_Error with "Unimplemented function Get_Namespace";
      return Get_Namespace (Self);
   end Get_Namespace;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.Optional_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented function Get_Qualified_Name";
      return Get_Qualified_Name (Self);
   end Get_Qualified_Name;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Optional_UML_Visibility_Kind
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Visibility unimplemented");
      raise Program_Error with "Unimplemented function Get_Visibility";
      return Get_Visibility (Self);
   end Get_Visibility;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.Optional_UML_Visibility_Kind)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Visibility unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Visibility";
   end Set_Visibility;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Comments.Collections.Set_Of_UML_Comment
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Comment unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Comment";
      return Get_Owned_Comment (Self);
   end Get_Owned_Comment;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Elements.Collections.Set_Of_UML_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Element unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Element";
      return Get_Owned_Element (Self);
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error with "Unimplemented function Get_Owner";
      return Get_Owner (Self);
   end Get_Owner;

   -----------------
   -- Get_Package --
   -----------------

   overriding function Get_Package
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Packages.UML_Package_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Package unimplemented");
      raise Program_Error with "Unimplemented function Get_Package";
      return Get_Package (Self);
   end Get_Package;

   -----------------
   -- Set_Package --
   -----------------

   overriding procedure Set_Package
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.Packages.UML_Package_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Package unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Package";
   end Set_Package;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.UML_Visibility_Kind
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Visibility unimplemented");
      raise Program_Error with "Unimplemented function Get_Visibility";
      return Get_Visibility (Self);
   end Get_Visibility;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.UML_Visibility_Kind)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Visibility unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Visibility";
   end Set_Visibility;

   -----------------------------------
   -- Get_Owning_Template_Parameter --
   -----------------------------------

   overriding function Get_Owning_Template_Parameter
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Template_Parameters.UML_Template_Parameter_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owning_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Get_Owning_Template_Parameter";
      return Get_Owning_Template_Parameter (Self);
   end Get_Owning_Template_Parameter;

   -----------------------------------
   -- Set_Owning_Template_Parameter --
   -----------------------------------

   overriding procedure Set_Owning_Template_Parameter
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Owning_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Owning_Template_Parameter";
   end Set_Owning_Template_Parameter;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Template_Parameters.UML_Template_Parameter_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Get_Template_Parameter";
      return Get_Template_Parameter (Self);
   end Get_Template_Parameter;

   ----------------------------
   -- Set_Template_Parameter --
   ----------------------------

   overriding procedure Set_Template_Parameter
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Template_Parameter";
   end Set_Template_Parameter;

   ----------------------------------
   -- Get_Owned_Template_Signature --
   ----------------------------------

   overriding function Get_Owned_Template_Signature
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Template_Signatures.UML_Template_Signature_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Template_Signature unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Template_Signature";
      return Get_Owned_Template_Signature (Self);
   end Get_Owned_Template_Signature;

   ----------------------------------
   -- Set_Owned_Template_Signature --
   ----------------------------------

   overriding procedure Set_Owned_Template_Signature
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Owned_Template_Signature unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Owned_Template_Signature";
   end Set_Owned_Template_Signature;

   --------------------------
   -- Get_Template_Binding --
   --------------------------

   overriding function Get_Template_Binding
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Template_Bindings.Collections.Set_Of_UML_Template_Binding
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Template_Binding unimplemented");
      raise Program_Error with "Unimplemented function Get_Template_Binding";
      return Get_Template_Binding (Self);
   end Get_Template_Binding;

   -----------------
   -- Get_Is_Leaf --
   -----------------

   overriding function Get_Is_Leaf
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Leaf unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Leaf";
      return Get_Is_Leaf (Self);
   end Get_Is_Leaf;

   -----------------
   -- Set_Is_Leaf --
   -----------------

   overriding procedure Set_Is_Leaf
     (Self : not null access UML_Opaque_Behavior_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Leaf unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Leaf";
   end Set_Is_Leaf;

   ---------------------------
   -- Get_Redefined_Element --
   ---------------------------

   overriding function Get_Redefined_Element
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefined_Element unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefined_Element";
      return Get_Redefined_Element (Self);
   end Get_Redefined_Element;

   ------------------------------
   -- Get_Redefinition_Context --
   ------------------------------

   overriding function Get_Redefinition_Context
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefinition_Context unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefinition_Context";
      return Get_Redefinition_Context (Self);
   end Get_Redefinition_Context;

   --------------------
   -- Get_Owned_Port --
   --------------------

   overriding function Get_Owned_Port
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Ports.Collections.Set_Of_UML_Port
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Port unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Port";
      return Get_Owned_Port (Self);
   end Get_Owned_Port;

   -------------------------
   -- Get_Owned_Connector --
   -------------------------

   overriding function Get_Owned_Connector
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Connectors.Collections.Set_Of_UML_Connector
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Connector unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Connector";
      return Get_Owned_Connector (Self);
   end Get_Owned_Connector;

   --------------
   -- Get_Part --
   --------------

   overriding function Get_Part
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Properties.Collections.Set_Of_UML_Property
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Part unimplemented");
      raise Program_Error with "Unimplemented function Get_Part";
      return Get_Part (Self);
   end Get_Part;

   --------------
   -- Get_Role --
   --------------

   overriding function Get_Role
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Connectable_Elements.Collections.Set_Of_UML_Connectable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Role unimplemented");
      raise Program_Error with "Unimplemented function Get_Role";
      return Get_Role (Self);
   end Get_Role;

   -------------
   -- Context --
   -------------

   overriding function Context
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Context unimplemented");
      raise Program_Error with "Unimplemented function Context";
      return Context (Self);
   end Context;

   ---------------
   -- Extension --
   ---------------

   overriding function Extension
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Extensions.Collections.Set_Of_UML_Extension
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Extension unimplemented");
      raise Program_Error with "Unimplemented function Extension";
      return Extension (Self);
   end Extension;

   -------------
   -- Inherit --
   -------------

   overriding function Inherit
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      Inhs : AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element)
      return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Inherit unimplemented");
      raise Program_Error with "Unimplemented function Inherit";
      return Inherit (Self, Inhs);
   end Inherit;

   -----------------
   -- Super_Class --
   -----------------

   overriding function Super_Class
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Classes.Collections.Set_Of_UML_Class
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Super_Class unimplemented");
      raise Program_Error with "Unimplemented function Super_Class";
      return Super_Class (Self);
   end Super_Class;

   ------------------
   -- All_Features --
   ------------------

   overriding function All_Features
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Features.Collections.Set_Of_UML_Feature
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Features unimplemented");
      raise Program_Error with "Unimplemented function All_Features";
      return All_Features (Self);
   end All_Features;

   -----------------
   -- All_Parents --
   -----------------

   overriding function All_Parents
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Parents unimplemented");
      raise Program_Error with "Unimplemented function All_Parents";
      return All_Parents (Self);
   end All_Parents;

   -----------------
   -- Conforms_To --
   -----------------

   overriding function Conforms_To
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      Other : AMF.UML.Classifiers.UML_Classifier_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Conforms_To unimplemented");
      raise Program_Error with "Unimplemented function Conforms_To";
      return Conforms_To (Self, Other);
   end Conforms_To;

   -------------
   -- General --
   -------------

   overriding function General
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "General unimplemented");
      raise Program_Error with "Unimplemented function General";
      return General (Self);
   end General;

   -----------------------
   -- Has_Visibility_Of --
   -----------------------

   overriding function Has_Visibility_Of
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      N : AMF.UML.Named_Elements.UML_Named_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Has_Visibility_Of unimplemented");
      raise Program_Error with "Unimplemented function Has_Visibility_Of";
      return Has_Visibility_Of (Self, N);
   end Has_Visibility_Of;

   -------------------------
   -- Inheritable_Members --
   -------------------------

   overriding function Inheritable_Members
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      C : AMF.UML.Classifiers.UML_Classifier_Access)
      return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Inheritable_Members unimplemented");
      raise Program_Error with "Unimplemented function Inheritable_Members";
      return Inheritable_Members (Self, C);
   end Inheritable_Members;

   ----------------------
   -- Inherited_Member --
   ----------------------

   overriding function Inherited_Member
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Inherited_Member unimplemented");
      raise Program_Error with "Unimplemented function Inherited_Member";
      return Inherited_Member (Self);
   end Inherited_Member;

   -----------------
   -- Is_Template --
   -----------------

   overriding function Is_Template
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template unimplemented");
      raise Program_Error with "Unimplemented function Is_Template";
      return Is_Template (Self);
   end Is_Template;

   -------------------------
   -- May_Specialize_Type --
   -------------------------

   overriding function May_Specialize_Type
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      C : AMF.UML.Classifiers.UML_Classifier_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "May_Specialize_Type unimplemented");
      raise Program_Error with "Unimplemented function May_Specialize_Type";
      return May_Specialize_Type (Self, C);
   end May_Specialize_Type;

   -------------
   -- Parents --
   -------------

   overriding function Parents
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Parents unimplemented");
      raise Program_Error with "Unimplemented function Parents";
      return Parents (Self);
   end Parents;

   ------------------------
   -- Exclude_Collisions --
   ------------------------

   overriding function Exclude_Collisions
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
      return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Exclude_Collisions unimplemented");
      raise Program_Error with "Unimplemented function Exclude_Collisions";
      return Exclude_Collisions (Self, Imps);
   end Exclude_Collisions;

   -------------------------
   -- Get_Names_Of_Member --
   -------------------------

   overriding function Get_Names_Of_Member
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
      return AMF.UML.Set_Of_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Names_Of_Member unimplemented");
      raise Program_Error with "Unimplemented function Get_Names_Of_Member";
      return Get_Names_Of_Member (Self, Element);
   end Get_Names_Of_Member;

   --------------------
   -- Import_Members --
   --------------------

   overriding function Import_Members
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
      return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Import_Members unimplemented");
      raise Program_Error with "Unimplemented function Import_Members";
      return Import_Members (Self, Imps);
   end Import_Members;

   ---------------------
   -- Imported_Member --
   ---------------------

   overriding function Imported_Member
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Imported_Member unimplemented");
      raise Program_Error with "Unimplemented function Imported_Member";
      return Imported_Member (Self);
   end Imported_Member;

   ---------------------------------
   -- Members_Are_Distinguishable --
   ---------------------------------

   overriding function Members_Are_Distinguishable
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Members_Are_Distinguishable unimplemented");
      raise Program_Error with "Unimplemented function Members_Are_Distinguishable";
      return Members_Are_Distinguishable (Self);
   end Members_Are_Distinguishable;

   ------------------
   -- Owned_Member --
   ------------------

   overriding function Owned_Member
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Owned_Member unimplemented");
      raise Program_Error with "Unimplemented function Owned_Member";
      return Owned_Member (Self);
   end Owned_Member;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented function All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Packages.Collections.Set_Of_UML_Package
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented function All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      N : AMF.UML.Named_Elements.UML_Named_Element_Access;
      Ns : AMF.UML.Namespaces.UML_Namespace_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented function Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Namespaces.UML_Namespace_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented function Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return League.Strings.Universal_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented function Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   ---------------
   -- Separator --
   ---------------

   overriding function Separator
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return League.Strings.Universal_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Separator unimplemented");
      raise Program_Error with "Unimplemented function Separator";
      return Separator (Self);
   end Separator;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Elements.Collections.Set_Of_UML_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented function All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

   -----------------
   -- Conforms_To --
   -----------------

   overriding function Conforms_To
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      Other : AMF.UML.Types.UML_Type_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Conforms_To unimplemented");
      raise Program_Error with "Unimplemented function Conforms_To";
      return Conforms_To (Self, Other);
   end Conforms_To;

   ------------------------
   -- Is_Compatible_With --
   ------------------------

   overriding function Is_Compatible_With
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Compatible_With unimplemented");
      raise Program_Error with "Unimplemented function Is_Compatible_With";
      return Is_Compatible_With (Self, P);
   end Is_Compatible_With;

   ---------------------------
   -- Is_Template_Parameter --
   ---------------------------

   overriding function Is_Template_Parameter
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Is_Template_Parameter";
      return Is_Template_Parameter (Self);
   end Is_Template_Parameter;

   ----------------------------
   -- Parameterable_Elements --
   ----------------------------

   overriding function Parameterable_Elements
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Parameterable_Elements.Collections.Set_Of_UML_Parameterable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Parameterable_Elements unimplemented");
      raise Program_Error with "Unimplemented function Parameterable_Elements";
      return Parameterable_Elements (Self);
   end Parameterable_Elements;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Consistent_With unimplemented");
      raise Program_Error with "Unimplemented function Is_Consistent_With";
      return Is_Consistent_With (Self, Redefinee);
   end Is_Consistent_With;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
     (Self : not null access constant UML_Opaque_Behavior_Proxy;
      Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented function Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

   ----------------
   -- Owned_Port --
   ----------------

   overriding function Owned_Port
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Ports.Collections.Set_Of_UML_Port
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Owned_Port unimplemented");
      raise Program_Error with "Unimplemented function Owned_Port";
      return Owned_Port (Self);
   end Owned_Port;

   ----------
   -- Part --
   ----------

   overriding function Part
     (Self : not null access constant UML_Opaque_Behavior_Proxy)
      return AMF.UML.Properties.Collections.Set_Of_UML_Property
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Part unimplemented");
      raise Program_Error with "Unimplemented function Part";
      return Part (Self);
   end Part;

end AMF.Internals.UML_Opaque_Behaviors;
