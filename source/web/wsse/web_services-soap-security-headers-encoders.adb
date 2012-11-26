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
with League.Base_64;
with XML.SAX.Attributes;

with Web_Services.SOAP.Constants;
with Web_Services.SOAP.Security.Constants;

package body Web_Services.SOAP.Security.Headers.Encoders is

   ------------
   -- Create --
   ------------

   overriding function Create
    (Dummy : not null access Boolean) return Security_Header_Encoder
   is
      pragma Unreferenced (Dummy);

   begin
      return Self : Security_Header_Encoder;
   end Create;

   ------------
   -- Encode --
   ------------

   overriding procedure Encode
    (Self   : Security_Header_Encoder;
     Header : Web_Services.SOAP.Headers.Abstract_SOAP_Header'Class;
     Writer : in out XML.SAX.Writers.SAX_Writer'Class)
   is
      pragma Unreferenced (Self);

      use Web_Services.SOAP.Constants;
      use Web_Services.SOAP.Security.Constants;

      Attributes : XML.SAX.Attributes.SAX_Attributes;
      Token      : Username_Token_Header
        renames Username_Token_Header (Header);

   begin
      Writer.Start_Prefix_Mapping (WSSE_Namespace_Prefix, WSSE_Namespace_URI);
      Writer.Start_Prefix_Mapping (WSU_Namespace_Prefix, WSU_Namespace_URI);

      Attributes.Set_Value
        (SOAP_Envelope_URI, SOAP_Must_Understand_Name, SOAP_True_Literal);
      Writer.Start_Element (WSSE_Namespace_URI, Security_Element, Attributes);

      --  Username token.

      Attributes.Clear;
      Attributes.Set_Value
        (WSU_Namespace_URI, Id_Attribute, Id_Attribute_Value);
      Writer.Start_Element
        (WSSE_Namespace_URI, Username_Token_Element, Attributes);

      Writer.Start_Element (WSSE_Namespace_URI, Username_Element);
      Writer.Characters (Token.Username);
      Writer.End_Element (WSSE_Namespace_URI, Username_Element);

      case Token.Mode is
         when Text =>
            --  Serialize wsse:Password only.

            Attributes.Clear;
            Attributes.Set_Value (Type_Attribute, Password_Text_URI);
            Writer.Start_Element
             (WSSE_Namespace_URI, Password_Element, Attributes);
            Writer.Characters (Token.Password);
            Writer.End_Element (WSSE_Namespace_URI, Password_Element);

         when Digest =>
            --  Serialize wsse:Password, wsse:Nonce and wsu:Created.

            Attributes.Clear;
            Attributes.Set_Value (Type_Attribute, Password_Digest_URI);
            Writer.Start_Element
             (WSSE_Namespace_URI, Password_Element, Attributes);
            Writer.Characters (League.Base_64.To_Base_64 (Token.Digest));
            Writer.End_Element (WSSE_Namespace_URI, Password_Element);

            Writer.Start_Element (WSSE_Namespace_URI, Nonce_Element);
            Writer.Characters (League.Base_64.To_Base_64 (Token.Nonce));
            Writer.End_Element (WSSE_Namespace_URI, Nonce_Element);

            Writer.Start_Element (WSU_Namespace_URI, Created_Element);
            Writer.Characters (Token.Created);
            Writer.End_Element (WSU_Namespace_URI, Created_Element);
      end case;

      Writer.End_Element (WSSE_Namespace_URI, Username_Token_Element);

      Writer.End_Element (WSSE_Namespace_URI, Security_Element);
   end Encode;

end Web_Services.SOAP.Security.Headers.Encoders;
