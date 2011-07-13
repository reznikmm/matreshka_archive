package body AMF.Internals.UML_Execution_Occurrence_Specifications is

   -------------------
   -- Get_Execution --
   -------------------

   overriding function Get_Execution
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
      return AMF.UML.Execution_Specifications.UML_Execution_Specification_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Execution unimplemented");
      raise Program_Error with "Unimplemented function Get_Execution";
      return Get_Execution (Self);
   end Get_Execution;

   -------------------
   -- Set_Execution --
   -------------------

   overriding procedure Set_Execution
     (Self : not null access UML_Execution_Occurrence_Specification_Proxy;
      To   : AMF.UML.Execution_Specifications.UML_Execution_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Execution unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Execution";
   end Set_Execution;

   -----------------
   -- Get_Covered --
   -----------------

   overriding function Get_Covered
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
      return AMF.UML.Lifelines.UML_Lifeline_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Covered unimplemented");
      raise Program_Error with "Unimplemented function Get_Covered";
      return Get_Covered (Self);
   end Get_Covered;

   -----------------
   -- Set_Covered --
   -----------------

   overriding procedure Set_Covered
     (Self : not null access UML_Execution_Occurrence_Specification_Proxy;
      To   : AMF.UML.Lifelines.UML_Lifeline_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Covered unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Covered";
   end Set_Covered;

   ------------------
   -- Get_To_After --
   ------------------

   overriding function Get_To_After
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
      return AMF.UML.General_Orderings.Collections.Set_Of_UML_General_Ordering
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_To_After unimplemented");
      raise Program_Error with "Unimplemented function Get_To_After";
      return Get_To_After (Self);
   end Get_To_After;

   -------------------
   -- Get_To_Before --
   -------------------

   overriding function Get_To_Before
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
      return AMF.UML.General_Orderings.Collections.Set_Of_UML_General_Ordering
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_To_Before unimplemented");
      raise Program_Error with "Unimplemented function Get_To_Before";
      return Get_To_Before (Self);
   end Get_To_Before;

   -----------------
   -- Get_Covered --
   -----------------

   overriding function Get_Covered
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
      return AMF.UML.Lifelines.Collections.Set_Of_UML_Lifeline
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Covered unimplemented");
      raise Program_Error with "Unimplemented function Get_Covered";
      return Get_Covered (Self);
   end Get_Covered;

   -------------------------------
   -- Get_Enclosing_Interaction --
   -------------------------------

   overriding function Get_Enclosing_Interaction
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
      return AMF.UML.Interactions.UML_Interaction_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Enclosing_Interaction unimplemented");
      raise Program_Error with "Unimplemented function Get_Enclosing_Interaction";
      return Get_Enclosing_Interaction (Self);
   end Get_Enclosing_Interaction;

   -------------------------------
   -- Set_Enclosing_Interaction --
   -------------------------------

   overriding procedure Set_Enclosing_Interaction
     (Self : not null access UML_Execution_Occurrence_Specification_Proxy;
      To   : AMF.UML.Interactions.UML_Interaction_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Enclosing_Interaction unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Enclosing_Interaction";
   end Set_Enclosing_Interaction;

   ---------------------------
   -- Get_Enclosing_Operand --
   ---------------------------

   overriding function Get_Enclosing_Operand
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
      return AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Enclosing_Operand unimplemented");
      raise Program_Error with "Unimplemented function Get_Enclosing_Operand";
      return Get_Enclosing_Operand (Self);
   end Get_Enclosing_Operand;

   ---------------------------
   -- Set_Enclosing_Operand --
   ---------------------------

   overriding procedure Set_Enclosing_Operand
     (Self : not null access UML_Execution_Occurrence_Specification_Proxy;
      To   : AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Enclosing_Operand unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Enclosing_Operand";
   end Set_Enclosing_Operand;

   --------------------------
   -- Get_General_Ordering --
   --------------------------

   overriding function Get_General_Ordering
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
      return AMF.UML.General_Orderings.Collections.Set_Of_UML_General_Ordering
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_General_Ordering unimplemented");
      raise Program_Error with "Unimplemented function Get_General_Ordering";
      return Get_General_Ordering (Self);
   end Get_General_Ordering;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access UML_Execution_Occurrence_Specification_Proxy;
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access UML_Execution_Occurrence_Specification_Proxy;
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access UML_Execution_Occurrence_Specification_Proxy;
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy;
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
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
     (Self : not null access constant UML_Execution_Occurrence_Specification_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Execution_Occurrence_Specifications;
