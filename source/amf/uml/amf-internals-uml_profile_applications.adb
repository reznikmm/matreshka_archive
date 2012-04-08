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

package body AMF.Internals.UML_Profile_Applications is

   -------------------
   -- Enter_Element --
   -------------------

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Profile_Application_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Enter_Profile_Application
            (AMF.UML.Profile_Applications.UML_Profile_Application_Access (Self),
           Control);
      end if;
   end Enter_Element;

   -------------------
   -- Leave_Element --
   -------------------

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Profile_Application_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      if Visitor in AMF.Visitors.UML_Visitors.UML_Visitor'Class then
         AMF.Visitors.UML_Visitors.UML_Visitor'Class
          (Visitor).Leave_Profile_Application
            (AMF.UML.Profile_Applications.UML_Profile_Application_Access (Self),
           Control);
      end if;
   end Leave_Element;

   -------------------
   -- Visit_Element --
   -------------------

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Profile_Application_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control) is
   begin
      if Iterator in AMF.Visitors.UML_Iterators.UML_Iterator'Class then
         AMF.Visitors.UML_Iterators.UML_Iterator'Class
          (Iterator).Visit_Profile_Application
            (Visitor,
             AMF.UML.Profile_Applications.UML_Profile_Application_Access (Self),
             Control);
      end if;
   end Visit_Element;

   -------------------------
   -- Get_Applied_Profile --
   -------------------------

   overriding function Get_Applied_Profile
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Profiles.UML_Profile_Access is
   begin
      return
        AMF.UML.Profiles.UML_Profile_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Applied_Profile
             (Self.Element)));
   end Get_Applied_Profile;

   -------------------------
   -- Set_Applied_Profile --
   -------------------------

   overriding procedure Set_Applied_Profile
    (Self : not null access UML_Profile_Application_Proxy;
     To   : AMF.UML.Profiles.UML_Profile_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Applied_Profile
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Applied_Profile;

   --------------------------
   -- Get_Applying_Package --
   --------------------------

   overriding function Get_Applying_Package
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Packages.UML_Package_Access is
   begin
      return
        AMF.UML.Packages.UML_Package_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Applying_Package
             (Self.Element)));
   end Get_Applying_Package;

   --------------------------
   -- Set_Applying_Package --
   --------------------------

   overriding procedure Set_Applying_Package
    (Self : not null access UML_Profile_Application_Proxy;
     To   : AMF.UML.Packages.UML_Package_Access) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Applying_Package
       (Self.Element,
        AMF.Internals.Helpers.To_Element
         (AMF.Elements.Element_Access (To)));
   end Set_Applying_Package;

   -------------------
   -- Get_Is_Strict --
   -------------------

   overriding function Get_Is_Strict
    (Self : not null access constant UML_Profile_Application_Proxy)
       return Boolean is
   begin
      return
        AMF.Internals.Tables.UML_Attributes.Internal_Get_Is_Strict
         (Self.Element);
   end Get_Is_Strict;

   -------------------
   -- Set_Is_Strict --
   -------------------

   overriding procedure Set_Is_Strict
    (Self : not null access UML_Profile_Application_Proxy;
     To   : Boolean) is
   begin
      AMF.Internals.Tables.UML_Attributes.Internal_Set_Is_Strict
       (Self.Element, To);
   end Set_Is_Strict;

   ----------------
   -- Get_Source --
   ----------------

   overriding function Get_Source
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Source
             (Self.Element)));
   end Get_Source;

   ----------------
   -- Get_Target --
   ----------------

   overriding function Get_Target
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Target
             (Self.Element)));
   end Get_Target;

   -------------------------
   -- Get_Related_Element --
   -------------------------

   overriding function Get_Related_Element
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Related_Element
             (Self.Element)));
   end Get_Related_Element;

   -----------------------
   -- Get_Owned_Element --
   -----------------------

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owned_Element
             (Self.Element)));
   end Get_Owned_Element;

   ---------------
   -- Get_Owner --
   ---------------

   overriding function Get_Owner
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.UML_Element_Access is
   begin
      return
        AMF.UML.Elements.UML_Element_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Owner
             (Self.Element)));
   end Get_Owner;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Profile_Application_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Profile_Application_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

end AMF.Internals.UML_Profile_Applications;
