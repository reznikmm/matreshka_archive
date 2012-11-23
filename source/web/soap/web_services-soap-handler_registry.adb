------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
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
with Ada.Containers.Hashed_Maps;
with Ada.Strings.Hash;

package body Web_Services.SOAP.Handler_Registry is

   function Hash (Item : Ada.Tags.Tag) return Ada.Containers.Hash_Type;

   package Tag_Handler_Maps is
     new Ada.Containers.Hashed_Maps
          (Ada.Tags.Tag,
           Web_Services.SOAP.Handlers.SOAP_Message_Handler,
           Hash,
           Ada.Tags."=",
           Web_Services.SOAP.Handlers."=");

   Registry : Tag_Handler_Maps.Map;

   ----------
   -- Hash --
   ----------

   function Hash (Item : Ada.Tags.Tag) return Ada.Containers.Hash_Type is
      use type Ada.Tags.Tag;

   begin
      if Item = Ada.Tags.No_Tag then
         return 0;

      else
         return Ada.Strings.Hash (Ada.Tags.External_Tag (Item));
      end if;
   end Hash;

   --------------
   -- Register --
   --------------

   procedure Register
    (Tag     : Ada.Tags.Tag;
     Handler : not null Web_Services.SOAP.Handlers.SOAP_Message_Handler) is
   begin
      Registry.Insert (Tag, Handler);
   end Register;

   --------------
   -- Register --
   --------------

   procedure Register
    (Handler : not null Web_Services.SOAP.Handlers.SOAP_RPC_Handler) is
   begin
      RPC_Registry.Append (Handler);
   end Register;

   -------------
   -- Resolve --
   -------------

   function Resolve
    (Tag : Ada.Tags.Tag)
       return Web_Services.SOAP.Handlers.SOAP_Message_Handler
   is
      Position : constant Tag_Handler_Maps.Cursor := Registry.Find (Tag);

   begin
      if Tag_Handler_Maps.Has_Element (Position) then
         return Tag_Handler_Maps.Element (Position);

      else
         return null;
      end if;
   end Resolve;

end Web_Services.SOAP.Handler_Registry;
