package body AMF.Internals.UML_Profile_Applications is

   -------------------------
   -- Get_Applied_Profile --
   -------------------------

   overriding function Get_Applied_Profile
     (Self : not null access constant UML_Profile_Application_Proxy)
      return AMF.UML.Profiles.UML_Profile_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Applied_Profile unimplemented");
      raise Program_Error with "Unimplemented function Get_Applied_Profile";
      return Get_Applied_Profile (Self);
   end Get_Applied_Profile;

   -------------------------
   -- Set_Applied_Profile --
   -------------------------

   overriding procedure Set_Applied_Profile
     (Self : not null access UML_Profile_Application_Proxy;
      To   : AMF.UML.Profiles.UML_Profile_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Applied_Profile unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Applied_Profile";
   end Set_Applied_Profile;

   --------------------------
   -- Get_Applying_Package --
   --------------------------

   overriding function Get_Applying_Package
     (Self : not null access constant UML_Profile_Application_Proxy)
      return AMF.UML.Packages.UML_Package_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Applying_Package unimplemented");
      raise Program_Error with "Unimplemented function Get_Applying_Package";
      return Get_Applying_Package (Self);
   end Get_Applying_Package;

   --------------------------
   -- Set_Applying_Package --
   --------------------------

   overriding procedure Set_Applying_Package
     (Self : not null access UML_Profile_Application_Proxy;
      To   : AMF.UML.Packages.UML_Package_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Applying_Package unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Applying_Package";
   end Set_Applying_Package;

   -------------------
   -- Get_Is_Strict --
   -------------------

   overriding function Get_Is_Strict
     (Self : not null access constant UML_Profile_Application_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Strict unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Strict";
      return Get_Is_Strict (Self);
   end Get_Is_Strict;

   -------------------
   -- Set_Is_Strict --
   -------------------

   overriding procedure Set_Is_Strict
     (Self : not null access UML_Profile_Application_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Strict unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Strict";
   end Set_Is_Strict;

   ----------------
   -- Get_Source --
   ----------------

   overriding function Get_Source
     (Self : not null access constant UML_Profile_Application_Proxy)
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
     (Self : not null access constant UML_Profile_Application_Proxy)
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
     (Self : not null access constant UML_Profile_Application_Proxy)
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
     (Self : not null access constant UML_Profile_Application_Proxy)
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
     (Self : not null access constant UML_Profile_Application_Proxy)
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
     (Self : not null access constant UML_Profile_Application_Proxy)
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
     (Self : not null access constant UML_Profile_Application_Proxy)
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
     (Self : not null access constant UML_Profile_Application_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Profile_Applications;
