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
with League.Strings;

package Web_Services.SOAP.Security.Constants is

   WSSE_Namespace_URI  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://docs.oasis-open.org/wss/2004/01/"
            & "oasis-200401-wss-wssecurity-secext-1.0.xsd");
   WSU_Namespace_URI   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://docs.oasis-open.org/wss/2004/01/"
            & "oasis-200401-wss-wssecurity-utility-1.0.xsd");
   Password_Digest_URI : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
       ("http://docs.oasis-open.org/wss/2004/01/"
            & "oasis-200401-wss-username-token-profile-1.0#PasswordDigest");
   Password_Text_URI   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
       ("http://docs.oasis-open.org/wss/2004/01/"
            & "oasis-200401-wss-username-token-profile-1.0#PasswordText");

   WSSE_Namespace_Prefix : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("wsse");
   WSU_Namespace_Prefix : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("wsu");

   Security_Element       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Security");
   Username_Token_Element : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("UsernameToken");
   Username_Element       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Username");
   Password_Element       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Password");
   Nonce_Element          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Nonce");
   Created_Element        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Created");
   Type_Attribute         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Type");
   Id_Attribute           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Id");
   Id_Attribute_Value     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("User");

end Web_Services.SOAP.Security.Constants;
