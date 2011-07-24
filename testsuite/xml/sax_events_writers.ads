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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
private with Ada.Finalization;

with League.Strings;
with XML.SAX.Attributes;
with XML.SAX.Content_Handlers;
with XML.SAX.DTD_Handlers;
with XML.SAX.Entity_Resolvers;
with XML.SAX.Error_Handlers;
with XML.SAX.Input_Sources;
with XML.SAX.Locators;
with XML.SAX.Parse_Exceptions;

package SAX_Events_Writers is

   type SAX_Events_Writer is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.DTD_Handlers.SAX_DTD_Handler
       and XML.SAX.Entity_Resolvers.SAX_Entity_Resolver
       and XML.SAX.Error_Handlers.SAX_Error_Handler with private;

   not overriding procedure Set_Test_URI
    (Self : in out SAX_Events_Writer;
     URI  : League.Strings.Universal_String);

   not overriding procedure Done (Self : in out SAX_Events_Writer);

   not overriding function Has_Fatal_Errors
    (Self : SAX_Events_Writer) return Boolean;

   not overriding function Has_Errors
    (Self : SAX_Events_Writer) return Boolean;

   not overriding function Text
    (Self : SAX_Events_Writer) return League.Strings.Universal_String;

   overriding procedure Characters
    (Self    : in out SAX_Events_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_Document
    (Self    : in out SAX_Events_Writer;
     Success : in out Boolean);

   overriding procedure End_Element
    (Self           : in out SAX_Events_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

   overriding procedure End_Prefix_Mapping
    (Self    : in out SAX_Events_Writer;
     Prefix  : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Error
    (Self       : in out SAX_Events_Writer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean);

   overriding function Error_String
    (Self : SAX_Events_Writer)
       return League.Strings.Universal_String;

   overriding procedure Fatal_Error
    (Self       : in out SAX_Events_Writer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean);

   overriding procedure Ignorable_Whitespace
    (Self    : in out SAX_Events_Writer;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Notation_Declaration
    (Self      : in out SAX_Events_Writer;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean);

   overriding procedure Processing_Instruction
    (Self    : in out SAX_Events_Writer;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Resolve_Entity
    (Self      : in out SAX_Events_Writer;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     Base_URI  : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Source    : out XML.SAX.Input_Sources.SAX_Input_Source_Access;
     Success   : in out Boolean);

   overriding procedure Set_Document_Locator
    (Self    : in out SAX_Events_Writer;
     Locator : XML.SAX.Locators.SAX_Locator);

   overriding procedure Skipped_Entity
    (Self    : in out SAX_Events_Writer;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Start_Document
    (Self    : in out SAX_Events_Writer;
     Success : in out Boolean);

   overriding procedure Start_Element
    (Self           : in out SAX_Events_Writer;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

   overriding procedure Start_Prefix_Mapping
    (Self    : in out SAX_Events_Writer;
     Prefix  : League.Strings.Universal_String;
     URI     : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Unparsed_Entity_Declaration
    (Self          : in out SAX_Events_Writer;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String;
     Success       : in out Boolean);

   overriding procedure Warning
    (Self       : in out SAX_Events_Writer;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean);

private

   type SAX_Events_Writer is
     new Ada.Finalization.Limited_Controlled
       and XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.DTD_Handlers.SAX_DTD_Handler
       and XML.SAX.Entity_Resolvers.SAX_Entity_Resolver
       and XML.SAX.Error_Handlers.SAX_Error_Handler with
   record
      Fatal_Errors : Boolean := False;
      Errors       : Boolean := False;
      Result       : League.Strings.Universal_String;
      URI          : League.Strings.Universal_String;
   end record;

   not overriding procedure Add_Line
    (Self : in out SAX_Events_Writer;
     Item : League.Strings.Universal_String);
   --  Adds line to result.

   overriding procedure Initialize (Self : in out SAX_Events_Writer);

end SAX_Events_Writers;
