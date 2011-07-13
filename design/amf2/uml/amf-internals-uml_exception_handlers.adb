package body AMF.Internals.UML_Exception_Handlers is

   -------------------------
   -- Get_Exception_Input --
   -------------------------

   overriding function Get_Exception_Input
     (Self : not null access constant UML_Exception_Handler_Proxy)
      return AMF.UML.Object_Nodes.UML_Object_Node_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Exception_Input unimplemented");
      raise Program_Error with "Unimplemented function Get_Exception_Input";
      return Get_Exception_Input (Self);
   end Get_Exception_Input;

   -------------------------
   -- Set_Exception_Input --
   -------------------------

   overriding procedure Set_Exception_Input
     (Self : not null access UML_Exception_Handler_Proxy;
      To   : AMF.UML.Object_Nodes.UML_Object_Node_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Exception_Input unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Exception_Input";
   end Set_Exception_Input;

   ------------------------
   -- Get_Exception_Type --
   ------------------------

   overriding function Get_Exception_Type
     (Self : not null access constant UML_Exception_Handler_Proxy)
      return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Exception_Type unimplemented");
      raise Program_Error with "Unimplemented function Get_Exception_Type";
      return Get_Exception_Type (Self);
   end Get_Exception_Type;

   ----------------------
   -- Get_Handler_Body --
   ----------------------

   overriding function Get_Handler_Body
     (Self : not null access constant UML_Exception_Handler_Proxy)
      return AMF.UML.Executable_Nodes.UML_Executable_Node_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Handler_Body unimplemented");
      raise Program_Error with "Unimplemented function Get_Handler_Body";
      return Get_Handler_Body (Self);
   end Get_Handler_Body;

   ----------------------
   -- Set_Handler_Body --
   ----------------------

   overriding procedure Set_Handler_Body
     (Self : not null access UML_Exception_Handler_Proxy;
      To   : AMF.UML.Executable_Nodes.UML_Executable_Node_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Handler_Body unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Handler_Body";
   end Set_Handler_Body;

   ------------------------
   -- Get_Protected_Node --
   ------------------------

   overriding function Get_Protected_Node
     (Self : not null access constant UML_Exception_Handler_Proxy)
      return AMF.UML.Executable_Nodes.UML_Executable_Node_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Protected_Node unimplemented");
      raise Program_Error with "Unimplemented function Get_Protected_Node";
      return Get_Protected_Node (Self);
   end Get_Protected_Node;

   ------------------------
   -- Set_Protected_Node --
   ------------------------

   overriding procedure Set_Protected_Node
     (Self : not null access UML_Exception_Handler_Proxy;
      To   : AMF.UML.Executable_Nodes.UML_Executable_Node_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Protected_Node unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Protected_Node";
   end Set_Protected_Node;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
     (Self : not null access constant UML_Exception_Handler_Proxy)
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
     (Self : not null access constant UML_Exception_Handler_Proxy)
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
     (Self : not null access constant UML_Exception_Handler_Proxy)
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
     (Self : not null access constant UML_Exception_Handler_Proxy)
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
     (Self : not null access constant UML_Exception_Handler_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Exception_Handlers;
