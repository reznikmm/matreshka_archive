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
with Web_Services.SOAP.Constants;

package body Web_Services.SOAP.Payloads.Faults.Simple is

   use Web_Services.SOAP.Constants;

   ---------------------
   -- Code_Local_Name --
   ---------------------

   overriding function Code_Local_Name
    (Self : Simple_Fault) return League.Strings.Universal_String is
   begin
      return Self.Local_Name;
   end Code_Local_Name;

   ------------------------
   -- Code_Namespace_URI --
   ------------------------

   overriding function Code_Namespace_URI
    (Self : Simple_Fault) return League.Strings.Universal_String is
   begin
      return Self.Namespace_URI;
   end Code_Namespace_URI;

   -----------------
   -- Code_Prefix --
   -----------------

   overriding function Code_Prefix
    (Self : Simple_Fault) return League.Strings.Universal_String is
   begin
      return Self.Prefix;
   end Code_Prefix;

   ------------
   -- Create --
   ------------

   function Create
    (Code_Prefix        : League.Strings.Universal_String;
     Code_Namespace_URI : League.Strings.Universal_String;
     Code_Local_Name    : League.Strings.Universal_String;
     Reason_Language    : League.Strings.Universal_String;
     Reason_Text        : League.Strings.Universal_String;
     Detail             : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String)
       return Web_Services.SOAP.Payloads.SOAP_Payload_Access is
   begin
      return Result : constant Web_Services.SOAP.Payloads.SOAP_Payload_Access
               := new Simple_Fault
      do
         declare
            Self : Simple_Fault renames Simple_Fault (Result.all);

         begin
            Self.Prefix        := Code_Prefix;
            Self.Namespace_URI := Code_Namespace_URI;
            Self.Local_Name    := Code_Local_Name;
            Self.Reason.Insert (Reason_Language, Reason_Text);
            Self.Detail        := Detail;
         end;
      end return;
   end Create;

   -----------------------
   -- Create_SOAP_Fault --
   -----------------------

   function Create_SOAP_Fault
    (Code_Local_Name    : League.Strings.Universal_String;
     Reason_Language    : League.Strings.Universal_String;
     Reason_Text        : League.Strings.Universal_String;
     Detail             : League.Strings.Universal_String
       := League.Strings.Empty_Universal_String)
       return Web_Services.SOAP.Payloads.SOAP_Payload_Access is
   begin
      return
        Create
         (SOAP_Envelope_Prefix,
          SOAP_Envelope_URI,
          Code_Local_Name,
          Reason_Language,
          Reason_Text);
   end Create_SOAP_Fault;

   ------------
   -- Reason --
   ------------

   overriding function Reason
    (Self : Simple_Fault)
       return Web_Services.SOAP.Payloads.Faults.Language_Text_Maps.Map is
   begin
      return Self.Reason;
   end Reason;

end Web_Services.SOAP.Payloads.Faults.Simple;
