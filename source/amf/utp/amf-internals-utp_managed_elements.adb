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
with AMF.UML.Elements;
with AMF.Visitors.Utp_Iterators;
with AMF.Visitors.Utp_Visitors;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.Utp_Managed_Elements is

   ----------------------
   -- Get_Base_Element --
   ----------------------

   overriding function Get_Base_Element
    (Self : not null access constant Utp_Managed_Element_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.Utp_Attributes.Internal_Get_Base_Element
             (Self.Element)));
   end Get_Base_Element;

   ----------------------
   -- Set_Base_Element --
   ----------------------

   overriding procedure Set_Base_Element
    (Self : not null access Utp_Managed_Element_Proxy;
     To   : AMF.UML.Elements.UML_Element_Access) is
   begin
      AMF.Internals.Tables.Utp_Attributes.Internal_Set_Base_Element
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Base_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
    (Self : not null access constant Utp_Managed_Element_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.Utp_Attributes.Internal_Get_Owner (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Owner;

   ---------------
   -- Set_Owner --
   ---------------

   overriding procedure Set_Owner
    (Self : not null access Utp_Managed_Element_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Owner
          (Self.Element, null);

      else
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Owner
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Owner;

   ---------------------
   -- Get_Description --
   ---------------------

   overriding function Get_Description
    (Self : not null access constant Utp_Managed_Element_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.Utp_Attributes.Internal_Get_Description (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Description;

   ---------------------
   -- Set_Description --
   ---------------------

   overriding procedure Set_Description
    (Self : not null access Utp_Managed_Element_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Description
          (Self.Element, null);

      else
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Description
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Description;

   -----------------
   -- Get_Version --
   -----------------

   overriding function Get_Version
    (Self : not null access constant Utp_Managed_Element_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.Utp_Attributes.Internal_Get_Version (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Version;

   -----------------
   -- Set_Version --
   -----------------

   overriding procedure Set_Version
    (Self : not null access Utp_Managed_Element_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Version
          (Self.Element, null);

      else
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Version
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Version;

   ---------------------
   -- Get_Criticality --
   ---------------------

   overriding function Get_Criticality
    (Self : not null access constant Utp_Managed_Element_Proxy)
       return AMF.Optional_String is
   begin
      declare
         use type Matreshka.Internals.Strings.Shared_String_Access;

         Aux : constant Matreshka.Internals.Strings.Shared_String_Access
           := AMF.Internals.Tables.Utp_Attributes.Internal_Get_Criticality (Self.Element);

      begin
         if Aux = null then
            return (Is_Empty => True);

         else
            return (False, League.Strings.Internals.Create (Aux));
         end if;
      end;
   end Get_Criticality;

   ---------------------
   -- Set_Criticality --
   ---------------------

   overriding procedure Set_Criticality
    (Self : not null access Utp_Managed_Element_Proxy;
     To   : AMF.Optional_String) is
   begin
      if To.Is_Empty then
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Criticality
          (Self.Element, null);

      else
         AMF.Internals.Tables.Utp_Attributes.Internal_Set_Criticality
          (Self.Element,
           League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Criticality;

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant Utp_Managed_Element_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.Utp_Visitors.Utp_Visitor'Class then
         AMF.Visitors.Utp_Visitors.Utp_Visitor'Class
          (Visitor).Enter_Managed_Element
            (AMF.Utp.Managed_Elements.Utp_Managed_Element_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant Utp_Managed_Element_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.Utp_Visitors.Utp_Visitor'Class then
         AMF.Visitors.Utp_Visitors.Utp_Visitor'Class
          (Visitor).Leave_Managed_Element
            (AMF.Utp.Managed_Elements.Utp_Managed_Element_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant Utp_Managed_Element_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.Utp_Iterators.Utp_Iterator'Class then
         AMF.Visitors.Utp_Iterators.Utp_Iterator'Class
          (Iterator).Visit_Managed_Element
            (Visitor,
             AMF.Utp.Managed_Elements.Utp_Managed_Element_Access (Self),
           Control);
      end if;
   end Visit_Element;

end AMF.Internals.Utp_Managed_Elements;
