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
--  The SAX_Locator type provides the XML handlers with information about the
--  parsing position within a file.
--
--  The reader reports a SAX_Locator to the content handler before is starts
--  to parse the document. This is done with the Set_Document_Locator
--  procedure. The handlers can now use this locator to get the position
--  (line and column numbers) that the reader has reached.
--
--  SAX_Locator uses explicit sharing technique for safety, the handler can
--  save any number of copies of the objects but all of them will provides
--  the same information.
------------------------------------------------------------------------------
private with Ada.Finalization;

with League.IRIs;
with League.Strings;
private with Matreshka.Internals.SAX_Locators;

package XML.SAX.Locators is

   pragma Preelaborate;

   type SAX_Locator is tagged private;

   function Column (Self : SAX_Locator'Class) return Natural;
   --  Returns the column number (starting at 1) or 0 if there is no column
   --  number available.

   function Encoding
    (Self : SAX_Locator'Class) return League.Strings.Universal_String;
   --  Returns the name of the character encoding for the entity.

   function Line (Self : SAX_Locator'Class) return Natural;
   --  Returns the line number (starting at 1) or 0 if there is no line
   --  number available.

   function Public_Id
    (Self : SAX_Locator'Class) return League.Strings.Universal_String;
   --  Returns the public identifier for the current document event.

   function System_Id
    (Self : SAX_Locator'Class) return League.Strings.Universal_String;
   --  Returns the system identifier for the current document event.

   function Version
    (Self : SAX_Locator'Class) return League.Strings.Universal_String;
   --  Returns the version of XML used for the entity.

   function Base_URI (Self : SAX_Locator'Class) return League.IRIs.IRI;
   --  Returns base URI. XXX This is Matreshka's extension!

private

   type SAX_Locator is new Ada.Finalization.Controlled with record
      Data : Matreshka.Internals.SAX_Locators.Shared_Locator_Access;
   end record;

   overriding procedure Adjust (Self : in out SAX_Locator);

   overriding procedure Finalize (Self : in out SAX_Locator);

   pragma Inline (Adjust);
   pragma Inline (Column);
   pragma Inline (Encoding);
   pragma Inline (Finalize);
   pragma Inline (Line);
   pragma Inline (Public_Id);
   pragma Inline (System_Id);

end XML.SAX.Locators;
