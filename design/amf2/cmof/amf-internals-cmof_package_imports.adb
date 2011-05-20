package body AMF.Internals.CMOF_Package_Imports is

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
     (Self : not null access constant CMOF_Package_Import_Proxy)
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
     (Self : not null access constant CMOF_Package_Import_Proxy)
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
     (Self : not null access constant CMOF_Package_Import_Proxy)
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
     (Self : not null access constant CMOF_Package_Import_Proxy)
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
     (Self : not null access constant CMOF_Package_Import_Proxy)
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
     (Self : not null access constant CMOF_Package_Import_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Target unimplemented");
      raise Program_Error;
      return Get_Target (Self);
   end Get_Target;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
     (Self : not null access constant CMOF_Package_Import_Proxy)
      return CMOF.CMOF_Visibility_Kind
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Visibility unimplemented");
      raise Program_Error;
      return Get_Visibility (Self);
   end Get_Visibility;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
     (Self : not null access CMOF_Package_Import_Proxy;
      To   : CMOF.CMOF_Visibility_Kind)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Visibility unimplemented");
      raise Program_Error;
   end Set_Visibility;

   --------------------------
   -- Get_Imported_Package --
   --------------------------

   overriding function Get_Imported_Package
     (Self : not null access constant CMOF_Package_Import_Proxy)
      return AMF.CMOF.Packages.CMOF_Package
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Imported_Package unimplemented");
      raise Program_Error;
      return Get_Imported_Package (Self);
   end Get_Imported_Package;

   --------------------------
   -- Set_Imported_Package --
   --------------------------

   overriding procedure Set_Imported_Package
     (Self : not null access CMOF_Package_Import_Proxy;
      To   : AMF.CMOF.Packages.CMOF_Package)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Imported_Package unimplemented");
      raise Program_Error;
   end Set_Imported_Package;

   -----------------------------
   -- Get_Importing_Namespace --
   -----------------------------

   overriding function Get_Importing_Namespace
     (Self : not null access constant CMOF_Package_Import_Proxy)
      return AMF.CMOF.Namespaces.CMOF_Namespace
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Importing_Namespace unimplemented");
      raise Program_Error;
      return Get_Importing_Namespace (Self);
   end Get_Importing_Namespace;

   -----------------------------
   -- Set_Importing_Namespace --
   -----------------------------

   overriding procedure Set_Importing_Namespace
     (Self : not null access CMOF_Package_Import_Proxy;
      To   : AMF.CMOF.Namespaces.CMOF_Namespace)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Importing_Namespace unimplemented");
      raise Program_Error;
   end Set_Importing_Namespace;

end AMF.Internals.CMOF_Package_Imports;
