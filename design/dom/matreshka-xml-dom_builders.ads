------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
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
--  This package provides DOM tree builder. It should be connected to SAX
--  reader to construct DOM tree.
------------------------------------------------------------------------------
private with League.Strings;
private with XML.SAX.Attributes;
with XML.SAX.Content_Handlers;
with XML.SAX.Declaration_Handlers;
with XML.SAX.DTD_Handlers;
with XML.SAX.Lexical_Handlers;
private with XML.SAX.Locators;

package Matreshka.XML.DOM_Builders is

   type DOM_Builder is
     limited new Standard.XML.SAX.Content_Handlers.SAX_Content_Handler
       and Standard.XML.SAX.Declaration_Handlers.SAX_Declaration_Handler
       and Standard.XML.SAX.DTD_Handlers.SAX_DTD_Handler
       and Standard.XML.SAX.Lexical_Handlers.SAX_Lexical_Handler with private;

private

   type DOM_Builder is
     limited new Standard.XML.SAX.Content_Handlers.SAX_Content_Handler
       and Standard.XML.SAX.Declaration_Handlers.SAX_Declaration_Handler
       and Standard.XML.SAX.DTD_Handlers.SAX_DTD_Handler
       and Standard.XML.SAX.Lexical_Handlers.SAX_Lexical_Handler
         with null record;

   overriding procedure Attribute_Declaration
    (Self          : in out DOM_Builder;
     E_Name        : League.Strings.Universal_String;
     A_Name        : League.Strings.Universal_String;
     A_Type        : League.Strings.Universal_String;
     Value_Default : League.Strings.Universal_String;
     Value         : League.Strings.Universal_String;
     Success       : in out Boolean);

   overriding procedure Characters
    (Self    : in out DOM_Builder;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Comment
    (Self    : in out DOM_Builder;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_CDATA
    (Self    : in out DOM_Builder;
     Success : in out Boolean);

   overriding procedure End_Document
    (Self    : in out DOM_Builder;
     Success : in out Boolean);

   overriding procedure End_DTD
    (Self    : in out DOM_Builder;
     Success : in out Boolean);

   overriding procedure End_Element
    (Self           : in out DOM_Builder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

   overriding procedure End_Entity
    (Self    : in out DOM_Builder;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_Prefix_Mapping
    (Self    : in out DOM_Builder;
     Prefix  : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding function Error_String
    (Self : DOM_Builder) return League.Strings.Universal_String;

   overriding procedure External_Entity_Declaration
    (Self      : in out DOM_Builder;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean);

   overriding procedure Ignorable_Whitespace
    (Self    : in out DOM_Builder;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Internal_Entity_Declaration
    (Self    : in out DOM_Builder;
     Name    : League.Strings.Universal_String;
     Value   : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Notation_Declaration
    (Self      : in out DOM_Builder;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean);

   overriding procedure Processing_Instruction
    (Self    : in out DOM_Builder;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Set_Document_Locator
    (Self    : in out DOM_Builder;
     Locator : Standard.XML.SAX.Locators.SAX_Locator);

   overriding procedure Skipped_Entity
    (Self    : in out DOM_Builder;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Start_CDATA
    (Self    : in out DOM_Builder;
     Success : in out Boolean);

   overriding procedure Start_Document
    (Self    : in out DOM_Builder;
     Success : in out Boolean);

   overriding procedure Start_DTD
    (Self      : in out DOM_Builder;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean);

   overriding procedure Start_Element
    (Self           : in out DOM_Builder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : Standard.XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

   overriding procedure Start_Entity
    (Self    : in out DOM_Builder;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure Start_Prefix_Mapping
    (Self          : in out DOM_Builder;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean);

   overriding procedure Unparsed_Entity_Declaration
    (Self          : in out DOM_Builder;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String;
     Success       : in out Boolean);

end Matreshka.XML.DOM_Builders;
