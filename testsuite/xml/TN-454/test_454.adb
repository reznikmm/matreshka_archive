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
-- Copyright © 2016-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Holders.JSON_Arrays;
with League.JSON.Arrays;
with League.JSON.Documents;
with League.Strings;
with XML.SAX.Pretty_Writers;
with XML.SAX.Simple_Readers;
with XML.SAX.String_Input_Sources;
with XML.SAX.String_Output_Destinations;
with XML.Templates.Processors;

procedure Test_454 is

   use type League.Strings.Universal_String;

   Data     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("["
            & "{""name"":""post 1"","
            & " ""submenu"":[{""name"":""subitem 1-1""},"
            & "              {""name"":""subitem 1-2""}]},"
            & "{""name"":""post 2"","
            & " ""submenu"":[{""name"":""subitem 2-1""},"
            & "              {""name"":""subitem 2-2""}]}"
            & "]");

   Page     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("<html xmlns='http://www.w3.org/1999/xhtml'"
            & "  xmlns:mtl='http://forge.ada-ru.org/matreshka/template'>"
            & " <body>"
            & "  <mtl:for expression='item of posts'>"
            & "   ${item.name}"
            & "   <mtl:for expression='subitem of item.submenu'>"
            & "    ${item.name} -&gt; ${subitem.name}"
            & "   </mtl:for>"
            & "  </mtl:for>"
            & " </body>"
            & "</html>");

   Expected : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("<?xml version='1.0'?>"
           & "<html xmlns='http://www.w3.org/1999/xhtml'>"
           & " <body>"
           & "     post 1"
           & "       post 1 -> subitem 1-1"
           & "       post 1 -> subitem 1-2"
           & "        post 2"
           & "       post 2 -> subitem 2-1"
           & "       post 2 -> subitem 2-2"
           & "      </body></html>");

   Posts  : constant League.JSON.Arrays.JSON_Array
     := League.JSON.Documents.From_JSON (Data).To_JSON_Array;
   Input  : aliased XML.SAX.String_Input_Sources.String_Input_Source;
   Reader : aliased XML.SAX.Simple_Readers.Simple_Reader;
   Filter : aliased XML.Templates.Processors.Template_Processor;
   Writer : aliased XML.SAX.Pretty_Writers.XML_Pretty_Writer;
   Output : aliased
     XML.SAX.String_Output_Destinations.String_Output_Destination;

begin
   Input.Set_String (Page);

   --  Configure reader.

   Reader.Set_Input_Source (Input'Unchecked_Access);
   Reader.Set_Content_Handler (Filter'Unchecked_Access);
   Reader.Set_Lexical_Handler (Filter'Unchecked_Access);

   --  Configure template processor.

   Filter.Set_Content_Handler (Writer'Unchecked_Access);
   Filter.Set_Lexical_Handler (Writer'Unchecked_Access);

   Filter.Set_Parameter
    (League.Strings.To_Universal_String ("posts"),
     League.Holders.JSON_Arrays.To_Holder (Posts));

   --  Configure XML writer.

   Writer.Set_Output_Destination (Output'Unchecked_Access);

   --  Process template.

   Reader.Parse;

   --  Output result.

   if Output.Get_Text /= Expected then
      raise Program_Error;
   end if;
end Test_454;
