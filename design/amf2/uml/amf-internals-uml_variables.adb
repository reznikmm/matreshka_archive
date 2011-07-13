package body AMF.Internals.UML_Variables is

   ------------------------
   -- Get_Activity_Scope --
   ------------------------

   overriding function Get_Activity_Scope
     (Self : not null access constant UML_Variable_Proxy)
      return AMF.UML.Activities.UML_Activity_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Activity_Scope unimplemented");
      raise Program_Error with "Unimplemented function Get_Activity_Scope";
      return Get_Activity_Scope (Self);
   end Get_Activity_Scope;

   ------------------------
   -- Set_Activity_Scope --
   ------------------------

   overriding procedure Set_Activity_Scope
     (Self : not null access UML_Variable_Proxy;
      To   : AMF.UML.Activities.UML_Activity_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Activity_Scope unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Activity_Scope";
   end Set_Activity_Scope;

   ---------------
   -- Get_Scope --
   ---------------

   overriding function Get_Scope
     (Self : not null access constant UML_Variable_Proxy)
      return AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Scope unimplemented");
      raise Program_Error with "Unimplemented function Get_Scope";
      return Get_Scope (Self);
   end Get_Scope;

   ---------------
   -- Set_Scope --
   ---------------

   overriding procedure Set_Scope
     (Self : not null access UML_Variable_Proxy;
      To   : AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Scope unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Scope";
   end Set_Scope;

   -------------
   -- Get_End --
   -------------

   overriding function Get_End
     (Self : not null access constant UML_Variable_Proxy)
      return AMF.UML.Connector_Ends.Collections.Ordered_Set_Of_UML_Connector_End
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_End unimplemented");
      raise Program_Error with "Unimplemented function Get_End";
      return Get_End (Self);
   end Get_End;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
     (Self : not null access constant UML_Variable_Proxy)
      return AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access
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
     (Self : not null access UML_Variable_Proxy;
      To   : AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Template_Parameter";
   end Set_Template_Parameter;

   --------------
   -- Get_Type --
   --------------

   overriding function Get_Type
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
      To   : AMF.UML.Types.UML_Type_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Type unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Type";
   end Set_Type;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error with "Unimplemented function Get_Owner";
      return Get_Owner (Self);
   end Get_Owner;

   -----------------------------------
   -- Get_Owning_Template_Parameter --
   -----------------------------------

   overriding function Get_Owning_Template_Parameter
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
      To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Template_Parameter";
   end Set_Template_Parameter;

   --------------------
   -- Get_Is_Ordered --
   --------------------

   overriding function Get_Is_Ordered
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access UML_Variable_Proxy;
      To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Upper_Value unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Upper_Value";
   end Set_Upper_Value;

   ----------------------
   -- Is_Accessible_By --
   ----------------------

   overriding function Is_Accessible_By
     (Self : not null access constant UML_Variable_Proxy;
      A : AMF.UML.Actions.UML_Action_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Accessible_By unimplemented");
      raise Program_Error with "Unimplemented function Is_Accessible_By";
      return Is_Accessible_By (Self, A);
   end Is_Accessible_By;

   ----------
   -- Ends --
   ----------

   overriding function Ends
     (Self : not null access constant UML_Variable_Proxy)
      return AMF.UML.Connector_Ends.Collections.Set_Of_UML_Connector_End
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Ends unimplemented");
      raise Program_Error with "Unimplemented function Ends";
      return Ends (Self);
   end Ends;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

   ------------------------
   -- Is_Compatible_With --
   ------------------------

   overriding function Is_Compatible_With
     (Self : not null access constant UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Is_Template_Parameter";
      return Is_Template_Parameter (Self);
   end Is_Template_Parameter;

   ---------------------
   -- Compatible_With --
   ---------------------

   overriding function Compatible_With
     (Self : not null access constant UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy;
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
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
     (Self : not null access constant UML_Variable_Proxy)
      return AMF.Optional_Unlimited_Natural
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Upper_Bound unimplemented");
      raise Program_Error with "Unimplemented function Upper_Bound";
      return Upper_Bound (Self);
   end Upper_Bound;

end AMF.Internals.UML_Variables;
