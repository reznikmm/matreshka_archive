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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.Utp_Attributes;
with AMF.UML.Behaviors;
with AMF.Utp.Test_Cases.Collections;
with AMF.Visitors.Utp_Iterators;
with AMF.Visitors.Utp_Visitors;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.Utp_Test_Suites is

   -----------------------
   -- Get_Base_Behavior --
   -----------------------

   overriding function Get_Base_Behavior
    (Self : not null access constant Utp_Test_Suite_Proxy)
       return AMF.UML.Behaviors.UML_Behavior_Access is
   begin
      return
        AMF.UML.Behaviors.UML_Behavior_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.Utp_Attributes.Internal_Get_Base_Behavior
             (Self.Element)));
   end Get_Base_Behavior;

   -----------------------
   -- Set_Base_Behavior --
   -----------------------

   overriding procedure Set_Base_Behavior
    (Self : not null access Utp_Test_Suite_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is
   begin
      AMF.Internals.Tables.Utp_Attributes.Internal_Set_Base_Behavior
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Base_Behavior;

   -------------------
   -- Get_Test_Case --
   -------------------

   overriding function Get_Test_Case
    (Self : not null access constant Utp_Test_Suite_Proxy)
       return AMF.Utp.Test_Cases.Collections.Set_Of_Utp_Test_Case is
   begin
      return
        AMF.Utp.Test_Cases.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.Utp_Attributes.Internal_Get_Test_Case
             (Self.Element)));
   end Get_Test_Case;

   ------------------
   -- Get_Priority --
   ------------------

   overriding function Get_Priority
    (Self : not null access constant Utp_Test_Suite_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.Utp_Attributes.Internal_Get_Priority (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Priority;

   ------------------
   -- Set_Priority --
   ------------------

   overriding procedure Set_Priority
    (Self : not null access Utp_Test_Suite_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Priority
          (Self.Element, null);

      else
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Priority
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Priority;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant Utp_Test_Suite_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.Utp_Visitors.Utp_Visitor'Class then
         AMF.Visitors.Utp_Visitors.Utp_Visitor'Class
          (Visitor).Enter_Test_Suite
            (AMF.Utp.Test_Suites.Utp_Test_Suite_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant Utp_Test_Suite_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.Utp_Visitors.Utp_Visitor'Class then
         AMF.Visitors.Utp_Visitors.Utp_Visitor'Class
          (Visitor).Leave_Test_Suite
            (AMF.Utp.Test_Suites.Utp_Test_Suite_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant Utp_Test_Suite_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.Utp_Iterators.Utp_Iterator'Class then
         AMF.Visitors.Utp_Iterators.Utp_Iterator'Class
          (Iterator).Visit_Test_Suite
            (Visitor,
             AMF.Utp.Test_Suites.Utp_Test_Suite_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.Utp_Test_Suites;
