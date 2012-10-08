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

package body Test_245_Handlers is

   Characters_Error             : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Error is reported by Characters callback");
   End_Document_Error           : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Error is reported by End_Document callback");
   End_Element_Error            : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Error is reported by End_Element callback");
   End_Prefix_Mapping_Error     : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Error is reported by End_Prefix_Mapping callback");
   Ignorable_Whitespace_Error   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Error is reported by Ignorable_Whitespace callback");
   Processing_Instruction_Error : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Error is reported by Processing_Instruction callback");
   Start_Document_Error         : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Error is reported by Start_Document callback");
   Start_Element_Error          : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Error is reported by Start_Element callback");
   Start_Prefix_Mapping_Error   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("Error is reported by Start_Prefix_Mapping callback");

   ----------------
   -- Characters --
   ----------------

   overriding procedure Characters
    (Self    : in out Test_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Self.Testcase = Characters then
         Success := False;
      end if;
   end Characters;

   ------------------
   -- End_Document --
   ------------------

   overriding procedure End_Document
    (Self    : in out Test_Handler;
     Success : in out Boolean) is
   begin
      if Self.Testcase = End_Document then
         Success := False;
      end if;
   end End_Document;

   -----------------
   -- End_Element --
   -----------------

   overriding procedure End_Element
    (Self           : in out Test_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean) is
   begin
      if Self.Testcase = End_Element then
         Success := False;
      end if;
   end End_Element;

   ------------------------
   -- End_Prefix_Mapping --
   ------------------------

   overriding procedure End_Prefix_Mapping
    (Self    : in out Test_Handler;
     Prefix  : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Self.Testcase = End_Prefix_Mapping then
         Success := False;
      end if;
   end End_Prefix_Mapping;

   ------------------
   -- Error_String --
   ------------------

   overriding function Error_String
    (Self : Test_Handler) return League.Strings.Universal_String is
   begin
      case Self.Testcase is
         when Characters =>
            return Characters_Error;

         when End_Document =>
            return End_Document_Error;

         when End_Element =>
            return End_Element_Error;

         when End_Prefix_Mapping =>
            return End_Prefix_Mapping_Error;

         when Ignorable_Whitespace =>
            return Ignorable_Whitespace_Error;

         when Processing_Instruction =>
            return Processing_Instruction_Error;

         when Start_Document =>
            return Start_Document_Error;

         when Start_Element =>
            return Start_Element_Error;

         when Start_Prefix_Mapping =>
            return Start_Prefix_Mapping_Error;
      end case;
   end Error_String;

   -----------------
   -- Fatal_Error --
   -----------------

   overriding procedure Fatal_Error
    (Self       : in out Test_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception)
   is
      use type League.Strings.Universal_String;

   begin
      case Self.Testcase is
         when Characters =>
            if Occurrence.Message = Characters_Error then
               Self.Passed := True;
            end if;

         when End_Document =>
            if Occurrence.Message = End_Document_Error then
               Self.Passed := True;
            end if;

         when End_Element =>
            if Occurrence.Message = End_Element_Error then
               Self.Passed := True;
            end if;

         when End_Prefix_Mapping =>
            if Occurrence.Message = End_Prefix_Mapping_Error then
               Self.Passed := True;
            end if;

         when Ignorable_Whitespace =>
            if Occurrence.Message = Ignorable_Whitespace_Error then
               Self.Passed := True;
            end if;

         when Processing_Instruction =>
            if Occurrence.Message = Processing_Instruction_Error then
               Self.Passed := True;
            end if;

         when Start_Document =>
            if Occurrence.Message = Start_Document_Error then
               Self.Passed := True;
            end if;

         when Start_Element =>
            if Occurrence.Message = Start_Element_Error then
               Self.Passed := True;
            end if;

         when Start_Prefix_Mapping =>
            if Occurrence.Message = Start_Prefix_Mapping_Error then
               Self.Passed := True;
            end if;
      end case;
   end Fatal_Error;

   --------------------------
   -- Ignorable_Whitespace --
   --------------------------

   overriding procedure Ignorable_Whitespace
    (Self    : in out Test_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Self.Testcase = Ignorable_Whitespace then
         Success := False;
      end if;
   end Ignorable_Whitespace;

   ---------------
   -- Is_Passed --
   ---------------

   function Is_Passed (Self : Test_Handler'Class) return Boolean is
   begin
      return Self.Passed;
   end Is_Passed;

   ----------------------------
   -- Processing_Instruction --
   ----------------------------

   overriding procedure Processing_Instruction
    (Self    : in out Test_Handler;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean) is
   begin
      if Self.Testcase = Processing_Instruction then
         Success := False;
      end if;
   end Processing_Instruction;

   ------------------
   -- Set_Testcase --
   ------------------

   procedure Set_Testcase
    (Self     : in out Test_Handler'Class;
     Testcase : Testcases) is
   begin
      Self.Testcase := Testcase;
      Self.Passed   := False;
   end Set_Testcase;

   --------------------
   -- Start_Document --
   --------------------

   overriding procedure Start_Document
    (Self    : in out Test_Handler;
     Success : in out Boolean) is
   begin
      if Self.Testcase = Start_Document then
         Success := False;
      end if;
   end Start_Document;

   -------------------
   -- Start_Element --
   -------------------

   overriding procedure Start_Element
    (Self           : in out Test_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is
   begin
      if Self.Testcase = Start_Element then
         Success := False;
      end if;
   end Start_Element;

   --------------------------
   -- Start_Prefix_Mapping --
   --------------------------

   overriding procedure Start_Prefix_Mapping
    (Self          : in out Test_Handler;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean) is
   begin
      if Self.Testcase = Start_Prefix_Mapping then
         Success := False;
      end if;
   end Start_Prefix_Mapping;

end Test_245_Handlers;
