package body AMF.Internals.UML_Slots is

   --------------------------
   -- Get_Defining_Feature --
   --------------------------

   overriding function Get_Defining_Feature
     (Self : not null access constant UML_Slot_Proxy)
      return AMF.UML.Structural_Features.UML_Structural_Feature_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Defining_Feature unimplemented");
      raise Program_Error with "Unimplemented function Get_Defining_Feature";
      return Get_Defining_Feature (Self);
   end Get_Defining_Feature;

   --------------------------
   -- Set_Defining_Feature --
   --------------------------

   overriding procedure Set_Defining_Feature
     (Self : not null access UML_Slot_Proxy;
      To   : AMF.UML.Structural_Features.UML_Structural_Feature_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Defining_Feature unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Defining_Feature";
   end Set_Defining_Feature;

   -------------------------
   -- Get_Owning_Instance --
   -------------------------

   overriding function Get_Owning_Instance
     (Self : not null access constant UML_Slot_Proxy)
      return AMF.UML.Instance_Specifications.UML_Instance_Specification_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owning_Instance unimplemented");
      raise Program_Error with "Unimplemented function Get_Owning_Instance";
      return Get_Owning_Instance (Self);
   end Get_Owning_Instance;

   -------------------------
   -- Set_Owning_Instance --
   -------------------------

   overriding procedure Set_Owning_Instance
     (Self : not null access UML_Slot_Proxy;
      To   : AMF.UML.Instance_Specifications.UML_Instance_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Owning_Instance unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Owning_Instance";
   end Set_Owning_Instance;

   ---------------
   -- Get_Value --
   ---------------

   overriding function Get_Value
     (Self : not null access constant UML_Slot_Proxy)
      return AMF.UML.Value_Specifications.Collections.Ordered_Set_Of_UML_Value_Specification
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Value unimplemented");
      raise Program_Error with "Unimplemented function Get_Value";
      return Get_Value (Self);
   end Get_Value;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
     (Self : not null access constant UML_Slot_Proxy)
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
     (Self : not null access constant UML_Slot_Proxy)
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
     (Self : not null access constant UML_Slot_Proxy)
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
     (Self : not null access constant UML_Slot_Proxy)
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
     (Self : not null access constant UML_Slot_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Slots;
