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
with League.Strings.Internals;

with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.CMOF_Attributes;

package body AMF.Internals.CMOF_Tags is

   use AMF.Internals.Tables.CMOF_Attributes;

   ------------------------
   -- Enter_CMOF_Element --
   ------------------------

   overriding procedure Enter_CMOF_Element
    (Self    : not null access constant CMOF_Tag_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Tag (Self, Control);
   end Enter_CMOF_Element;

   ------------------------
   -- Leave_CMOF_Element --
   ------------------------

   overriding procedure Leave_CMOF_Element
    (Self    : not null access constant CMOF_Tag_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Tag (Self, Control);
   end Leave_CMOF_Element;

   -----------------
   -- Get_Element --
   -----------------

   overriding function Get_Element
    (Self : not null access constant CMOF_Tag_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element is
   begin
      return
        AMF.CMOF.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Element (Self.Id)));
   end Get_Element;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant CMOF_Tag_Proxy)
       return League.Strings.Universal_String is
   begin
      return League.Strings.Internals.Create (Internal_Get_Name (Self.Id));
   end Get_Name;

   -------------------
   -- Get_Tag_Owner --
   -------------------

   overriding function Get_Tag_Owner
    (Self : not null access constant CMOF_Tag_Proxy)
       return AMF.CMOF.Elements.CMOF_Element_Access is
   begin
      return
        AMF.CMOF.Elements.CMOF_Element_Access
         (AMF.Internals.Helpers.To_Element
           (Internal_Get_Tag_Owner (Self.Id)));
   end Get_Tag_Owner;

   ---------------
   -- Get_Value --
   ---------------

   overriding function Get_Value
    (Self : not null access constant CMOF_Tag_Proxy)
       return League.Strings.Universal_String is
   begin
      return League.Strings.Internals.Create (Internal_Get_Value (Self.Id));
   end Get_Value;

   --------------
   -- Set_Name --
   --------------

   overriding procedure Set_Name
    (Self : not null access CMOF_Tag_Proxy;
     To   : League.Strings.Universal_String) is
   begin
      Internal_Set_Name (Self.Id, League.Strings.Internals.Internal (To));
   end Set_Name;

   ---------------
   -- Set_Value --
   ---------------

   overriding procedure Set_Value
    (Self : not null access CMOF_Tag_Proxy;
     To   : League.Strings.Universal_String) is
   begin
      Internal_Set_Value (Self.Id, League.Strings.Internals.Internal (To));
   end Set_Value;

   -------------------
   -- Set_Tag_Owner --
   -------------------

   overriding procedure Set_Tag_Owner
    (Self : not null access CMOF_Tag_Proxy;
     To   : AMF.CMOF.Elements.CMOF_Element_Access) is
   begin
      raise Program_Error;
   end Set_Tag_Owner;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
    (Self : not null access constant CMOF_Tag_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element is
   begin
      raise Program_Error;
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant CMOF_Tag_Proxy) return Boolean is
   begin
      raise Program_Error;
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.CMOF_Tags;
