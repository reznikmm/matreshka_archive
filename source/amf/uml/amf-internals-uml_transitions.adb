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

package body AMF.Internals.UML_Transitions is

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Transition_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Enter_Transition
            (AMF.UML.Transitions.UML_Transition_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Transition_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Leave_Transition
            (AMF.UML.Transitions.UML_Transition_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Transition_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.UML_Iterators.UML_Iterator'Class then
         AMF.Visitors.UML_Iterators.UML_Iterator'Class
          (Iterator).Visit_Transition
            (Visitor,
             AMF.UML.Transitions.UML_Transition_Access (Self),
             Control);
      end if;
   end Visit_Element;

   -------------------
   -- Get_Container --
   -------------------

   overriding function Get_Container
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Regions.UML_Region_Access is
   begin
      return
        AMF.UML.Regions.UML_Region_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Container
             (Self.Element)));
   end Get_Container;

   -------------------
   -- Set_Container --
   -------------------

   overriding procedure Set_Container
    (Self : not null access UML_Transition_Proxy;
     To   : AMF.UML.Regions.UML_Region_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Container
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Container;

   ----------------
   -- Get_Effect --
   ----------------

   overriding function Get_Effect
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access is
   begin
      return
        AMF.UML.Behaviors.UML_Behavior_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Effect
             (Self.Element)));
   end Get_Effect;

   ----------------
   -- Set_Effect --
   ----------------

   overriding procedure Set_Effect
    (Self : not null access UML_Transition_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Effect
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Effect;

   ---------------
   -- Get_Guard --
   ---------------

   overriding function Get_Guard
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Constraints.UML_Constraint_Access is
   begin
      return
        AMF.UML.Constraints.UML_Constraint_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Guard
             (Self.Element)));
   end Get_Guard;

   ---------------
   -- Set_Guard --
   ---------------

   overriding procedure Set_Guard
    (Self : not null access UML_Transition_Proxy;
     To   : AMF.UML.Constraints.UML_Constraint_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Guard
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Guard;

   --------------
   -- Get_Kind --
   --------------

   overriding function Get_Kind
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.UML_Transition_Kind is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Kind
         (Self.Element);
   end Get_Kind;

   --------------
   -- Set_Kind --
   --------------

   overriding procedure Set_Kind
    (Self : not null access UML_Transition_Proxy;
     To   : AMF.UML.UML_Transition_Kind) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Kind
       (Self.Element, To);
   end Set_Kind;

   ------------------------------
   -- Get_Redefined_Transition --
   ------------------------------

   overriding function Get_Redefined_Transition
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Transitions.UML_Transition_Access is
   begin
      return
        AMF.UML.Transitions.UML_Transition_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefined_Transition
             (Self.Element)));
   end Get_Redefined_Transition;

   ------------------------------
   -- Set_Redefined_Transition --
   ------------------------------

   overriding procedure Set_Redefined_Transition
    (Self : not null access UML_Transition_Proxy;
     To   : AMF.UML.Transitions.UML_Transition_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Redefined_Transition
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Redefined_Transition;

   ------------------------------
   -- Get_Redefinition_Context --
   ------------------------------

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access is
   begin
      raise Program_Error;
      return Get_Redefinition_Context (Self);
   end Get_Redefinition_Context;

   ----------------
   -- Get_Source --
   ----------------

   overriding function Get_Source
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Vertexs.UML_Vertex_Access is
   begin
      return
        AMF.UML.Vertexs.UML_Vertex_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Source
             (Self.Element)));
   end Get_Source;

   ----------------
   -- Set_Source --
   ----------------

   overriding procedure Set_Source
    (Self : not null access UML_Transition_Proxy;
     To   : AMF.UML.Vertexs.UML_Vertex_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Source
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Source;

   ----------------
   -- Get_Target --
   ----------------

   overriding function Get_Target
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Vertexs.UML_Vertex_Access is
   begin
      return
        AMF.UML.Vertexs.UML_Vertex_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Target
             (Self.Element)));
   end Get_Target;

   ----------------
   -- Set_Target --
   ----------------

   overriding procedure Set_Target
    (Self : not null access UML_Transition_Proxy;
     To   : AMF.UML.Vertexs.UML_Vertex_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Target
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Target;

   -----------------
   -- Get_Trigger --
   -----------------

   overriding function Get_Trigger
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Triggers.Collections.Set_Of_UML_Trigger is
   begin
      return
        AMF.UML.Triggers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Trigger
             (Self.Element)));
   end Get_Trigger;

   ------------------------
   -- Get_Element_Import --
   ------------------------

   overriding function Get_Element_Import
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import is
   begin
      return
        AMF.UML.Element_Imports.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Element_Import
             (Self.Element)));
   end Get_Element_Import;

   -------------------------
   -- Get_Imported_Member --
   -------------------------

   overriding function Get_Imported_Member
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      return
        AMF.UML.Packageable_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Imported_Member
             (Self.Element)));
   end Get_Imported_Member;

   ----------------
   -- Get_Member --
   ----------------

   overriding function Get_Member
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      return
        AMF.UML.Named_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Member
             (Self.Element)));
   end Get_Member;

   ----------------------
   -- Get_Owned_Member --
   ----------------------

   overriding function Get_Owned_Member
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      return
        AMF.UML.Named_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Member
             (Self.Element)));
   end Get_Owned_Member;

   --------------------
   -- Get_Owned_Rule --
   --------------------

   overriding function Get_Owned_Rule
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is
   begin
      return
        AMF.UML.Constraints.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Rule
             (Self.Element)));
   end Get_Owned_Rule;

   ------------------------
   -- Get_Package_Import --
   ------------------------

   overriding function Get_Package_Import
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import is
   begin
      return
        AMF.UML.Package_Imports.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Package_Import
             (Self.Element)));
   end Get_Package_Import;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Transition_Proxy)
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
    (Self : not null access constant UML_Transition_Proxy)
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
    (Self : not null access UML_Transition_Proxy;
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
    (Self : not null access constant UML_Transition_Proxy)
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
    (Self : not null access UML_Transition_Proxy;
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
    (Self : not null access constant UML_Transition_Proxy)
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
    (Self : not null access constant UML_Transition_Proxy)
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

   -----------------
   -- Get_Is_Leaf --
   -----------------

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Transition_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Leaf
         (Self.Element);
   end Get_Is_Leaf;

   -----------------
   -- Set_Is_Leaf --
   -----------------

   overriding procedure Set_Is_Leaf
    (Self : not null access UML_Transition_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Leaf
       (Self.Element, To);
   end Set_Is_Leaf;

   ---------------------------
   -- Get_Redefined_Element --
   ---------------------------

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element is
   begin
      return
        AMF.UML.Redefinable_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefined_Element
             (Self.Element)));
   end Get_Redefined_Element;

   ------------------------------
   -- Get_Redefinition_Context --
   ------------------------------

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is
   begin
      return
        AMF.UML.Classifiers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefinition_Context
             (Self.Element)));
   end Get_Redefinition_Context;

   ------------------------------
   -- Containing_State_Machine --
   ------------------------------

   overriding function Containing_State_Machine
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.State_Machines.UML_State_Machine_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Containing_State_Machine unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Containing_State_Machine";
      return Containing_State_Machine (Self);
   end Containing_State_Machine;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Transition_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Consistent_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Is_Consistent_With";
      return Is_Consistent_With (Self, Redefinee);
   end Is_Consistent_With;

   --------------------------
   -- Redefinition_Context --
   --------------------------

   overriding function Redefinition_Context
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Redefinition_Context unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Redefinition_Context";
      return Redefinition_Context (Self);
   end Redefinition_Context;

   ------------------------
   -- Exclude_Collisions --
   ------------------------

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Transition_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Exclude_Collisions unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Exclude_Collisions";
      return Exclude_Collisions (Self, Imps);
   end Exclude_Collisions;

   -------------------------
   -- Get_Names_Of_Member --
   -------------------------

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Transition_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Names_Of_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Get_Names_Of_Member";
      return Get_Names_Of_Member (Self, Element);
   end Get_Names_Of_Member;

   --------------------
   -- Import_Members --
   --------------------

   overriding function Import_Members
    (Self : not null access constant UML_Transition_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Import_Members unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Import_Members";
      return Import_Members (Self, Imps);
   end Import_Members;

   ---------------------
   -- Imported_Member --
   ---------------------

   overriding function Imported_Member
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Imported_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Imported_Member";
      return Imported_Member (Self);
   end Imported_Member;

   ---------------------------------
   -- Members_Are_Distinguishable --
   ---------------------------------

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Transition_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Members_Are_Distinguishable unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Members_Are_Distinguishable";
      return Members_Are_Distinguishable (Self);
   end Members_Are_Distinguishable;

   ------------------
   -- Owned_Member --
   ------------------

   overriding function Owned_Member
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Owned_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Owned_Member";
      return Owned_Member (Self);
   end Owned_Member;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Transition_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UML_Transition_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant UML_Transition_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Transition_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Transition_Proxy.Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

end AMF.Internals.UML_Transitions;
