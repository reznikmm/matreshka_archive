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
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;
with AMF.Visitors.UML_Iterators;
with AMF.Visitors.UML_Visitors;

package body AMF.Internals.UML_Connector_Ends is

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Connector_End_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Enter_Connector_End
            (AMF.UML.Connector_Ends.UML_Connector_End_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Connector_End_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Leave_Connector_End
            (AMF.UML.Connector_Ends.UML_Connector_End_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Connector_End_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.UML_Iterators.UML_Iterator'Class then
         AMF.Visitors.UML_Iterators.UML_Iterator'Class
          (Iterator).Visit_Connector_End
            (Visitor,
             AMF.UML.Connector_Ends.UML_Connector_End_Access (Self),
             Control);
      end if;
   end Visit_Element;

   ----------------------
   -- Get_Defining_End --
   ----------------------

   overriding function Get_Defining_End
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access is
   begin
      return
        AMF.UML.Properties.UML_Property_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Defining_End
             (Self.Element)));
   end Get_Defining_End;

   ------------------------
   -- Get_Part_With_Port --
   ------------------------

   overriding function Get_Part_With_Port
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access is
   begin
      return
        AMF.UML.Properties.UML_Property_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Part_With_Port
             (Self.Element)));
   end Get_Part_With_Port;

   ------------------------
   -- Set_Part_With_Port --
   ------------------------

   overriding procedure Set_Part_With_Port
    (Self : not null access UML_Connector_End_Proxy;
     To   : AMF.UML.Properties.UML_Property_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Part_With_Port
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Part_With_Port;

   --------------
   -- Get_Role --
   --------------

   overriding function Get_Role
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Connectable_Elements.UML_Connectable_Element_Access is
   begin
      return
        AMF.UML.Connectable_Elements.UML_Connectable_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Role
             (Self.Element)));
   end Get_Role;

   --------------
   -- Set_Role --
   --------------

   overriding procedure Set_Role
    (Self : not null access UML_Connector_End_Proxy;
     To   : AMF.UML.Connectable_Elements.UML_Connectable_Element_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Role
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Role;

   ------------------
   -- Defining_End --
   ------------------

   overriding function Defining_End
    (Self : not null access constant UML_Connector_End_Proxy)
       return AMF.UML.Properties.UML_Property_Access is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Defining_End unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Connector_End_Proxy.Defining_End";
      return Defining_End (Self);
   end Defining_End;

   ---------------------
   -- Compatible_With --
   ---------------------

   overriding function Compatible_With
    (Self : not null access constant UML_Connector_End_Proxy;
     Other : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Compatible_With unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Connector_End_Proxy.Compatible_With";
      return Compatible_With (Self, Other);
   end Compatible_With;

   --------------------------
   -- Includes_Cardinality --
   --------------------------

   overriding function Includes_Cardinality
    (Self : not null access constant UML_Connector_End_Proxy;
     C : Integer)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Cardinality unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Connector_End_Proxy.Includes_Cardinality";
      return Includes_Cardinality (Self, C);
   end Includes_Cardinality;

   ---------------------------
   -- Includes_Multiplicity --
   ---------------------------

   overriding function Includes_Multiplicity
    (Self : not null access constant UML_Connector_End_Proxy;
     M : AMF.UML.Multiplicity_Elements.UML_Multiplicity_Element_Access)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Includes_Multiplicity unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Connector_End_Proxy.Includes_Multiplicity";
      return Includes_Multiplicity (Self, M);
   end Includes_Multiplicity;

   ---------
   -- Iss --
   ---------

   overriding function Iss
    (Self : not null access constant UML_Connector_End_Proxy;
     Lowerbound : Integer;
     Upperbound : Integer)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Iss unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Connector_End_Proxy.Iss";
      return Iss (Self, Lowerbound, Upperbound);
   end Iss;

end AMF.Internals.UML_Connector_Ends;
