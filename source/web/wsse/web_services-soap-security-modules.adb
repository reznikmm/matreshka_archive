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

with Web_Services.SOAP.Payloads.Faults.Simple;
with Web_Services.SOAP.Security.Headers;
with Web_Services.SOAP.Security.Password_Digest_Utilities;

package body Web_Services.SOAP.Security.Modules is

   procedure Default_Provider
    (Username : League.Strings.Universal_String;
     Password : out League.Strings.Universal_String;
     Success  : out Boolean);

   Get_Authentication_Data : Authentication_Data_Provider
     := Default_Provider'Access;

   procedure Create_Invalid_Security_Token_Fault
    (Output : out Web_Services.SOAP.Messages.SOAP_Message_Access);

   procedure Create_Failed_Authentication_Fault
    (Output : out Web_Services.SOAP.Messages.SOAP_Message_Access);

   ----------------------------------------
   -- Create_Failed_Authentication_Fault --
   ----------------------------------------

   procedure Create_Failed_Authentication_Fault
    (Output : out Web_Services.SOAP.Messages.SOAP_Message_Access) is
   begin
      Output :=
        new Web_Services.SOAP.Messages.SOAP_Message'
         (Payload =>
            Web_Services.SOAP.Payloads.Faults.Simple.Create_SOAP_Fault
             (League.Strings.To_Universal_String ("Sender"),
              League.Strings.To_Universal_String ("en-US"),
              League.Strings.To_Universal_String
               ("The security token could not be authenticated"
                  & " or authorized")),
          others => <>);
--  XXX Fault/Code/Subcode/Value must be set to:
--                 WSSE_Namespace_URI,
--                 League.Strings.To_Universal_String ("wsse"),
--                 League.Strings.To_Universal_String ("FailedAuthentication")
   end Create_Failed_Authentication_Fault;

   -----------------------------------------
   -- Create_Invalid_Security_Token_Fault --
   -----------------------------------------

   procedure Create_Invalid_Security_Token_Fault
    (Output : out Web_Services.SOAP.Messages.SOAP_Message_Access) is
   begin
      Output :=
        new Web_Services.SOAP.Messages.SOAP_Message'
         (Payload =>
            Web_Services.SOAP.Payloads.Faults.Simple.Create_SOAP_Fault
             (League.Strings.To_Universal_String ("Sender"),
              League.Strings.To_Universal_String ("en-US"),
              League.Strings.To_Universal_String
               ("An invalid security token was provided")),
          others => <>);
--  XXX Fault/Code/Subcode/Value must be set to:
--                 WSSE_Namespace_URI,
--                 League.Strings.To_Universal_String ("wsse"),
--                 League.Strings.To_Universal_String ("InvalidSecurityToken")
   end Create_Invalid_Security_Token_Fault;

   ----------------------
   -- Default_Provider --
   ----------------------

   procedure Default_Provider
    (Username : League.Strings.Universal_String;
     Password : out League.Strings.Universal_String;
     Success  : out Boolean)
   is
      use type League.Strings.Universal_String;

   begin
      if Username /= League.Strings.To_Universal_String ("boris") then
         Success := False;

      else
         Success := True;
         Password := League.Strings.To_Universal_String ("123");
      end if;
   end Default_Provider;

   ---------------------
   -- Receive_Request --
   ---------------------

   overriding procedure Receive_Request
    (Self    : in out Security_Module;
     Message : in out Web_Services.SOAP.Messages.SOAP_Message;
     Output  : in out Web_Services.SOAP.Messages.SOAP_Message_Access)
   is
      use type League.Stream_Element_Vectors.Stream_Element_Vector;
      use type League.Strings.Universal_String;
      use type Web_Services.SOAP.Security.Headers.Username_Token_Header_Access;

      Token    :
        Web_Services.SOAP.Security.Headers.Username_Token_Header_Access;
      Password : League.Strings.Universal_String;
      Success  : Boolean;

   begin
      --  There is no authentication data provider configured, security is
      --  disabled.

      if Get_Authentication_Data = null then
         return;
      end if;

      --  Obtain authentication token.

      for Header of Message.Headers loop
         if Header.all
           in Web_Services.SOAP.Security.Headers.Username_Token_Header'Class
         then
            Token :=
              Web_Services.SOAP.Security.Headers.Username_Token_Header_Access
               (Header);

            exit;
         end if;
      end loop;

      --  Authentication token is not provided, return fault.

      if Token = null then
         Create_Invalid_Security_Token_Fault (Output);

         return;
      end if;

      --  Obtain authentication data.

      Get_Authentication_Data (Token.Username, Password, Success);

      if not Success then
         Create_Failed_Authentication_Fault (Output);

         return;
      end if;

      --  Check password.

      case Token.Mode is
         when Web_Services.SOAP.Security.Headers.Text =>
            if Password /= Token.Password then
               Create_Failed_Authentication_Fault (Output);

               return;
            end if;

         when Web_Services.SOAP.Security.Headers.Digest =>
            --  Password digest is calculated as:
            --
            --    Password_Digest =
            --      Base64 ( SHA-1 ( nonce + created + password ) )

            if Web_Services.SOAP.Security.Password_Digest_Utilities.
                 Compute_Digest (Password, Token.Nonce, Token.Created)
                   /= Token.Digest
            then
               Create_Failed_Authentication_Fault (Output);

               return;
            end if;
      end case;
   end Receive_Request;

   ------------------
   -- Send_Request --
   ------------------

   overriding procedure Send_Request
     (Self     : in out Security_Module;
      Message  : in out Web_Services.SOAP.Messages.SOAP_Message;
      User     : League.Strings.Universal_String;
      Password : League.Strings.Universal_String) is
   begin
      if User.Is_Empty then
         return;
      end if;

      declare
         Header : constant
           Web_Services.SOAP.Security.Headers.Username_Token_Header_Access
             := new Web_Services.SOAP.Security.Headers.Username_Token_Header;

      begin
         Header.Username := User;
         Header.Nonce :=
           Web_Services.SOAP.Security.Password_Digest_Utilities.Generate_Nonce;
         Header.Created :=
           Web_Services.SOAP.Security.Password_Digest_Utilities.
             Generate_Created;
         Header.Digest :=
           Web_Services.SOAP.Security.Password_Digest_Utilities.Compute_Digest
            (Password, Header.Nonce, Header.Created);

         Message.Headers.Insert (Header.all'Access);
      end;
   end Send_Request;

   --------------------------------------
   -- Set_Authentication_Data_Provider --
   --------------------------------------

   procedure Set_Authentication_Data_Provider
    (Provider : Authentication_Data_Provider) is
   begin
      Get_Authentication_Data := Provider;
   end Set_Authentication_Data_Provider;

end Web_Services.SOAP.Security.Modules;
