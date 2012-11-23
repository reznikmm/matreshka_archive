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

with League.Stream_Element_Vectors;
with League.Strings;

with Web_Services.SOAP.Messages;
with Web_Services.SOAP.Payloads;

package Web_Services.SOAP.Clients is

   type Abstract_Transport is abstract tagged limited null record;

   not overriding procedure Post_Request
    (Self          : in out Abstract_Transport;
     Content_Type  : League.Stream_Element_Vectors.Stream_Element_Vector;
     Request_Data  : League.Stream_Element_Vectors.Stream_Element_Vector;
     Response_Data : out League.Stream_Element_Vectors.Stream_Element_Vector)
       is abstract;
   --  Send given request and return reply.

   not overriding function Is_Multipart_Content
    (Self : in out Abstract_Transport) return Boolean is abstract;
   --  If server return multipart replies

   not overriding procedure Next_Response
    (Self          : in out Abstract_Transport;
     Response_Data : out League.Stream_Element_Vectors.Stream_Element_Vector)
       is abstract;
   --  Get next responce. Only if server return multipart replies

   not overriding procedure Finalyze (Self : in out Abstract_Transport)
     is abstract;
   --  Clean up internal data before transport deallocation

   type SOAP_Client (Transport : access Abstract_Transport'Class) is
     tagged limited private;

   not overriding procedure Call
     (Self     : in out SOAP_Client;
      Request  : Web_Services.SOAP.Payloads.SOAP_Payload_Access;
      Response : out Web_Services.SOAP.Payloads.SOAP_Payload_Access;
      User     : League.Strings.Universal_String :=
        League.Strings.Empty_Universal_String;
      Password : League.Strings.Universal_String :=
        League.Strings.Empty_Universal_String;
      Action   : League.Strings.Universal_String :=
        League.Strings.Empty_Universal_String);
   --  Call server

   not overriding procedure Next_Response
     (Self     : in out SOAP_Client;
      Response : out Web_Services.SOAP.Payloads.SOAP_Payload_Access);

private

   type SOAP_Client (Transport : access Abstract_Transport'Class) is
     tagged limited null record;

   procedure Call
     (Self     : in out SOAP_Client;
      Input    : Web_Services.SOAP.Messages.SOAP_Message_Access;
      Response : out Web_Services.SOAP.Payloads.SOAP_Payload_Access);

end Web_Services.SOAP.Clients;
