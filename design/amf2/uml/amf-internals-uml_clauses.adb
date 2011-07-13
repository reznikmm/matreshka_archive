package body AMF.Internals.UML_Clauses is

   --------------
   -- Get_Body --
   --------------

   overriding function Get_Body
     (Self : not null access constant UML_Clause_Proxy)
      return AMF.UML.Executable_Nodes.Collections.Set_Of_UML_Executable_Node
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Body unimplemented");
      raise Program_Error with "Unimplemented function Get_Body";
      return Get_Body (Self);
   end Get_Body;

   ---------------------
   -- Get_Body_Output --
   ---------------------

   overriding function Get_Body_Output
     (Self : not null access constant UML_Clause_Proxy)
      return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Body_Output unimplemented");
      raise Program_Error with "Unimplemented function Get_Body_Output";
      return Get_Body_Output (Self);
   end Get_Body_Output;

   -----------------
   -- Get_Decider --
   -----------------

   overriding function Get_Decider
     (Self : not null access constant UML_Clause_Proxy)
      return AMF.UML.Output_Pins.UML_Output_Pin_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Decider unimplemented");
      raise Program_Error with "Unimplemented function Get_Decider";
      return Get_Decider (Self);
   end Get_Decider;

   -----------------
   -- Set_Decider --
   -----------------

   overriding procedure Set_Decider
     (Self : not null access UML_Clause_Proxy;
      To   : AMF.UML.Output_Pins.UML_Output_Pin_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Decider unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Decider";
   end Set_Decider;

   ----------------------------
   -- Get_Predecessor_Clause --
   ----------------------------

   overriding function Get_Predecessor_Clause
     (Self : not null access constant UML_Clause_Proxy)
      return AMF.UML.Clauses.Collections.Set_Of_UML_Clause
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Predecessor_Clause unimplemented");
      raise Program_Error with "Unimplemented function Get_Predecessor_Clause";
      return Get_Predecessor_Clause (Self);
   end Get_Predecessor_Clause;

   --------------------------
   -- Get_Successor_Clause --
   --------------------------

   overriding function Get_Successor_Clause
     (Self : not null access constant UML_Clause_Proxy)
      return AMF.UML.Clauses.Collections.Set_Of_UML_Clause
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Successor_Clause unimplemented");
      raise Program_Error with "Unimplemented function Get_Successor_Clause";
      return Get_Successor_Clause (Self);
   end Get_Successor_Clause;

   --------------
   -- Get_Test --
   --------------

   overriding function Get_Test
     (Self : not null access constant UML_Clause_Proxy)
      return AMF.UML.Executable_Nodes.Collections.Set_Of_UML_Executable_Node
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Test unimplemented");
      raise Program_Error with "Unimplemented function Get_Test";
      return Get_Test (Self);
   end Get_Test;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
     (Self : not null access constant UML_Clause_Proxy)
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
     (Self : not null access constant UML_Clause_Proxy)
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
     (Self : not null access constant UML_Clause_Proxy)
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
     (Self : not null access constant UML_Clause_Proxy)
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
     (Self : not null access constant UML_Clause_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Clauses;
