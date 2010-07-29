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

private package XML.SAX.Simple_Readers.Parser.Actions is

   pragma Preelaborate;

   procedure On_Attribute_Default_Declaration
    (Self    : not null access SAX_Simple_Reader'Class;
     Default : Matreshka.Internals.Strings.Shared_String_Access);
   --  Handles declaration of default value of the attribute.

   procedure On_CDATA_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Process attribute declaration of CDATA type.

   procedure On_Character_Data
    (Self          : not null access SAX_Simple_Reader'Class;
     Text          : not null Matreshka.Internals.Strings.Shared_String_Access;
     Is_Whitespace : Boolean);
   --  Process segment of character data.

   procedure On_Element_Attribute
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier;
     Value  : not null Matreshka.Internals.Strings.Shared_String_Access);
   --  Handles attribute of the element.

   procedure On_Element_Attribute_Name
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Handles name of the attribute in the element. Now it olny switch scanner
   --  into appopriate attribute value normalization mode.

   procedure On_End_Of_Document
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles end of document.

   procedure On_End_Of_Document_Type_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Handles end of document type declaration.

   procedure On_End_Of_Internal_Subset
    (Self : not null access SAX_Simple_Reader'Class);
   --  Substitutes external subset if any.

   procedure On_End_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Handles end tag, rule [42].

   procedure On_Empty_Element_Tag
    (Self : not null access SAX_Simple_Reader'Class);
   --  Process start tag, rule [44].

   procedure On_Entity_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Process attribute declaration of CDATA type.

   procedure On_Entities_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Process attribute declaration of CDATA type.

   procedure On_External_Subset_Declaration
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles reference to external subset in the document type declaration.

   procedure On_Fixed_Attribute_Default_Declaration
    (Self    : not null access SAX_Simple_Reader'Class;
     Default : Matreshka.Internals.Strings.Shared_String_Access);
   --  Handles declaration of fixed value of the attribute.

   procedure On_General_Entity_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Symbol      : Matreshka.Internals.XML.Symbol_Identifier;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String;
     Notation    : Matreshka.Internals.XML.Symbol_Identifier);
   --  Process general entity declaration, rule [71].

   procedure On_Id_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Process attribute declaration of CDATA type.

   procedure On_IdRef_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Process attribute declaration of CDATA type.

   procedure On_IdRefs_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Process attribute declaration of CDATA type.

   procedure On_Implied_Attribute_Default_Declaration
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles declaration of implied value of the attribute.

   procedure On_NmToken_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Process attribute declaration of CDATA type.

   procedure On_NmTokens_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Process attribute declaration of CDATA type.

   procedure On_Open_Of_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Handles open of element's tag. The only purpose now is to resolve
   --  element and set identifier of the declaration of currently
   --  processed element.

   procedure On_Required_Attribute_Default_Declaration
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles declaration of required value of the attribute.

   procedure On_Start_Of_Attribute_List_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Handles start of attribute list declaration.

   procedure On_Start_Of_Document
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles start of document.

   procedure On_Start_Of_Element_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Handles start of element declaration.

   procedure On_Start_Tag (Self : not null access SAX_Simple_Reader'Class);
   --  Handles start tag of element.

   procedure On_Unexpected_Token_After_Root_Element
    (Self : not null access SAX_Simple_Reader'Class);
   --  Handles unexpected token after the root element.

   procedure On_XML_Version_Information
    (Self    : not null access SAX_Simple_Reader'Class;
     Version : not null Matreshka.Internals.Strings.Shared_String_Access);
   --  Handles XML version information by switching scanner to the
   --  corresponding processing mode.

end XML.SAX.Simple_Readers.Parser.Actions;
