------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with AMF.Internals.Tables.UML_Attributes;

package body AMF.Internals.UML_Properties is

   ---------------------
   -- Get_Aggregation --
   ---------------------

   overriding function Get_Aggregation
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.UML_Aggregation_Kind
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Aggregation unimplemented");
      raise Program_Error with "Unimplemented function Get_Aggregation";
      return Get_Aggregation (Self);
   end Get_Aggregation;

   ---------------------
   -- Set_Aggregation --
   ---------------------

   overriding procedure Set_Aggregation
    (Self : not null access UML_Property_Proxy;
     To   : AMF.UML.UML_Aggregation_Kind) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Aggregation
       (Self.Id, To);
   end Set_Aggregation;

   ---------------------
   -- Get_Association --
   ---------------------

   overriding function Get_Association
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Associations.UML_Association_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Association unimplemented");
      raise Program_Error with "Unimplemented function Get_Association";
      return Get_Association (Self);
   end Get_Association;

   ---------------------
   -- Set_Association --
   ---------------------

   overriding procedure Set_Association
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Associations.UML_Association_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Association unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Association";
   end Set_Association;

   -------------------------
   -- Get_Association_End --
   -------------------------

   overriding function Get_Association_End
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Properties.UML_Property_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Association_End unimplemented");
      raise Program_Error with "Unimplemented function Get_Association_End";
      return Get_Association_End (Self);
   end Get_Association_End;

   -------------------------
   -- Set_Association_End --
   -------------------------

   overriding procedure Set_Association_End
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Properties.UML_Property_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Association_End unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Association_End";
   end Set_Association_End;

   ---------------
   -- Get_Class --
   ---------------

   overriding function Get_Class
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Classes.UML_Class_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Class unimplemented");
      raise Program_Error with "Unimplemented function Get_Class";
      return Get_Class (Self);
   end Get_Class;

   ---------------
   -- Set_Class --
   ---------------

   overriding procedure Set_Class
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Classes.UML_Class_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Class unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Class";
   end Set_Class;

   ------------------
   -- Get_Datatype --
   ------------------

   overriding function Get_Datatype
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Data_Types.UML_Data_Type_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Datatype unimplemented");
      raise Program_Error with "Unimplemented function Get_Datatype";
      return Get_Datatype (Self);
   end Get_Datatype;

   ------------------
   -- Set_Datatype --
   ------------------

   overriding procedure Set_Datatype
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Data_Types.UML_Data_Type_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Datatype unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Datatype";
   end Set_Datatype;

   -----------------
   -- Get_Default --
   -----------------

   overriding function Get_Default
     (Self : not null access constant UML_Property_Proxy)
      return AMF.Optional_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Default unimplemented");
      raise Program_Error with "Unimplemented function Get_Default";
      return Get_Default (Self);
   end Get_Default;

   -----------------
   -- Set_Default --
   -----------------

   overriding procedure Set_Default
     (Self : not null access UML_Property_Proxy;
      To   : AMF.Optional_String)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Default unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Default";
   end Set_Default;

   -----------------------
   -- Get_Default_Value --
   -----------------------

   overriding function Get_Default_Value
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Value_Specifications.UML_Value_Specification_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Default_Value unimplemented");
      raise Program_Error with "Unimplemented function Get_Default_Value";
      return Get_Default_Value (Self);
   end Get_Default_Value;

   -----------------------
   -- Set_Default_Value --
   -----------------------

   overriding procedure Set_Default_Value
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Default_Value unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Default_Value";
   end Set_Default_Value;

   -------------------
   -- Get_Interface --
   -------------------

   overriding function Get_Interface
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Interfaces.UML_Interface_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Interface unimplemented");
      raise Program_Error with "Unimplemented function Get_Interface";
      return Get_Interface (Self);
   end Get_Interface;

   -------------------
   -- Set_Interface --
   -------------------

   overriding procedure Set_Interface
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Interfaces.UML_Interface_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Interface unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Interface";
   end Set_Interface;

   ----------------------
   -- Get_Is_Composite --
   ----------------------

   overriding function Get_Is_Composite
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Composite unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Composite";
      return Get_Is_Composite (Self);
   end Get_Is_Composite;

   ----------------------
   -- Set_Is_Composite --
   ----------------------

   overriding procedure Set_Is_Composite
     (Self : not null access UML_Property_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Composite unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Composite";
   end Set_Is_Composite;

   --------------------
   -- Get_Is_Derived --
   --------------------

   overriding function Get_Is_Derived
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Derived unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Derived";
      return Get_Is_Derived (Self);
   end Get_Is_Derived;

   --------------------
   -- Set_Is_Derived --
   --------------------

   overriding procedure Set_Is_Derived
    (Self : not null access UML_Property_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Derived
       (Self.Id, To);
   end Set_Is_Derived;

   --------------------------
   -- Get_Is_Derived_Union --
   --------------------------

   overriding function Get_Is_Derived_Union
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Derived_Union unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Derived_Union";
      return Get_Is_Derived_Union (Self);
   end Get_Is_Derived_Union;

   --------------------------
   -- Set_Is_Derived_Union --
   --------------------------

   overriding procedure Set_Is_Derived_Union
    (Self : not null access UML_Property_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Derived_Union
       (Self.Id, To);
   end Set_Is_Derived_Union;

   ---------------
   -- Get_Is_ID --
   ---------------

   overriding function Get_Is_ID
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_ID unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_ID";
      return Get_Is_ID (Self);
   end Get_Is_ID;

   ---------------
   -- Set_Is_ID --
   ---------------

   overriding procedure Set_Is_ID
     (Self : not null access UML_Property_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_ID unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_ID";
   end Set_Is_ID;

   ----------------------
   -- Get_Is_Read_Only --
   ----------------------

   overriding function Get_Is_Read_Only
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Read_Only unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Read_Only";
      return Get_Is_Read_Only (Self);
   end Get_Is_Read_Only;

   ----------------------
   -- Set_Is_Read_Only --
   ----------------------

   overriding procedure Set_Is_Read_Only
    (Self : not null access UML_Property_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Read_Only
       (Self.Id, To);
   end Set_Is_Read_Only;

   ------------------
   -- Get_Opposite --
   ------------------

   overriding function Get_Opposite
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Properties.UML_Property_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Opposite unimplemented");
      raise Program_Error with "Unimplemented function Get_Opposite";
      return Get_Opposite (Self);
   end Get_Opposite;

   ------------------
   -- Set_Opposite --
   ------------------

   overriding procedure Set_Opposite
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Properties.UML_Property_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Opposite unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Opposite";
   end Set_Opposite;

   ----------------------------
   -- Get_Owning_Association --
   ----------------------------

   overriding function Get_Owning_Association
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Associations.UML_Association_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owning_Association unimplemented");
      raise Program_Error with "Unimplemented function Get_Owning_Association";
      return Get_Owning_Association (Self);
   end Get_Owning_Association;

   ----------------------------
   -- Set_Owning_Association --
   ----------------------------

   overriding procedure Set_Owning_Association
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Associations.UML_Association_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Owning_Association unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Owning_Association";
   end Set_Owning_Association;

   -------------------
   -- Get_Qualifier --
   -------------------

   overriding function Get_Qualifier
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Properties.Collections.Ordered_Set_Of_UML_Property
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Qualifier unimplemented");
      raise Program_Error with "Unimplemented function Get_Qualifier";
      return Get_Qualifier (Self);
   end Get_Qualifier;

   ----------------------------
   -- Get_Redefined_Property --
   ----------------------------

   overriding function Get_Redefined_Property
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Properties.Collections.Set_Of_UML_Property
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefined_Property unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefined_Property";
      return Get_Redefined_Property (Self);
   end Get_Redefined_Property;

   ----------------------------
   -- Get_Subsetted_Property --
   ----------------------------

   overriding function Get_Subsetted_Property
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Properties.Collections.Set_Of_UML_Property
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Subsetted_Property unimplemented");
      raise Program_Error with "Unimplemented function Get_Subsetted_Property";
      return Get_Subsetted_Property (Self);
   end Get_Subsetted_Property;

   -------------
   -- Get_End --
   -------------

   overriding function Get_End
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Connector_Ends.Collections.Ordered_Set_Of_UML_Connector_End
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_End unimplemented");
      raise Program_Error with "Unimplemented function Get_End";
      return Get_End (Self);
   end Get_End;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Get_Template_Parameter";
      return Get_Template_Parameter (Self);
   end Get_Template_Parameter;

   ----------------------------
   -- Set_Template_Parameter --
   ----------------------------

   overriding procedure Set_Template_Parameter
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Template_Parameter";
   end Set_Template_Parameter;

   --------------
   -- Get_Type --
   --------------

   overriding function Get_Type
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Types.UML_Type_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Type unimplemented");
      raise Program_Error with "Unimplemented function Get_Type";
      return Get_Type (Self);
   end Get_Type;

   --------------
   -- Set_Type --
   --------------

   overriding procedure Set_Type
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Types.UML_Type_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Type unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Type";
   end Set_Type;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access constant UML_Property_Proxy)
      return AMF.Optional_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Name unimplemented");
      raise Program_Error with "Unimplemented function Get_Name";
      return Get_Name (Self);
   end Get_Name;

   -------------------------
   -- Get_Name_Expression --
   -------------------------

   overriding function Get_Name_Expression
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access UML_Property_Proxy;
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
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Optional_UML_Visibility_Kind
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Visibility unimplemented");
      raise Program_Error with "Unimplemented function Get_Visibility";
      return Get_Visibility (Self);
   end Get_Visibility;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Elements.UML_Element_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owner unimplemented");
      raise Program_Error with "Unimplemented function Get_Owner";
      return Get_Owner (Self);
   end Get_Owner;

   -----------------------------------
   -- Get_Owning_Template_Parameter --
   -----------------------------------

   overriding function Get_Owning_Template_Parameter
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Template_Parameters.UML_Template_Parameter_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Owning_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Get_Owning_Template_Parameter";
      return Get_Owning_Template_Parameter (Self);
   end Get_Owning_Template_Parameter;

   -----------------------------------
   -- Set_Owning_Template_Parameter --
   -----------------------------------

   overriding procedure Set_Owning_Template_Parameter
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Owning_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Owning_Template_Parameter";
   end Set_Owning_Template_Parameter;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Template_Parameters.UML_Template_Parameter_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Get_Template_Parameter";
      return Get_Template_Parameter (Self);
   end Get_Template_Parameter;

   ----------------------------
   -- Set_Template_Parameter --
   ----------------------------

   overriding procedure Set_Template_Parameter
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Template_Parameter";
   end Set_Template_Parameter;

   --------------------------
   -- Get_Deployed_Element --
   --------------------------

   overriding function Get_Deployed_Element
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Deployed_Element unimplemented");
      raise Program_Error with "Unimplemented function Get_Deployed_Element";
      return Get_Deployed_Element (Self);
   end Get_Deployed_Element;

   --------------------
   -- Get_Deployment --
   --------------------

   overriding function Get_Deployment
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Deployments.Collections.Set_Of_UML_Deployment
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Deployment unimplemented");
      raise Program_Error with "Unimplemented function Get_Deployment";
      return Get_Deployment (Self);
   end Get_Deployment;

   --------------------
   -- Get_Is_Ordered --
   --------------------

   overriding function Get_Is_Ordered
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Ordered unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Ordered";
      return Get_Is_Ordered (Self);
   end Get_Is_Ordered;

   -------------------
   -- Get_Is_Unique --
   -------------------

   overriding function Get_Is_Unique
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Unique unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Unique";
      return Get_Is_Unique (Self);
   end Get_Is_Unique;

   ---------------
   -- Get_Lower --
   ---------------

   overriding function Get_Lower
     (Self : not null access constant UML_Property_Proxy)
      return AMF.Optional_Integer
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Lower unimplemented");
      raise Program_Error with "Unimplemented function Get_Lower";
      return Get_Lower (Self);
   end Get_Lower;

   ---------------
   -- Set_Lower --
   ---------------

   overriding procedure Set_Lower
     (Self : not null access UML_Property_Proxy;
      To   : AMF.Optional_Integer)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Lower unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Lower";
   end Set_Lower;

   ---------------------
   -- Get_Lower_Value --
   ---------------------

   overriding function Get_Lower_Value
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Value_Specifications.UML_Value_Specification_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Lower_Value unimplemented");
      raise Program_Error with "Unimplemented function Get_Lower_Value";
      return Get_Lower_Value (Self);
   end Get_Lower_Value;

   ---------------------
   -- Set_Lower_Value --
   ---------------------

   overriding procedure Set_Lower_Value
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Lower_Value unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Lower_Value";
   end Set_Lower_Value;

   ---------------
   -- Get_Upper --
   ---------------

   overriding function Get_Upper
     (Self : not null access constant UML_Property_Proxy)
      return AMF.Optional_Unlimited_Natural
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Upper unimplemented");
      raise Program_Error with "Unimplemented function Get_Upper";
      return Get_Upper (Self);
   end Get_Upper;

   ---------------
   -- Set_Upper --
   ---------------

   overriding procedure Set_Upper
     (Self : not null access UML_Property_Proxy;
      To   : AMF.Optional_Unlimited_Natural)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Upper unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Upper";
   end Set_Upper;

   ---------------------
   -- Get_Upper_Value --
   ---------------------

   overriding function Get_Upper_Value
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Value_Specifications.UML_Value_Specification_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Upper_Value unimplemented");
      raise Program_Error with "Unimplemented function Get_Upper_Value";
      return Get_Upper_Value (Self);
   end Get_Upper_Value;

   ---------------------
   -- Set_Upper_Value --
   ---------------------

   overriding procedure Set_Upper_Value
     (Self : not null access UML_Property_Proxy;
      To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Upper_Value unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Upper_Value";
   end Set_Upper_Value;

   ------------------------------
   -- Get_Featuring_Classifier --
   ------------------------------

   overriding function Get_Featuring_Classifier
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Featuring_Classifier unimplemented");
      raise Program_Error with "Unimplemented function Get_Featuring_Classifier";
      return Get_Featuring_Classifier (Self);
   end Get_Featuring_Classifier;

   -------------------
   -- Get_Is_Static --
   -------------------

   overriding function Get_Is_Static
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Static unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Static";
      return Get_Is_Static (Self);
   end Get_Is_Static;

   -------------------
   -- Set_Is_Static --
   -------------------

   overriding procedure Set_Is_Static
     (Self : not null access UML_Property_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Static unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Static";
   end Set_Is_Static;

   -----------------
   -- Get_Is_Leaf --
   -----------------

   overriding function Get_Is_Leaf
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Is_Leaf unimplemented");
      raise Program_Error with "Unimplemented function Get_Is_Leaf";
      return Get_Is_Leaf (Self);
   end Get_Is_Leaf;

   -----------------
   -- Set_Is_Leaf --
   -----------------

   overriding procedure Set_Is_Leaf
     (Self : not null access UML_Property_Proxy;
      To   : Boolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Is_Leaf unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Is_Leaf";
   end Set_Is_Leaf;

   ---------------------------
   -- Get_Redefined_Element --
   ---------------------------

   overriding function Get_Redefined_Element
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefined_Element unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefined_Element";
      return Get_Redefined_Element (Self);
   end Get_Redefined_Element;

   ------------------------------
   -- Get_Redefinition_Context --
   ------------------------------

   overriding function Get_Redefinition_Context
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Redefinition_Context unimplemented");
      raise Program_Error with "Unimplemented function Get_Redefinition_Context";
      return Get_Redefinition_Context (Self);
   end Get_Redefinition_Context;

   -------------
   -- Default --
   -------------

   overriding function Default
     (Self : not null access constant UML_Property_Proxy)
      return AMF.Optional_String
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Default unimplemented");
      raise Program_Error with "Unimplemented function Default";
      return Default (Self);
   end Default;

   ------------------
   -- Is_Attribute --
   ------------------

   overriding function Is_Attribute
     (Self : not null access constant UML_Property_Proxy;
      P : AMF.UML.Properties.UML_Property_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Attribute unimplemented");
      raise Program_Error with "Unimplemented function Is_Attribute";
      return Is_Attribute (Self, P);
   end Is_Attribute;

   ------------------------
   -- Is_Compatible_With --
   ------------------------

   overriding function Is_Compatible_With
     (Self : not null access constant UML_Property_Proxy;
      P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Compatible_With unimplemented");
      raise Program_Error with "Unimplemented function Is_Compatible_With";
      return Is_Compatible_With (Self, P);
   end Is_Compatible_With;

   ------------------
   -- Is_Composite --
   ------------------

   overriding function Is_Composite
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Composite unimplemented");
      raise Program_Error with "Unimplemented function Is_Composite";
      return Is_Composite (Self);
   end Is_Composite;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
     (Self : not null access constant UML_Property_Proxy;
      Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Consistent_With unimplemented");
      raise Program_Error with "Unimplemented function Is_Consistent_With";
      return Is_Consistent_With (Self, Redefinee);
   end Is_Consistent_With;

   ------------------
   -- Is_Navigable --
   ------------------

   overriding function Is_Navigable
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Navigable unimplemented");
      raise Program_Error with "Unimplemented function Is_Navigable";
      return Is_Navigable (Self);
   end Is_Navigable;

   --------------
   -- Opposite --
   --------------

   overriding function Opposite
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Properties.UML_Property_Access
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Opposite unimplemented");
      raise Program_Error with "Unimplemented function Opposite";
      return Opposite (Self);
   end Opposite;

   ------------------------
   -- Subsetting_Context --
   ------------------------

   overriding function Subsetting_Context
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Types.Collections.Set_Of_UML_Type
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Subsetting_Context unimplemented");
      raise Program_Error with "Unimplemented function Subsetting_Context";
      return Subsetting_Context (Self);
   end Subsetting_Context;

   ----------
   -- Ends --
   ----------

   overriding function Ends
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Connector_Ends.Collections.Set_Of_UML_Connector_End
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Ends unimplemented");
      raise Program_Error with "Unimplemented function Ends";
      return Ends (Self);
   end Ends;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access constant UML_Property_Proxy;
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
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access constant UML_Property_Proxy)
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
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented function Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

   ---------------------------
   -- Is_Template_Parameter --
   ---------------------------

   overriding function Is_Template_Parameter
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented function Is_Template_Parameter";
      return Is_Template_Parameter (Self);
   end Is_Template_Parameter;

   ----------------------
   -- Deployed_Element --
   ----------------------

   overriding function Deployed_Element
     (Self : not null access constant UML_Property_Proxy)
      return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Deployed_Element unimplemented");
      raise Program_Error with "Unimplemented function Deployed_Element";
      return Deployed_Element (Self);
   end Deployed_Element;

   ---------------------
   -- Compatible_With --
   ---------------------

   overriding function Compatible_With
     (Self : not null access constant UML_Property_Proxy;
      Other : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Compatible_With unimplemented");
      raise Program_Error with "Unimplemented function Compatible_With";
      return Compatible_With (Self, Other);
   end Compatible_With;

   --------------------------
   -- Includes_Cardinality --
   --------------------------

   overriding function Includes_Cardinality
     (Self : not null access constant UML_Property_Proxy;
      C : Integer)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Cardinality unimplemented");
      raise Program_Error with "Unimplemented function Includes_Cardinality";
      return Includes_Cardinality (Self, C);
   end Includes_Cardinality;

   ---------------------------
   -- Includes_Multiplicity --
   ---------------------------

   overriding function Includes_Multiplicity
     (Self : not null access constant UML_Property_Proxy;
      M : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Multiplicity unimplemented");
      raise Program_Error with "Unimplemented function Includes_Multiplicity";
      return Includes_Multiplicity (Self, M);
   end Includes_Multiplicity;

   ---------
   -- Iss --
   ---------

   overriding function Iss
     (Self : not null access constant UML_Property_Proxy;
      Lowerbound : Integer;
      Upperbound : Integer)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Iss unimplemented");
      raise Program_Error with "Unimplemented function Iss";
      return Iss (Self, Lowerbound, Upperbound);
   end Iss;

   --------------------
   -- Is_Multivalued --
   --------------------

   overriding function Is_Multivalued
     (Self : not null access constant UML_Property_Proxy)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Multivalued unimplemented");
      raise Program_Error with "Unimplemented function Is_Multivalued";
      return Is_Multivalued (Self);
   end Is_Multivalued;

   -----------
   -- Lower --
   -----------

   overriding function Lower
     (Self : not null access constant UML_Property_Proxy)
      return AMF.Optional_Integer
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Lower unimplemented");
      raise Program_Error with "Unimplemented function Lower";
      return Lower (Self);
   end Lower;

   -----------------
   -- Lower_Bound --
   -----------------

   overriding function Lower_Bound
     (Self : not null access constant UML_Property_Proxy)
      return AMF.Optional_Integer
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Lower_Bound unimplemented");
      raise Program_Error with "Unimplemented function Lower_Bound";
      return Lower_Bound (Self);
   end Lower_Bound;

   -----------
   -- Upper --
   -----------

   overriding function Upper
     (Self : not null access constant UML_Property_Proxy)
      return AMF.Optional_Unlimited_Natural
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Upper unimplemented");
      raise Program_Error with "Unimplemented function Upper";
      return Upper (Self);
   end Upper;

   -----------------
   -- Upper_Bound --
   -----------------

   overriding function Upper_Bound
     (Self : not null access constant UML_Property_Proxy)
      return AMF.Optional_Unlimited_Natural
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Upper_Bound unimplemented");
      raise Program_Error with "Unimplemented function Upper_Bound";
      return Upper_Bound (Self);
   end Upper_Bound;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
     (Self : not null access constant UML_Property_Proxy;
      Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented function Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

end AMF.Internals.UML_Properties;
