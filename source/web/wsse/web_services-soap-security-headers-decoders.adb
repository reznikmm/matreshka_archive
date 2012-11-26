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
with Web_Services.SOAP.Security.Constants;

package body Web_Services.SOAP.Security.Headers.Decoders is

   use Web_Services.SOAP.Security.Constants;
   use type League.Strings.Universal_String;

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out Security_Header_Decoder;
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
       return Security_Header_Decoder is
   begin
      return Self : Security_Header_Decoder do
         Self.Token := new Username_Token_Header;
      end return;
   end Create;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out Security_Header_Decoder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Success        : in out Boolean) is
   begin
      if Namespace_URI = WSSE_Namespace_URI then
         if Local_Name = Username_Element then
            Self.Token.Username := Self.Text;
            Self.Text.Clear;
            Self.Collect := False;

         elsif Local_Name = Password_Element then
            case Self.Token.Mode is
               when Text =>
                  Self.Token.Password := Self.Text;

               when Digest =>
                  begin
                     Self.Token.Digest :=
                       League.Base_64.From_Base_64 (Self.Text);

                  exception
                     when Constraint_Error =>
                        --  Constraint_Error can be raised by From_Base_64
                        --  function when source data is mailformed.

                        Success := False;
                  end;
            end case;

            Self.Text.Clear;
            Self.Collect := False;

         elsif Local_Name = Nonce_Element then
            begin
               Self.Token.Nonce := League.Base_64.From_Base_64 (Self.Text);
               Self.Text.Clear;
               Self.Collect := False;

            exception
               when Constraint_Error =>
                  --  Constraint_Error can be raised by From_Base_64 function
                  --  when source data is mailformed.

                  Success := False;
            end;
         end if;

      elsif Namespace_URI = WSU_Namespace_URI then
         if Local_Name = Created_Element then
            Self.Token.Created := Self.Text;
            Self.Text.Clear;
            Self.Collect := False;
         end if;
      end if;
   end End_Element;

   ------------
   -- Header --
   ------------

   overriding function Header
    (Self : Security_Header_Decoder)
       return not null Web_Services.SOAP.Headers.SOAP_Header_Access is
   begin
      return Web_Services.SOAP.Headers.SOAP_Header_Access (Self.Token);
   end Header;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Security_Header_Decoder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean)
   is
      Value : League.Strings.Universal_String;

   begin
      if Namespace_URI = WSSE_Namespace_URI then
         if Local_Name = Security_Element then
            null;

         elsif Local_Name = Username_Token_Element then
            null;

         elsif Local_Name = Username_Element then
            Self.Collect := True;
            Self.Text.Clear;

         elsif Local_Name = Password_Element then
            Value := Attributes.Value (Type_Attribute);

            if Value = Password_Text_URI then
               Self.Token.Mode := Text;
               Self.Collect := True;
               Self.Text.Clear;

            elsif Value = Password_Digest_URI then
               Self.Token.Mode := Digest;
               Self.Collect := True;
               Self.Text.Clear;

            else
               --  Type of wsse:Password is not known, stop processing and
               --  report error.

               Success := False;
            end if;

         elsif Local_Name = Nonce_Element then
            Self.Collect := True;
            Self.Text.Clear;

         else
            Success := False;
         end if;

      elsif Namespace_URI = WSU_Namespace_URI then
         if Local_Name = Created_Element then
            Self.Collect := True;
            Self.Text.Clear;

         else
            Success := False;
         end if;

      else
         Success := False;
      end if;
   end Start_Element;

end Web_Services.SOAP.Security.Headers.Decoders;
