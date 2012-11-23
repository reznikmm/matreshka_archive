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
with Ada.Containers.Doubly_Linked_Lists;

package body Web_Services.SOAP.Modules.Registry is

   package Module_Lists is
     new Ada.Containers.Doubly_Linked_Lists (SOAP_Module_Access);

   Modules : Module_Lists.List;

   -----------------------------
   -- Execute_Receive_Request --
   -----------------------------

   procedure Execute_Receive_Request
    (Message : in out Web_Services.SOAP.Messages.SOAP_Message;
     Output  : in out Web_Services.SOAP.Messages.SOAP_Message_Access)
   is
      use type Web_Services.SOAP.Messages.SOAP_Message_Access;

   begin
      for M of Modules loop
         M.Receive_Request (Message, Output);

         exit when Output /= null;
      end loop;
   end Execute_Receive_Request;

   --------------------------
   -- Execute_Send_Request --
   --------------------------

   procedure Execute_Send_Request
    (Message  : in out Web_Services.SOAP.Messages.SOAP_Message;
     User     : League.Strings.Universal_String;
     Password : League.Strings.Universal_String)
   is
      use type Web_Services.SOAP.Messages.SOAP_Message_Access;

   begin
      for M of Modules loop
         M.Send_Request (Message, User, Password);
      end loop;
   end Execute_Send_Request;

   --------------
   -- Register --
   --------------

   procedure Register (Module : SOAP_Module_Access) is
   begin
      Modules.Append (Module);
   end Register;

end Web_Services.SOAP.Modules.Registry;
