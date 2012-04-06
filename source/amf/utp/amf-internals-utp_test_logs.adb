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
with AMF.Internals.Helpers;
with AMF.Internals.Tables.Utp_Attributes;
with AMF.String_Collections;
with AMF.UML.Behaviors;
with AMF.Utp;
with AMF.Visitors.Utp_Iterators;
with AMF.Visitors.Utp_Visitors;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.Utp_Test_Logs is

   -----------------------
   -- Get_Base_Behavior --
   -----------------------

   overriding function Get_Base_Behavior
    (Self : not null access constant Utp_Test_Log_Proxy)
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
    (Self : not null access Utp_Test_Log_Proxy;
     To   : AMF.UML.Behaviors.UML_Behavior_Access) is
   begin
      AMF.Internals.Tables.Utp_Attributes.Internal_Set_Base_Behavior
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Base_Behavior;

   ----------------
   -- Get_Tester --
   ----------------

   overriding function Get_Tester
    (Self : not null access constant Utp_Test_Log_Proxy)
       return AMF.String_Collections.Set_Of_String is
   begin
      raise Program_Error;
      return X : AMF.String_Collections.Set_Of_String;
   end Get_Tester;

   ---------------------
   -- Get_Executed_At --
   ---------------------

   overriding function Get_Executed_At
    (Self : not null access constant Utp_Test_Log_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.Utp_Attributes.Internal_Get_Executed_At (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Executed_At;

   ---------------------
   -- Set_Executed_At --
   ---------------------

   overriding procedure Set_Executed_At
    (Self : not null access Utp_Test_Log_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Executed_At
          (Self.Element, null);

      else
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Executed_At
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Executed_At;

   ------------------
   -- Get_Duration --
   ------------------

   overriding function Get_Duration
    (Self : not null access constant Utp_Test_Log_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.Utp_Attributes.Internal_Get_Duration (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Duration;

   ------------------
   -- Set_Duration --
   ------------------

   overriding procedure Set_Duration
    (Self : not null access Utp_Test_Log_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Duration
          (Self.Element, null);

      else
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Duration
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Duration;

   -----------------
   -- Get_Verdict --
   -----------------

   overriding function Get_Verdict
    (Self : not null access constant Utp_Test_Log_Proxy)
       return AMF.Utp.Utp_Verdict is
   begin
      return
        AMF.Internals.Tables.Utp_Attributes.Internal_Get_Verdict
         (Self.Element);
   end Get_Verdict;

   -----------------
   -- Set_Verdict --
   -----------------

   overriding procedure Set_Verdict
    (Self : not null access Utp_Test_Log_Proxy;
     To   : AMF.Utp.Utp_Verdict) is
   begin
      AMF.Internals.Tables.Utp_Attributes.Internal_Set_Verdict
       (Self.Element, To);
   end Set_Verdict;

   ------------------------
   -- Get_Verdict_Reason --
   ------------------------

   overriding function Get_Verdict_Reason
    (Self : not null access constant Utp_Test_Log_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.Utp_Attributes.Internal_Get_Verdict_Reason (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Verdict_Reason;

   ------------------------
   -- Set_Verdict_Reason --
   ------------------------

   overriding procedure Set_Verdict_Reason
    (Self : not null access Utp_Test_Log_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Verdict_Reason
          (Self.Element, null);

      else
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Verdict_Reason
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Verdict_Reason;

   ---------------------
   -- Get_Sut_Version --
   ---------------------

   overriding function Get_Sut_Version
    (Self : not null access constant Utp_Test_Log_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.Utp_Attributes.Internal_Get_Sut_Version (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Sut_Version;

   ---------------------
   -- Set_Sut_Version --
   ---------------------

   overriding procedure Set_Sut_Version
    (Self : not null access Utp_Test_Log_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Sut_Version
          (Self.Element, null);

      else
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Sut_Version
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Sut_Version;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant Utp_Test_Log_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.Utp_Visitors.Utp_Visitor'Class then
         AMF.Visitors.Utp_Visitors.Utp_Visitor'Class
          (Visitor).Enter_Test_Log
            (AMF.Utp.Test_Logs.Utp_Test_Log_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant Utp_Test_Log_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.Utp_Visitors.Utp_Visitor'Class then
         AMF.Visitors.Utp_Visitors.Utp_Visitor'Class
          (Visitor).Leave_Test_Log
            (AMF.Utp.Test_Logs.Utp_Test_Log_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant Utp_Test_Log_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.Utp_Iterators.Utp_Iterator'Class then
         AMF.Visitors.Utp_Iterators.Utp_Iterator'Class
          (Iterator).Visit_Test_Log
            (Visitor,
             AMF.Utp.Test_Logs.Utp_Test_Log_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.Utp_Test_Logs;
