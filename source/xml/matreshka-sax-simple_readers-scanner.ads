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

private package Matreshka.SAX.Simple_Readers.Scanner is

   pragma Preelaborate;

   function YYLex
    (Self : not null access SAX_Simple_Reader'Class) return Token;
   --  Returns next token.

   procedure Push_Parameter_Entity
    (Self : not null access SAX_Simple_Reader'Class;
     Data : not null Matreshka.Internals.Strings.Shared_String_Access);
   --  Push text of parameter entity into the scanner's stack.

   procedure Push_External_Entity
    (Self : not null access SAX_Simple_Reader'Class;
     Data : not null Matreshka.Internals.Strings.Shared_String_Access);
   --  Push text of external entity into the scanner's stack.

private

   function YY_Text
    (Self            : not null access SAX_Simple_Reader'Class;
     Trim_Left       : Natural := 0;
     Trim_Right      : Natural := 0;
     Trim_Whitespace : Boolean := False)
       return Matreshka.Internals.Strings.Shared_String_Access;
   --  Converts matched data into shared string and returns it. For performance
   --  reason, this subprogram is not UTF-16 aware and assume that all leading
   --  and traling characters belong BMP.

   procedure YY_Move_Backward (Self : not null access SAX_Simple_Reader'Class);
   pragma Inline (YY_Move_Backward);
   --  Moves current position one step backward. It is intended to be used when
   --  pattern has trailing context. For performance reason, this subprogram
   --  is not UTF-16 and end-of-line tracking aware, it assumes that all
   --  characters in trailing context belongs BMP and not affect end-of-line
   --  tracking.

end Matreshka.SAX.Simple_Readers.Scanner;
