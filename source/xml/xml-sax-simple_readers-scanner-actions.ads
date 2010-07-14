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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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

private package XML.SAX.Simple_Readers.Scanner.Actions is

   pragma Preelaborate;

   function On_Character_Data
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles character data in as well as apperance of forbidden ']]>' string
   --  in the character data.

   function On_Close_Of_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles close of entity declaration.

   function On_Close_Of_Empty_Element_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles close of empty element tag.

   function On_Close_Of_Processing_Instruction
    (Self     : not null access SAX_Simple_Reader'Class;
     Is_Empty : Boolean) return Token;
   --  Handles close of processing instruction, XML declaration and text
   --  declaration. When Is_Empty is True it means that processing instruction
   --  doesn't have data.

   function On_Close_Of_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles close of element tag and of document type declaration,

   function On_General_Entity_Reference_In_Attribute_Value
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Handles general entity reference in attribute value.

   function On_General_Entity_Reference_In_Document_Content
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Handles general entity reference in document content.

   function On_General_Entity_Reference_In_Entity_Value
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles general entity reference in entity value.

   function On_Parameter_Entity_Reference_In_Entity_Value
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Handles parameter entity reference in entity value.

   function On_Less_Than_Sign_In_Attribute_Value
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handling of less-than sign in attribute value.

   function On_Name_In_Attribute_List_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the attribute in the attribute list declaration.

   function On_Name_In_Attribute_List_Declaration_Notation
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the notation in the attribute list declaration.

   function On_Name_In_Element_Declaration_Children
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the children element in element declaration.

   function On_Name_In_Element_Start_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the attribute in element start tag or empty element tag.

   function On_Name_In_Entity_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the entity in the entity declaration.

   function On_Name_In_Entity_Declaration_Notation
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles name of the notation in the entity declaration.

   procedure On_No_XML_Declaration
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles start of document and external parsed entities which doesn't
   --  starts from XML declaration.

   function On_Open_Of_Attribute_List_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of attribute list declaration.

   function On_Open_Of_Document_Type_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of document type declaration.

   function On_Open_Of_Element_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of element declaration.

   function On_Open_Of_End_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of end tag.

   function On_Open_Of_Internal_Subset
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of internal subset of document type declaration.

   function On_Open_Of_Notation_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of notation declaration.

   function On_Open_Of_Processing_Instruction
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of processing instruction.

   function On_Open_Of_Start_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of start tag or empty element tag.

   function On_Open_Of_XML_Processing_Instruction
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Handles open of XML declaration in document or text declaration in
   --  external entity or external subset.

   function On_Unexpected_Character
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  General handling of unexpected character.

   function On_Whitespace_In_Document
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Handles whitespaces outside of markup. Returns True and sets YYLVal when
   --  document content analysis started, and return False otherwise.

   procedure On_Whitespace_In_Processing_Instruction
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles sequence of whitespaces between processing instruction's target
   --  and data.

end XML.SAX.Simple_Readers.Scanner.Actions;
