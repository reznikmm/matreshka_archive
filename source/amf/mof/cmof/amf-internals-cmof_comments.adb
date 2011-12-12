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
with Matreshka.Internals.Strings;
with League.Strings.Internals;

with AMF.Internals.Element_Collections;
with AMF.Internals.Tables.CMOF_Attributes;

package body AMF.Internals.CMOF_Comments is

   use AMF.Internals.Tables.CMOF_Attributes;
   use type Matreshka.Internals.Strings.Shared_String_Access;

   ------------------------
   -- Enter_CMOF_Element --
   ------------------------

   overriding procedure Enter_CMOF_Element
    (Self    : not null access constant CMOF_Comment_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Enter_Comment (Self, Control);
   end Enter_CMOF_Element;

   ---------------------------
   -- Get_Annotated_Element --
   ---------------------------

   overriding function Get_Annotated_Element
    (Self : not null access constant CMOF_Comment_Proxy)
       return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element is
   begin
      return
        AMF.CMOF.Elements.Collections.Wrap
         (AMF.Internals.Element_Collections.Wrap
           (Internal_Get_Annotated_Element (Self.Id)));
   end Get_Annotated_Element;

   --------------
   -- Get_Body --
   --------------

   overriding function Get_Body
    (Self : not null access constant CMOF_Comment_Proxy)
       return Optional_String
   is
      Aux : constant Matreshka.Internals.Strings.Shared_String_Access
        := Internal_Get_Body (Self.Id);

   begin
      if Aux = null then
         return (Is_Empty => True);

      else
         return (False, League.Strings.Internals.Create (Aux));
      end if;
   end Get_Body;

   ------------------------
   -- Leave_CMOF_Element --
   ------------------------

   overriding procedure Leave_CMOF_Element
    (Self    : not null access constant CMOF_Comment_Proxy;
     Visitor : not null access AMF.Visitors.CMOF_Visitors.CMOF_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control) is
   begin
      Visitor.Leave_Comment (Self, Control);
   end Leave_CMOF_Element;

   --------------
   -- Set_Body --
   --------------

   overriding procedure Set_Body
    (Self : not null access CMOF_Comment_Proxy;
     To   : Optional_String) is
   begin
      if To.Is_Empty then
         Internal_Set_Body (Self.Id, null);

      else
         Internal_Set_Body
          (Self.Id, League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Body;

   ------------------------
   -- All_Owned_Elements --
   ------------------------

   overriding function All_Owned_Elements
     (Self : not null access constant CMOF_Comment_Proxy)
      return AMF.CMOF.Elements.Collections.Set_Of_CMOF_Element
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "All_Owned_Elements unimplemented");
      raise Program_Error;
      return All_Owned_Elements (Self);
   end All_Owned_Elements;

end AMF.Internals.CMOF_Comments;
