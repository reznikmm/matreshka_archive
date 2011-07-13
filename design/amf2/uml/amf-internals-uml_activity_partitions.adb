package body AMF.Internals.UML_Activity_Partitions is

   --------------
   -- Get_Edge --
   --------------

   overriding function Get_Edge
     (Self : not null access constant UML_Activity_Partition_Proxy)
      return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Edge unimplemented");
      raise Program_Error with "Unimplemented function Get_Edge";
      return Get_Edge (Self);
   end Get_Edge;

   ----------------------
   -- Get_Is_Dimension --
   ----------------------

   overriding function Get_Is_Dimension
     (Self : not null access constant UML_Activity_Partition_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Dimension unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Dimension";
      return Get_Is_Dimension (Self);
   end Get_Is_Dimension;

   ----------------------
   -- Set_Is_Dimension --
   ----------------------

   overriding procedure Set_Is_Dimension
     (Self : not null access UML_Activity_Partition_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Dimension unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Dimension";
   end Set_Is_Dimension;

   ---------------------
   -- Get_Is_External --
   ---------------------

   overriding function Get_Is_External
     (Self : not null access constant UML_Activity_Partition_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_External unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_External";
      return Get_Is_External (Self);
   end Get_Is_External;

   ---------------------
   -- Set_Is_External --
   ---------------------

   overriding procedure Set_Is_External
     (Self : not null access UML_Activity_Partition_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_External unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_External";
   end Set_Is_External;

   --------------
   -- Get_Node --
   --------------

   overriding function Get_Node
     (Self : not null access constant UML_Activity_Partition_Proxy)
      return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Node unimplemented");
      raise Program_Error with "Unimplemented function Get_Node";
      return Get_Node (Self);
   end Get_Node;

   --------------------
   -- Get_Represents --
   --------------------

   overriding function Get_Represents
     (Self : not null access constant UML_Activity_Partition_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Represents unimplemented");
      raise Program_Error with "Unimplemented function Get_Represents";
      return Get_Represents (Self);
   end Get_Represents;

   --------------------
   -- Set_Represents --
   --------------------

   overriding procedure Set_Represents
     (Self : not null access UML_Activity_Partition_Proxy;
      To   : AMF.UML.Elements.UML_Element_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Represents unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Represents";
   end Set_Represents;

   ----------------------
   -- Get_Subpartition --
   ----------------------

   overriding function Get_Subpartition
     (Self : not null access constant UML_Activity_Partition_Proxy)
      return AMF.UML.Activity_Partitions.Collections.Set_Of_UML_Activity_Partition
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Subpartition unimplemented");
      raise Program_Error with "Unimplemented function Get_Subpartition";
      return Get_Subpartition (Self);
   end Get_Subpartition;

   -------------------------
   -- Get_Super_Partition --
   -------------------------

   overriding function Get_Super_Partition
     (Self : not null access constant UML_Activity_Partition_Proxy)
      return AMF.UML.Activity_Partitions.UML_Activity_Partition_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Super_Partition unimplemented");
      raise Program_Error with "Unimplemented function Get_Super_Partition";
      return Get_Super_Partition (Self);
   end Get_Super_Partition;

   -------------------------
   -- Set_Super_Partition --
   -------------------------

   overriding procedure Set_Super_Partition
     (Self : not null access UML_Activity_Partition_Proxy;
      To   : AMF.UML.Activity_Partitions.UML_Activity_Partition_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Super_Partition unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Super_Partition";
   end Set_Super_Partition;

   ------------------------
   -- Get_Contained_Edge --
   ------------------------

   overriding function Get_Contained_Edge
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access UML_Activity_Partition_Proxy;
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
      return AMF.UML.Activity_Groups.UML_Activity_Group_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Super_Group unimplemented");
      raise Program_Error with "Unimplemented function Get_Super_Group";
      return Get_Super_Group (Self);
   end Get_Super_Group;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access UML_Activity_Partition_Proxy;
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access UML_Activity_Partition_Proxy;
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access UML_Activity_Partition_Proxy;
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error with "Unimplemented function Get_Owner";
      return Get_Owner (Self);
   end Get_Owner;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy;
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
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
     (Self : not null access constant UML_Activity_Partition_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Activity_Partitions;
