package body AMF.Internals.CMOF_Package_Merges is

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
     (Self : not null access constant CMOF_Package_Merge_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Element unimplemented");
      raise Program_Error;
      return Get_Owned_Element (Self);
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
     (Self : not null access constant CMOF_Package_Merge_Proxy)
      return AMF.CMOF.Elements.CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error;
      return Get_Owner (Self);
   end Get_Owner;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
     (Self : not null access constant CMOF_Package_Merge_Proxy)
      return AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Comment unimplemented");
      raise Program_Error;
      return Get_Owned_Comment (Self);
   end Get_Owned_Comment;

   -------------------------
   -- Get_Related_Element --
   -------------------------

   overriding function Get_Related_Element
     (Self : not null access constant CMOF_Package_Merge_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Related_Element unimplemented");
      raise Program_Error;
      return Get_Related_Element (Self);
   end Get_Related_Element;

   ----------------
   -- Get_Source --
   ----------------

   overriding function Get_Source
     (Self : not null access constant CMOF_Package_Merge_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Source unimplemented");
      raise Program_Error;
      return Get_Source (Self);
   end Get_Source;

   ----------------
   -- Get_Target --
   ----------------

   overriding function Get_Target
     (Self : not null access constant CMOF_Package_Merge_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Target unimplemented");
      raise Program_Error;
      return Get_Target (Self);
   end Get_Target;

   ---------------------------
   -- Get_Receiving_Package --
   ---------------------------

   overriding function Get_Receiving_Package
     (Self : not null access constant CMOF_Package_Merge_Proxy)
      return AMF.CMOF.Packages.CMOF_Package
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Receiving_Package unimplemented");
      raise Program_Error;
      return Get_Receiving_Package (Self);
   end Get_Receiving_Package;

   ---------------------------
   -- Set_Receiving_Package --
   ---------------------------

   overriding procedure Set_Receiving_Package
     (Self : not null access CMOF_Package_Merge_Proxy;
      To   : AMF.CMOF.Packages.CMOF_Package)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Receiving_Package unimplemented");
      raise Program_Error;
   end Set_Receiving_Package;

   ------------------------
   -- Get_Merged_Package --
   ------------------------

   overriding function Get_Merged_Package
     (Self : not null access constant CMOF_Package_Merge_Proxy)
      return AMF.CMOF.Packages.CMOF_Package
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Merged_Package unimplemented");
      raise Program_Error;
      return Get_Merged_Package (Self);
   end Get_Merged_Package;

   ------------------------
   -- Set_Merged_Package --
   ------------------------

   overriding procedure Set_Merged_Package
     (Self : not null access CMOF_Package_Merge_Proxy;
      To   : AMF.CMOF.Packages.CMOF_Package)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Merged_Package unimplemented");
      raise Program_Error;
   end Set_Merged_Package;

end AMF.Internals.CMOF_Package_Merges;
