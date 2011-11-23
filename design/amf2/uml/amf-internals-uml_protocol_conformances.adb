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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Elements;
with AMF.Internals.Element_Collections;
with AMF.Internals.Helpers;
with AMF.Internals.Tables.UML_Attributes;
with League.Strings.Internals;
with Matreshka.Internals.Strings;

package body AMF.Internals.UML_Protocol_Conformances is

   -------------------------
   -- Get_General_Machine --
   -------------------------

   overriding function Get_General_Machine
    (Self : not null access constant UML_Protocol_Conformance_Proxy)
       return AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access is
   begin
      return
        AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_General_Machine
             (Self.Id)));
   end Get_General_Machine;

   -------------------------
   -- Set_General_Machine --
   -------------------------

   overriding procedure Set_General_Machine
    (Self : not null access UML_Protocol_Conformance_Proxy;
     To   : AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_General_Machine
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_General_Machine;

   --------------------------
   -- Get_Specific_Machine --
   --------------------------

   overriding function Get_Specific_Machine
    (Self : not null access constant UML_Protocol_Conformance_Proxy)
       return AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access is
   begin
      return
        AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access
         (AMF.Internals.Helpers.To_Element
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Specific_Machine
             (Self.Id)));
   end Get_Specific_Machine;

   --------------------------
   -- Set_Specific_Machine --
   --------------------------

   overriding procedure Set_Specific_Machine
    (Self : not null access UML_Protocol_Conformance_Proxy;
     To   : AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access) is
   begin
      raise Program_Error;
--        AMF.Internals.Tables.UML_Attributes.Internal_Set_Specific_Machine
--         (Self.Id,
--          AMF.Internals.Helpers.To_Element
--           (AMF.Elements.Element_Access (To)));
   end Set_Specific_Machine;

   ----------------
   -- Get_Source --
   ----------------

   overriding function Get_Source
    (Self : not null access constant UML_Protocol_Conformance_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Source
             (Self.Id)));
   end Get_Source;

   ----------------
   -- Get_Target --
   ----------------

   overriding function Get_Target
    (Self : not null access constant UML_Protocol_Conformance_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Target
             (Self.Id)));
   end Get_Target;

   -------------------------
   -- Get_Related_Element --
   -------------------------

   overriding function Get_Related_Element
    (Self : not null access constant UML_Protocol_Conformance_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      return
        AMF.UML.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (AMF.Internals.Tables.UML_Attributes.Internal_Get_Related_Element
             (Self.Id)));
   end Get_Related_Element;

   -----------------------
   -- Get_Owned_Comment --
   -----------------------

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Protocol_Conformance_Proxy)
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
    (Self : not null access constant UML_Protocol_Conformance_Proxy)
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
    (Self : not null access constant UML_Protocol_Conformance_Proxy)
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
    (Self : not null access constant UML_Protocol_Conformance_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Protocol_Conformance_Proxy.All_Owned_Elements";
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

   -------------------
   -- Must_Be_Owned --
   -------------------

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Protocol_Conformance_Proxy)
       return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Must_Be_Owned unimplemented");
      raise Program_Error with "Unimplemented procedure UML_Protocol_Conformance_Proxy.Must_Be_Owned";
      return Must_Be_Owned (Self);
   end Must_Be_Owned;

end AMF.Internals.UML_Protocol_Conformances;
