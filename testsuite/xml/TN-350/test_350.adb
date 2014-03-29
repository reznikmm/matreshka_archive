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
with Ada.Characters.Wide_Wide_Latin_1;

with League.Holders.JSON_Arrays;
with League.JSON.Arrays;
with League.Strings;

with XML.SAX.Input_Sources.Strings;
with XML.SAX.Output_Destinations.Strings;
with XML.SAX.HTML5_Writers;
with XML.SAX.Simple_Readers;
with XML.Templates.Processors;

procedure Test_350 is

   use type League.Strings.Universal_String;

   Source : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("<html xmlns='http://www.w3.org/1999/xhtml'"
            & " xmlns:mtl='http://forge.ada-ru.org/matreshka/template'>"
            & "<body>"
            & "<ul>"
            & "<mtl:for each='item in items'>"
            & "<li>${item}</li>"
            & "</mtl:for>"
            & "</ul>"
            & "</body>"
            & "</html>");
   Expected : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("<!DOCTYPE html>"
            & Ada.Characters.Wide_Wide_Latin_1.LF
            & "<ul></ul>");

   Input     : aliased XML.SAX.Input_Sources.Strings.String_Input_Source;
   Reader    : XML.SAX.Simple_Readers.SAX_Simple_Reader;
   Processor : aliased XML.Templates.Processors.Template_Processor;
   Writer    : aliased XML.SAX.HTML5_Writers.HTML5_Writer;
   Output    : aliased
     XML.SAX.Output_Destinations.Strings.SAX_String_Output_Destination;

begin
   Reader.Set_Content_Handler (Processor'Unchecked_Access);
   Reader.Set_Lexical_Handler (Processor'Unchecked_Access);
   Processor.Set_Content_Handler (Writer'Unchecked_Access);
   Processor.Set_Lexical_Handler (Writer'Unchecked_Access);
   Writer.Set_Output_Destination (Output'Unchecked_Access);

   Processor.Set_Parameter
     (League.Strings.To_Universal_String ("items"),
      League.Holders.JSON_Arrays.To_Holder
        (League.JSON.Arrays.Empty_JSON_Array));

   Input.Set_String (Source);
   Reader.Parse (Input'Unchecked_Access);

   if Output.Get_Text /= Expected then
      raise Program_Error;
   end if;
end Test_350;
