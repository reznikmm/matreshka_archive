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
--  This package contains code to call handlers and catch exceptions comes
--  from user defined handlers.

private package Matreshka.SAX.Simple_Readers.Handler_Callbacks is

   pragma Preelaborate;

   procedure Call_Comment
    (Self    : not null access SAX_Simple_Reader'Class;
     Comment : League.Strings.Universal_String);
   --  Calls handler's SAX_Lexical_Handler.Comment subprogram.

   procedure Call_Characters
    (Self : not null access SAX_Simple_Reader'Class;
     Text : League.Strings.Universal_String);
   --  Calls handler's SAX_Content_Handler.Characters subprogram.

   procedure Call_End_Element
    (Self           : not null access SAX_Simple_Reader'Class;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String);
   --  Calls handler's SAX_Content_Handler.End_Element subprogram.

   procedure Call_External_Entity_Decl
    (Self      : not null access SAX_Simple_Reader'Class;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String);
   --  Calls handler's SAX_Decl_Handler.External_Entity_Decl subprogram.

   procedure Call_Ignorable_Whitespace
    (Self : not null access SAX_Simple_Reader'Class;
     Text : League.Strings.Universal_String);
   --  Calls handler's SAX_Content_Handler.Ignorable_Whitespace subprogram.

   procedure Call_Internal_Entity_Decl
    (Self  : not null access SAX_Simple_Reader'Class;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String);
   --  Calls handler's SAX_Decl_Handler.Internal_Entity_Decl subprogram.

   procedure Call_Processing_Instruction
    (Self   : not null access SAX_Simple_Reader'Class;
     Target : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
     Data   : League.Strings.Universal_String);
   --  Calls handler's SAX_Content_Handler.Processing_Instruction subprogram.

   procedure Call_Set_Document_Locator
    (Self    : not null access SAX_Simple_Reader'Class;
     Locator : Matreshka.SAX.Locators.SAX_Locator);
   --  Calls handler's SAX_Content_Handler.Set_Document_Locator subprogram.

   procedure Call_Start_Element
    (Self           : not null access SAX_Simple_Reader'Class;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : Matreshka.SAX.Attributes.SAX_Attributes);
   --  Calls handler's SAX_Content_Handler.Start_Element subprogram.

   procedure Call_Unparsed_Entity_Decl
    (Self          : not null access SAX_Simple_Reader'Class;
     Name          : League.Strings.Universal_String;
     Public_Id     : League.Strings.Universal_String;
     System_Id     : League.Strings.Universal_String;
     Notation_Name : League.Strings.Universal_String);
   --  Calls handler's SAX_DTD_Handler.Unparsed_Entity_Decl subprogram.

end Matreshka.SAX.Simple_Readers.Handler_Callbacks;
