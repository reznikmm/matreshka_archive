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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;
with AMF.Visitors.UML_Iterators;
with AMF.Visitors.UML_Visitors;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.UML_Variables is

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Variable_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Enter_Variable
            (AMF.UML.Variables.UML_Variable_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Variable_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Leave_Variable
            (AMF.UML.Variables.UML_Variable_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Variable_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.UML_Iterators.UML_Iterator'Class then
         AMF.Visitors.UML_Iterators.UML_Iterator'Class
          (Iterator).Visit_Variable
            (Visitor,
             AMF.UML.Variables.UML_Variable_Access (Self),
             Control);
      end if;
   end Visit_Element;

   ------------------------
   -- Get_Activity_Scope --
   ------------------------

   overriding function Get_Activity_Scope
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Activities.UML_Activity_Access is
   begin
      return
        AMF.UML.Activities.UML_Activity_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Activity_Scope
             (Self.Element)));
   end Get_Activity_Scope;

   ------------------------
   -- Set_Activity_Scope --
   ------------------------

   overriding procedure Set_Activity_Scope
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.UML.Activities.UML_Activity_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Activity_Scope
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Activity_Scope;

   ---------------
   -- Get_Scope --
   ---------------

   overriding function Get_Scope
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access is
   begin
      return
        AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Scope
             (Self.Element)));
   end Get_Scope;

   ---------------
   -- Set_Scope --
   ---------------

   overriding procedure Set_Scope
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Scope
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Scope;

   -------------
   -- Get_End --
   -------------

   overriding function Get_End
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Connector_Ends.Collections.Ordered_Set_Of_UML_Connector_End is
   begin
      return
        AMF.UML.Connector_Ends.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_End
             (Self.Element)));
   end Get_End;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access is
   begin
      return
        AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Template_Parameter
             (Self.Element)));
   end Get_Template_Parameter;

   ----------------------------
   -- Set_Template_Parameter --
   ----------------------------

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Template_Parameter
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Template_Parameter;

   --------------
   -- Get_Type --
   --------------

   overriding function Get_Type
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Types.UML_Type_Access is
   begin
      return
        AMF.UML.Types.UML_Type_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Type
             (Self.Element)));
   end Get_Type;

   --------------
   -- Set_Type --
   --------------

   overriding procedure Set_Type
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.UML.Types.UML_Type_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Type
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Type;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency is
   begin
      return
        AMF.UML.Dependencies.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Client_Dependency
             (Self.Element)));
   end Get_Client_Dependency;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.UML_Attributes.Internal_Get_Name (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Name;

   --------------
   -- Set_Name --
   --------------

   overriding procedure Set_Name
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.UML_Attributes.Internal_Set_Name
          (Self.Element, null);

      else
         AMF.Internals.Tables.UML_Attributes.Internal_Set_Name
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Name;

   -------------------------
   -- Get_Name_Expression --
   -------------------------

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access is
   begin
      return
        AMF.UML.String_Expressions.UML_String_Expression_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Name_Expression
             (Self.Element)));
   end Get_Name_Expression;

   -------------------------
   -- Set_Name_Expression --
   -------------------------

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Name_Expression
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Name_Expression;

   -------------------
   -- Get_Namespace --
   -------------------

   overriding function Get_Namespace
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      return
        AMF.UML.Namespaces.UML_Namespace_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Namespace
             (Self.Element)));
   end Get_Namespace;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.UML_Attributes.Internal_Get_Qualified_Name (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Qualified_Name;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Visibility
         (Self.Element);
   end Get_Visibility;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Visibility
       (Self.Element, To);
   end Set_Visibility;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Element
             (Self.Element)));
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owner
             (Self.Element)));
   end Get_Owner;

   -----------------------------------
   -- Get_Owning_Template_Parameter --
   -----------------------------------

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is
   begin
      return
        AMF.UML.Template_Parameters.UML_Template_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owning_Template_Parameter
             (Self.Element)));
   end Get_Owning_Template_Parameter;

   -----------------------------------
   -- Set_Owning_Template_Parameter --
   -----------------------------------

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Owning_Template_Parameter
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Owning_Template_Parameter;

   ----------------------------
   -- Get_Template_Parameter --
   ----------------------------

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is
   begin
      return
        AMF.UML.Template_Parameters.UML_Template_Parameter_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Template_Parameter
             (Self.Element)));
   end Get_Template_Parameter;

   ----------------------------
   -- Set_Template_Parameter --
   ----------------------------

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Template_Parameter
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Template_Parameter;

   -------------------
   -- Get_Is_Unique --
   -------------------

   overriding function Get_Is_Unique
    (Self : not null access constant UML_Variable_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Unique
         (Self.Element);
   end Get_Is_Unique;

   -------------------
   -- Set_Is_Unique --
   -------------------

   overriding procedure Set_Is_Unique
    (Self : not null access UML_Variable_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Unique
       (Self.Element, To);
   end Set_Is_Unique;

   ---------------
   -- Get_Lower --
   ---------------

   overriding function Get_Lower
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.Optional_Integer is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Lower
         (Self.Element);
   end Get_Lower;

   ---------------
   -- Set_Lower --
   ---------------

   overriding procedure Set_Lower
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.Optional_Integer) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Lower
       (Self.Element, To);
   end Set_Lower;

   ---------------------
   -- Get_Lower_Value --
   ---------------------

   overriding function Get_Lower_Value
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is
   begin
      return
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Lower_Value
             (Self.Element)));
   end Get_Lower_Value;

   ---------------------
   -- Set_Lower_Value --
   ---------------------

   overriding procedure Set_Lower_Value
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Lower_Value
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Lower_Value;

   ---------------
   -- Get_Upper --
   ---------------

   overriding function Get_Upper
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.Optional_Unlimited_Natural is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Upper
         (Self.Element);
   end Get_Upper;

   ---------------
   -- Set_Upper --
   ---------------

   overriding procedure Set_Upper
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.Optional_Unlimited_Natural) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Upper
       (Self.Element, To);
   end Set_Upper;

   ---------------------
   -- Get_Upper_Value --
   ---------------------

   overriding function Get_Upper_Value
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is
   begin
      return
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Upper_Value
             (Self.Element)));
   end Get_Upper_Value;

   ---------------------
   -- Set_Upper_Value --
   ---------------------

   overriding procedure Set_Upper_Value
    (Self : not null access UML_Variable_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Upper_Value
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Upper_Value;

   ----------------------
   -- Is_Accessible_By --
   ----------------------

   overriding function Is_Accessible_By
    (Self : not null access constant UML_Variable_Proxy;
     A : AMF.UML.Actions.UML_Action_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Accessible_By unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Is_Accessible_By";
      return Is_Accessible_By (Self, A);
   end Is_Accessible_By;

   ----------
   -- Ends --
   ----------

   overriding function Ends
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Connector_Ends.Collections.Set_Of_UML_Connector_End is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Ends unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Ends";
      return Ends (Self);
   end Ends;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Variable_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant UML_Variable_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   ------------------------
   -- Is_Compatible_With --
   ------------------------

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Variable_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Compatible_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Is_Compatible_With";
      return Is_Compatible_With (Self, P);
   end Is_Compatible_With;

   ---------------------------
   -- Is_Template_Parameter --
   ---------------------------

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Variable_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Template_Parameter unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Is_Template_Parameter";
      return Is_Template_Parameter (Self);
   end Is_Template_Parameter;

   ---------------------
   -- Compatible_With --
   ---------------------

   overriding function Compatible_With
    (Self : not null access constant UML_Variable_Proxy;
     Other : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Compatible_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Compatible_With";
      return Compatible_With (Self, Other);
   end Compatible_With;

   --------------------------
   -- Includes_Cardinality --
   --------------------------

   overriding function Includes_Cardinality
    (Self : not null access constant UML_Variable_Proxy;
     C : Integer)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Cardinality unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Includes_Cardinality";
      return Includes_Cardinality (Self, C);
   end Includes_Cardinality;

   ---------------------------
   -- Includes_Multiplicity --
   ---------------------------

   overriding function Includes_Multiplicity
    (Self : not null access constant UML_Variable_Proxy;
     M : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Multiplicity unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Includes_Multiplicity";
      return Includes_Multiplicity (Self, M);
   end Includes_Multiplicity;

   ---------
   -- Iss --
   ---------

   overriding function Iss
    (Self : not null access constant UML_Variable_Proxy;
     Lowerbound : Integer;
     Upperbound : Integer)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Iss unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Iss";
      return Iss (Self, Lowerbound, Upperbound);
   end Iss;

   -----------
   -- Lower --
   -----------

   overriding function Lower
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.Optional_Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Lower unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Lower";
      return Lower (Self);
   end Lower;

   -----------
   -- Upper --
   -----------

   overriding function Upper
    (Self : not null access constant UML_Variable_Proxy)
       return AMF.Optional_Unlimited_Natural is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Upper unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Variable_Proxy.Upper";
      return Upper (Self);
   end Upper;

end AMF.Internals.UML_Variables;
