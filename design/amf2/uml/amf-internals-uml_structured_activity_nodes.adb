package body AMF.Internals.UML_Structured_Activity_Nodes is

   ------------------
   -- Get_Activity --
   ------------------

   overriding function Get_Activity
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access UML_Structured_Activity_Node_Proxy;
      To   : AMF.UML.Activities.UML_Activity_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Activity unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Activity";
   end Set_Activity;

   --------------
   -- Get_Edge --
   --------------

   overriding function Get_Edge
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Edge unimplemented");
      raise Program_Error with "Unimplemented function Get_Edge";
      return Get_Edge (Self);
   end Get_Edge;

   ----------------------
   -- Get_Must_Isolate --
   ----------------------

   overriding function Get_Must_Isolate
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Must_Isolate unimplemented");
      raise Program_Error with "Unimplemented function Get_Must_Isolate";
      return Get_Must_Isolate (Self);
   end Get_Must_Isolate;

   ----------------------
   -- Set_Must_Isolate --
   ----------------------

   overriding procedure Set_Must_Isolate
     (Self : not null access UML_Structured_Activity_Node_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Must_Isolate unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Must_Isolate";
   end Set_Must_Isolate;

   --------------
   -- Get_Node --
   --------------

   overriding function Get_Node
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Node unimplemented");
      raise Program_Error with "Unimplemented function Get_Node";
      return Get_Node (Self);
   end Get_Node;

   -------------------------------
   -- Get_Structured_Node_Input --
   -------------------------------

   overriding function Get_Structured_Node_Input
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Input_Pins.Collections.Set_Of_UML_Input_Pin
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Structured_Node_Input unimplemented");
      raise Program_Error with "Unimplemented function Get_Structured_Node_Input";
      return Get_Structured_Node_Input (Self);
   end Get_Structured_Node_Input;

   --------------------------------
   -- Get_Structured_Node_Output --
   --------------------------------

   overriding function Get_Structured_Node_Output
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Output_Pins.Collections.Set_Of_UML_Output_Pin
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Structured_Node_Output unimplemented");
      raise Program_Error with "Unimplemented function Get_Structured_Node_Output";
      return Get_Structured_Node_Output (Self);
   end Get_Structured_Node_Output;

   ------------------
   -- Get_Variable --
   ------------------

   overriding function Get_Variable
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Variables.Collections.Set_Of_UML_Variable
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Variable unimplemented");
      raise Program_Error with "Unimplemented function Get_Variable";
      return Get_Variable (Self);
   end Get_Variable;

   ------------------------
   -- Get_Element_Import --
   ------------------------

   overriding function Get_Element_Import
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access UML_Structured_Activity_Node_Proxy;
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access UML_Structured_Activity_Node_Proxy;
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access UML_Structured_Activity_Node_Proxy;
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error with "Unimplemented function Get_Owner";
      return Get_Owner (Self);
   end Get_Owner;

   ------------------------
   -- Get_Contained_Edge --
   ------------------------

   overriding function Get_Contained_Edge
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Contained_Edge unimplemented");
      raise Program_Error with "Unimplemented function Get_Contained_Edge";
      return Get_Contained_Edge (Self);
   end Get_Contained_Edge;

   ------------------------
   -- Get_Contained_Node --
   ------------------------

   overriding function Get_Contained_Node
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Contained_Node unimplemented");
      raise Program_Error with "Unimplemented function Get_Contained_Node";
      return Get_Contained_Node (Self);
   end Get_Contained_Node;

   ---------------------
   -- Get_In_Activity --
   ---------------------

   overriding function Get_In_Activity
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Activities.UML_Activity_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_In_Activity unimplemented");
      raise Program_Error with "Unimplemented function Get_In_Activity";
      return Get_In_Activity (Self);
   end Get_In_Activity;

   ---------------------
   -- Set_In_Activity --
   ---------------------

   overriding procedure Set_In_Activity
     (Self : not null access UML_Structured_Activity_Node_Proxy;
      To   : AMF.UML.Activities.UML_Activity_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_In_Activity unimplemented");
      raise Program_Error with "Unimplemented procedure Set_In_Activity";
   end Set_In_Activity;

   ------------------
   -- Get_Subgroup --
   ------------------

   overriding function Get_Subgroup
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Activity_Groups.Collections.Set_Of_UML_Activity_Group
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Subgroup unimplemented");
      raise Program_Error with "Unimplemented function Get_Subgroup";
      return Get_Subgroup (Self);
   end Get_Subgroup;

   ---------------------
   -- Get_Super_Group --
   ---------------------

   overriding function Get_Super_Group
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Activity_Groups.UML_Activity_Group_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Super_Group unimplemented");
      raise Program_Error with "Unimplemented function Get_Super_Group";
      return Get_Super_Group (Self);
   end Get_Super_Group;

   -----------------
   -- Get_Context --
   -----------------

   overriding function Get_Context
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access UML_Structured_Activity_Node_Proxy;
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Exception_Handlers.Collections.Set_Of_UML_Exception_Handler
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Handler unimplemented");
      raise Program_Error with "Unimplemented function Get_Handler";
      return Get_Handler (Self);
   end Get_Handler;

   ------------------
   -- Get_In_Group --
   ------------------

   overriding function Get_In_Group
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access UML_Structured_Activity_Node_Proxy;
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access UML_Structured_Activity_Node_Proxy;
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefinition_Context unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefinition_Context";
      return Get_Redefinition_Context (Self);
   end Get_Redefinition_Context;

   ------------------------
   -- Exclude_Collisions --
   ------------------------

   overriding function Exclude_Collisions
     (Self : not null access constant UML_Structured_Activity_Node_Proxy;
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy;
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy;
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy;
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

   -------------
   -- Context --
   -------------

   overriding function Context
     (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy;
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
     (Self : not null access constant UML_Structured_Activity_Node_Proxy;
      Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented function Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

end AMF.Internals.UML_Structured_Activity_Nodes;
