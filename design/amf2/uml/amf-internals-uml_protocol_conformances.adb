package body AMF.Internals.UML_Protocol_Conformances is

   -------------------------
   -- Get_General_Machine --
   -------------------------

   overriding function Get_General_Machine
     (Self : not null access constant UML_Protocol_Conformance_Proxy)
      return AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_General_Machine unimplemented");
      raise Program_Error with "Unimplemented function Get_General_Machine";
      return Get_General_Machine (Self);
   end Get_General_Machine;

   -------------------------
   -- Set_General_Machine --
   -------------------------

   overriding procedure Set_General_Machine
     (Self : not null access UML_Protocol_Conformance_Proxy;
      To   : AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_General_Machine unimplemented");
      raise Program_Error with "Unimplemented procedure Set_General_Machine";
   end Set_General_Machine;

   --------------------------
   -- Get_Specific_Machine --
   --------------------------

   overriding function Get_Specific_Machine
     (Self : not null access constant UML_Protocol_Conformance_Proxy)
      return AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Specific_Machine unimplemented");
      raise Program_Error with "Unimplemented function Get_Specific_Machine";
      return Get_Specific_Machine (Self);
   end Get_Specific_Machine;

   --------------------------
   -- Set_Specific_Machine --
   --------------------------

   overriding procedure Set_Specific_Machine
     (Self : not null access UML_Protocol_Conformance_Proxy;
      To   : AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Specific_Machine unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Specific_Machine";
   end Set_Specific_Machine;

   ----------------
   -- Get_Source --
   ----------------

   overriding function Get_Source
     (Self : not null access constant UML_Protocol_Conformance_Proxy)
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
     (Self : not null access constant UML_Protocol_Conformance_Proxy)
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
     (Self : not null access constant UML_Protocol_Conformance_Proxy)
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
     (Self : not null access constant UML_Protocol_Conformance_Proxy)
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
     (Self : not null access constant UML_Protocol_Conformance_Proxy)
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
     (Self : not null access constant UML_Protocol_Conformance_Proxy)
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
     (Self : not null access constant UML_Protocol_Conformance_Proxy)
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
     (Self : not null access constant UML_Protocol_Conformance_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Protocol_Conformances;
