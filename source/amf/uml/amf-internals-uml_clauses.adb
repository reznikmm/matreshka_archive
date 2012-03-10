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

package body AMF.Internals.UML_Clauses is

   -----------------------
   -- Enter_UML_Element --
   -----------------------

   overriding procedure Enter_UML_Element
    (Self    : not null access constant UML_Clause_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Clause (Self, Control);
   end Enter_UML_Element;

   -----------------------
   -- Leave_UML_Element --
   -----------------------

   overriding procedure Leave_UML_Element
    (Self    : not null access constant UML_Clause_Proxy;
     Visitor : not null access AMF.Visitors.UML_Visitors.UML_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Clause (Self, Control);
   end Leave_UML_Element;

   -----------------------
   -- Visit_UML_Element --
   -----------------------

   overriding procedure Visit_UML_Element
    (Self     : not null access constant UML_Clause_Proxy;
     Iterator : not null access AMF.Visitors.UML_Iterators.UML_Iterator'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      Iterator.Visit_Clause (Self, Control);
   end Visit_UML_Element;

   --------------
   -- Get_Body --
   --------------

   overriding function Get_Body
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Executable_Nodes.Collections.Set_Of_UML_Executable_Node is
   begin
      return
        AMF.UML.Executable_Nodes.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Body
             (Self.Id)));
   end Get_Body;

   ---------------------
   -- Get_Body_Output --
   ---------------------

   overriding function Get_Body_Output
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Output_Pins.Collections.Ordered_Set_Of_UML_Output_Pin is
   begin
      return
        AMF.UML.Output_Pins.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Body_Output
             (Self.Id)));
   end Get_Body_Output;

   -----------------
   -- Get_Decider --
   -----------------

   overriding function Get_Decider
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Output_Pins.UML_Output_Pin_Access is
   begin
      return
        AMF.UML.Output_Pins.UML_Output_Pin_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Decider
             (Self.Id)));
   end Get_Decider;

   -----------------
   -- Set_Decider --
   -----------------

   overriding procedure Set_Decider
    (Self : not null access UML_Clause_Proxy;
     To   : AMF.UML.Output_Pins.UML_Output_Pin_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Decider
       (Self.Id,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Decider;

   ----------------------------
   -- Get_Predecessor_Clause --
   ----------------------------

   overriding function Get_Predecessor_Clause
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Clauses.Collections.Set_Of_UML_Clause is
   begin
      return
        AMF.UML.Clauses.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Predecessor_Clause
             (Self.Id)));
   end Get_Predecessor_Clause;

   --------------------------
   -- Get_Successor_Clause --
   --------------------------

   overriding function Get_Successor_Clause
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Clauses.Collections.Set_Of_UML_Clause is
   begin
      return
        AMF.UML.Clauses.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Successor_Clause
             (Self.Id)));
   end Get_Successor_Clause;

   --------------
   -- Get_Test --
   --------------

   overriding function Get_Test
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Executable_Nodes.Collections.Set_Of_UML_Executable_Node is
   begin
      return
        AMF.UML.Executable_Nodes.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Test
             (Self.Id)));
   end Get_Test;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Clause_Proxy)
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
    (Self : not null access constant UML_Clause_Proxy)
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
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owner
             (Self.Id)));
   end Get_Owner;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Clause_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Clause_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

end AMF.Internals.UML_Clauses;
