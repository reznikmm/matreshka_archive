package body AMF.Internals.UML_Template_Bindings is

   -----------------------
   -- Get_Bound_Element --
   -----------------------

   overriding function Get_Bound_Element
     (Self : not null access constant UML_Template_Binding_Proxy)
      return AMF.UML.Templateable_Elements.UML_Templateable_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Bound_Element unimplemented");
      raise Program_Error with "Unimplemented function Get_Bound_Element";
      return Get_Bound_Element (Self);
   end Get_Bound_Element;

   -----------------------
   -- Set_Bound_Element --
   -----------------------

   overriding procedure Set_Bound_Element
     (Self : not null access UML_Template_Binding_Proxy;
      To   : AMF.UML.Templateable_Elements.UML_Templateable_Element_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Bound_Element unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Bound_Element";
   end Set_Bound_Element;

   --------------------------------
   -- Get_Parameter_Substitution --
   --------------------------------

   overriding function Get_Parameter_Substitution
     (Self : not null access constant UML_Template_Binding_Proxy)
      return AMF.UML.Template_Parameter_Substitutions.Collections.Set_Of_UML_Template_Parameter_Substitution
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Parameter_Substitution unimplemented");
      raise Program_Error with "Unimplemented function Get_Parameter_Substitution";
      return Get_Parameter_Substitution (Self);
   end Get_Parameter_Substitution;

   -------------------
   -- Get_Signature --
   -------------------

   overriding function Get_Signature
     (Self : not null access constant UML_Template_Binding_Proxy)
      return AMF.UML.Template_Signatures.UML_Template_Signature_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Signature unimplemented");
      raise Program_Error with "Unimplemented function Get_Signature";
      return Get_Signature (Self);
   end Get_Signature;

   -------------------
   -- Set_Signature --
   -------------------

   overriding procedure Set_Signature
     (Self : not null access UML_Template_Binding_Proxy;
      To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Signature unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Signature";
   end Set_Signature;

   ----------------
   -- Get_Source --
   ----------------

   overriding function Get_Source
     (Self : not null access constant UML_Template_Binding_Proxy)
      return AMF.UML.Elements.Collections.Set_Of_UML_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Source unimplemented");
      raise Program_Error with "Unimplemented function Get_Source";
      return Get_Source (Self);
   end Get_Source;

   ----------------
   -- Get_Target --
   ----------------

   overriding function Get_Target
     (Self : not null access constant UML_Template_Binding_Proxy)
      return AMF.UML.Elements.Collections.Set_Of_UML_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Target unimplemented");
      raise Program_Error with "Unimplemented function Get_Target";
      return Get_Target (Self);
   end Get_Target;

   -------------------------
   -- Get_Related_Element --
   -------------------------

   overriding function Get_Related_Element
     (Self : not null access constant UML_Template_Binding_Proxy)
      return AMF.UML.Elements.Collections.Set_Of_UML_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Related_Element unimplemented");
      raise Program_Error with "Unimplemented function Get_Related_Element";
      return Get_Related_Element (Self);
   end Get_Related_Element;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
     (Self : not null access constant UML_Template_Binding_Proxy)
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
     (Self : not null access constant UML_Template_Binding_Proxy)
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
     (Self : not null access constant UML_Template_Binding_Proxy)
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
     (Self : not null access constant UML_Template_Binding_Proxy)
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
     (Self : not null access constant UML_Template_Binding_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Template_Bindings;
