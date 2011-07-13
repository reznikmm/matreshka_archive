package body AMF.Internals.UML_Template_Parameter_Substitutions is

   ----------------
   -- Get_Actual --
   ----------------

   overriding function Get_Actual
     (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
      return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Actual unimplemented");
      raise Program_Error with "Unimplemented function Get_Actual";
      return Get_Actual (Self);
   end Get_Actual;

   ----------------
   -- Set_Actual --
   ----------------

   overriding procedure Set_Actual
     (Self : not null access UML_Template_Parameter_Substitution_Proxy;
      To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Actual unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Actual";
   end Set_Actual;

   ----------------
   -- Get_Formal --
   ----------------

   overriding function Get_Formal
     (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
      return AMF.UML.Template_Parameters.UML_Template_Parameter_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Formal unimplemented");
      raise Program_Error with "Unimplemented function Get_Formal";
      return Get_Formal (Self);
   end Get_Formal;

   ----------------
   -- Set_Formal --
   ----------------

   overriding procedure Set_Formal
     (Self : not null access UML_Template_Parameter_Substitution_Proxy;
      To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Formal unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Formal";
   end Set_Formal;

   ----------------------
   -- Get_Owned_Actual --
   ----------------------

   overriding function Get_Owned_Actual
     (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
      return AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Actual unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Actual";
      return Get_Owned_Actual (Self);
   end Get_Owned_Actual;

   ----------------------
   -- Set_Owned_Actual --
   ----------------------

   overriding procedure Set_Owned_Actual
     (Self : not null access UML_Template_Parameter_Substitution_Proxy;
      To   : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Owned_Actual unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Owned_Actual";
   end Set_Owned_Actual;

   --------------------------
   -- Get_Template_Binding --
   --------------------------

   overriding function Get_Template_Binding
     (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
      return AMF.UML.Template_Bindings.UML_Template_Binding_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Template_Binding unimplemented");
      raise Program_Error with "Unimplemented function Get_Template_Binding";
      return Get_Template_Binding (Self);
   end Get_Template_Binding;

   --------------------------
   -- Set_Template_Binding --
   --------------------------

   overriding procedure Set_Template_Binding
     (Self : not null access UML_Template_Parameter_Substitution_Proxy;
      To   : AMF.UML.Template_Bindings.UML_Template_Binding_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Template_Binding unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Template_Binding";
   end Set_Template_Binding;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
     (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
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
     (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
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
     (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error with "Unimplemented function Get_Owner";
      return Get_Owner (Self);
   end Get_Owner;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
     (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
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
     (Self : not null access constant UML_Template_Parameter_Substitution_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Template_Parameter_Substitutions;
