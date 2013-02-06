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
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Unchecked_Deallocation;

with League.Strings;
with League.Text_Codecs;
with XML.SAX.Attributes;
with XML.SAX.Pretty_Writers;
with XML.SAX.Writers;

with Web_Services.SOAP.Constants;
with Web_Services.SOAP.Headers.Encoders.Registry;
with Web_Services.SOAP.Payloads.Encoders.Registry;
with Web_Services.SOAP.Payloads.Faults;

package body Web_Services.SOAP.Message_Encoders is

   use Web_Services.SOAP.Constants;

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Web_Services.SOAP.Payloads.Encoders.SOAP_Payload_Encoder'Class,
           Web_Services.SOAP.Payloads.Encoders.SOAP_Payload_Encoder_Access);

   procedure Encode_Fault
    (Fault  : Web_Services.SOAP.Payloads.Faults.Abstract_SOAP_Fault'Class;
     Writer : in out XML.SAX.Writers.SAX_Writer'Class);

   ------------
   -- Encode --
   ------------

   function Encode
    (Self    : in out SOAP_Message_Encoder'Class;
     Message : Web_Services.SOAP.Messages.SOAP_Message)
       return League.Stream_Element_Vectors.Stream_Element_Vector
   is
      pragma Unreferenced (Self);

      use type Web_Services.SOAP.Payloads.SOAP_Payload_Access;

      Codec   : constant League.Text_Codecs.Text_Codec
        := League.Text_Codecs.Codec
            (League.Strings.To_Universal_String ("utf-8"));
      Writer  : XML.SAX.Pretty_Writers.SAX_Pretty_Writer;
      Encoder :
        Web_Services.SOAP.Payloads.Encoders.SOAP_Payload_Encoder_Access;

   begin
      Writer.Start_Document;
      Writer.Start_Prefix_Mapping (SOAP_Envelope_Prefix, SOAP_Envelope_URI);

      --  Start env:Envelope element.

      Writer.Start_Element (SOAP_Envelope_URI, SOAP_Envelope_Name);

      --  Write env:Header elements.

      for Header of Message.Headers loop
         Writer.Start_Element (SOAP_Envelope_URI, SOAP_Header_Name);

         declare
            Header_Encoder : constant Web_Services.SOAP
              .Headers.Encoders.SOAP_Header_Encoder_Access
                := Web_Services.SOAP.Headers.Encoders.Registry.Resolve
                  (Header'Tag);
         begin
            Header_Encoder.Encode (Header.all, Writer);
         end;

         Writer.End_Element (SOAP_Envelope_URI, SOAP_Header_Name);
      end loop;

      --  Start env:Body element.

      Writer.Start_Element (SOAP_Envelope_URI, SOAP_Body_Name);

      --  Encode SOAP Body, when available.

      if Message.Payload /= null then
         if Message.Payload.all
              in Web_Services.SOAP.Payloads.Faults.Abstract_SOAP_Fault'Class
         then
            --  Encode SOAP Fault.

            Encode_Fault
             (Web_Services.SOAP.Payloads.Faults.Abstract_SOAP_Fault'Class
               (Message.Payload.all),
              Writer);
         else
            --  Lookup for SOAP payload encoder.

            Encoder :=
              Web_Services.SOAP.Payloads.Encoders.Registry.Resolve
               (Message.Payload'Tag);
            Encoder.Encode (Message.Payload.all, Writer);
            Free (Encoder);
         end if;
      end if;

      --  End env:Body and env:Envelope elements.

      Writer.End_Element (SOAP_Envelope_URI, SOAP_Body_Name);
      Writer.End_Element (SOAP_Envelope_URI, SOAP_Envelope_Name);

      return Codec.Encode (Writer.Text);
   end Encode;

   ------------------
   -- Encode_Fault --
   ------------------

   procedure Encode_Fault
    (Fault  : Web_Services.SOAP.Payloads.Faults.Abstract_SOAP_Fault'Class;
     Writer : in out XML.SAX.Writers.SAX_Writer'Class)
   is
      Reason     : constant
        Web_Services.SOAP.Payloads.Faults.Language_Text_Maps.Map
          := Fault.Reason;
      Position   :
        Web_Services.SOAP.Payloads.Faults.Language_Text_Maps.Cursor
          := Reason.First;
      Attributes : XML.SAX.Attributes.SAX_Attributes;

      procedure Write_Subcode (Index : Positive);

      -------------------
      -- Write_Subcode --
      -------------------

      procedure Write_Subcode (Index : Positive) is
         Code : constant Web_Services.SOAP.Payloads.Faults.Fault_Code
           := Fault.Subcodes.Element (Index);

      begin
         Writer.Start_Element (SOAP_Envelope_URI, SOAP_Subcode_Name);

         Writer.Start_Element (SOAP_Envelope_URI, SOAP_Value_Name);
         Writer.Characters (Code.Prefix);
         --  XXX Namespace URI to prefix mapping resolution must to be
         --  implemented here.
         Writer.Characters (':');
         Writer.Characters (Code.Local_Name);
         Writer.End_Element (SOAP_Envelope_URI, SOAP_Value_Name);

         if Integer (Fault.Subcodes.Length) > Index then
            Write_Subcode (Index + 1);
         end if;

         Writer.End_Element (SOAP_Envelope_URI, SOAP_Subcode_Name);
      end Write_Subcode;

   begin
      Writer.Start_Element (SOAP_Envelope_URI, SOAP_Fault_Name);

      --  Serialize mandatory 'Code' element. 'Value' element is mandatory,
      --  while 'Subcode' elements are optional.

      Writer.Start_Element (SOAP_Envelope_URI, SOAP_Code_Name);

      Writer.Start_Element (SOAP_Envelope_URI, SOAP_Value_Name);
      Writer.Characters (Fault.Code.Prefix);
      --  XXX Namespace URI to prefix mapping resolution must to be implemented
      --  here.
      Writer.Characters (':');
      Writer.Characters (Fault.Code.Local_Name);
      Writer.End_Element (SOAP_Envelope_URI, SOAP_Value_Name);

      --  Serialize 'Subcode' elements.

      if not Fault.Subcodes.Is_Empty then
         Write_Subcode (1);
      end if;

      Writer.End_Element (SOAP_Envelope_URI, SOAP_Code_Name);

      --  Serialize mandatory 'Reason' element.

      Writer.Start_Element (SOAP_Envelope_URI, SOAP_Reason_Name);

      while
        Web_Services.SOAP.Payloads.Faults.Language_Text_Maps.Has_Element
         (Position)
      loop
         Attributes.Clear;
         Attributes.Set_Value
          (XML_URI,
           XML_Lang_Name,
           Web_Services.SOAP.Payloads.Faults.Language_Text_Maps.Key
            (Position));
         Writer.Start_Element
          (SOAP_Envelope_URI, SOAP_Text_Name, Attributes => Attributes);
         Writer.Characters
          (Web_Services.SOAP.Payloads.Faults.Language_Text_Maps.Element
            (Position));
         Writer.End_Element (SOAP_Envelope_URI, SOAP_Text_Name);
         Web_Services.SOAP.Payloads.Faults.Language_Text_Maps.Next (Position);
      end loop;

      Writer.End_Element (SOAP_Envelope_URI, SOAP_Reason_Name);

--      --  Serialize optional 'Node' attribute.
--
--      Abstract_SOAP_Fault_Encoder'Class (Self).Encode_Node (Fault, Writer);
--
--      --  Serialize optional 'Role' attribute.
--
--      Abstract_SOAP_Fault_Encoder'Class (Self).Encode_Role (Fault, Writer);
--
--      --  Serialize optional 'Detail' attribute.
--
--      Abstract_SOAP_Fault_Encoder'Class (Self).Encode_Detail (Fault, Writer);

      Writer.End_Element (SOAP_Envelope_URI, SOAP_Fault_Name);
   end Encode_Fault;

end Web_Services.SOAP.Message_Encoders;
