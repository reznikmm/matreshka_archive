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
private with League.Strings;
private with XML.SAX.Attributes;
with XML.SAX.Content_Handlers;
with XML.SAX.Error_Handlers;
private with XML.SAX.Parse_Exceptions;

package Test_245_Handlers is

   type Testcases is
    (Characters,
     End_Document,
     End_Element,
     End_Prefix_Mapping,
     Ignorable_Whitespace,
     Processing_Instruction,
     Start_Document,
     Start_Element,
     Start_Prefix_Mapping);

   type Test_Handler is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.Error_Handlers.SAX_Error_Handler with private;

   procedure Set_Testcase
    (Self     : in out Test_Handler'Class;
     Testcase : Testcases);

   function Is_Passed (Self : Test_Handler'Class) return Boolean;

private

   type Test_Handler is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.Error_Handlers.SAX_Error_Handler with
   record
      Testcase : Testcases;
      Passed   : Boolean;
   end record;

   overriding procedure Characters
    (Self    : in out Test_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_Document
    (Self    : in out Test_Handler;
     Success : in out Boolean);

   overriding procedure End_Element
    (Self           : in out Test_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

   overriding procedure End_Prefix_Mapping
    (Self    : in out Test_Handler;
     Prefix  : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding function Error_String
    (Self : Test_Handler) return League.Strings.Universal_String;

   overriding procedure Fatal_Error
    (Self       : in out Test_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception);

   overriding procedure Ignorable_Whitespace
    (Self    : in out Test_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Processing_Instruction
    (Self    : in out Test_Handler;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean);

--   overriding procedure Skipped_Entity
--    (Self    : in out Test_Handler;
--     Name    : League.Strings.Universal_String;
--     Success : in out Boolean);
   --  Not tested.

   overriding procedure Start_Document
    (Self    : in out Test_Handler;
     Success : in out Boolean);

   overriding procedure Start_Element
    (Self           : in out Test_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

   overriding procedure Start_Prefix_Mapping
    (Self          : in out Test_Handler;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean);

end Test_245_Handlers;
