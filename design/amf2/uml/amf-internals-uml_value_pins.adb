package body AMF.Internals.UML_Value_Pins is

   ---------------
   -- Get_Value --
   ---------------

   overriding function Get_Value
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Value_Specifications.UML_Value_Specification_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Value unimplemented");
      raise Program_Error with "Unimplemented function Get_Value";
      return Get_Value (Self);
   end Get_Value;

   ---------------
   -- Set_Value --
   ---------------

   overriding procedure Set_Value
     (Self : not null access UML_Value_Pin_Proxy;
      To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Value unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Value";
   end Set_Value;

   --------------------
   -- Get_Is_Control --
   --------------------

   overriding function Get_Is_Control
     (Self : not null access constant UML_Value_Pin_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Control unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Control";
      return Get_Is_Control (Self);
   end Get_Is_Control;

   --------------------
   -- Set_Is_Control --
   --------------------

   overriding procedure Set_Is_Control
     (Self : not null access UML_Value_Pin_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Control unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Control";
   end Set_Is_Control;

   ------------------
   -- Get_In_State --
   ------------------

   overriding function Get_In_State
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.States.Collections.Set_Of_UML_State
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_In_State unimplemented");
      raise Program_Error with "Unimplemented function Get_In_State";
      return Get_In_State (Self);
   end Get_In_State;

   -------------------------
   -- Get_Is_Control_Type --
   -------------------------

   overriding function Get_Is_Control_Type
     (Self : not null access constant UML_Value_Pin_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Control_Type unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Control_Type";
      return Get_Is_Control_Type (Self);
   end Get_Is_Control_Type;

   -------------------------
   -- Set_Is_Control_Type --
   -------------------------

   overriding procedure Set_Is_Control_Type
     (Self : not null access UML_Value_Pin_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Control_Type unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Control_Type";
   end Set_Is_Control_Type;

   ------------------
   -- Get_Ordering --
   ------------------

   overriding function Get_Ordering
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.UML_Object_Node_Ordering_Kind
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Ordering unimplemented");
      raise Program_Error with "Unimplemented function Get_Ordering";
      return Get_Ordering (Self);
   end Get_Ordering;

   ------------------
   -- Set_Ordering --
   ------------------

   overriding procedure Set_Ordering
     (Self : not null access UML_Value_Pin_Proxy;
      To   : AMF.UML.UML_Object_Node_Ordering_Kind)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Ordering unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Ordering";
   end Set_Ordering;

   -------------------
   -- Get_Selection --
   -------------------

   overriding function Get_Selection
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Behaviors.UML_Behavior_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Selection unimplemented");
      raise Program_Error with "Unimplemented function Get_Selection";
      return Get_Selection (Self);
   end Get_Selection;

   -------------------
   -- Set_Selection --
   -------------------

   overriding procedure Set_Selection
     (Self : not null access UML_Value_Pin_Proxy;
      To   : AMF.UML.Behaviors.UML_Behavior_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Selection unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Selection";
   end Set_Selection;

   ---------------------
   -- Get_Upper_Bound --
   ---------------------

   overriding function Get_Upper_Bound
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Value_Specifications.UML_Value_Specification_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Upper_Bound unimplemented");
      raise Program_Error with "Unimplemented function Get_Upper_Bound";
      return Get_Upper_Bound (Self);
   end Get_Upper_Bound;

   ---------------------
   -- Set_Upper_Bound --
   ---------------------

   overriding procedure Set_Upper_Bound
     (Self : not null access UML_Value_Pin_Proxy;
      To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Upper_Bound unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Upper_Bound";
   end Set_Upper_Bound;

   ------------------
   -- Get_Activity --
   ------------------

   overriding function Get_Activity
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Activities.UML_Activity_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Activity unimplemented");
      raise Program_Error with "Unimplemented function Get_Activity";
      return Get_Activity (Self);
   end Get_Activity;

   ------------------
   -- Set_Activity --
   ------------------

   overriding procedure Set_Activity
     (Self : not null access UML_Value_Pin_Proxy;
      To   : AMF.UML.Activities.UML_Activity_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Activity unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Activity";
   end Set_Activity;

   ------------------
   -- Get_In_Group --
   ------------------

   overriding function Get_In_Group
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Activity_Groups.Collections.Set_Of_UML_Activity_Group
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_In_Group unimplemented");
      raise Program_Error with "Unimplemented function Get_In_Group";
      return Get_In_Group (Self);
   end Get_In_Group;

   ---------------------------------
   -- Get_In_Interruptible_Region --
   ---------------------------------

   overriding function Get_In_Interruptible_Region
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Interruptible_Activity_Regions.Collections.Set_Of_UML_Interruptible_Activity_Region
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_In_Interruptible_Region unimplemented");
      raise Program_Error with "Unimplemented function Get_In_Interruptible_Region";
      return Get_In_Interruptible_Region (Self);
   end Get_In_Interruptible_Region;

   ----------------------
   -- Get_In_Partition --
   ----------------------

   overriding function Get_In_Partition
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Activity_Partitions.Collections.Set_Of_UML_Activity_Partition
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_In_Partition unimplemented");
      raise Program_Error with "Unimplemented function Get_In_Partition";
      return Get_In_Partition (Self);
   end Get_In_Partition;

   ----------------------------
   -- Get_In_Structured_Node --
   ----------------------------

   overriding function Get_In_Structured_Node
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_In_Structured_Node unimplemented");
      raise Program_Error with "Unimplemented function Get_In_Structured_Node";
      return Get_In_Structured_Node (Self);
   end Get_In_Structured_Node;

   ----------------------------
   -- Set_In_Structured_Node --
   ----------------------------

   overriding procedure Set_In_Structured_Node
     (Self : not null access UML_Value_Pin_Proxy;
      To   : AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_In_Structured_Node unimplemented");
      raise Program_Error with "Unimplemented procedure Set_In_Structured_Node";
   end Set_In_Structured_Node;

   ------------------
   -- Get_Incoming --
   ------------------

   overriding function Get_Incoming
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge
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
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Outgoing unimplemented");
      raise Program_Error with "Unimplemented function Get_Outgoing";
      return Get_Outgoing (Self);
   end Get_Outgoing;

   ------------------------
   -- Get_Redefined_Node --
   ------------------------

   overriding function Get_Redefined_Node
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefined_Node unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefined_Node";
      return Get_Redefined_Node (Self);
   end Get_Redefined_Node;

   -----------------
   -- Get_Is_Leaf --
   -----------------

   overriding function Get_Is_Leaf
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access UML_Value_Pin_Proxy;
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access UML_Value_Pin_Proxy;
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access UML_Value_Pin_Proxy;
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access UML_Value_Pin_Proxy;
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error with "Unimplemented function Get_Owner";
      return Get_Owner (Self);
   end Get_Owner;

   --------------
   -- Get_Type --
   --------------

   overriding function Get_Type
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Types.UML_Type_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Type unimplemented");
      raise Program_Error with "Unimplemented function Get_Type";
      return Get_Type (Self);
   end Get_Type;

   --------------
   -- Set_Type --
   --------------

   overriding procedure Set_Type
     (Self : not null access UML_Value_Pin_Proxy;
      To   : AMF.UML.Types.UML_Type_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Type unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Type";
   end Set_Type;

   --------------------
   -- Get_Is_Ordered --
   --------------------

   overriding function Get_Is_Ordered
     (Self : not null access constant UML_Value_Pin_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Ordered unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Ordered";
      return Get_Is_Ordered (Self);
   end Get_Is_Ordered;

   --------------------
   -- Set_Is_Ordered --
   --------------------

   overriding procedure Set_Is_Ordered
     (Self : not null access UML_Value_Pin_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Ordered unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Ordered";
   end Set_Is_Ordered;

   -------------------
   -- Get_Is_Unique --
   -------------------

   overriding function Get_Is_Unique
     (Self : not null access constant UML_Value_Pin_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Unique unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Unique";
      return Get_Is_Unique (Self);
   end Get_Is_Unique;

   -------------------
   -- Set_Is_Unique --
   -------------------

   overriding procedure Set_Is_Unique
     (Self : not null access UML_Value_Pin_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Unique unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Unique";
   end Set_Is_Unique;

   ---------------
   -- Get_Lower --
   ---------------

   overriding function Get_Lower
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.Optional_Integer
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Lower unimplemented");
      raise Program_Error with "Unimplemented function Get_Lower";
      return Get_Lower (Self);
   end Get_Lower;

   ---------------
   -- Set_Lower --
   ---------------

   overriding procedure Set_Lower
     (Self : not null access UML_Value_Pin_Proxy;
      To   : AMF.Optional_Integer)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Lower unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Lower";
   end Set_Lower;

   ---------------------
   -- Get_Lower_Value --
   ---------------------

   overriding function Get_Lower_Value
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Value_Specifications.UML_Value_Specification_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Lower_Value unimplemented");
      raise Program_Error with "Unimplemented function Get_Lower_Value";
      return Get_Lower_Value (Self);
   end Get_Lower_Value;

   ---------------------
   -- Set_Lower_Value --
   ---------------------

   overriding procedure Set_Lower_Value
     (Self : not null access UML_Value_Pin_Proxy;
      To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Lower_Value unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Lower_Value";
   end Set_Lower_Value;

   ---------------
   -- Get_Upper --
   ---------------

   overriding function Get_Upper
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.Optional_Unlimited_Natural
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Upper unimplemented");
      raise Program_Error with "Unimplemented function Get_Upper";
      return Get_Upper (Self);
   end Get_Upper;

   ---------------
   -- Set_Upper --
   ---------------

   overriding procedure Set_Upper
     (Self : not null access UML_Value_Pin_Proxy;
      To   : AMF.Optional_Unlimited_Natural)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Upper unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Upper";
   end Set_Upper;

   ---------------------
   -- Get_Upper_Value --
   ---------------------

   overriding function Get_Upper_Value
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.UML.Value_Specifications.UML_Value_Specification_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Upper_Value unimplemented");
      raise Program_Error with "Unimplemented function Get_Upper_Value";
      return Get_Upper_Value (Self);
   end Get_Upper_Value;

   ---------------------
   -- Set_Upper_Value --
   ---------------------

   overriding procedure Set_Upper_Value
     (Self : not null access UML_Value_Pin_Proxy;
      To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Upper_Value unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Upper_Value";
   end Set_Upper_Value;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
     (Self : not null access constant UML_Value_Pin_Proxy;
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
     (Self : not null access constant UML_Value_Pin_Proxy;
      Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented function Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy;
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
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
     (Self : not null access constant UML_Value_Pin_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

   ---------------------
   -- Compatible_With --
   ---------------------

   overriding function Compatible_With
     (Self : not null access constant UML_Value_Pin_Proxy;
      Other : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Compatible_With unimplemented");
      raise Program_Error with "Unimplemented function Compatible_With";
      return Compatible_With (Self, Other);
   end Compatible_With;

   --------------------------
   -- Includes_Cardinality --
   --------------------------

   overriding function Includes_Cardinality
     (Self : not null access constant UML_Value_Pin_Proxy;
      C : Integer)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Cardinality unimplemented");
      raise Program_Error with "Unimplemented function Includes_Cardinality";
      return Includes_Cardinality (Self, C);
   end Includes_Cardinality;

   ---------------------------
   -- Includes_Multiplicity --
   ---------------------------

   overriding function Includes_Multiplicity
     (Self : not null access constant UML_Value_Pin_Proxy;
      M : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Multiplicity unimplemented");
      raise Program_Error with "Unimplemented function Includes_Multiplicity";
      return Includes_Multiplicity (Self, M);
   end Includes_Multiplicity;

   ---------
   -- Iss --
   ---------

   overriding function Iss
     (Self : not null access constant UML_Value_Pin_Proxy;
      Lowerbound : Integer;
      Upperbound : Integer)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Iss unimplemented");
      raise Program_Error with "Unimplemented function Iss";
      return Iss (Self, Lowerbound, Upperbound);
   end Iss;

   --------------------
   -- Is_Multivalued --
   --------------------

   overriding function Is_Multivalued
     (Self : not null access constant UML_Value_Pin_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Multivalued unimplemented");
      raise Program_Error with "Unimplemented function Is_Multivalued";
      return Is_Multivalued (Self);
   end Is_Multivalued;

   -----------
   -- Lower --
   -----------

   overriding function Lower
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.Optional_Integer
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Lower unimplemented");
      raise Program_Error with "Unimplemented function Lower";
      return Lower (Self);
   end Lower;

   -----------------
   -- Lower_Bound --
   -----------------

   overriding function Lower_Bound
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.Optional_Integer
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Lower_Bound unimplemented");
      raise Program_Error with "Unimplemented function Lower_Bound";
      return Lower_Bound (Self);
   end Lower_Bound;

   -----------
   -- Upper --
   -----------

   overriding function Upper
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.Optional_Unlimited_Natural
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Upper unimplemented");
      raise Program_Error with "Unimplemented function Upper";
      return Upper (Self);
   end Upper;

   -----------------
   -- Upper_Bound --
   -----------------

   overriding function Upper_Bound
     (Self : not null access constant UML_Value_Pin_Proxy)
      return AMF.Optional_Unlimited_Natural
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Upper_Bound unimplemented");
      raise Program_Error with "Unimplemented function Upper_Bound";
      return Upper_Bound (Self);
   end Upper_Bound;

end AMF.Internals.UML_Value_Pins;
