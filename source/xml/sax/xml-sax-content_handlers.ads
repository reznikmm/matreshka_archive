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
with League.Strings;

with XML.SAX.Attributes;
with XML.SAX.Locators;

package XML.SAX.Content_Handlers is

   pragma Preelaborate;

   type SAX_Content_Handler is limited interface;

   not overriding procedure Characters
    (Self    : in out SAX_Content_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is null;
   --  The reader calls this subprogram when it has parsed a chunk of character
   --  data (either normal character data or character data inside a CDATA
   --  section; if you need to distinguish between those two types you must use
   --  SAX_Lexical_Handler.Start_CDATA and SAX_Lexical_Handler.End_CDATA
   --  subprograms). The character data is reported in Text.
   --
   --  Some readers report whitespace in element content using the
   --  Ignorable_Whitespace subprogram rather than using this one.
   --
   --  A reader may return all contiguous character data in a single chunk, or
   --  may split it into several chunks; however, all of the characters in any
   --  single event must come from the same external entity so that the Locator
   --  provides useful information.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure End_Document
    (Self    : in out SAX_Content_Handler;
     Success : in out Boolean) is null;
   --  The reader calls this subprogram after it has finished parsing. It is
   --  called just once, and is the last subprogram called. It is called after
   --  the reader has read all input or has abandoned parsing because of fatal
   --  error.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure End_Element
    (Self           : in out SAX_Content_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean) is null;
   --  The reader calls this function when it has parsed an end element tag
   --  with the qualified name Qualified_Name, the local name Local_Name and
   --  the namespace URI Namespace_URI. It is called even when element is
   --  empty.
   --
   --  Namespace_URI and Local_Name is provided only when namespace handling
   --  is enabled, otherwise they are an empty strings.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure End_Prefix_Mapping
    (Self    : in out SAX_Content_Handler;
     Prefix  : League.Strings.Universal_String;
     Success : in out Boolean) is null;
   --  The reader calls this subprogram to signal the end of a prefix mapping
   --  for the prefix Prefix.
   --
   --  These events always occur immediately after the corresponding
   --  End_Element event, but the order of End_Prefix_Mapping events is not
   --  otherwise guaranteed.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding function Error_String
    (Self : SAX_Content_Handler)
       return League.Strings.Universal_String is abstract;
   --  The reader calls this function to get an error string, e.g. if any of
   --  the handler subprograms sets Success to False.

   not overriding procedure Ignorable_Whitespace
    (Self    : in out SAX_Content_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is null;
   --  Validating readers must use this subprogram to report each chunk of
   --  whitespace in element content, non-validating readers may also use this
   --  subprogram if they are capable of parsing and using content model, The
   --  whitespace is reported in Text.
   --
   --  SAX readers may return all contiguous whitespace in a single chunk, or
   --  they may split it into several chunks; however, all of the characters in
   --  any single event must come from the same external entity, so that the
   --  Locator provides useful information.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure Processing_Instruction
    (Self    : in out SAX_Content_Handler;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean) is null;
   --  The reader calls this subprogram when it has parsed a processing
   --  instruction. Target is the name of the processing instruction and Data
   --  is the data in the processing instruction.
   --
   --  The reader must never report an XML declaration or a text declaration
   --  using this subprogram.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure Set_Document_Locator
    (Self    : in out SAX_Content_Handler;
     Locator : XML.SAX.Locators.SAX_Locator) is null;
   --  The reader calls this subprogram before is starts parsing the document.
   --  Argument Locator is object which allows the application to get the
   --  parsing position within the document.
   --
   --  The locator allows the application to determine the end position of any
   --  document-related event, even if the parser is not reporting an error.
   --  Typically, the application will use this information for reporting its
   --  own errors (such as character content that does not match an
   --  application's business rules). The information returned by the locator
   --  is probably not sufficient for use with a search engine.
   --
   --  Note that the locator will return correct information only during the
   --  invocation SAX event callbacks after Start_Document returns and before
   --  End_Document is called. The application should not attempt to use it at
   --  any other time.

   not overriding procedure Skipped_Entity
    (Self    : in out SAX_Content_Handler;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is null;
   --  Some readers may skip entities if they have not seen the declaration.
   --  If they do so they report that they skipped the entity called Name by
   --  calling this subprogram.
   --
   --  This is not called for entity references within markup constructs such
   --  as element start tags or markup declarations. (The XML recommendation
   --  requires reporting skipped external entities. SAX also reports internal
   --  entity expansion/non-expansion, except within markup constructs.)
   --
   --  Non-validating processors may skip entities if they have not seen the
   --  declarations (because, for example, the entity was declared in an
   --  external DTD subset). All processors may skip external entities,
   --  depending on the values of the
   --  http://xml.org/sax/features/external-general-entities and the
   --  http://xml.org/sax/features/external-parameter-entities properties.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure Start_Document
    (Self    : in out SAX_Content_Handler;
     Success : in out Boolean) is null;
   --  The reader calls this subprogram when it starts parsing the document.
   --  The reader calls this subprogram just once, after the call to
   --  Set_Document_Locator, and before and other subprogram in this
   --  interface or in the SAX_DTD_Handler interface are called.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure Start_Element
    (Self           : in out SAX_Content_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean) is null;
   --  The reader calls this subprogram when it has parsed a start element tag.
   --
   --  There is a corresponding End_Element call when the corresponding and
   --  element tag is read. The Start_Element and End_Element calls are always
   --  nested correctly. Empty element tags (e.g. <x/>) cause a Start_Element
   --  call to be immediately followed by and End_Element call.
   --
   --  The attribute list provided only contains attributes with explicit
   --  values (specified or defaulted): #IMPLIED attributes will be omitted.
   --  The attribute list contains attributes used for namespace
   --  declaration (i.e. attributes starting with xmlns) only if the
   --  http://xml.org/sax/features/namespace-prefixes property of the reader is
   --  true.
   --
   --  The argument Namespace_URI is the namespace URI, or an empty string if
   --  the element has no namespace URI or if no namespace processing is done.
   --  Local_Name is the local name (without prefix), or an empty string if no
   --  namespace processing is done, Qualified_Name is the qualified name (with
   --  prefix) and Attributes are the attributes attached to the element. If
   --  there are no attributes, Attributes is an empty attributes object.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure Start_Prefix_Mapping
    (Self          : in out SAX_Content_Handler;
     Prefix        : League.Strings.Universal_String;
     Namespace_URI : League.Strings.Universal_String;
     Success       : in out Boolean) is null;
   --  The reader calls this subprogram to signal the begin of a prefix-URI
   --  namespace mapping scope. This information is not necessary for normal
   --  namespace processing since the reader automatically replaces prefixes
   --  for element and attribute names.
   --
   --  Note that Start_Prefix_Mapping and End_Prefix_Mapping calls are not
   --  guaranteed to be properly nested relative to each other: all
   --  Start_Prefix_Mapping events occur before the corresponding Start_Element
   --  event, and all End_Prefix_Mapping events occur after the corresponding
   --  End_Element event, but their order is not otherwise guaranteed.
   --
   --  The argument Prefix is the namespace prefix being declared and the
   --  argument Namespace_URI is the namespace URI the prefix is mapped to.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

end XML.SAX.Content_Handlers;
