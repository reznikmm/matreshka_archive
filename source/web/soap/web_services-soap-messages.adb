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
with Ada.Strings.Hash;
with Ada.Tags;
with Ada.Unchecked_Deallocation;

package body Web_Services.SOAP.Messages is

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out SOAP_Message) is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Web_Services.SOAP.Headers.Abstract_SOAP_Header'Class,
              Web_Services.SOAP.Headers.SOAP_Header_Access);

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Web_Services.SOAP.Payloads.Abstract_SOAP_Payload'Class,
              Web_Services.SOAP.Payloads.SOAP_Payload_Access);

      Position : Header_Sets.Cursor;
      Header   : Web_Services.SOAP.Headers.SOAP_Header_Access;

   begin
      while not Self.Headers.Is_Empty loop
         Position := Self.Headers.First;
         Header := Header_Sets.Element (Position);
         Self.Headers.Delete (Position);
         Free (Header);
      end loop;

      Free (Self.Payload);
   end Finalize;

   ----------
   -- Free --
   ----------

   procedure Free (Message : in out SOAP_Message_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Web_Services.SOAP.Messages.SOAP_Message,
              Web_Services.SOAP.Messages.SOAP_Message_Access);

   begin
      if Message /= null then
         Finalize (Message.all);
         Free (Message);
      end if;
   end Free;

   ----------
   -- Hash --
   ----------

   function Hash
    (Item : Web_Services.SOAP.Headers.SOAP_Header_Access)
       return Ada.Containers.Hash_Type is
   begin
      return Ada.Strings.Hash (Ada.Tags.External_Tag (Item'Tag));
   end Hash;

end Web_Services.SOAP.Messages;
