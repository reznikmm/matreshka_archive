package body AMF.Internals.UML_Template_Signatures is

   -------------------------
   -- Get_Owned_Parameter --
   -------------------------

   overriding function Get_Owned_Parameter
     (Self : not null access constant UML_Template_Signature_Proxy)
      return AMF.UML.Template_Parameters.Collections.Ordered_Set_Of_UML_Template_Parameter
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Get_Owned_Parameter";
      return Get_Owned_Parameter (Self);
   end Get_Owned_Parameter;

   -------------------
   -- Get_Parameter --
   -------------------

   overriding function Get_Parameter
     (Self : not null access constant UML_Template_Signature_Proxy)
      return AMF.UML.Template_Parameters.Collections.Ordered_Set_Of_UML_Template_Parameter
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Get_Parameter";
      return Get_Parameter (Self);
   end Get_Parameter;

   ------------------
   -- Get_Template --
   ------------------

   overriding function Get_Template
     (Self : not null access constant UML_Template_Signature_Proxy)
      return AMF.UML.Templateable_Elements.UML_Templateable_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Template unimplemented");
      raise Program_Error with "Unimplemented function Get_Template";
      return Get_Template (Self);
   end Get_Template;

   ------------------
   -- Set_Template --
   ------------------

   overriding procedure Set_Template
     (Self : not null access UML_Template_Signature_Proxy;
      To   : AMF.UML.Templateable_Elements.UML_Templateable_Element_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Template unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Template";
   end Set_Template;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
     (Self : not null access constant UML_Template_Signature_Proxy)
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
     (Self : not null access constant UML_Template_Signature_Proxy)
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
     (Self : not null access constant UML_Template_Signature_Proxy)
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
     (Self : not null access constant UML_Template_Signature_Proxy)
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
     (Self : not null access constant UML_Template_Signature_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Template_Signatures;
