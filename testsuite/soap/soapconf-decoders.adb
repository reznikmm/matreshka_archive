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
with Web_Services.SOAP.Payloads.Decoders.Registry;

with SOAPConf.Payloads;

package body SOAPConf.Decoders is

   use type League.Strings.Universal_String;

   Test_URI : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("http://example.org/ts-tests");

   Echo_OK_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("echoOk");

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out Test_Payload_Decoder;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Self.Collect then
         Self.Text.Append (Text);
      end if;
   end Characters;

   ------------
   -- Create --
   ------------

   overriding function Create
    (URI : not null access League.Strings.Universal_String)
       return Test_Payload_Decoder is
   begin
      return X : Test_Payload_Decoder do
         X.Text.Clear;
      end return;
   end Create;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out Test_Payload_Decoder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Success        : in out Boolean) is
   begin
      if Namespace_URI = Test_URI then
         if Local_Name = Echo_OK_Name then
            declare
               Msg : SOAPConf.Payloads.Echo_OK
                 renames SOAPConf.Payloads.Echo_OK (Self.Payload.all);

            begin
               Msg.Text := Self.Text;
               Self.Collect := True;
               Self.Text.Clear;
            end;
         end if;
      end if;
   end End_Element;

   -------------
   -- Payload --
   -------------

   overriding function Payload
    (Self : Test_Payload_Decoder)
       return not null Web_Services.SOAP.Payloads.SOAP_Payload_Access is
   begin
      return Self.Payload;
   end Payload;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Test_Payload_Decoder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
   begin
      if Namespace_URI = Test_URI then
         if Local_Name = Echo_OK_Name then
            Self.Payload := new SOAPConf.Payloads.Echo_OK;
            Self.Collect := True;
            Self.Text.Clear;

         else
            raise Program_Error;
         end if;

      else
         raise Program_Error;
      end if;
   end Start_Element;

begin
   Web_Services.SOAP.Payloads.Decoders.Registry.Register
    (Test_URI, Test_Payload_Decoder'Tag);
end SOAPConf.Decoders;
