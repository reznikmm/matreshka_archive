------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                            Testsuite Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  Checks that error condition during processing of nested event stream is
--  reported.
------------------------------------------------------------------------------
with League.Holders.Booleans;
with League.Strings;

with XML.SAX.Error_Handlers;
with XML.SAX.Simple_Readers;
with XML.SAX.String_Input_Sources;
with XML.SAX.Event_Writers;
with XML.SAX.Parse_Exceptions;
with XML.SAX.Pretty_Writers;
with XML.SAX.String_Output_Destinations;
with XML.Templates.Processors;
with XML.Templates.Streams.Holders;

procedure Test_386 is

   use type League.Strings.Universal_String;

   type Error_Handler is
     limited new XML.SAX.Error_Handlers.SAX_Error_Handler with record
      Error_Reported : Boolean := False;
   end record;

   overriding function Error_String
    (Self : Error_Handler) return League.Strings.Universal_String;

   overriding procedure Fatal_Error
    (Self       : in out Error_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception);
   --  Remember that subprogram was called.

   function Get_Stream
     return XML.Templates.Streams.XML_Stream_Element_Vectors.Vector;
   --  Returns event stream of nested document.

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Error_Handler) return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      return League.Strings.Empty_Universal_String;
   end Error_String;

   -----------------
   -- Fatal_Error --
   -----------------

   overriding procedure Fatal_Error
    (Self       : in out Error_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception)
   is
      pragma Unreferenced (Occurrence);

   begin
      Self.Error_Reported := True;
   end Fatal_Error;

   ----------------
   -- Get_Stream --
   ----------------

   function Get_Stream
     return XML.Templates.Streams.XML_Stream_Element_Vectors.Vector
   is
      Document : constant League.Strings.Universal_String
        := League.Strings.To_Universal_String
            ("<content xmlns:mtl='http://forge.ada-ru.org/matreshka/template'>"
               & "<mtl:if some='has'>"
               & "Test failed"
               & "</mtl:if>"
               & "</content>");

      Input    : aliased XML.SAX.String_Input_Sources.String_Input_Source;
      Reader   : XML.SAX.Simple_Readers.Simple_Reader;
      Writer   : aliased XML.SAX.Event_Writers.Event_Writer;

   begin
      --  Configure reader.

      Reader.Set_Input_Source (Input'Unchecked_Access);
      Reader.Set_Content_Handler (Writer'Unchecked_Access);
      Reader.Set_Lexical_Handler (Writer'Unchecked_Access);

      --  Parse data.

      Input.Set_String (Document);
      Reader.Parse;

      return Writer.Get_Stream;
   end Get_Stream;

   Source    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("<document xmlns:mtl='http://forge.ada-ru.org/matreshka/template'>"
            & "${content}"
            & "</document>");

   Expected  : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("<?xml version='1.0'?><document><content");

   Input     : aliased XML.SAX.String_Input_Sources.String_Input_Source;
   Reader    : XML.SAX.Simple_Readers.Simple_Reader;
   Processor : aliased XML.Templates.Processors.Template_Processor;
   Errors    : aliased Error_Handler;
   Writer    : aliased XML.SAX.Pretty_Writers.XML_Pretty_Writer;
   Output    : aliased
     XML.SAX.String_Output_Destinations.String_Output_Destination;

begin
   Reader.Set_Content_Handler (Processor'Unchecked_Access);
   Reader.Set_Lexical_Handler (Processor'Unchecked_Access);
   Reader.Set_Error_Handler (Errors'Unchecked_Access);
   Processor.Set_Content_Handler (Writer'Unchecked_Access);
   Processor.Set_Lexical_Handler (Writer'Unchecked_Access);
   Writer.Set_Output_Destination (Output'Unchecked_Access);

   Processor.Set_Parameter
    (League.Strings.To_Universal_String ("has"),
     League.Holders.Booleans.To_Holder (True));
   Processor.Set_Parameter
    (League.Strings.To_Universal_String ("content"),
     XML.Templates.Streams.Holders.To_Holder (Get_Stream));

   Input.Set_String (Source);
   Reader.Parse (Input'Unchecked_Access);

   if not Errors.Error_Reported then
      raise Program_Error;
   end if;

   if Output.Get_Text /= Expected then
      raise Program_Error;
   end if;
end Test_386;
