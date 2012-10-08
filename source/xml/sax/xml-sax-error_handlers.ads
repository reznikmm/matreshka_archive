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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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

with XML.SAX.Parse_Exceptions;

package XML.SAX.Error_Handlers is

   pragma Preelaborate;

   type SAX_Error_Handler is limited interface;

   not overriding procedure Error
    (Self       : in out SAX_Error_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is null;
   --  A reader might use this subprogram to report a recoverable error. A
   --  recoverable error corresponds to the definiton of "error" in section 1.2
   --  of the XML 1.0 specification. Details of the error are stored in
   --  Occurrence.
   --
   --  The reader must continue to provide normal parsing events after invoking
   --  this subprogram.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an fatal error. The reader uses the function Error_String to get
   --  the error message.

   not overriding function Error_String
    (Self : SAX_Error_Handler)
       return League.Strings.Universal_String is abstract;

   not overriding procedure Fatal_Error
    (Self       : in out SAX_Error_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception) is null;
   --  A reader must use this subprogram to report a non-recoverable error.
   --  Details of the error are stored in Occurrence.

   not overriding procedure Warning
    (Self       : in out SAX_Error_Handler;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean) is null;
   --  A reader might use this subprogram to report a warning. Warnings are
   --  conditions that are not errors or fatal errors as defined by the XML 1.0
   --  specification. Details of the warning are stored in Occurrence.
   --
   --  If this subprogram sets Success to False the reader stops parsing and
   --  reports an fatal error. The reader uses the function Error_String to get
   --  the error message.

end XML.SAX.Error_Handlers;
