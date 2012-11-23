------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Testsuite Component                           --
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
with Ada.Tags;

with Web_Services.SOAP.Handler_Registry;
with Web_Services.SOAP.Messages;

with SOAPConf.Payloads;

package body SOAPConf.Handlers is

   procedure Echo_OK_Handler
    (Input_Message  : Web_Services.SOAP.Messages.SOAP_Message_Access;
     Output_Message : out Web_Services.SOAP.Messages.SOAP_Message_Access);

   procedure Default_Handler
    (Input_Message  : Web_Services.SOAP.Messages.SOAP_Message_Access;
     Output_Message : out Web_Services.SOAP.Messages.SOAP_Message_Access);

   ---------------------
   -- Default_Handler --
   ---------------------

   procedure Default_Handler
    (Input_Message  : Web_Services.SOAP.Messages.SOAP_Message_Access;
     Output_Message : out Web_Services.SOAP.Messages.SOAP_Message_Access) is
   begin
      Output_Message := new Web_Services.SOAP.Messages.SOAP_Message;
   end Default_Handler;

   ---------------------
   -- Echo_OK_Handler --
   ---------------------

   procedure Echo_OK_Handler
    (Input_Message  : Web_Services.SOAP.Messages.SOAP_Message_Access;
     Output_Message : out Web_Services.SOAP.Messages.SOAP_Message_Access)
   is
      Input : SOAPConf.Payloads.Echo_OK
        renames SOAPConf.Payloads.Echo_OK (Input_Message.Payload.all);

   begin
      Output_Message :=
        new Web_Services.SOAP.Messages.SOAP_Message'
             (Action        => <>,
              Namespace_URI => <>,
              Local_Name    => <>,
              Output        => null,
              Headers       => <>,
              Payload       =>
                new SOAPConf.Payloads.Response_OK'(Text => Input.Text));
   end Echo_OK_Handler;

begin
   Web_Services.SOAP.Handler_Registry.Register
    (Ada.Tags.No_Tag, Default_Handler'Access);
   Web_Services.SOAP.Handler_Registry.Register
    (SOAPConf.Payloads.Echo_OK'Tag, Echo_OK_Handler'Access);
end SOAPConf.Handlers;
