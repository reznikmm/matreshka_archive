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

package body Test_248_Decoders is

   use type League.Strings.Universal_String;

   Test_URI         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://matreshka.forge.ada-ru.org/");
   End_Error_String : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("EndError");
   Error_String     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Error");

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out Test_248_Decoder;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Text = Error_String then
         Success := False;
      end if;
   end Characters;

   ------------
   -- Create --
   ------------

   overriding function Create
    (URI : not null access League.Strings.Universal_String)
       return Test_248_Decoder is
   begin
      return X : Test_248_Decoder;
   end Create;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out Test_248_Decoder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Success        : in out Boolean) is
   begin
      if Local_Name = End_Error_String then
         Success := False;
      end if;
   end End_Element;

   -------------
   -- Payload --
   -------------

   overriding function Payload
    (Self : Test_248_Decoder)
       return not null Web_Services.SOAP.Payloads.SOAP_Payload_Access is
   begin
      return null;
   end Payload;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Test_248_Decoder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
   begin
      if Local_Name = Error_String then
         Success := False;
      end if;
   end Start_Element;

begin
   Web_Services.SOAP.Payloads.Decoders.Registry.Register
    (Test_URI, Test_248_Decoder'Tag);
end Test_248_Decoders;
