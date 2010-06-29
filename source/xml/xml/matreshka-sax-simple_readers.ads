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
private with Ada.Containers.Vectors;
private with Ada.Containers.Hashed_Maps;
private with Ada.Exceptions;
private with Ada.Finalization;

with League.Strings;
with Matreshka.SAX.Readers;
private with Matreshka.Internals.Strings;
private with Matreshka.Internals.Unicode;
private with Matreshka.Internals.Utf16;
private with Matreshka.Internals.XML.Symbol_Tables;
private with Matreshka.SAX.Attributes;
private with Matreshka.SAX.Default_Handlers;
private with Matreshka.SAX.Locators;

package Matreshka.SAX.Simple_Readers is

   pragma Preelaborate;

   type SAX_Simple_Reader is
     limited new Matreshka.SAX.Readers.SAX_Reader with private;

   procedure Parse
    (Self       : not null access SAX_Simple_Reader;
     Data       : League.Strings.Universal_String;
     Last_Chunk : Boolean := True);

   Put_Line : access procedure (Item : League.Strings.Universal_String);

   --  XXX GNAT GPL 2009: These subprograms can be declared in the private
   --  part of the package to make public part clean.

   overriding function Content_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Content_Handler_Access;

   overriding function Decl_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Decl_Handler_Access;

   overriding function DTD_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_DTD_Handler_Access;

   overriding function Entity_Resolver
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Entity_Resolver_Access;

   overriding function Error_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Error_Handler_Access;

   overriding function Lexical_Handler
    (Self : not null access constant SAX_Simple_Reader)
       return Matreshka.SAX.Readers.SAX_Lexical_Handler_Access;

   overriding procedure Set_Content_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Content_Handler_Access);

   overriding procedure Set_Decl_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Decl_Handler_Access);

   overriding procedure Set_DTD_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_DTD_Handler_Access);

   overriding procedure Set_Entity_Resolver
    (Self     : not null access SAX_Simple_Reader;
     Resolver : Matreshka.SAX.Readers.SAX_Entity_Resolver_Access);

   overriding procedure Set_Error_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Error_Handler_Access);

   overriding procedure Set_Lexical_Handler
    (Self    : not null access SAX_Simple_Reader;
     Handler : Matreshka.SAX.Readers.SAX_Lexical_Handler_Access);

private

   use type League.Strings.Universal_String;
   --  It is needed to be able to use equality operator for type in generic
   --  instantiation.

   type Token is
    (End_Of_Input,
     Error,
     Token_Xml_Decl_Open,
     Token_Pi_Open,
     Token_Pi_Close,
     Token_Pe_Reference,
     Token_Doctype_Decl_Open,
     Token_Entity_Decl_Open,
     Token_Element_Decl_Open,
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
     Token_Fixed);

   type YYSType is limited record
      String        : Matreshka.Internals.Strings.Shared_String_Access;
      Is_Whitespace : Boolean;
      Is_CData      : Boolean;
      Symbol        : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
   end record;

   procedure Set_String
    (Item          : in out YYSType;
     String        : League.Strings.Universal_String;
     Is_Whitespace : Boolean;
     Is_CData      : Boolean);
   pragma Inline (Set_String);

   procedure Set_String_Internal
    (Item          : in out YYSType;
     String        : Matreshka.Internals.Strings.Shared_String_Access;
     Is_Whitespace : Boolean;
     Is_CData      : Boolean);
   pragma Inline (Set_String_Internal);

   procedure Set_Symbol
    (Item    : in out YYSType;
      Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier);
   pragma Inline (Set_Symbol);

   procedure Move
    (To   : in out YYSType;
     From : in out YYSType);
   pragma Inline (Move);

   procedure Clear (Item : in out YYSType);
   pragma Inline (Clear);

   function Hash
    (Item : League.Strings.Universal_String) return Ada.Containers.Hash_Type;

   type Entity_Kinds is
    (Internal_Parameter,
     External_Parameter,
     Internal_General,
     External_Parsed_General,
     Unparsed);

   type Entity_Information is record
      Name           : League.Strings.Universal_String;
      Kind           : Entity_Kinds;
      Value          : League.Strings.Universal_String;
      Start_Position : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      Start_Index    : Positive := 1;
   end record;

   package Entity_Information_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Entity_Information,
           Hash,
           "=");

   -------------------
   -- Scanner state --
   -------------------

   type Scanner_State_Information is record
      Data                : Matreshka.Internals.Strings.Shared_String_Access;
      YY_Base_Position    : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      YY_Base_Index       : Positive := 1;
      YY_Current_Position : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      YY_Current_Index    : Positive := 1;
      YY_Start_State      : Integer  := 1;
      Last_Match          : Boolean  := True;
      --  This mean that last match need to be processed.
      Continue_State      : Integer;
      Delimiter           : Matreshka.Internals.Unicode.Code_Point;
      --  Delimiter of the entity value.
      In_Literal          : Boolean  := False;
      --  Include in literal mode, apostrophe and quotation characters are
      --  ignored.
      --  XXX The same behavior can be achived by resetting Delimiter to
      --  any symbol.
   end record;

   package Scanner_State_Vectors is
     new Ada.Containers.Vectors (Positive, Scanner_State_Information);

   package Symbol_Identifier_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier,
           Matreshka.Internals.XML.Symbol_Tables."=");

   ------------------
   -- Parser state --
   ------------------

   YY_Stack_Size : constant Natural := 300;
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

--       -- error recovery flag
--       error_flag : natural := 0;
--          -- indicates  3 - (number of valid shifts after an error occurs)
   end record;

   Default_Handler :
     aliased Matreshka.SAX.Default_Handlers.SAX_Default_Handler;
   --  Default handler for use when user defined handler is not specified.

   type Attribute_Record is record
      Namespace_URI  : League.Strings.Universal_String;
      Local_Name     : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
      Qualified_Name : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
      Value          : League.Strings.Universal_String;
   end record;

   type Validation_Options is record
      Enabled : Boolean := False;
   end record;

   type SAX_Simple_Reader is new Ada.Finalization.Limited_Controlled
     and Matreshka.SAX.Readers.SAX_Reader with
   record
      --  Handlers

      Content_Handler    : Matreshka.SAX.Readers.SAX_Content_Handler_Access
        := Default_Handler'Access;
      Decl_Handler       : Matreshka.SAX.Readers.SAX_Decl_Handler_Access
        := Default_Handler'Access;
      DTD_Handler        : Matreshka.SAX.Readers.SAX_DTD_Handler_Access
        := Default_Handler'Access;
      Error_Handler      : Matreshka.SAX.Readers.SAX_Error_Handler_Access
        := Default_Handler'Access;
      Lexical_Handler    : Matreshka.SAX.Readers.SAX_Lexical_Handler_Access
        := Default_Handler'Access;
      Entity_Resolver    : Matreshka.SAX.Readers.SAX_Entity_Resolver_Access;

      --  Scanner state

      Scanner_State      : Scanner_State_Information;
      Scanner_Stack      : Scanner_State_Vectors.Vector;
      Stack_Is_Empty     : Boolean := True;
      --  This is cache of Is_Empty status of scanner's stack to speedup
      --  scanning.
      Symbols            : Matreshka.Internals.XML.Symbol_Tables.Symbol_Table;
      YY_Base_Line       : Natural := 1;
      YY_Base_Column     : Natural := 0;
      YY_Base_Skip_LF    : Boolean := False;
      YY_Current_Line    : Natural := 1;
      YY_Current_Column  : Natural := 0;
      YY_Current_Skip_LF : Boolean := False;
      Locator            : Matreshka.SAX.Locators.SAX_Locator;
      YYLVal             : YYSType;
      Last_Chunk         : Boolean;
      Character_Buffer   : Matreshka.Internals.Strings.Shared_String_Access;
      --  Preallocated buffer for character reference and attribute value
      --  delimiter handling.

      --  Parser state

      Parser_State       : Parser_State_Information;
      Public_Id          : League.Strings.Universal_String;
      System_Id          : League.Strings.Universal_String;

      --  Analyzer state

      Whitespace_Matched : Boolean;
      --  Used to check whether whitespace is used to separate tokens. For
      --  example, '%' must be separated by whitespace from '<!ENTITY' and
      --  following name.
      In_DTD             : Boolean;

      Parameter_Entities : Entity_Information_Maps.Map;
      External_Subset    : League.Strings.Universal_String;
      --  Contents of the external subset if any. This member used only to
      --  prevent deallocation of shared string before document parsing is
      --  completed.
      Element_Names      : Symbol_Identifier_Vectors.Vector;
      --  Stack of names of elements.
      Continue           : Boolean := True;
      --  Continue processing.
      Error_Message      : League.Strings.Universal_String;
      --  Error message.
      User_Exception     : Ada.Exceptions.Exception_Occurrence;
      --  Catched exception from the user defined handler.

      --  When components can't be nested thier information is not hold in
      --  YYSType and placed directly here to avoid copy overhead.

      Attribute          : Attribute_Record;
      --  Single attribute of the element.
      Attributes         : Matreshka.SAX.Attributes.SAX_Attributes;
      --  Set of attributes of the element.

      --  Validator state

      Validation         : Validation_Options;
      --  Validation options
      Root_Symbol        :
        Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier
          := Matreshka.Internals.XML.Symbol_Tables.No_Symbol;
      --  Expected name of the root element.
   end record;

   overriding procedure Initialize (Self : in out SAX_Simple_Reader);
   --  Initialize internal state of the reader.

   overriding procedure Finalize (Self : in out SAX_Simple_Reader);
   --  Finalize internal state of the reader.

--   overriding function Content_Handler
--    (Self : not null access constant SAX_Simple_Reader)
--       return Matreshka.SAX.Readers.SAX_Content_Handler_Access;
--
--   overriding function Decl_Handler
--    (Self : not null access constant SAX_Simple_Reader)
--       return Matreshka.SAX.Readers.SAX_Decl_Handler_Access;
--
--   overriding function DTD_Handler
--    (Self : not null access constant SAX_Simple_Reader)
--       return Matreshka.SAX.Readers.SAX_DTD_Handler_Access;
--
--   overriding function Entity_Resolver
--    (Self : not null access constant SAX_Simple_Reader)
--       return Matreshka.SAX.Readers.SAX_Entity_Resolver_Access;
--
--   overriding function Error_Handler
--    (Self : not null access constant SAX_Simple_Reader)
--       return Matreshka.SAX.Readers.SAX_Error_Handler_Access;
--
--   overriding function Lexical_Handler
--    (Self : not null access constant SAX_Simple_Reader)
--       return Matreshka.SAX.Readers.SAX_Lexical_Handler_Access;
--
--   overriding procedure Set_Content_Handler
--    (Self    : not null access SAX_Simple_Reader;
--     Handler : Matreshka.SAX.Readers.SAX_Content_Handler_Access);
--
--   overriding procedure Set_Decl_Handler
--    (Self    : not null access SAX_Simple_Reader;
--     Handler : Matreshka.SAX.Readers.SAX_Decl_Handler_Access);
--
--   overriding procedure Set_DTD_Handler
--    (Self    : not null access SAX_Simple_Reader;
--     Handler : Matreshka.SAX.Readers.SAX_DTD_Handler_Access);
--
--   overriding procedure Set_Entity_Resolver
--    (Self     : not null access SAX_Simple_Reader;
--     Resolver : Matreshka.SAX.Readers.SAX_Entity_Resolver_Access);
--
--   overriding procedure Set_Error_Handler
--    (Self    : not null access SAX_Simple_Reader;
--     Handler : Matreshka.SAX.Readers.SAX_Error_Handler_Access);
--
--   overriding procedure Set_Lexical_Handler
--    (Self    : not null access SAX_Simple_Reader;
--     Handler : Matreshka.SAX.Readers.SAX_Lexical_Handler_Access);

end Matreshka.SAX.Simple_Readers;
