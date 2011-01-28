------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                             Examples Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This is example of usage of XML Writer to generate XML files from
--  application. It generates initial part of XMPP stream.
------------------------------------------------------------------------------
with Ada.Wide_Wide_Text_IO;

with League.Strings;
with XML.SAX.Attributes;
with XML.SAX.Pretty_Writers;

procedure SAX_Writer is

   use League.Strings;

   function "+" (Item : Wide_Wide_String) return Universal_String
     renames To_Universal_String;

   Lang_Attribute      : constant Universal_String := +"xml:lang";
   Stream_URI          : constant Universal_String
     := +"http://etherx.jabber.org/streams";
   Stream_Prefix       : constant Universal_String := +"stream";
   Stream_Element      : constant Universal_String := +"stream";
   Features_Element    : constant Universal_String := +"features";
   Client_URI          : constant Universal_String := +"jabber:client";
   Id_Attribute        : constant Universal_String := +"id";
   From_Attribute      : constant Universal_String := +"from";
   Version_Attribute   : constant Universal_String := +"version";
   Compression_URI     : constant Universal_String
     := +"http://jabber.org/features/compress";
   Compression_Element : constant Universal_String := +"compression";
   Method_Element      : constant Universal_String := +"method";

   Writer     : XML.SAX.Pretty_Writers.SAX_Pretty_Writer;
   Attributes : XML.SAX.Attributes.SAX_Attributes;

begin
   Writer.Start_Document;
   Writer.Start_Prefix_Mapping (Namespace_URI => Client_URI);
   Writer.Start_Prefix_Mapping
     (Namespace_URI => Stream_URI, Prefix => Stream_Prefix);

   --  Open stream element

   Attributes.Set_Value
     (Qualified_Name => Id_Attribute, Value => +"656571601");
   Attributes.Set_Value
     (Qualified_Name => From_Attribute, Value => +"jabber.ru");
   Attributes.Set_Value (Qualified_Name => Version_Attribute, Value => +"1.0");
   Attributes.Set_Value (Qualified_Name => Lang_Attribute, Value => +"ru");
   Writer.Start_Element
     (Namespace_URI => Stream_URI,
      Local_Name    => Stream_Element,
      Attributes    => Attributes);

   --  Open features element

   Writer.Start_Element
     (Namespace_URI => Stream_URI, Local_Name => Features_Element);

   --  Open compression element

   Writer.Start_Prefix_Mapping (Namespace_URI => Compression_URI);
   Writer.Start_Element
     (Namespace_URI => Compression_URI, Local_Name => Compression_Element);

   --  Output method

   Writer.Start_Element
     (Namespace_URI => Compression_URI, Local_Name => Method_Element);
   Writer.Characters (+"zlib");
   Writer.End_Element
     (Namespace_URI => Compression_URI, Local_Name => Method_Element);

   --  Close compression element

   Writer.End_Element
     (Namespace_URI => Compression_URI, Local_Name => Compression_Element);
   Writer.End_Prefix_Mapping;

   --  Close features element

   Writer.End_Element
     (Namespace_URI => Stream_URI, Local_Name => Features_Element);

   --  Close stream element

   Writer.End_Element
     (Namespace_URI => Stream_URI, Local_Name => Stream_Element);
   Writer.End_Prefix_Mapping (Prefix => Stream_Prefix);
   Writer.End_Prefix_Mapping;
   Writer.End_Document;

   Ada.Wide_Wide_Text_IO.Put_Line (Writer.Text.To_Wide_Wide_String);
end SAX_Writer;
