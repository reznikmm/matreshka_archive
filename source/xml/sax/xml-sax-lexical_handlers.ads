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

package XML.SAX.Lexical_Handlers is

   pragma Preelaborate;

   type SAX_Lexical_Handler is limited interface;

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

   not overriding procedure Comment
    (Self    : in out SAX_Lexical_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is null;
   --  The reader calls this subprogram to report an XML comment anywhere in
   --  the document (inside and outside document element, and in the external
   --  DTD subset). It reports the text of the comment in ch.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure End_CDATA
    (Self    : in out SAX_Lexical_Handler;
     Success : in out Boolean) is null;
   --  The reader calls this subprogram to report the end of a CDATA section.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure End_DTD
    (Self    : in out SAX_Lexical_Handler;
     Success : in out Boolean) is null;
   --  The reader calls this subprogram to report the end of a DTD declaration,
   --  if any.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure End_Entity
    (Self    : in out SAX_Lexical_Handler;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is null;
   --  The reader calls this subprogram to report the end of an entity called
   --  Name.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding function Error_String
    (Self : SAX_Lexical_Handler)
       return League.Strings.Universal_String is abstract;
   --  The reader calls this function to get an error string, e.g. if any of
   --  the handler subprograms sets Success to False.

   not overriding procedure Start_CDATA
    (Self    : in out SAX_Lexical_Handler;
     Success : in out Boolean) is null;
   --  The reader calls this subprogram to report the start of a CDATA section.
   --  The content of the CDATA section is reported through the
   --  SAX_Content_Handler's Characters subprogram. This subprogram is intended
   --  only to report the boundary.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

   not overriding procedure Start_DTD
    (Self      : in out SAX_Lexical_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean) is null;
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

   not overriding procedure Start_Entity
    (Self    : in out SAX_Lexical_Handler;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is null;
   --  The reader calls this subprogram to report the start of an internal or
   --  external entity called Name.
   --
   --  General entities are reported with their regular names, parameter
   --  entities have '%' prepended to their names, and the external DTD subset
   --  has the pseudo-entity name "[dtd]".
   --
   --  Note that if the entity is unknown, the reader reports it through
   --  SAX_Content_Handler's Skipped_Entity and not through this subprogram.
   --
   --  Because of the streaming event model that SAX uses, some entity
   --  boundaries cannot be reported under any circumstances:
   --
   --    * general entities within attribute values
   --    * parameter entities within declarations
   --
   --  These will be silently expanded, with no indication of where the
   --  original entity boundaries were.
   --
   --  Note also that the boundaries of character references (which are not
   --  really entities anyway) are not reported.
   --
   --  The reporting of parameter entities (including the external DTD subset)
   --  is optional, and SAX2 drivers that report Lexical_Handler events may not
   --  implement it; you can use the
   --  http://xml.org/sax/features/lexical-handler/parameter-entities feature
   --  to query or control the reporting of parameter entities.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an error. The reader uses the function Error_String to get the
   --  error message.

end XML.SAX.Lexical_Handlers;
