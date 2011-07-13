package body AMF.Internals.UML_Messages is

   ------------------
   -- Get_Argument --
   ------------------

   overriding function Get_Argument
     (Self : not null access constant UML_Message_Proxy)
      return AMF.UML.Value_Specifications.Collections.Ordered_Set_Of_UML_Value_Specification
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Argument unimplemented");
      raise Program_Error with "Unimplemented function Get_Argument";
      return Get_Argument (Self);
   end Get_Argument;

   -------------------
   -- Get_Connector --
   -------------------

   overriding function Get_Connector
     (Self : not null access constant UML_Message_Proxy)
      return AMF.UML.Connectors.UML_Connector_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Connector unimplemented");
      raise Program_Error with "Unimplemented function Get_Connector";
      return Get_Connector (Self);
   end Get_Connector;

   -------------------
   -- Set_Connector --
   -------------------

   overriding procedure Set_Connector
     (Self : not null access UML_Message_Proxy;
      To   : AMF.UML.Connectors.UML_Connector_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Connector unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Connector";
   end Set_Connector;

   ---------------------
   -- Get_Interaction --
   ---------------------

   overriding function Get_Interaction
     (Self : not null access constant UML_Message_Proxy)
      return AMF.UML.Interactions.UML_Interaction_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Interaction unimplemented");
      raise Program_Error with "Unimplemented function Get_Interaction";
      return Get_Interaction (Self);
   end Get_Interaction;

   ---------------------
   -- Set_Interaction --
   ---------------------

   overriding procedure Set_Interaction
     (Self : not null access UML_Message_Proxy;
      To   : AMF.UML.Interactions.UML_Interaction_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Interaction unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Interaction";
   end Set_Interaction;

   ----------------------
   -- Get_Message_Kind --
   ----------------------

   overriding function Get_Message_Kind
     (Self : not null access constant UML_Message_Proxy)
      return AMF.UML.UML_Message_Kind
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Message_Kind unimplemented");
      raise Program_Error with "Unimplemented function Get_Message_Kind";
      return Get_Message_Kind (Self);
   end Get_Message_Kind;

   ----------------------
   -- Get_Message_Sort --
   ----------------------

   overriding function Get_Message_Sort
     (Self : not null access constant UML_Message_Proxy)
      return AMF.UML.UML_Message_Sort
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Message_Sort unimplemented");
      raise Program_Error with "Unimplemented function Get_Message_Sort";
      return Get_Message_Sort (Self);
   end Get_Message_Sort;

   ----------------------
   -- Set_Message_Sort --
   ----------------------

   overriding procedure Set_Message_Sort
     (Self : not null access UML_Message_Proxy;
      To   : AMF.UML.UML_Message_Sort)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Message_Sort unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Message_Sort";
   end Set_Message_Sort;

   -----------------------
   -- Get_Receive_Event --
   -----------------------

   overriding function Get_Receive_Event
     (Self : not null access constant UML_Message_Proxy)
      return AMF.UML.Message_Ends.UML_Message_End_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Receive_Event unimplemented");
      raise Program_Error with "Unimplemented function Get_Receive_Event";
      return Get_Receive_Event (Self);
   end Get_Receive_Event;

   -----------------------
   -- Set_Receive_Event --
   -----------------------

   overriding procedure Set_Receive_Event
     (Self : not null access UML_Message_Proxy;
      To   : AMF.UML.Message_Ends.UML_Message_End_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Receive_Event unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Receive_Event";
   end Set_Receive_Event;

   --------------------
   -- Get_Send_Event --
   --------------------

   overriding function Get_Send_Event
     (Self : not null access constant UML_Message_Proxy)
      return AMF.UML.Message_Ends.UML_Message_End_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Send_Event unimplemented");
      raise Program_Error with "Unimplemented function Get_Send_Event";
      return Get_Send_Event (Self);
   end Get_Send_Event;

   --------------------
   -- Set_Send_Event --
   --------------------

   overriding procedure Set_Send_Event
     (Self : not null access UML_Message_Proxy;
      To   : AMF.UML.Message_Ends.UML_Message_End_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Send_Event unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Send_Event";
   end Set_Send_Event;

   -------------------
   -- Get_Signature --
   -------------------

   overriding function Get_Signature
     (Self : not null access constant UML_Message_Proxy)
      return AMF.UML.Named_Elements.UML_Named_Element_Access
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
     (Self : not null access UML_Message_Proxy;
      To   : AMF.UML.Named_Elements.UML_Named_Element_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Signature unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Signature";
   end Set_Signature;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access UML_Message_Proxy;
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access UML_Message_Proxy;
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access UML_Message_Proxy;
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access constant UML_Message_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error with "Unimplemented function Get_Owner";
      return Get_Owner (Self);
   end Get_Owner;

   ------------------
   -- Message_Kind --
   ------------------

   overriding function Message_Kind
     (Self : not null access constant UML_Message_Proxy)
      return AMF.UML.UML_Message_Kind
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Message_Kind unimplemented");
      raise Program_Error with "Unimplemented function Message_Kind";
      return Message_Kind (Self);
   end Message_Kind;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access constant UML_Message_Proxy;
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access constant UML_Message_Proxy)
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
     (Self : not null access constant UML_Message_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Messages;
