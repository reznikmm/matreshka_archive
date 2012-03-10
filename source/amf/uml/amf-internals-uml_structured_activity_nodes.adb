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
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.UML_Structured_Activity_Nodes is

   -----------------------
   -- Enter_UML_Element --
   -----------------------

   overriding procedure Enter_UML_Element
    (Self    : not null access constant UML_Structured_Activity_Node_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Structured_Activity_Node (Self, Control);
   end Enter_UML_Element;

   -----------------------
   -- Leave_UML_Element --
   -----------------------

   overriding procedure Leave_UML_Element
    (Self    : not null access constant UML_Structured_Activity_Node_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Structured_Activity_Node (Self, Control);
   end Leave_UML_Element;

   -----------------------
   -- Visit_UML_Element --
   -----------------------

   overriding procedure Visit_UML_Element
    (Self     : not null access constant UML_Structured_Activity_Node_Proxy;
     Iterator : not null access AMF.Visitors.UML_Iterators.UML_Iterator'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      Iterator.Visit_Structured_Activity_Node (Self, Control);
   end Visit_UML_Element;

   ------------------
   -- Get_Activity --
   ------------------

   overriding function Get_Activity
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access UML_Structured_Activity_Node_Proxy;
     To   : AMF.UML.Activities.UML_Activity_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Activity
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Activity;

   --------------
   -- Get_Edge --
   --------------

   overriding function Get_Edge
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is
   begin
      return
        AMF.UML.Activity_Edges.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Edge
             (Self.Id)));
   end Get_Edge;

   ----------------------
   -- Get_Must_Isolate --
   ----------------------

   overriding function Get_Must_Isolate
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Must_Isolate
         (Self.Id);
   end Get_Must_Isolate;

   ----------------------
   -- Set_Must_Isolate --
   ----------------------

   overriding procedure Set_Must_Isolate
    (Self : not null access UML_Structured_Activity_Node_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Must_Isolate
       (Self.Id, To);
   end Set_Must_Isolate;

   --------------
   -- Get_Node --
   --------------

   overriding function Get_Node
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node is
   begin
      return
        AMF.UML.Activity_Nodes.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Node
             (Self.Id)));
   end Get_Node;

   -------------------------------
   -- Get_Structured_Node_Input --
   -------------------------------

   overriding function Get_Structured_Node_Input
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Input_Pins.Collections.Set_Of_UML_Input_Pin is
   begin
      return
        AMF.UML.Input_Pins.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Structured_Node_Input
             (Self.Id)));
   end Get_Structured_Node_Input;

   --------------------------------
   -- Get_Structured_Node_Output --
   --------------------------------

   overriding function Get_Structured_Node_Output
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Output_Pins.Collections.Set_Of_UML_Output_Pin is
   begin
      return
        AMF.UML.Output_Pins.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Structured_Node_Output
             (Self.Id)));
   end Get_Structured_Node_Output;

   ------------------
   -- Get_Variable --
   ------------------

   overriding function Get_Variable
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Variables.Collections.Set_Of_UML_Variable is
   begin
      return
        AMF.UML.Variables.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Variable
             (Self.Id)));
   end Get_Variable;

   ------------------------
   -- Get_Element_Import --
   ------------------------

   overriding function Get_Element_Import
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import is
   begin
      return
        AMF.UML.Element_Imports.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Element_Import
             (Self.Id)));
   end Get_Element_Import;

   -------------------------
   -- Get_Imported_Member --
   -------------------------

   overriding function Get_Imported_Member
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      return
        AMF.UML.Packageable_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Imported_Member
             (Self.Id)));
   end Get_Imported_Member;

   ----------------
   -- Get_Member --
   ----------------

   overriding function Get_Member
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      return
        AMF.UML.Named_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Member
             (Self.Id)));
   end Get_Member;

   ----------------------
   -- Get_Owned_Member --
   ----------------------

   overriding function Get_Owned_Member
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      return
        AMF.UML.Named_Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Member
             (Self.Id)));
   end Get_Owned_Member;

   --------------------
   -- Get_Owned_Rule --
   --------------------

   overriding function Get_Owned_Rule
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is
   begin
      return
        AMF.UML.Constraints.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Rule
             (Self.Id)));
   end Get_Owned_Rule;

   ------------------------
   -- Get_Package_Import --
   ------------------------

   overriding function Get_Package_Import
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import is
   begin
      return
        AMF.UML.Package_Imports.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Package_Import
             (Self.Id)));
   end Get_Package_Import;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access UML_Structured_Activity_Node_Proxy;
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access UML_Structured_Activity_Node_Proxy;
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access UML_Structured_Activity_Node_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Visibility
       (Self.Id, To);
   end Set_Visibility;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owner
             (Self.Id)));
   end Get_Owner;

   ------------------------
   -- Get_Contained_Edge --
   ------------------------

   overriding function Get_Contained_Edge
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Activity_Edges.Collections.Set_Of_UML_Activity_Edge is
   begin
      return
        AMF.UML.Activity_Edges.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Contained_Edge
             (Self.Id)));
   end Get_Contained_Edge;

   ------------------------
   -- Get_Contained_Node --
   ------------------------

   overriding function Get_Contained_Node
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Activity_Nodes.Collections.Set_Of_UML_Activity_Node is
   begin
      return
        AMF.UML.Activity_Nodes.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Contained_Node
             (Self.Id)));
   end Get_Contained_Node;

   ---------------------
   -- Get_In_Activity --
   ---------------------

   overriding function Get_In_Activity
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Activities.UML_Activity_Access is
   begin
      return
        AMF.UML.Activities.UML_Activity_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_In_Activity
             (Self.Id)));
   end Get_In_Activity;

   ---------------------
   -- Set_In_Activity --
   ---------------------

   overriding procedure Set_In_Activity
    (Self : not null access UML_Structured_Activity_Node_Proxy;
     To   : AMF.UML.Activities.UML_Activity_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_In_Activity
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_In_Activity;

   ------------------
   -- Get_Subgroup --
   ------------------

   overriding function Get_Subgroup
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Activity_Groups.Collections.Set_Of_UML_Activity_Group is
   begin
      return
        AMF.UML.Activity_Groups.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Subgroup
             (Self.Id)));
   end Get_Subgroup;

   ---------------------
   -- Get_Super_Group --
   ---------------------

   overriding function Get_Super_Group
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Activity_Groups.UML_Activity_Group_Access is
   begin
      return
        AMF.UML.Activity_Groups.UML_Activity_Group_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Super_Group
             (Self.Id)));
   end Get_Super_Group;

   -----------------
   -- Get_Context --
   -----------------

   overriding function Get_Context
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access is
   begin
      return
        AMF.UML.Classifiers.UML_Classifier_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Context
             (Self.Id)));
   end Get_Context;

   ---------------
   -- Get_Input --
   ---------------

   overriding function Get_Input
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Input_Pins.Collections.Ordered_Set_Of_UML_Input_Pin is
   begin
      return
        AMF.UML.Input_Pins.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Input
             (Self.Id)));
   end Get_Input;

   ------------------------------
   -- Get_Is_Locally_Reentrant --
   ------------------------------

   overriding function Get_Is_Locally_Reentrant
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Locally_Reentrant
         (Self.Id);
   end Get_Is_Locally_Reentrant;

   ------------------------------
   -- Set_Is_Locally_Reentrant --
   ------------------------------

   overriding procedure Set_Is_Locally_Reentrant
    (Self : not null access UML_Structured_Activity_Node_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Locally_Reentrant
       (Self.Id, To);
   end Set_Is_Locally_Reentrant;

   -----------------------------
   -- Get_Local_Postcondition --
   -----------------------------

   overriding function Get_Local_Postcondition
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is
   begin
      return
        AMF.UML.Constraints.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Local_Postcondition
             (Self.Id)));
   end Get_Local_Postcondition;

   ----------------------------
   -- Get_Local_Precondition --
   ----------------------------

   overriding function Get_Local_Precondition
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint is
   begin
      return
        AMF.UML.Constraints.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Local_Precondition
             (Self.Id)));
   end Get_Local_Precondition;

   ----------------
   -- Get_Output --
   ----------------

   overriding function Get_Output
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin is
   begin
      return
        AMF.UML.Output_Pins.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Output
             (Self.Id)));
   end Get_Output;

   -----------------
   -- Get_Handler --
   -----------------

   overriding function Get_Handler
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Exception_Handlers.Collections.Set_Of_UML_Exception_Handler is
   begin
      return
        AMF.UML.Exception_Handlers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Handler
             (Self.Id)));
   end Get_Handler;

   ------------------
   -- Get_In_Group --
   ------------------

   overriding function Get_In_Group
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access UML_Structured_Activity_Node_Proxy;
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access UML_Structured_Activity_Node_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Leaf
       (Self.Id, To);
   end Set_Is_Leaf;

   ---------------------------
   -- Get_Redefined_Element --
   ---------------------------

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
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
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier is
   begin
      return
        AMF.UML.Classifiers.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Redefinition_Context
             (Self.Id)));
   end Get_Redefinition_Context;

   ------------------------
   -- Exclude_Collisions --
   ------------------------

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Structured_Activity_Node_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Exclude_Collisions unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Exclude_Collisions";
      return Exclude_Collisions (Self, Imps);
   end Exclude_Collisions;

   -------------------------
   -- Get_Names_Of_Member --
   -------------------------

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Structured_Activity_Node_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Names_Of_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Get_Names_Of_Member";
      return Get_Names_Of_Member (Self, Element);
   end Get_Names_Of_Member;

   --------------------
   -- Import_Members --
   --------------------

   overriding function Import_Members
    (Self : not null access constant UML_Structured_Activity_Node_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Import_Members unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Import_Members";
      return Import_Members (Self, Imps);
   end Import_Members;

   ---------------------
   -- Imported_Member --
   ---------------------

   overriding function Imported_Member
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Imported_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Imported_Member";
      return Imported_Member (Self);
   end Imported_Member;

   ---------------------------------
   -- Members_Are_Distinguishable --
   ---------------------------------

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Members_Are_Distinguishable unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Members_Are_Distinguishable";
      return Members_Are_Distinguishable (Self);
   end Members_Are_Distinguishable;

   ------------------
   -- Owned_Member --
   ------------------

   overriding function Owned_Member
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Owned_Member unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Owned_Member";
      return Owned_Member (Self);
   end Owned_Member;

   --------------------
   -- All_Namespaces --
   --------------------

   overriding function All_Namespaces
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Namespaces unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.All_Namespaces";
      return All_Namespaces (Self);
   end All_Namespaces;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Structured_Activity_Node_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

   --------------------
   -- Qualified_Name --
   --------------------

   overriding function Qualified_Name
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return League.Strings.Universal_String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Qualified_Name unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Qualified_Name";
      return Qualified_Name (Self);
   end Qualified_Name;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------
   -- Context --
   -------------

   overriding function Context
    (Self : not null access constant UML_Structured_Activity_Node_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Context unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Context";
      return Context (Self);
   end Context;

   ------------------------
   -- Is_Consistent_With --
   ------------------------

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Structured_Activity_Node_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Consistent_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Is_Consistent_With";
      return Is_Consistent_With (Self, Redefinee);
   end Is_Consistent_With;

   -----------------------------------
   -- Is_Redefinition_Context_Valid --
   -----------------------------------

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Structured_Activity_Node_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Redefinition_Context_Valid unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Structured_Activity_Node_Proxy.Is_Redefinition_Context_Valid";
      return Is_Redefinition_Context_Valid (Self, Redefined);
   end Is_Redefinition_Context_Valid;

end AMF.Internals.UML_Structured_Activity_Nodes;
