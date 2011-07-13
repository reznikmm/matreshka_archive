package body AMF.Internals.UML_Qualifier_Values is

   -------------------
   -- Get_Qualifier --
   -------------------

   overriding function Get_Qualifier
     (Self : not null access constant UML_Qualifier_Value_Proxy)
      return AMF.UML.Properties.UML_Property_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Qualifier unimplemented");
      raise Program_Error with "Unimplemented function Get_Qualifier";
      return Get_Qualifier (Self);
   end Get_Qualifier;

   -------------------
   -- Set_Qualifier --
   -------------------

   overriding procedure Set_Qualifier
     (Self : not null access UML_Qualifier_Value_Proxy;
      To   : AMF.UML.Properties.UML_Property_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Qualifier unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Qualifier";
   end Set_Qualifier;

   ---------------
   -- Get_Value --
   ---------------

   overriding function Get_Value
     (Self : not null access constant UML_Qualifier_Value_Proxy)
      return AMF.UML.Input_Pins.UML_Input_Pin_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Value unimplemented");
      raise Program_Error with "Unimplemented function Get_Value";
      return Get_Value (Self);
   end Get_Value;

   ---------------
   -- Set_Value --
   ---------------

   overriding procedure Set_Value
     (Self : not null access UML_Qualifier_Value_Proxy;
      To   : AMF.UML.Input_Pins.UML_Input_Pin_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Value unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Value";
   end Set_Value;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
     (Self : not null access constant UML_Qualifier_Value_Proxy)
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
     (Self : not null access constant UML_Qualifier_Value_Proxy)
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
     (Self : not null access constant UML_Qualifier_Value_Proxy)
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
     (Self : not null access constant UML_Qualifier_Value_Proxy)
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
     (Self : not null access constant UML_Qualifier_Value_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Qualifier_Values;
