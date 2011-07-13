package body AMF.Internals.UML_Control_Flows is

   ------------------
   -- Get_Activity --
   ------------------

   overriding function Get_Activity
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access UML_Control_Flow_Proxy;
      To   : AMF.UML.Activities.UML_Activity_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Activity unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Activity";
   end Set_Activity;

   ---------------
   -- Get_Guard --
   ---------------

   overriding function Get_Guard
     (Self : not null access constant UML_Control_Flow_Proxy)
      return AMF.UML.Value_Specifications.UML_Value_Specification_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Guard unimplemented");
      raise Program_Error with "Unimplemented function Get_Guard";
      return Get_Guard (Self);
   end Get_Guard;

   ---------------
   -- Set_Guard --
   ---------------

   overriding procedure Set_Guard
     (Self : not null access UML_Control_Flow_Proxy;
      To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Guard unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Guard";
   end Set_Guard;

   ------------------
   -- Get_In_Group --
   ------------------

   overriding function Get_In_Group
     (Self : not null access constant UML_Control_Flow_Proxy)
      return AMF.UML.Activity_Groups.Collections.Set_Of_UML_Activity_Group
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_In_Group unimplemented");
      raise Program_Error with "Unimplemented function Get_In_Group";
      return Get_In_Group (Self);
   end Get_In_Group;

   ----------------------
   -- Get_In_Partition --
   ----------------------

   overriding function Get_In_Partition
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access UML_Control_Flow_Proxy;
      To   : AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_In_Structured_Node unimplemented");
      raise Program_Error with "Unimplemented procedure Set_In_Structured_Node";
   end Set_In_Structured_Node;

   --------------------
   -- Get_Interrupts --
   --------------------

   overriding function Get_Interrupts
     (Self : not null access constant UML_Control_Flow_Proxy)
      return AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Interrupts unimplemented");
      raise Program_Error with "Unimplemented function Get_Interrupts";
      return Get_Interrupts (Self);
   end Get_Interrupts;

   --------------------
   -- Set_Interrupts --
   --------------------

   overriding procedure Set_Interrupts
     (Self : not null access UML_Control_Flow_Proxy;
      To   : AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Interrupts unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Interrupts";
   end Set_Interrupts;

   ------------------------
   -- Get_Redefined_Edge --
   ------------------------

   overriding function Get_Redefined_Edge
     (Self : not null access constant UML_Control_Flow_Proxy)
      return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefined_Edge unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefined_Edge";
      return Get_Redefined_Edge (Self);
   end Get_Redefined_Edge;

   ----------------
   -- Get_Source --
   ----------------

   overriding function Get_Source
     (Self : not null access constant UML_Control_Flow_Proxy)
      return AMF.UML.Activity_Nodes.UML_Activity_Node_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Source unimplemented");
      raise Program_Error with "Unimplemented function Get_Source";
      return Get_Source (Self);
   end Get_Source;

   ----------------
   -- Set_Source --
   ----------------

   overriding procedure Set_Source
     (Self : not null access UML_Control_Flow_Proxy;
      To   : AMF.UML.Activity_Nodes.UML_Activity_Node_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Source unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Source";
   end Set_Source;

   ----------------
   -- Get_Target --
   ----------------

   overriding function Get_Target
     (Self : not null access constant UML_Control_Flow_Proxy)
      return AMF.UML.Activity_Nodes.UML_Activity_Node_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Target unimplemented");
      raise Program_Error with "Unimplemented function Get_Target";
      return Get_Target (Self);
   end Get_Target;

   ----------------
   -- Set_Target --
   ----------------

   overriding procedure Set_Target
     (Self : not null access UML_Control_Flow_Proxy;
      To   : AMF.UML.Activity_Nodes.UML_Activity_Node_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Target unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Target";
   end Set_Target;

   ----------------
   -- Get_Weight --
   ----------------

   overriding function Get_Weight
     (Self : not null access constant UML_Control_Flow_Proxy)
      return AMF.UML.Value_Specifications.UML_Value_Specification_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Weight unimplemented");
      raise Program_Error with "Unimplemented function Get_Weight";
      return Get_Weight (Self);
   end Get_Weight;

   ----------------
   -- Set_Weight --
   ----------------

   overriding procedure Set_Weight
     (Self : not null access UML_Control_Flow_Proxy;
      To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Weight unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Weight";
   end Set_Weight;

   -----------------
   -- Get_Is_Leaf --
   -----------------

   overriding function Get_Is_Leaf
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access UML_Control_Flow_Proxy;
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access UML_Control_Flow_Proxy;
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access UML_Control_Flow_Proxy;
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access UML_Control_Flow_Proxy;
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error with "Unimplemented function Get_Owner";
      return Get_Owner (Self);
   end Get_Owner;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
     (Self : not null access constant UML_Control_Flow_Proxy;
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
     (Self : not null access constant UML_Control_Flow_Proxy;
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy;
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
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
     (Self : not null access constant UML_Control_Flow_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Control_Flows;
