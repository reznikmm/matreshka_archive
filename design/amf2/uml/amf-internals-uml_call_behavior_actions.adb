package body AMF.Internals.UML_Call_Behavior_Actions is

   ------------------
   -- Get_Behavior --
   ------------------

   overriding function Get_Behavior
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Behaviors.UML_Behavior_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Behavior unimplemented");
      raise Program_Error with "Unimplemented function Get_Behavior";
      return Get_Behavior (Self);
   end Get_Behavior;

   ------------------
   -- Set_Behavior --
   ------------------

   overriding procedure Set_Behavior
     (Self : not null access UML_Call_Behavior_Action_Proxy;
      To   : AMF.UML.Behaviors.UML_Behavior_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Behavior unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Behavior";
   end Set_Behavior;

   ------------------------
   -- Get_Is_Synchronous --
   ------------------------

   overriding function Get_Is_Synchronous
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Synchronous unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Synchronous";
      return Get_Is_Synchronous (Self);
   end Get_Is_Synchronous;

   ------------------------
   -- Set_Is_Synchronous --
   ------------------------

   overriding procedure Set_Is_Synchronous
     (Self : not null access UML_Call_Behavior_Action_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Synchronous unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Synchronous";
   end Set_Is_Synchronous;

   ----------------
   -- Get_Result --
   ----------------

   overriding function Get_Result
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Result unimplemented");
      raise Program_Error with "Unimplemented function Get_Result";
      return Get_Result (Self);
   end Get_Result;

   ------------------
   -- Get_Argument --
   ------------------

   overriding function Get_Argument
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Input_Pins.Collections.Ordered_Set_Of_UML_Input_Pin
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Argument unimplemented");
      raise Program_Error with "Unimplemented function Get_Argument";
      return Get_Argument (Self);
   end Get_Argument;

   -----------------
   -- Get_On_Port --
   -----------------

   overriding function Get_On_Port
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Ports.UML_Port_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_On_Port unimplemented");
      raise Program_Error with "Unimplemented function Get_On_Port";
      return Get_On_Port (Self);
   end Get_On_Port;

   -----------------
   -- Set_On_Port --
   -----------------

   overriding procedure Set_On_Port
     (Self : not null access UML_Call_Behavior_Action_Proxy;
      To   : AMF.UML.Ports.UML_Port_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_On_Port unimplemented");
      raise Program_Error with "Unimplemented procedure Set_On_Port";
   end Set_On_Port;

   -----------------
   -- Get_Context --
   -----------------

   overriding function Get_Context
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Classifiers.UML_Classifier_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Context unimplemented");
      raise Program_Error with "Unimplemented function Get_Context";
      return Get_Context (Self);
   end Get_Context;

   ---------------
   -- Get_Input --
   ---------------

   overriding function Get_Input
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Input_Pins.Collections.Ordered_Set_Of_UML_Input_Pin
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Input unimplemented");
      raise Program_Error with "Unimplemented function Get_Input";
      return Get_Input (Self);
   end Get_Input;

   ------------------------------
   -- Get_Is_Locally_Reentrant --
   ------------------------------

   overriding function Get_Is_Locally_Reentrant
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Locally_Reentrant unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Locally_Reentrant";
      return Get_Is_Locally_Reentrant (Self);
   end Get_Is_Locally_Reentrant;

   ------------------------------
   -- Set_Is_Locally_Reentrant --
   ------------------------------

   overriding procedure Set_Is_Locally_Reentrant
     (Self : not null access UML_Call_Behavior_Action_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Locally_Reentrant unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Locally_Reentrant";
   end Set_Is_Locally_Reentrant;

   -----------------------------
   -- Get_Local_Postcondition --
   -----------------------------

   overriding function Get_Local_Postcondition
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Local_Postcondition unimplemented");
      raise Program_Error with "Unimplemented function Get_Local_Postcondition";
      return Get_Local_Postcondition (Self);
   end Get_Local_Postcondition;

   ----------------------------
   -- Get_Local_Precondition --
   ----------------------------

   overriding function Get_Local_Precondition
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Local_Precondition unimplemented");
      raise Program_Error with "Unimplemented function Get_Local_Precondition";
      return Get_Local_Precondition (Self);
   end Get_Local_Precondition;

   ----------------
   -- Get_Output --
   ----------------

   overriding function Get_Output
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Output unimplemented");
      raise Program_Error with "Unimplemented function Get_Output";
      return Get_Output (Self);
   end Get_Output;

   -----------------
   -- Get_Handler --
   -----------------

   overriding function Get_Handler
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Exception_Handlers.Collections.Set_Of_UML_Exception_Handler
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Handler unimplemented");
      raise Program_Error with "Unimplemented function Get_Handler";
      return Get_Handler (Self);
   end Get_Handler;

   ------------------
   -- Get_Activity --
   ------------------

   overriding function Get_Activity
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access UML_Call_Behavior_Action_Proxy;
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access UML_Call_Behavior_Action_Proxy;
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access UML_Call_Behavior_Action_Proxy;
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access UML_Call_Behavior_Action_Proxy;
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access UML_Call_Behavior_Action_Proxy;
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access UML_Call_Behavior_Action_Proxy;
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error with "Unimplemented function Get_Owner";
      return Get_Owner (Self);
   end Get_Owner;

   -------------
   -- Context --
   -------------

   overriding function Context
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return AMF.UML.Classifiers.UML_Classifier_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Context unimplemented");
      raise Program_Error with "Unimplemented function Context";
      return Context (Self);
   end Context;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
     (Self : not null access constant UML_Call_Behavior_Action_Proxy;
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy;
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy;
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
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
     (Self : not null access constant UML_Call_Behavior_Action_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Call_Behavior_Actions;
