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

package body AMF.Internals.UML_Connection_Point_References is

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Connection_Point_Reference_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Enter_Connection_Point_Reference
            (AMF.UML.Connection_Point_References.UML_Connection_Point_Reference_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Connection_Point_Reference_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Leave_Connection_Point_Reference
            (AMF.UML.Connection_Point_References.UML_Connection_Point_Reference_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Connection_Point_Reference_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.UML_Iterators.UML_Iterator'Class then
         AMF.Visitors.UML_Iterators.UML_Iterator'Class
          (Iterator).Visit_Connection_Point_Reference
            (Visitor,
             AMF.UML.Connection_Point_References.UML_Connection_Point_Reference_Access (Self),
             Control);
      end if;
   end Visit_Element;

   ---------------
   -- Get_Entry --
   ---------------

   overriding function Get_Entry
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate is
   begin
      return
        AMF.UML.Pseudostates.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Entry
             (Self.Element)));
   end Get_Entry;

   --------------
   -- Get_Exit --
   --------------

   overriding function Get_Exit
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Pseudostates.Collections.Set_Of_UML_Pseudostate is
   begin
      return
        AMF.UML.Pseudostates.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Exit
             (Self.Element)));
   end Get_Exit;

   ---------------
   -- Get_State --
   ---------------

   overriding function Get_State
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.States.UML_State_Access is
   begin
      return
        AMF.UML.States.UML_State_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_State
             (Self.Element)));
   end Get_State;

   ---------------
   -- Set_State --
   ---------------

   overriding procedure Set_State
    (Self : not null access UML_Connection_Point_Reference_Proxy;
     To   : AMF.UML.States.UML_State_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_State
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_State;

   -------------------
   -- Get_Container --
   -------------------

   overriding function Get_Container
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
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
    (Self : not null access UML_Connection_Point_Reference_Proxy;
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
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
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
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is
   begin
      return
        AMF.UML.Transitions.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Outgoing
             (Self.Element)));
   end Get_Outgoing;

   ---------------------------
   -- Get_Client_Dependency --
   ---------------------------

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
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
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
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
    (Self : not null access UML_Connection_Point_Reference_Proxy;
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
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
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
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
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

   ------------------------------
   -- Containing_State_Machine --
   ------------------------------

   overriding function Containing_State_Machine
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.State_Machines.UML_State_Machine_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Containing_State_Machine unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Connection_Point_Reference_Proxy.Containing_State_Machine";
      return Containing_State_Machine (Self);
   end Containing_State_Machine;

   --------------
   -- Incoming --
   --------------

   overriding function Incoming
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Incoming unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Connection_Point_Reference_Proxy.Incoming";
      return Incoming (Self);
   end Incoming;

   --------------
   -- Outgoing --
   --------------

   overriding function Outgoing
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Transitions.Collections.Set_Of_UML_Transition is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Outgoing unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Connection_Point_Reference_Proxy.Outgoing";
      return Outgoing (Self);
   end Outgoing;

   -------------------------
   -- All_Owning_Packages --
   -------------------------

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owning_Packages unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Connection_Point_Reference_Proxy.All_Owning_Packages";
      return All_Owning_Packages (Self);
   end All_Owning_Packages;

   -----------------------------
   -- Is_Distinguishable_From --
   -----------------------------

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Connection_Point_Reference_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Distinguishable_From unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Connection_Point_Reference_Proxy.Is_Distinguishable_From";
      return Is_Distinguishable_From (Self, N, Ns);
   end Is_Distinguishable_From;

   ---------------
   -- Namespace --
   ---------------

   overriding function Namespace
    (Self : not null access constant UML_Connection_Point_Reference_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Namespace unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Connection_Point_Reference_Proxy.Namespace";
      return Namespace (Self);
   end Namespace;

end AMF.Internals.UML_Connection_Point_References;
