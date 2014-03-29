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
-- Copyright © 2012-2014, Vadim Godunko <vgodunko@gmail.com>                --
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

with XML.SAX.Simple_Readers;
with XML.SAX.String_Input_Sources;

with Test_245_Handlers;

procedure Test_245 is

   procedure Run_Testcase (Testcase : Test_245_Handlers.Testcases);

   ------------------
   -- Run_Testcase --
   ------------------

   procedure Run_Testcase (Testcase : Test_245_Handlers.Testcases) is
      Source  : aliased XML.SAX.String_Input_Sources.String_Input_Source;
      Handler : aliased Test_245_Handlers.Test_Handler;
      Reader  : aliased XML.SAX.Simple_Readers.Simple_Reader;

   begin
      Handler.Set_Testcase (Testcase);
      Source.Set_String
       (League.Strings.To_Universal_String
         ("<?xml version='1.0'?>"
            & "<!DOCTYPE element ["
            & "<!ELEMENT element (text)*>"
            & "<!ATTLIST element xmlns CDATA #IMPLIED>"
            & "<!ELEMENT text (#PCDATA)>"
            & "]>"
            & "<element xmlns='http://forge.ada-ru.org/'>"
            & "  <?PI?>"
            & "  <text>Text</text>"
            & "</element>"));
      Reader.Set_Error_Handler (Handler'Unchecked_Access);
      Reader.Set_Content_Handler (Handler'Unchecked_Access);
      Reader.Parse (Source'Unchecked_Access);

      if not Handler.Is_Passed then
         raise Program_Error;
      end if;
   end Run_Testcase;

begin
   for J in Test_245_Handlers.Testcases loop
      Run_Testcase (J);
   end loop;
end Test_245;
