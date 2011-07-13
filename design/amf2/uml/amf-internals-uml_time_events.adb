package body AMF.Internals.UML_Time_Events is

   ---------------------
   -- Get_Is_Relative --
   ---------------------

   overriding function Get_Is_Relative
     (Self : not null access constant UML_Time_Event_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Relative unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Relative";
      return Get_Is_Relative (Self);
   end Get_Is_Relative;

   ---------------------
   -- Set_Is_Relative --
   ---------------------

   overriding procedure Set_Is_Relative
     (Self : not null access UML_Time_Event_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Relative unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Relative";
   end Set_Is_Relative;

   --------------
   -- Get_When --
   --------------

   overriding function Get_When
     (Self : not null access constant UML_Time_Event_Proxy)
      return AMF.UML.Time_Expressions.UML_Time_Expression_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_When unimplemented");
      raise Program_Error with "Unimplemented function Get_When";
      return Get_When (Self);
   end Get_When;

   --------------
   -- Set_When --
   --------------

   overriding procedure Set_When
     (Self : not null access UML_Time_Event_Proxy;
      To   : AMF.UML.Time_Expressions.UML_Time_Expression_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_When unimplemented");
      raise Program_Error with "Unimplemented procedure Set_When";
   end Set_When;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access UML_Time_Event_Proxy;
      To   : AMF.UML.UML_Visibility_Kind)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Visibility unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Visibility";
   end Set_Visibility;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access UML_Time_Event_Proxy;
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access UML_Time_Event_Proxy;
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access UML_Time_Event_Proxy;
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access UML_Time_Event_Proxy;
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access UML_Time_Event_Proxy;
      To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Template_Parameter";
   end Set_Template_Parameter;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy;
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy)
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
     (Self : not null access constant UML_Time_Event_Proxy;
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
     (Self : not null access constant UML_Time_Event_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Is_Template_Parameter";
      return Is_Template_Parameter (Self);
   end Is_Template_Parameter;

end AMF.Internals.UML_Time_Events;
