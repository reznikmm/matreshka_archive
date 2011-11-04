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

with AMF.Internals.Helpers;
with AMF.Internals.Tables.CMOF_Attributes;

package body AMF.Internals.CMOF_Named_Elements is

   use AMF.Internals.Tables.CMOF_Attributes;
   use type Matreshka.Internals.Strings.Shared_String_Access;

   --------------
   -- Get_Name --
   --------------

   overriding function Get_Name
    (Self : not null access constant CMOF_Named_Element_Proxy)
       return Optional_String
   is
      Aux : constant Matreshka.Internals.Strings.Shared_String_Access
        := Internal_Get_Name (Self.Id);

   begin
      if Aux = null then
         return (Is_Empty => True);

      else
         return (False, League.Strings.Internals.Create (Aux));
      end if;
   end Get_Name;

   -------------------
   -- Get_Namespace --
   -------------------

   overriding function Get_Namespace
    (Self : not null access constant CMOF_Named_Element_Proxy)
       return AMF.CMOF.Namespaces.CMOF_Namespace_Access is
   begin
      return
        AMF.CMOF.Namespaces.CMOF_Namespace_Access
         (AMF.Internals.Helpers.To_Element
           (Internal_Get_Namespace (Self.Id)));
   end Get_Namespace;

   --------------------
   -- Get_Visibility --
   --------------------

   overriding function Get_Visibility
    (Self : not null access constant CMOF_Named_Element_Proxy)
       return AMF.CMOF.Optional_CMOF_Visibility_Kind is
   begin
      return Internal_Get_Visibility (Self.Id);
   end Get_Visibility;

   ---------------
   -- Separator --
   ---------------

   overriding function Separator
    (Self : not null access constant CMOF_Named_Element_Proxy)
       return League.Strings.Universal_String is
   begin
      return League.Strings.To_Universal_String ("::");
   end Separator;

   --------------
   -- Set_Name --
   --------------

   overriding procedure Set_Name
    (Self : not null access CMOF_Named_Element_Proxy;
     To   : Optional_String) is
   begin
      if To.Is_Empty then
         Internal_Set_Name (Self.Id, null);

      else
         Internal_Set_Name
          (Self.Id, League.Strings.Internals.Internal (To.Value));
      end if;
   end Set_Name;

   --------------------
   -- Set_Visibility --
   --------------------

   overriding procedure Set_Visibility
    (Self : not null access CMOF_Named_Element_Proxy;
     To   : AMF.CMOF.Optional_CMOF_Visibility_Kind) is
   begin
      Internal_Set_Visibility (Self.Id, To);
   end Set_Visibility;

end AMF.Internals.CMOF_Named_Elements;
