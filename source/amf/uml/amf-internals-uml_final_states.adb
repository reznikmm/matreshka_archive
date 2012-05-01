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

package body AMF.Internals.UML_Final_States is

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Final_State_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Enter_Final_State
            (AMF.UML.Final_States.UML_Final_State_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Final_State_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Leave_Final_State
            (AMF.UML.Final_States.UML_Final_State_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Final_State_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.UML_Iterators.UML_Iterator'Class then
         AMF.Visitors.UML_Iterators.UML_Iterator'Class
          (Iterator).Visit_Final_State
            (Visitor,
             AMF.UML.Final_States.UML_Final_State_Access (Self),
             Control);
      end if;
   end Visit_Element;

   --------------------
   -- Get_Connection --
   --------------------

   overriding function Get_Connection
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Connection_Point_References.Collections.Set_Of_UML_Connection_Point_Reference is
   begin
      return
        AMF.UML.Connection_Point_References.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Connection
             (Self.Element)));
   end Get_Connection;

   --------------------------
   -- Get_Connection_Point --
   --------------------------

   overriding function Get_Connection_Point
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate is
   begin
      return
        AMF.UML.Pseudostates.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Connection_Point
             (Self.Element)));
   end Get_Connection_Point;

   ----------------------------
   -- Get_Deferrable_Trigger --
   ----------------------------

   overriding function Get_Deferrable_Trigger
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Triggers.Collections.Set_Of_UML_Trigger is
   begin
      return
        AMF.UML.Triggers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Deferrable_Trigger
             (Self.Element)));
   end Get_Deferrable_Trigger;

   ---------------------
   -- Get_Do_Activity --
   ---------------------

   overriding function Get_Do_Activity
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access is
   begin
      return
        AMF.UML.Behaviors.UML_Behavior_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Do_Activity
             (Self.Element)));
   end Get_Do_Activity;

   ---------------------
   -- Set_Do_Activity --
   ---------------------

   overriding procedure Set_Do_Activity
    (Self : not null access UML_Final_State_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Do_Activity
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Do_Activity;

   ---------------
   -- Get_Entry --
   ---------------

   overriding function Get_Entry
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access is
   begin
      return
        AMF.UML.Behaviors.UML_Behavior_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Entry
             (Self.Element)));
   end Get_Entry;

   ---------------
   -- Set_Entry --
   ---------------

   overriding procedure Set_Entry
    (Self : not null access UML_Final_State_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Entry
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Entry;

   --------------
   -- Get_Exit --
   --------------

   overriding function Get_Exit
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access is
   begin
      return
        AMF.UML.Behaviors.UML_Behavior_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Exit
             (Self.Element)));
   end Get_Exit;

   --------------
   -- Set_Exit --
   --------------

   overriding procedure Set_Exit
    (Self : not null access UML_Final_State_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Exit
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Exit;

   ----------------------
   -- Get_Is_Composite --
   ----------------------

   overriding function Get_Is_Composite
    (Self : not null access constant UML_Final_State_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Composite
         (Self.Element);
   end Get_Is_Composite;

   -----------------------
   -- Get_Is_Orthogonal --
   -----------------------

   overriding function Get_Is_Orthogonal
    (Self : not null access constant UML_Final_State_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Orthogonal
         (Self.Element);
   end Get_Is_Orthogonal;

   -------------------
   -- Get_Is_Simple --
   -------------------

   overriding function Get_Is_Simple
    (Self : not null access constant UML_Final_State_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Simple
         (Self.Element);
   end Get_Is_Simple;

   -----------------------------
   -- Get_Is_Submachine_State --
   -----------------------------

   overriding function Get_Is_Submachine_State
    (Self : not null access constant UML_Final_State_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Submachine_State
         (Self.Element);
   end Get_Is_Submachine_State;

   -------------------------
   -- Get_Redefined_State --
   -------------------------

   overriding function Get_Redefined_State
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.States.UML_State_Access is
   begin
      return
        AMF.UML.States.UML_State_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefined_State
             (Self.Element)));
   end Get_Redefined_State;

   -------------------------
   -- Set_Redefined_State --
   -------------------------

   overriding procedure Set_Redefined_State
    (Self : not null access UML_Final_State_Proxy;
     To   : AMF.UML.States.UML_State_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Redefined_State
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Redefined_State;

   ------------------------------
   -- Get_Redefinition_Context --
   ------------------------------

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access is
   begin
      raise Program_Error;
      return Get_Redefinition_Context (Self);
   end Get_Redefinition_Context;

   ----------------
   -- Get_Region --
   ----------------

   overriding function Get_Region
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Regions.Collections.Set_Of_UML_Region is
   begin
      return
        AMF.UML.Regions.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Region
             (Self.Element)));
   end Get_Region;

   -------------------------
   -- Get_State_Invariant --
   -------------------------

   overriding function Get_State_Invariant
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Constraints.UML_Constraint_Access is
   begin
      return
        AMF.UML.Constraints.UML_Constraint_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_State_Invariant
             (Self.Element)));
   end Get_State_Invariant;

   -------------------------
   -- Set_State_Invariant --
   -------------------------

   overriding procedure Set_State_Invariant
    (Self : not null access UML_Final_State_Proxy;
     To   : AMF.UML.Constraints.UML_Constraint_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_State_Invariant
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_State_Invariant;

   --------------------
   -- Get_Submachine --
   --------------------

   overriding function Get_Submachine
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.State_Machines.UML_State_Machine_Access is
   begin
      return
        AMF.UML.State_Machines.UML_State_Machine_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Submachine
             (Self.Element)));
   end Get_Submachine;

   --------------------
   -- Set_Submachine --
   --------------------

   overriding procedure Set_Submachine
    (Self : not null access UML_Final_State_Proxy;
     To   : AMF.UML.State_Machines.UML_State_Machine_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Submachine
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Submachine;

   -----------------
   -- Get_Is_Leaf --
   -----------------

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Final_State_Proxy)
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
    (Self : not null access UML_Final_State_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Leaf
       (Self.Element, To);
   end Set_Is_Leaf;

   ---------------------------
   -- Get_Redefined_Element --
   ---------------------------

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_Final_State_Proxy)
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
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is
   begin
      return
        AMF.UML.Classifiers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefinition_Context
             (Self.Element)));
   end Get_Redefinition_Context;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency is
   begin
      return
        AMF.UML.Dependencies.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Client_Dependency
             (Self.Element)));
   end Get_Client_Dependency;

   -------------------------
   -- Get_Name_Expression --
   -------------------------

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Final_State_Proxy)
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
    (Self : not null access UML_Final_State_Proxy;
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
    (Self : not null access constant UML_Final_State_Proxy)
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
    (Self : not null access constant UML_Final_State_Proxy)
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

   ------------------------
   -- Get_Element_Import --
   ------------------------

   overriding function Get_Element_Import
    (Self : not null access constant UML_Final_State_Proxy)
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
    (Self : not null access constant UML_Final_State_Proxy)
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
    (Self : not null access constant UML_Final_State_Proxy)
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
    (Self : not null access constant UML_Final_State_Proxy)
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
    (Self : not null access constant UML_Final_State_Proxy)
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
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import is
   begin
      return
        AMF.UML.Package_Imports.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Package_Import
             (Self.Element)));
   end Get_Package_Import;

   -------------------
   -- Get_Container --
   -------------------

   overriding function Get_Container
    (Self : not null access constant UML_Final_State_Proxy)
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
    (Self : not null access UML_Final_State_Proxy;
     To   : AMF.UML.Regions.UML_Region_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Container
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Container;

   ------------------
   -- Get_Incoming --
   ------------------

   overriding function Get_Incoming
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is
   begin
      return
        AMF.UML.Transitions.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Incoming
             (Self.Element)));
   end Get_Incoming;

   ------------------
   -- Get_Outgoing --
   ------------------

   overriding function Get_Outgoing
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is
   begin
      return
        AMF.UML.Transitions.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Outgoing
             (Self.Element)));
   end Get_Outgoing;

   ------------------------------
   -- Containing_State_Machine --
   ------------------------------

   overriding function Containing_State_Machine
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.State_Machines.UML_State_Machine_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Containing_State_Machine unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Containing_State_Machine";
      return Containing_State_Machine (Self);
   end Containing_State_Machine;

   ------------------
   -- Is_Composite --
   ------------------

   overriding function Is_Composite
    (Self : not null access constant UML_Final_State_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Composite unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Is_Composite";
      return Is_Composite (Self);
   end Is_Composite;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Final_State_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Consistent_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Is_Consistent_With";
      return Is_Consistent_With (Self, Redefinee);
   end Is_Consistent_With;

   -------------------
   -- Is_Orthogonal --
   -------------------

   overriding function Is_Orthogonal
    (Self : not null access constant UML_Final_State_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Orthogonal unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Is_Orthogonal";
      return Is_Orthogonal (Self);
   end Is_Orthogonal;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Final_State_Proxy;
     Redefined : AMF.UML.States.UML_State_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

   ---------------
   -- Is_Simple --
   ---------------

   overriding function Is_Simple
    (Self : not null access constant UML_Final_State_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Simple unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Is_Simple";
      return Is_Simple (Self);
   end Is_Simple;

   -------------------------
   -- Is_Submachine_State --
   -------------------------

   overriding function Is_Submachine_State
    (Self : not null access constant UML_Final_State_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Submachine_State unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Is_Submachine_State";
      return Is_Submachine_State (Self);
   end Is_Submachine_State;

   --------------------------
   -- Redefinition_Context --
   --------------------------

   overriding function Redefinition_Context
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Redefinition_Context unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Redefinition_Context";
      return Redefinition_Context (Self);
   end Redefinition_Context;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Final_State_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Final_State_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   ------------------------
   -- Exclude_Collisions --
   ------------------------

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Final_State_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Exclude_Collisions unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Exclude_Collisions";
      return Exclude_Collisions (Self, Imps);
   end Exclude_Collisions;

   -------------------------
   -- Get_Names_Of_Member --
   -------------------------

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Final_State_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Names_Of_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Get_Names_Of_Member";
      return Get_Names_Of_Member (Self, Element);
   end Get_Names_Of_Member;

   --------------------
   -- Import_Members --
   --------------------

   overriding function Import_Members
    (Self : not null access constant UML_Final_State_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Import_Members unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Import_Members";
      return Import_Members (Self, Imps);
   end Import_Members;

   ---------------------
   -- Imported_Member --
   ---------------------

   overriding function Imported_Member
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Imported_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Imported_Member";
      return Imported_Member (Self);
   end Imported_Member;

   ---------------------------------
   -- Members_Are_Distinguishable --
   ---------------------------------

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Final_State_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Members_Are_Distinguishable unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Members_Are_Distinguishable";
      return Members_Are_Distinguishable (Self);
   end Members_Are_Distinguishable;

   ------------------
   -- Owned_Member --
   ------------------

   overriding function Owned_Member
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Owned_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Owned_Member";
      return Owned_Member (Self);
   end Owned_Member;

   --------------
   -- Incoming --
   --------------

   overriding function Incoming
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Incoming unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Incoming";
      return Incoming (Self);
   end Incoming;

   --------------
   -- Outgoing --
   --------------

   overriding function Outgoing
    (Self : not null access constant UML_Final_State_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Outgoing unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Final_State_Proxy.Outgoing";
      return Outgoing (Self);
   end Outgoing;

end AMF.Internals.UML_Final_States;
