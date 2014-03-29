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
-- Copyright © 2010-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package provides implementation of simple SAX reader. It can be used
--  for both stream and incremental processing of data. It supports XML
--  Namespaces and includes partial support for validation against DTD.
--
--  Supported features:
--   - http://xml.org/sax/features/namespaces
--   - http://xml.org/sax/features/namespace-prefixes
--   - http://xml.org/sax/features/validation
--   - http://apache.org/xml/features/nonvalidating/load-external-dtd
------------------------------------------------------------------------------
private with Ada.Containers.Vectors;
private with Ada.Exceptions;
private with Ada.Finalization;
private with Interfaces;

with League.IRIs;
with League.Strings;
private with Matreshka.Internals.SAX_Locators;
private with Matreshka.Internals.Strings;
private with Matreshka.Internals.Unicode;
private with Matreshka.Internals.Utf16;
private with Matreshka.Internals.XML.Attribute_Tables;
private with Matreshka.Internals.XML.Attributes;
private with Matreshka.Internals.XML.Base_Scopes;
private with Matreshka.Internals.XML.Element_Tables;
private with Matreshka.Internals.XML.Entity_Tables;
private with Matreshka.Internals.XML.Namespace_Scopes;
private with Matreshka.Internals.XML.Notation_Tables;
private with Matreshka.Internals.XML.Symbol_Tables;
private with XML.SAX.Attributes;
private with XML.SAX.Default_Handlers;
with XML.SAX.Input_Sources;
with XML.SAX.Readers;

package XML.SAX.Simple_Readers is

   type Simple_Reader is
     limited new XML.SAX.Readers.SAX_Reader with private;

   not overriding procedure Parse
    (Self   : in out Simple_Reader;
     Source : not null access XML.SAX.Input_Sources.SAX_Input_Source'Class);
   --  Reads data from the specified input source till end of data is reached
   --  and parse it. Reader can be used to read data several times, each time
   --  it process separate XML document.

   not overriding procedure Set_Input_Source
    (Self   : in out Simple_Reader;
     Source : not null access XML.SAX.Input_Sources.SAX_Input_Source'Class);
   --  Sets input source to read data from it in incremental mode. It must be
   --  called once to set input source, and procedure Parse without input
   --  source parameter must be used to process chunks of data.

   not overriding procedure Parse (Self : in out Simple_Reader);
   --  Reads next chunk of data from the input source and parse it. Input
   --  source must be setted by call to procedure Set_Input_Source.

private

   type Token is
    (End_Of_Input,
     Error,
     End_Of_Chunk,
     Token_Xml_Decl_Open,
     Token_Pi_Open,
     Token_Pi_Close,
     Token_Pe_Reference,
     Token_Doctype_Decl_Open,
     Token_Entity_Decl_Open,
     Token_Element_Decl_Open,
     Token_Notation_Decl_Open,
     Token_Close,
     Token_Name,
     Token_System,
     Token_Public,
     Token_System_Literal,
     Token_Public_Literal,
     Token_Internal_Subset_Open,
     Token_Internal_Subset_Close,
     Token_Percent,
     Token_Value_Open,
     Token_Value_Close,
     Token_String_Segment,
     Token_Ndata,
     Token_Comment,
     Token_Element_Open,
     Token_Equal,
     Token_End_Open,
     Token_Empty_Close,
     Token_Version,
     Token_Encoding,
     Token_Standalone,
     Token_Empty,
     Token_Any,
     Token_Open_Parenthesis,
     Token_Close_Parenthesis,
     Token_Vertical_Bar,
     Token_Comma,
     Token_Question,
     Token_Asterisk,
     Token_Plus,
     Token_Pcdata,
     Token_Attlist_Decl_Open,
     Token_Cdata,
     Token_Id,
     Token_Idref,
     Token_Idrefs,
     Token_Entity,
     Token_Entities,
     Token_Nmtoken,
     Token_Nmtokens,
     Token_Notation,
     Token_Required,
     Token_Implied,
     Token_Fixed,
     Token_Entity_Start,
     Token_Entity_End,
     Token_Conditional_Open,
     Token_Conditional_Close,
     Token_Cdata_Open,
     Token_Cdata_Close);

   type YYSType is limited record
      String        : Matreshka.Internals.Strings.Shared_String_Access;
      Symbol        : Matreshka.Internals.XML.Symbol_Identifier;
      Is_Whitespace : Boolean;
   end record;

   procedure Set_String
    (Item          : in out YYSType;
     String        : League.Strings.Universal_String;
     Is_Whitespace : Boolean);
   pragma Inline (Set_String);

   procedure Set_String_Internal
    (Item          : in out YYSType;
     String        : Matreshka.Internals.Strings.Shared_String_Access;
     Is_Whitespace : Boolean);
   pragma Inline (Set_String_Internal);

   procedure Set_Symbol
    (Item    : in out YYSType;
      Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   pragma Inline (Set_Symbol);

   procedure Move
    (To   : in out YYSType;
     From : in out YYSType);
   pragma Inline (Move);

   procedure Clear (Item : in out YYSType);
   pragma Inline (Clear);

   -------------------
   -- Scanner state --
   -------------------

   type XML_Version is (XML_1_0, XML_1_1, XML_1_X);

   subtype Supported_XML_Version is XML_Version range XML_1_0 .. XML_1_1;

   package Unsigned_32_Vectors is
     new Ada.Containers.Vectors
          (Positive, Interfaces.Unsigned_32, Interfaces."=");

   type Scanner_State_Information is record
      Source               : XML.SAX.Input_Sources.SAX_Input_Source_Access;
      Data                 : Matreshka.Internals.Strings.Shared_String_Access
        := Matreshka.Internals.Strings.Shared_Empty'Access;
      YY_Base_Position     : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      YY_Base_Index        : Positive := 1;
      YY_Base_Line         : Natural := 1;
      YY_Base_Column       : Natural := 1;
      YY_Base_Skip_LF      : Boolean := False;
      YY_Current_Position  : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      YY_Current_Index     : Positive := 1;
      YY_Current_Line      : Natural := 1;
      YY_Current_Column    : Natural := 1;
      YY_Current_Skip_LF   : Boolean := False;
      YY_Start_State       : Interfaces.Unsigned_32 := 1;
      Incremental          : Boolean := False;
      Is_External_Subset   : Boolean := False;
      Entity               : Matreshka.Internals.XML.Entity_Identifier
        := Matreshka.Internals.XML.No_Entity;
      Start_Condition_Stack : Unsigned_32_Vectors.Vector;
      Delimiter            : Matreshka.Internals.Unicode.Code_Point;
      --  Delimiter of the entity value.
      In_Literal           : Boolean  := False;
      --  Include in literal mode, apostrophe and quotation characters are
      --  ignored.
      --  XXX The same behavior can be achived by resetting Delimiter to
      --  any symbol.
      Start_Issued         : Boolean := False;
      --  Sets to True when Token_Entity_Start was issued before the start of
      --  entity's replacement text scanning, thus Token_Entity_End must be
      --  issued after completing of scanning of replacement text.
   end record;

   package Scanner_State_Vectors is
     new Ada.Containers.Vectors (Positive, Scanner_State_Information);

   package Symbol_Identifier_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           Matreshka.Internals.XML.Symbol_Identifier,
           Matreshka.Internals.XML."=");

   ------------------
   -- Parser state --
   ------------------

   YY_Stack_Size : constant := 300;
   --  The size of the value and state stacks.

   type Value_Stack_Array is array (0 .. YY_Stack_Size) of YYSType;
   type State_Stack_Array is array (0 .. YY_Stack_Size) of Natural;

   type Parser_State_Information is record
      --  Stack data used by the parser.

      TOS          : Natural := 0;
      Value_Stack  : Value_Stack_Array;
      State_Stack  : State_Stack_Array;

      Input_Symbol : Token;
      --  Current input symbol.

      Look_Ahead   : Boolean := True;
      --  Obtain next token from the scanner.

      Error        : Boolean := False;
      --  Error recovery flag.
--       error_flag : natural := 0;
--          -- indicates  3 - (number of valid shifts after an error occurs)
   end record;

   Default_Handler : aliased XML.SAX.Default_Handlers.SAX_Default_Handler;
   --  Default handler for use when user defined handler is not specified.

   type Attribute_Record is record
      Namespace_URI  : League.Strings.Universal_String;
      Local_Name     : Matreshka.Internals.XML.Symbol_Identifier;
      Qualified_Name : Matreshka.Internals.XML.Symbol_Identifier;
      Value          : League.Strings.Universal_String;
   end record;

   type Namespaces_Options is record
      Enabled  : Boolean := True;
      Prefixes : Boolean := False;
   end record;

   type Validation_Options is record
      Enabled  : Boolean := False;
      Has_DTD  : Boolean := False;
      Load_DTD : Boolean := True;
   end record;

   type Configuration_Information is record
      Reset             : Boolean := True;
      Source            : XML.SAX.Input_Sources.SAX_Input_Source_Access;
      Incremental       : Boolean := False;
      Enable_Namespaces : Boolean := True;
      Enable_Prefixes   : Boolean := False;
      Enable_Validation : Boolean := False;
      Load_External_DTD : Boolean := True;
   end record;

   type Simple_Shared_Locator is tagged;
   type Simple_Shared_Locator_Access is access all Simple_Shared_Locator'Class;

   type Simple_Reader is new Ada.Finalization.Limited_Controlled
     and XML.SAX.Readers.SAX_Reader with
   record
      --  Handlers

      Content_Handler        : XML.SAX.Readers.SAX_Content_Handler_Access
        := Default_Handler'Access;
      Declaration_Handler    : XML.SAX.Readers.SAX_Declaration_Handler_Access
        := Default_Handler'Access;
      DTD_Handler            : XML.SAX.Readers.SAX_DTD_Handler_Access
        := Default_Handler'Access;
      Error_Handler          : XML.SAX.Readers.SAX_Error_Handler_Access
        := Default_Handler'Access;
      Lexical_Handler        : XML.SAX.Readers.SAX_Lexical_Handler_Access
        := Default_Handler'Access;
      Entity_Resolver        : XML.SAX.Readers.SAX_Entity_Resolver_Access;

      --  Configuration, it is used to initialize state of the reader.

      Configuration          : Configuration_Information;

      --  Scanner state

      Scanner_State          : Scanner_State_Information;
      Scanner_Stack          : Scanner_State_Vectors.Vector;
      Symbols                :
        Matreshka.Internals.XML.Symbol_Tables.Symbol_Table;
      Locator                : Simple_Shared_Locator_Access;
      YYLVal                 : YYSType;
      Character_Buffer       :
        Matreshka.Internals.Strings.Shared_String_Access;
      --  Preallocated buffer for character reference and attribute value
      --  delimiter handling.
      Character_Data         : Matreshka.Internals.Strings.Shared_String_Access
        := Matreshka.Internals.Strings.Shared_Empty'Access;
      --  Preallocated buffer for character data to avoid unnecessary
      --  allocations, and to accumulate attribute's value.
      Normalize_Value        : Boolean;
      --  When True attribute value normalization is applied to the
      --  attribute's character data.
      Space_Before           : Boolean;
      --  When normalize attribute value of non-CDATA type, it indicates that
      --  previous processed character was space.
      Version                : Supported_XML_Version := XML_1_0;
      --  XML version of document entity.
      Conditional_Directive  : Boolean;
      --  True when conditional directive is parsed or not needed to be checked
      --  (for nested conditional sections).
      Conditional_Depth      : Natural := 0;
      --  Depth of conditional sections.
      Ignore_Depth           : Natural := 0;
      --  Depth of ignore conditional sections.
      Notation_Attribute     : Boolean;
      --  Sets when processing attribute declaration of type of NOTATION.

      --  Parser state

      Parser_State           : Parser_State_Information;
      Public_Id              : League.Strings.Universal_String;
      System_Id              : League.Strings.Universal_String;
      Error_Reported         : Boolean := False;

      --  Analyzer state

      Whitespace_Matched     : Boolean;
      --  Used to check whether whitespace is used to separate tokens. For
      --  example, '%' must be separated by whitespace from '<!ENTITY' and
      --  following name.
      In_Document_Content    : Boolean := False;
      Is_Standalone          : Boolean := False;

      Entities               :
        Matreshka.Internals.XML.Entity_Tables.Entity_Table;
      Elements               :
        Matreshka.Internals.XML.Element_Tables.Element_Table;
      Attributes             :
        Matreshka.Internals.XML.Attribute_Tables.Attribute_Table;
      Notations              :
        Matreshka.Internals.XML.Notation_Tables.Notation_Table;
      External_Subset_Entity : Matreshka.Internals.XML.Entity_Identifier
        := Matreshka.Internals.XML.No_Entity;
      --  Entity of the external subset if any.
      External_Subset_Done   : Boolean := False;
      Element_Names          : Symbol_Identifier_Vectors.Vector;
      --  Stack of names of elements.
      Continue               : Boolean := True;
      --  Continue processing.
      Error_Message          : League.Strings.Universal_String;
      --  Error message.
      User_Exception         : Ada.Exceptions.Exception_Occurrence;
      --  Catched exception from the user defined handler.
      Current_Element_Name   : Matreshka.Internals.XML.Symbol_Identifier;
      --  Name of the currently processed element.
      Current_Element        : Matreshka.Internals.XML.Element_Identifier;
      --  Currently analyzed element, used to handle attribute list
      --  declaration and element declaration.
      Current_Attribute      : Matreshka.Internals.XML.Attribute_Identifier;
      --  Currently analyzed attribute, used to handle default declaration
      --  of the attribute definition.
      Attribute_Redefined    : Boolean;
      --  Mark redefinition of the currently processing attribute. Once
      --  attribute is defined it can't be redefined.

      --  When components can't be nested thier information is not hold in
      --  YYSType and placed directly here to avoid copy overhead.

      Attribute_Set          :
        Matreshka.Internals.XML.Attributes.Attribute_Set;
      SAX_Attributes         : XML.SAX.Attributes.SAX_Attributes;
      --  Set of attributes of the element.

      --  Namespaces handling state

      Namespaces             : Namespaces_Options;
      Namespace_Scope        :
        Matreshka.Internals.XML.Namespace_Scopes.Namespace_Scope;

      --  XML Base handling state

      Bases                  : Matreshka.Internals.XML.Base_Scopes.Base_Scope;
      --  Tracks current base URI.

      --  Validator state

      Validation             : Validation_Options;
      --  Validation options
      Root_Symbol            : Matreshka.Internals.XML.Symbol_Identifier
        := Matreshka.Internals.XML.No_Symbol;
      --  Expected name of the root element.
   end record;

   overriding procedure Initialize (Self : in out Simple_Reader);
   --  Initialize internal state of the reader.

   overriding procedure Finalize (Self : in out Simple_Reader);
   --  Finalize internal state of the reader.

   overriding function Content_Handler
    (Self : Simple_Reader)
       return XML.SAX.Readers.SAX_Content_Handler_Access;

   overriding function Declaration_Handler
    (Self : Simple_Reader)
       return XML.SAX.Readers.SAX_Declaration_Handler_Access;

   overriding function DTD_Handler
    (Self : Simple_Reader)
       return XML.SAX.Readers.SAX_DTD_Handler_Access;

   overriding function Entity_Resolver
    (Self : Simple_Reader)
       return XML.SAX.Readers.SAX_Entity_Resolver_Access;

   overriding function Error_Handler
    (Self : Simple_Reader)
       return XML.SAX.Readers.SAX_Error_Handler_Access;

   overriding function Feature
    (Self : Simple_Reader;
     Name : League.Strings.Universal_String) return Boolean;

   overriding function Has_Feature
    (Self : Simple_Reader;
     Name : League.Strings.Universal_String) return Boolean;

   overriding function Lexical_Handler
    (Self : Simple_Reader)
       return XML.SAX.Readers.SAX_Lexical_Handler_Access;

   overriding procedure Set_Content_Handler
    (Self    : in out Simple_Reader;
     Handler : XML.SAX.Readers.SAX_Content_Handler_Access);

   overriding procedure Set_Declaration_Handler
    (Self    : in out Simple_Reader;
     Handler : XML.SAX.Readers.SAX_Declaration_Handler_Access);

   overriding procedure Set_DTD_Handler
    (Self    : in out Simple_Reader;
     Handler : XML.SAX.Readers.SAX_DTD_Handler_Access);

   overriding procedure Set_Entity_Resolver
    (Self     : in out Simple_Reader;
     Resolver : XML.SAX.Readers.SAX_Entity_Resolver_Access);

   overriding procedure Set_Error_Handler
    (Self    : in out Simple_Reader;
     Handler : XML.SAX.Readers.SAX_Error_Handler_Access);

   overriding procedure Set_Feature
    (Self  : in out Simple_Reader;
     Name  : League.Strings.Universal_String;
     Value : Boolean);

   overriding procedure Set_Lexical_Handler
    (Self    : in out Simple_Reader;
     Handler : XML.SAX.Readers.SAX_Lexical_Handler_Access);

   -------------
   -- Locator --
   -------------

   type Simple_Shared_Locator is
     new Matreshka.Internals.SAX_Locators.Shared_Abstract_Locator with record
      Reader : access Simple_Reader'Class;
   end record;

   overriding function Line
    (Self : not null access constant Simple_Shared_Locator) return Natural;

   overriding function Column
    (Self : not null access constant Simple_Shared_Locator) return Natural;

   overriding function Encoding
    (Self : not null access constant Simple_Shared_Locator)
       return League.Strings.Universal_String;

   overriding function Version
    (Self : not null access constant Simple_Shared_Locator)
       return League.Strings.Universal_String;

   overriding function Public_Id
    (Self : not null access constant Simple_Shared_Locator)
       return League.Strings.Universal_String;

   overriding function System_Id
    (Self : not null access constant Simple_Shared_Locator)
       return League.Strings.Universal_String;

   overriding function Base_URI
    (Self : not null access constant Simple_Shared_Locator)
       return League.IRIs.IRI;

end XML.SAX.Simple_Readers;
