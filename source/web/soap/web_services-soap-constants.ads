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
--  This package contains declarations of constants used in several places of
--  SOAP implementation.
------------------------------------------------------------------------------
with Ada.Streams;

with League.Strings;
with League.Stream_Element_Vectors;

package Web_Services.SOAP.Constants is

   --  Namespace URI and local name of 'xml:lang' attribute.

   XML_URI       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/XML/1998/namespace");
   XML_Lang_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("lang");

   --  SOAP Envelope namespace URI, names of elements and attributes in this
   --  namespace.

   SOAP_Encoding_Style_Name  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("encodingStyle");
   SOAP_Envelope_URI         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("http://www.w3.org/2003/05/soap-envelope");
   SOAP_Envelope_Prefix      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("env");
   SOAP_Body_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Body");
   SOAP_Code_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Code");
   SOAP_Detail_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Detail");
   SOAP_Envelope_Name        : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Envelope");
   SOAP_Fault_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Fault");
   SOAP_Header_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Header");
   SOAP_Reason_Name          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Reason");
   SOAP_Subcode_Name         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Subcode");
   SOAP_Text_Name            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Text");
   SOAP_Value_Name           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Value");
   SOAP_Must_Understand_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("mustUnderstand");

   --  Codes of SOAP faults.

   SOAP_Version_Mismatch_Code      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("VersionMismatch");
   SOAP_Must_Understand_Code       : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("MustUnderstand");
   SOAP_Data_Encoding_Unknown_Code : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("DataEncodingUnknown");
   SOAP_Sender_Code                : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Sender");
   SOAP_Receiver_Code              : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("Receiver");

   --  Some literals for values of attributes.

   SOAP_True_Literal : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("true");

   --  "text/plain" Stream_Element_Array
   Text_Plain_Array : constant Ada.Streams.Stream_Element_Array :=
     (Character'Pos ('t'), Character'Pos ('e'), Character'Pos ('x'),
      Character'Pos ('t'), Character'Pos ('/'), Character'Pos ('p'),
      Character'Pos ('l'), Character'Pos ('a'), Character'Pos ('i'),
      Character'Pos ('n'));

   --  "application/soap+xml" Stream_Element_Array
   Application_SOAP_XML_Array : constant Ada.Streams.Stream_Element_Array :=
     (Character'Pos ('a'), Character'Pos ('p'), Character'Pos ('p'),
      Character'Pos ('l'), Character'Pos ('i'), Character'Pos ('c'),
      Character'Pos ('a'), Character'Pos ('t'), Character'Pos ('i'),
      Character'Pos ('o'), Character'Pos ('n'), Character'Pos ('/'),
      Character'Pos ('s'), Character'Pos ('o'), Character'Pos ('a'),
      Character'Pos ('p'), Character'Pos ('+'), Character'Pos ('x'),
      Character'Pos ('m'), Character'Pos ('l'));

   MIME_Text_Plain :
     constant League.Stream_Element_Vectors.Stream_Element_Vector :=
       League.Stream_Element_Vectors.To_Stream_Element_Vector
         (Text_Plain_Array);

   MIME_Application_SOAP_XML :
     constant League.Stream_Element_Vectors.Stream_Element_Vector :=
       League.Stream_Element_Vectors.To_Stream_Element_Vector
         (Application_SOAP_XML_Array);

end Web_Services.SOAP.Constants;
