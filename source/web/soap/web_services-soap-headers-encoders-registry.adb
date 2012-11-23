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
with Ada.Tags.Generic_Dispatching_Constructor;

package body Web_Services.SOAP.Headers.Encoders.Registry is

   function Hash (Item : Ada.Tags.Tag) return Ada.Containers.Hash_Type;

   function Create is
     new Ada.Tags.Generic_Dispatching_Constructor
          (Web_Services.SOAP.Headers.Encoders.SOAP_Header_Encoder,
           Boolean,
           Web_Services.SOAP.Headers.Encoders.Create);

   package Tag_Tag_Maps is
     new Ada.Containers.Hashed_Maps
          (Ada.Tags.Tag,
           Ada.Tags.Tag,
           Hash,
           Ada.Tags."=",
           Ada.Tags."=");

   Registry : Tag_Tag_Maps.Map;

   ----------
   -- Hash --
   ----------

   function Hash (Item : Ada.Tags.Tag) return Ada.Containers.Hash_Type is
   begin
      return Ada.Strings.Hash (Ada.Tags.External_Tag (Item));
   end Hash;

   --------------
   -- Register --
   --------------

   procedure Register
    (Header_Tag : Ada.Tags.Tag; Encoder_Tag : Ada.Tags.Tag) is
   begin
      Registry.Insert (Header_Tag, Encoder_Tag);
   end Register;

   -------------
   -- Resolve --
   -------------

   function Resolve
    (Message_Tag : Ada.Tags.Tag)
       return
         not null
           Web_Services.SOAP.Headers.Encoders.SOAP_Header_Encoder_Access
   is
      Aux : aliased Boolean := False;

   begin
      return
        new Web_Services.SOAP.Headers.Encoders.SOAP_Header_Encoder'Class'
             (Create (Registry.Element (Message_Tag), Aux'Access));
   end Resolve;

end Web_Services.SOAP.Headers.Encoders.Registry;
