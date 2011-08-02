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
--  This package provides implementation of SAX events handler to load XML
--  Catalogs data into internal representation.
------------------------------------------------------------------------------
private with League.Strings;
private with XML.SAX.Attributes;
with XML.SAX.Content_Handlers;
with XML.SAX.Error_Handlers;
with XML.SAX.Lexical_Handlers;
private with XML.SAX.Locators;
private with XML.SAX.Parse_Exceptions;

with Matreshka.XML_Catalogs.Entry_Files;

package Matreshka.XML_Catalogs.Handlers is

   type XML_Catalog_Handler is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.Error_Handlers.SAX_Error_Handler
       and XML.SAX.Lexical_Handlers.SAX_Lexical_Handler with private;

   function Get_Catalog_Entry_File
    (Self : XML_Catalog_Handler)
       return Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_Access;

   procedure Set_Default_Prefer_Mode
    (Self : in out XML_Catalog_Handler'Class;
     Mode : Matreshka.XML_Catalogs.Entry_Files.Prefer_Mode);

private

   type XML_Catalog_Handler is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.Error_Handlers.SAX_Error_Handler
       and XML.SAX.Lexical_Handlers.SAX_Lexical_Handler with
   record
      Default_Prefer_Mode  : Matreshka.XML_Catalogs.Entry_Files.Prefer_Mode
        := Matreshka.XML_Catalogs.Entry_Files.Public;
      --  Default prefer mode.

      Current_Prefer_Mode  : Matreshka.XML_Catalogs.Entry_Files.Prefer_Mode;
      Previous_Prefer_Mode : Matreshka.XML_Catalogs.Entry_Files.Prefer_Mode;
      --  Preference mode can be defined for two grouping elements: "catalog"
      --  and "group". Current_Preference_Mode is active preference mode, and
      --  Previous_Preference_Mode is used to save preference mode of "catalog"
      --  element when "group" element is processed.

      Entry_File :
        Matreshka.XML_Catalogs.Entry_Files.Catalog_Entry_File_Access;
      --  Constructed catalog entry file.

      Locator : XML.SAX.Locators.SAX_Locator;
      --  Document's locator. It is used to obtain base URI when necessary.

      Diagnosis : League.Strings.Universal_String;
      --  Error message of the last detected error.
   end record;

   overriding procedure End_Element
    (Self           : in out XML_Catalog_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);
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

   overriding procedure Error
    (Self       : in out XML_Catalog_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean);

   overriding function Error_String
    (Self : XML_Catalog_Handler) return League.Strings.Universal_String;
   --  The reader calls this function to get an error string, e.g. if any of
   --  the handler subprograms sets Success to False.

   overriding procedure Fatal_Error
    (Self       : in out XML_Catalog_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean);

   overriding procedure Set_Document_Locator
    (Self    : in out XML_Catalog_Handler;
     Locator : XML.SAX.Locators.SAX_Locator);
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

   overriding procedure Start_Document
    (Self    : in out XML_Catalog_Handler;
     Success : in out Boolean);
   --  The reader calls this subprogram when it starts parsing the document.
   --  The reader calls this subprogram just once, after the call to
   --  Set_Document_Locator, and before and other subprogram in this
   --  interface or in the SAX_DTD_Handler interface are called.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   overriding procedure Start_DTD
    (Self      : in out XML_Catalog_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean);
   --  The reader calls this subprogram to report the start of a DTD
   --  declaration, if any. It reports the name of the document type in Name,
   --  the public identifier in Public_Id and the system identifier in
   --  System_Id.
   --
   --  If the public identifier is missing, Public_Id is set to an empty
   --  string. If the system identifier is missing, System_Id is set to an
   --  empty string. Note that it is not valid XML to have a public identifier
   --  but no system identifier; in such cases a parse error will occur.
   --
   --  This subprogram is intended to report the beginning of the DOCTYPE
   --  declaration; if the document has no DOCTYPE declaration, this subprogram
   --  will not be invoked.
   --
   --  All declarations reported through SAX_DTD_Handler or SAX_Decl_Handler
   --  appear between the Start_DTD and End_DTD calls. Declarations belong to
   --  the internal DTD subsets unless they appear between Start_Entity and
   --  End_Entity calls. Comments and processing instructions from the DTD also
   --  are reported between the Start_DTD and End_DTD calls, in their original
   --  order of (logical) occurrence; they are not appear in their correct
   --  locations relative to others calls of SAX_DTD_Handler or
   --  SAX_Decl_Handler, however.
   --
   --  Note that the Start_DTD/End_DTD calls will appear within the
   --  Start_Document/End_Document calls from SAX_Content_Handler and before
   --  the first Start_Element event.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   overriding procedure Start_Element
    (Self           : in out XML_Catalog_Handler;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);
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

   overriding procedure Warning
    (Self       : in out XML_Catalog_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean);

end Matreshka.XML_Catalogs.Handlers;
