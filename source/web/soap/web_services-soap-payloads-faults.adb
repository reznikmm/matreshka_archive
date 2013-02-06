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
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Web_Services.SOAP.Constants;

package body Web_Services.SOAP.Payloads.Faults is

   ----------
   -- Code --
   ----------

   function Code (Self : Abstract_SOAP_Fault'Class) return Fault_Code is
   begin
      case Self.Kind is
         when Version_Mismatch =>
            return
             (Web_Services.SOAP.Constants.SOAP_Envelope_URI,
              Web_Services.SOAP.Constants.SOAP_Version_Mismatch_Code,
              Web_Services.SOAP.Constants.SOAP_Envelope_Prefix);

         when Must_Understand =>
            return
             (Web_Services.SOAP.Constants.SOAP_Envelope_URI,
              Web_Services.SOAP.Constants.SOAP_Must_Understand_Code,
              Web_Services.SOAP.Constants.SOAP_Envelope_Prefix);

         when Data_Encoding_Unknown =>
            return
             (Web_Services.SOAP.Constants.SOAP_Envelope_URI,
              Web_Services.SOAP.Constants.SOAP_Data_Encoding_Unknown_Code,
              Web_Services.SOAP.Constants.SOAP_Envelope_Prefix);

         when Sender =>
            return
             (Web_Services.SOAP.Constants.SOAP_Envelope_URI,
              Web_Services.SOAP.Constants.SOAP_Sender_Code,
              Web_Services.SOAP.Constants.SOAP_Envelope_Prefix);

         when Receiver =>
            return
             (Web_Services.SOAP.Constants.SOAP_Envelope_URI,
              Web_Services.SOAP.Constants.SOAP_Receiver_Code,
              Web_Services.SOAP.Constants.SOAP_Envelope_Prefix);
      end case;
   end Code;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self     : in out Abstract_SOAP_Fault'Class;
     Subcodes : Code_Vectors.Vector    := Code_Vectors.Empty_Vector;
     Reason   : Language_Text_Maps.Map := Language_Text_Maps.Empty_Map) is
   begin
      Self.Subcodes := Subcodes;
      Self.Reason   := Reason;
   end Initialize;

   ------------
   -- Reason --
   ------------

   function Reason
    (Self : Abstract_SOAP_Fault'Class) return Language_Text_Maps.Map is
   begin
      return Self.Reason;
   end Reason;

end Web_Services.SOAP.Payloads.Faults;
