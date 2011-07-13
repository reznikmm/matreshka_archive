package body AMF.Internals.UML_States is

   --------------------
   -- Get_Connection --
   --------------------

   overriding function Get_Connection
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Connection_Point_References.Collections.Set_Of_UML_Connection_Point_Reference
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Connection unimplemented");
      raise Program_Error with "Unimplemented function Get_Connection";
      return Get_Connection (Self);
   end Get_Connection;

   --------------------------
   -- Get_Connection_Point --
   --------------------------

   overriding function Get_Connection_Point
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Connection_Point unimplemented");
      raise Program_Error with "Unimplemented function Get_Connection_Point";
      return Get_Connection_Point (Self);
   end Get_Connection_Point;

   ----------------------------
   -- Get_Deferrable_Trigger --
   ----------------------------

   overriding function Get_Deferrable_Trigger
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Triggers.Collections.Set_Of_UML_Trigger
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Deferrable_Trigger unimplemented");
      raise Program_Error with "Unimplemented function Get_Deferrable_Trigger";
      return Get_Deferrable_Trigger (Self);
   end Get_Deferrable_Trigger;

   ---------------------
   -- Get_Do_Activity --
   ---------------------

   overriding function Get_Do_Activity
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Behaviors.UML_Behavior_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Do_Activity unimplemented");
      raise Program_Error with "Unimplemented function Get_Do_Activity";
      return Get_Do_Activity (Self);
   end Get_Do_Activity;

   ---------------------
   -- Set_Do_Activity --
   ---------------------

   overriding procedure Set_Do_Activity
     (Self : not null access UML_State_Proxy;
      To   : AMF.UML.Behaviors.UML_Behavior_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Do_Activity unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Do_Activity";
   end Set_Do_Activity;

   ---------------
   -- Get_Entry --
   ---------------

   overriding function Get_Entry
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Behaviors.UML_Behavior_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Entry unimplemented");
      raise Program_Error with "Unimplemented function Get_Entry";
      return Get_Entry (Self);
   end Get_Entry;

   ---------------
   -- Set_Entry --
   ---------------

   overriding procedure Set_Entry
     (Self : not null access UML_State_Proxy;
      To   : AMF.UML.Behaviors.UML_Behavior_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Entry unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Entry";
   end Set_Entry;

   --------------
   -- Get_Exit --
   --------------

   overriding function Get_Exit
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Behaviors.UML_Behavior_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Exit unimplemented");
      raise Program_Error with "Unimplemented function Get_Exit";
      return Get_Exit (Self);
   end Get_Exit;

   --------------
   -- Set_Exit --
   --------------

   overriding procedure Set_Exit
     (Self : not null access UML_State_Proxy;
      To   : AMF.UML.Behaviors.UML_Behavior_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Exit unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Exit";
   end Set_Exit;

   ----------------------
   -- Get_Is_Composite --
   ----------------------

   overriding function Get_Is_Composite
     (Self : not null access constant UML_State_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Composite unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Composite";
      return Get_Is_Composite (Self);
   end Get_Is_Composite;

   -----------------------
   -- Get_Is_Orthogonal --
   -----------------------

   overriding function Get_Is_Orthogonal
     (Self : not null access constant UML_State_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Orthogonal unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Orthogonal";
      return Get_Is_Orthogonal (Self);
   end Get_Is_Orthogonal;

   -------------------
   -- Get_Is_Simple --
   -------------------

   overriding function Get_Is_Simple
     (Self : not null access constant UML_State_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Simple unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Simple";
      return Get_Is_Simple (Self);
   end Get_Is_Simple;

   -----------------------------
   -- Get_Is_Submachine_State --
   -----------------------------

   overriding function Get_Is_Submachine_State
     (Self : not null access constant UML_State_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Submachine_State unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Submachine_State";
      return Get_Is_Submachine_State (Self);
   end Get_Is_Submachine_State;

   -------------------------
   -- Get_Redefined_State --
   -------------------------

   overriding function Get_Redefined_State
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.States.UML_State_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefined_State unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefined_State";
      return Get_Redefined_State (Self);
   end Get_Redefined_State;

   -------------------------
   -- Set_Redefined_State --
   -------------------------

   overriding procedure Set_Redefined_State
     (Self : not null access UML_State_Proxy;
      To   : AMF.UML.States.UML_State_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Redefined_State unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Redefined_State";
   end Set_Redefined_State;

   ------------------------------
   -- Get_Redefinition_Context --
   ------------------------------

   overriding function Get_Redefinition_Context
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Classifiers.UML_Classifier_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefinition_Context unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefinition_Context";
      return Get_Redefinition_Context (Self);
   end Get_Redefinition_Context;

   ----------------
   -- Get_Region --
   ----------------

   overriding function Get_Region
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Regions.Collections.Set_Of_UML_Region
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Region unimplemented");
      raise Program_Error with "Unimplemented function Get_Region";
      return Get_Region (Self);
   end Get_Region;

   -------------------------
   -- Get_State_Invariant --
   -------------------------

   overriding function Get_State_Invariant
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Constraints.UML_Constraint_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_State_Invariant unimplemented");
      raise Program_Error with "Unimplemented function Get_State_Invariant";
      return Get_State_Invariant (Self);
   end Get_State_Invariant;

   -------------------------
   -- Set_State_Invariant --
   -------------------------

   overriding procedure Set_State_Invariant
     (Self : not null access UML_State_Proxy;
      To   : AMF.UML.Constraints.UML_Constraint_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_State_Invariant unimplemented");
      raise Program_Error with "Unimplemented procedure Set_State_Invariant";
   end Set_State_Invariant;

   --------------------
   -- Get_Submachine --
   --------------------

   overriding function Get_Submachine
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.State_Machines.UML_State_Machine_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Submachine unimplemented");
      raise Program_Error with "Unimplemented function Get_Submachine";
      return Get_Submachine (Self);
   end Get_Submachine;

   --------------------
   -- Set_Submachine --
   --------------------

   overriding procedure Set_Submachine
     (Self : not null access UML_State_Proxy;
      To   : AMF.UML.State_Machines.UML_State_Machine_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Submachine unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Submachine";
   end Set_Submachine;

   -----------------
   -- Get_Is_Leaf --
   -----------------

   overriding function Get_Is_Leaf
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access UML_State_Proxy;
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefinition_Context unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefinition_Context";
      return Get_Redefinition_Context (Self);
   end Get_Redefinition_Context;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access UML_State_Proxy;
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access UML_State_Proxy;
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access UML_State_Proxy;
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error with "Unimplemented function Get_Owner";
      return Get_Owner (Self);
   end Get_Owner;

   ------------------------
   -- Get_Element_Import --
   ------------------------

   overriding function Get_Element_Import
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Package_Import unimplemented");
      raise Program_Error with "Unimplemented function Get_Package_Import";
      return Get_Package_Import (Self);
   end Get_Package_Import;

   -------------------
   -- Get_Container --
   -------------------

   overriding function Get_Container
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Regions.UML_Region_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Container unimplemented");
      raise Program_Error with "Unimplemented function Get_Container";
      return Get_Container (Self);
   end Get_Container;

   -------------------
   -- Set_Container --
   -------------------

   overriding procedure Set_Container
     (Self : not null access UML_State_Proxy;
      To   : AMF.UML.Regions.UML_Region_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Container unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Container";
   end Set_Container;

   ------------------
   -- Get_Incoming --
   ------------------

   overriding function Get_Incoming
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Transitions.Collections.Set_Of_UML_Transition
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Incoming unimplemented");
      raise Program_Error with "Unimplemented function Get_Incoming";
      return Get_Incoming (Self);
   end Get_Incoming;

   ------------------
   -- Get_Outgoing --
   ------------------

   overriding function Get_Outgoing
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Transitions.Collections.Set_Of_UML_Transition
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Outgoing unimplemented");
      raise Program_Error with "Unimplemented function Get_Outgoing";
      return Get_Outgoing (Self);
   end Get_Outgoing;

   ------------------------------
   -- Containing_State_Machine --
   ------------------------------

   overriding function Containing_State_Machine
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.State_Machines.UML_State_Machine_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Containing_State_Machine unimplemented");
      raise Program_Error with "Unimplemented function Containing_State_Machine";
      return Containing_State_Machine (Self);
   end Containing_State_Machine;

   ------------------
   -- Is_Composite --
   ------------------

   overriding function Is_Composite
     (Self : not null access constant UML_State_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Composite unimplemented");
      raise Program_Error with "Unimplemented function Is_Composite";
      return Is_Composite (Self);
   end Is_Composite;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
     (Self : not null access constant UML_State_Proxy;
      Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Consistent_With unimplemented");
      raise Program_Error with "Unimplemented function Is_Consistent_With";
      return Is_Consistent_With (Self, Redefinee);
   end Is_Consistent_With;

   -------------------
   -- Is_Orthogonal --
   -------------------

   overriding function Is_Orthogonal
     (Self : not null access constant UML_State_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Orthogonal unimplemented");
      raise Program_Error with "Unimplemented function Is_Orthogonal";
      return Is_Orthogonal (Self);
   end Is_Orthogonal;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
     (Self : not null access constant UML_State_Proxy;
      Redefined : AMF.UML.States.UML_State_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented function Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
     (Self : not null access constant UML_State_Proxy;
      Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented function Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

   ---------------
   -- Is_Simple --
   ---------------

   overriding function Is_Simple
     (Self : not null access constant UML_State_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Simple unimplemented");
      raise Program_Error with "Unimplemented function Is_Simple";
      return Is_Simple (Self);
   end Is_Simple;

   -------------------------
   -- Is_Submachine_State --
   -------------------------

   overriding function Is_Submachine_State
     (Self : not null access constant UML_State_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Submachine_State unimplemented");
      raise Program_Error with "Unimplemented function Is_Submachine_State";
      return Is_Submachine_State (Self);
   end Is_Submachine_State;

   --------------------------
   -- Redefinition_Context --
   --------------------------

   overriding function Redefinition_Context
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Classifiers.UML_Classifier_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Redefinition_Context unimplemented");
      raise Program_Error with "Unimplemented function Redefinition_Context";
      return Redefinition_Context (Self);
   end Redefinition_Context;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy;
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

   ------------------------
   -- Exclude_Collisions --
   ------------------------

   overriding function Exclude_Collisions
     (Self : not null access constant UML_State_Proxy;
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
     (Self : not null access constant UML_State_Proxy;
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
     (Self : not null access constant UML_State_Proxy;
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
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
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Owned_Member unimplemented");
      raise Program_Error with "Unimplemented function Owned_Member";
      return Owned_Member (Self);
   end Owned_Member;

   --------------
   -- Incoming --
   --------------

   overriding function Incoming
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Transitions.Collections.Set_Of_UML_Transition
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Incoming unimplemented");
      raise Program_Error with "Unimplemented function Incoming";
      return Incoming (Self);
   end Incoming;

   --------------
   -- Outgoing --
   --------------

   overriding function Outgoing
     (Self : not null access constant UML_State_Proxy)
      return AMF.UML.Transitions.Collections.Set_Of_UML_Transition
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Outgoing unimplemented");
      raise Program_Error with "Unimplemented function Outgoing";
      return Outgoing (Self);
   end Outgoing;

end AMF.Internals.UML_States;
