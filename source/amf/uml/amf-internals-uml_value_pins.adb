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
with AMF.Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.UML_Value_Pins is

   ------------------------
   -- Enter_UML_Element --
   ------------------------

   overriding procedure Enter_UML_Element
    (Self    : not null access constant UML_Value_Pin_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Value_Pin (Self, Control);
   end Enter_UML_Element;

   ------------------------
   -- Leave_UML_Element --
   ------------------------

   overriding procedure Leave_UML_Element
    (Self    : not null access constant UML_Value_Pin_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Value_Pin (Self, Control);
   end Leave_UML_Element;

   ---------------
   -- Get_Value --
   ---------------

   overriding function Get_Value
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is
   begin
      return
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Value
             (Self.Id)));
   end Get_Value;

   ---------------
   -- Set_Value --
   ---------------

   overriding procedure Set_Value
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Value
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Value;

   --------------------
   -- Get_Is_Control --
   --------------------

   overriding function Get_Is_Control
    (Self : not null access constant UML_Value_Pin_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Control
         (Self.Id);
   end Get_Is_Control;

   --------------------
   -- Set_Is_Control --
   --------------------

   overriding procedure Set_Is_Control
    (Self : not null access UML_Value_Pin_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Control
       (Self.Id, To);
   end Set_Is_Control;

   ------------------
   -- Get_In_State --
   ------------------

   overriding function Get_In_State
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.States.Collections.Set_Of_UML_State is
   begin
      return
        AMF.UML.States.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_In_State
             (Self.Id)));
   end Get_In_State;

   -------------------------
   -- Get_Is_Control_Type --
   -------------------------

   overriding function Get_Is_Control_Type
    (Self : not null access constant UML_Value_Pin_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Control_Type
         (Self.Id);
   end Get_Is_Control_Type;

   -------------------------
   -- Set_Is_Control_Type --
   -------------------------

   overriding procedure Set_Is_Control_Type
    (Self : not null access UML_Value_Pin_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Control_Type
       (Self.Id, To);
   end Set_Is_Control_Type;

   ------------------
   -- Get_Ordering --
   ------------------

   overriding function Get_Ordering
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.UML_Object_Node_Ordering_Kind is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Ordering
         (Self.Id);
   end Get_Ordering;

   ------------------
   -- Set_Ordering --
   ------------------

   overriding procedure Set_Ordering
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.UML.UML_Object_Node_Ordering_Kind) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Ordering
       (Self.Id, To);
   end Set_Ordering;

   -------------------
   -- Get_Selection --
   -------------------

   overriding function Get_Selection
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access is
   begin
      return
        AMF.UML.Behaviors.UML_Behavior_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Selection
             (Self.Id)));
   end Get_Selection;

   -------------------
   -- Set_Selection --
   -------------------

   overriding procedure Set_Selection
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Selection
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Selection;

   ---------------------
   -- Get_Upper_Bound --
   ---------------------

   overriding function Get_Upper_Bound
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is
   begin
      return
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Upper_Bound
             (Self.Id)));
   end Get_Upper_Bound;

   ---------------------
   -- Set_Upper_Bound --
   ---------------------

   overriding procedure Set_Upper_Bound
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Upper_Bound
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Upper_Bound;

   ------------------
   -- Get_Activity --
   ------------------

   overriding function Get_Activity
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Activities.UML_Activity_Access is
   begin
      return
        AMF.UML.Activities.UML_Activity_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Activity
             (Self.Id)));
   end Get_Activity;

   ------------------
   -- Set_Activity --
   ------------------

   overriding procedure Set_Activity
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.UML.Activities.UML_Activity_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Activity
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Activity;

   ------------------
   -- Get_In_Group --
   ------------------

   overriding function Get_In_Group
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Activity_Groups.Collections.Set_Of_UML_Activity_Group is
   begin
      return
        AMF.UML.Activity_Groups.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_In_Group
             (Self.Id)));
   end Get_In_Group;

   ---------------------------------
   -- Get_In_Interruptible_Region --
   ---------------------------------

   overriding function Get_In_Interruptible_Region
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Interruptible_Activity_Regions.Collections.Set_Of_UML_Interruptible_Activity_Region is
   begin
      return
        AMF.UML.Interruptible_Activity_Regions.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_In_Interruptible_Region
             (Self.Id)));
   end Get_In_Interruptible_Region;

   ----------------------
   -- Get_In_Partition --
   ----------------------

   overriding function Get_In_Partition
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Activity_Partitions.Collections.Set_Of_UML_Activity_Partition is
   begin
      return
        AMF.UML.Activity_Partitions.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_In_Partition
             (Self.Id)));
   end Get_In_Partition;

   ----------------------------
   -- Get_In_Structured_Node --
   ----------------------------

   overriding function Get_In_Structured_Node
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access is
   begin
      return
        AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_In_Structured_Node
             (Self.Id)));
   end Get_In_Structured_Node;

   ----------------------------
   -- Set_In_Structured_Node --
   ----------------------------

   overriding procedure Set_In_Structured_Node
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_In_Structured_Node
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_In_Structured_Node;

   ------------------
   -- Get_Incoming --
   ------------------

   overriding function Get_Incoming
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is
   begin
      return
        AMF.UML.Activity_Edges.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Incoming
             (Self.Id)));
   end Get_Incoming;

   ------------------
   -- Get_Outgoing --
   ------------------

   overriding function Get_Outgoing
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is
   begin
      return
        AMF.UML.Activity_Edges.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Outgoing
             (Self.Id)));
   end Get_Outgoing;

   ------------------------
   -- Get_Redefined_Node --
   ------------------------

   overriding function Get_Redefined_Node
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node is
   begin
      return
        AMF.UML.Activity_Nodes.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefined_Node
             (Self.Id)));
   end Get_Redefined_Node;

   -----------------
   -- Get_Is_Leaf --
   -----------------

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Value_Pin_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Leaf
         (Self.Id);
   end Get_Is_Leaf;

   -----------------
   -- Set_Is_Leaf --
   -----------------

   overriding procedure Set_Is_Leaf
    (Self : not null access UML_Value_Pin_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Leaf
       (Self.Id, To);
   end Set_Is_Leaf;

   ---------------------------
   -- Get_Redefined_Element --
   ---------------------------

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element is
   begin
      return
        AMF.UML.Redefinable_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefined_Element
             (Self.Id)));
   end Get_Redefined_Element;

   ------------------------------
   -- Get_Redefinition_Context --
   ------------------------------

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is
   begin
      return
        AMF.UML.Classifiers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefinition_Context
             (Self.Id)));
   end Get_Redefinition_Context;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency is
   begin
      return
        AMF.UML.Dependencies.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Client_Dependency
             (Self.Id)));
   end Get_Client_Dependency;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.UML_Attributes.Internal_Get_Name (Self.Id);

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
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.UML_Attributes.Internal_Set_Name
          (Self.Id, null);

      else
         AMF.Internals.Tables.UML_Attributes.Internal_Set_Name
          (Self.Id,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Name;

   -------------------------
   -- Get_Name_Expression --
   -------------------------

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access is
   begin
      return
        AMF.UML.String_Expressions.UML_String_Expression_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Name_Expression
             (Self.Id)));
   end Get_Name_Expression;

   -------------------------
   -- Set_Name_Expression --
   -------------------------

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Name_Expression
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Name_Expression;

   -------------------
   -- Get_Namespace --
   -------------------

   overriding function Get_Namespace
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      return
        AMF.UML.Namespaces.UML_Namespace_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Namespace
             (Self.Id)));
   end Get_Namespace;

   ------------------------
   -- Get_Qualified_Name --
   ------------------------

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.UML_Attributes.Internal_Get_Qualified_Name (Self.Id);

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
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Visibility
         (Self.Id);
   end Get_Visibility;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Visibility
       (Self.Id, To);
   end Set_Visibility;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment is
   begin
      return
        AMF.UML.Comments.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Comment
             (Self.Id)));
   end Get_Owned_Comment;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Element
             (Self.Id)));
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owner
             (Self.Id)));
   end Get_Owner;

   --------------
   -- Get_Type --
   --------------

   overriding function Get_Type
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Types.UML_Type_Access is
   begin
      return
        AMF.UML.Types.UML_Type_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Type
             (Self.Id)));
   end Get_Type;

   --------------
   -- Set_Type --
   --------------

   overriding procedure Set_Type
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.UML.Types.UML_Type_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Type
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Type;

   --------------------
   -- Get_Is_Ordered --
   --------------------

   overriding function Get_Is_Ordered
    (Self : not null access constant UML_Value_Pin_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Ordered
         (Self.Id);
   end Get_Is_Ordered;

   --------------------
   -- Set_Is_Ordered --
   --------------------

   overriding procedure Set_Is_Ordered
    (Self : not null access UML_Value_Pin_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Ordered
       (Self.Id, To);
   end Set_Is_Ordered;

   -------------------
   -- Get_Is_Unique --
   -------------------

   overriding function Get_Is_Unique
    (Self : not null access constant UML_Value_Pin_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Unique
         (Self.Id);
   end Get_Is_Unique;

   -------------------
   -- Set_Is_Unique --
   -------------------

   overriding procedure Set_Is_Unique
    (Self : not null access UML_Value_Pin_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Unique
       (Self.Id, To);
   end Set_Is_Unique;

   ---------------
   -- Get_Lower --
   ---------------

   overriding function Get_Lower
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.Optional_Integer is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Lower
         (Self.Id);
   end Get_Lower;

   ---------------
   -- Set_Lower --
   ---------------

   overriding procedure Set_Lower
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.Optional_Integer) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Lower
       (Self.Id, To);
   end Set_Lower;

   ---------------------
   -- Get_Lower_Value --
   ---------------------

   overriding function Get_Lower_Value
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is
   begin
      return
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Lower_Value
             (Self.Id)));
   end Get_Lower_Value;

   ---------------------
   -- Set_Lower_Value --
   ---------------------

   overriding procedure Set_Lower_Value
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Lower_Value
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Lower_Value;

   ---------------
   -- Get_Upper --
   ---------------

   overriding function Get_Upper
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.Optional_Unlimited_Natural is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Upper
         (Self.Id);
   end Get_Upper;

   ---------------
   -- Set_Upper --
   ---------------

   overriding procedure Set_Upper
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.Optional_Unlimited_Natural) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Upper
       (Self.Id, To);
   end Set_Upper;

   ---------------------
   -- Get_Upper_Value --
   ---------------------

   overriding function Get_Upper_Value
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access is
   begin
      return
        AMF.UML.Value_Specifications.UML_Value_Specification_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Upper_Value
             (Self.Id)));
   end Get_Upper_Value;

   ---------------------
   -- Set_Upper_Value --
   ---------------------

   overriding procedure Set_Upper_Value
    (Self : not null access UML_Value_Pin_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Upper_Value
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Upper_Value;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Value_Pin_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Consistent_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Is_Consistent_With";
      return Is_Consistent_With (Self, Redefinee);
   end Is_Consistent_With;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Value_Pin_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Value_Pin_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant UML_Value_Pin_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   ---------------
   -- Separator --
   ---------------

   overriding function Separator
    (Self : not null access constant UML_Value_Pin_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Separator unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Separator";
      return Separator (Self);
   end Separator;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Value_Pin_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

   ---------------------
   -- Compatible_With --
   ---------------------

   overriding function Compatible_With
    (Self : not null access constant UML_Value_Pin_Proxy;
     Other : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Compatible_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Compatible_With";
      return Compatible_With (Self, Other);
   end Compatible_With;

   --------------------------
   -- Includes_Cardinality --
   --------------------------

   overriding function Includes_Cardinality
    (Self : not null access constant UML_Value_Pin_Proxy;
     C : Integer)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Cardinality unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Includes_Cardinality";
      return Includes_Cardinality (Self, C);
   end Includes_Cardinality;

   ---------------------------
   -- Includes_Multiplicity --
   ---------------------------

   overriding function Includes_Multiplicity
    (Self : not null access constant UML_Value_Pin_Proxy;
     M : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Multiplicity unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Includes_Multiplicity";
      return Includes_Multiplicity (Self, M);
   end Includes_Multiplicity;

   ---------
   -- Iss --
   ---------

   overriding function Iss
    (Self : not null access constant UML_Value_Pin_Proxy;
     Lowerbound : Integer;
     Upperbound : Integer)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Iss unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Iss";
      return Iss (Self, Lowerbound, Upperbound);
   end Iss;

   --------------------
   -- Is_Multivalued --
   --------------------

   overriding function Is_Multivalued
    (Self : not null access constant UML_Value_Pin_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Multivalued unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Is_Multivalued";
      return Is_Multivalued (Self);
   end Is_Multivalued;

   -----------
   -- Lower --
   -----------

   overriding function Lower
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.Optional_Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Lower unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Lower";
      return Lower (Self);
   end Lower;

   -----------------
   -- Lower_Bound --
   -----------------

   overriding function Lower_Bound
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.Optional_Integer is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Lower_Bound unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Lower_Bound";
      return Lower_Bound (Self);
   end Lower_Bound;

   -----------
   -- Upper --
   -----------

   overriding function Upper
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.Optional_Unlimited_Natural is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Upper unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Upper";
      return Upper (Self);
   end Upper;

   -----------------
   -- Upper_Bound --
   -----------------

   overriding function Upper_Bound
    (Self : not null access constant UML_Value_Pin_Proxy)
       return AMF.Optional_Unlimited_Natural is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Upper_Bound unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Value_Pin_Proxy.Upper_Bound";
      return Upper_Bound (Self);
   end Upper_Bound;

end AMF.Internals.UML_Value_Pins;
