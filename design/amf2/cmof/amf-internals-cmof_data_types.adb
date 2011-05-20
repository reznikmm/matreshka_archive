package body AMF.Internals.CMOF_Data_Types is

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
     (Self : not null access constant CMOF_Data_Type_Proxy)
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
     (Self : not null access constant CMOF_Data_Type_Proxy)
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
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Comments.Collections.Set_Of_CMOF_Comment
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Comment unimplemented");
      raise Program_Error;
      return Get_Owned_Comment (Self);
   end Get_Owned_Comment;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return Optional_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Name unimplemented");
      raise Program_Error;
      return Get_Name (Self);
   end Get_Name;

   --------------
   -- Set_Name --
   --------------

   overriding procedure Set_Name
     (Self : not null access CMOF_Data_Type_Proxy;
      To   : Optional_String)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Name unimplemented");
      raise Program_Error;
   end Set_Name;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return CMOF.Optional_CMOF_Visibility_Kind
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
     (Self : not null access CMOF_Data_Type_Proxy;
      To   : CMOF.Optional_CMOF_Visibility_Kind)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Visibility unimplemented");
      raise Program_Error;
   end Set_Visibility;

   -------------------
   -- Get_Namespace --
   -------------------

   overriding function Get_Namespace
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Namespaces.CMOF_Namespace
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Namespace unimplemented");
      raise Program_Error;
      return Get_Namespace (Self);
   end Get_Namespace;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return Optional_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Qualified_Name unimplemented");
      raise Program_Error;
      return Get_Qualified_Name (Self);
   end Get_Qualified_Name;

   -----------------
   -- Get_Package --
   -----------------

   overriding function Get_Package
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Packages.CMOF_Package
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Package unimplemented");
      raise Program_Error;
      return Get_Package (Self);
   end Get_Package;

   -----------------
   -- Set_Package --
   -----------------

   overriding procedure Set_Package
     (Self : not null access CMOF_Data_Type_Proxy;
      To   : AMF.CMOF.Packages.CMOF_Package)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Package unimplemented");
      raise Program_Error;
   end Set_Package;

   -------------------------
   -- Get_Imported_Member --
   -------------------------

   overriding function Get_Imported_Member
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Packageable_Elements.Collections.Set_Of_CMOF_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Imported_Member unimplemented");
      raise Program_Error;
      return Get_Imported_Member (Self);
   end Get_Imported_Member;

   ------------------------
   -- Get_Element_Import --
   ------------------------

   overriding function Get_Element_Import
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Element_Imports.Collections.Set_Of_CMOF_Element_Import
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Element_Import unimplemented");
      raise Program_Error;
      return Get_Element_Import (Self);
   end Get_Element_Import;

   ------------------------
   -- Get_Package_Import --
   ------------------------

   overriding function Get_Package_Import
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Package_Imports.Collections.Set_Of_CMOF_Package_Import
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Package_Import unimplemented");
      raise Program_Error;
      return Get_Package_Import (Self);
   end Get_Package_Import;

   ----------------------
   -- Get_Owned_Member --
   ----------------------

   overriding function Get_Owned_Member
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Member unimplemented");
      raise Program_Error;
      return Get_Owned_Member (Self);
   end Get_Owned_Member;

   ----------------
   -- Get_Member --
   ----------------

   overriding function Get_Member
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Member unimplemented");
      raise Program_Error;
      return Get_Member (Self);
   end Get_Member;

   --------------------
   -- Get_Owned_Rule --
   --------------------

   overriding function Get_Owned_Rule
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Constraints.Collections.Set_Of_CMOF_Constraint
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Rule unimplemented");
      raise Program_Error;
      return Get_Owned_Rule (Self);
   end Get_Owned_Rule;

   -------------------
   -- Get_Attribute --
   -------------------

   overriding function Get_Attribute
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Properties.Collections.Set_Of_CMOF_Property
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Attribute unimplemented");
      raise Program_Error;
      return Get_Attribute (Self);
   end Get_Attribute;

   -----------------
   -- Get_Feature --
   -----------------

   overriding function Get_Feature
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Features.Collections.Set_Of_CMOF_Feature
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Feature unimplemented");
      raise Program_Error;
      return Get_Feature (Self);
   end Get_Feature;

   -----------------
   -- Get_General --
   -----------------

   overriding function Get_General
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Classifiers.Collections.Set_Of_CMOF_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_General unimplemented");
      raise Program_Error;
      return Get_General (Self);
   end Get_General;

   --------------------------
   -- Get_Inherited_Member --
   --------------------------

   overriding function Get_Inherited_Member
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Named_Elements.Collections.Set_Of_CMOF_Named_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Inherited_Member unimplemented");
      raise Program_Error;
      return Get_Inherited_Member (Self);
   end Get_Inherited_Member;

   ---------------------------------
   -- Get_Is_Final_Specialization --
   ---------------------------------

   overriding function Get_Is_Final_Specialization
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Final_Specialization unimplemented");
      raise Program_Error;
      return Get_Is_Final_Specialization (Self);
   end Get_Is_Final_Specialization;

   ---------------------------------
   -- Set_Is_Final_Specialization --
   ---------------------------------

   overriding procedure Set_Is_Final_Specialization
     (Self : not null access CMOF_Data_Type_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Final_Specialization unimplemented");
      raise Program_Error;
   end Set_Is_Final_Specialization;

   -------------------------
   -- Get_Owned_Attribute --
   -------------------------

   overriding function Get_Owned_Attribute
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Properties.Collections.Ordered_Set_Of_CMOF_Property
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Attribute unimplemented");
      raise Program_Error;
      return Get_Owned_Attribute (Self);
   end Get_Owned_Attribute;

   -------------------------
   -- Get_Owned_Operation --
   -------------------------

   overriding function Get_Owned_Operation
     (Self : not null access constant CMOF_Data_Type_Proxy)
      return AMF.CMOF.Operations.Collections.Ordered_Set_Of_CMOF_Operation
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owned_Operation unimplemented");
      raise Program_Error;
      return Get_Owned_Operation (Self);
   end Get_Owned_Operation;

end AMF.Internals.CMOF_Data_Types;
