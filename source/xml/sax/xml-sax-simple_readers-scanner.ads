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
pragma Ada_2012;

private package XML.SAX.Simple_Readers.Scanner is

   function YYLex (Self : in out SAX_Simple_Reader'Class) return Token;
   --  Returns next token.

   procedure Set_Document_Version_And_Encoding
    (Self     : in out SAX_Simple_Reader'Class;
     Version  : XML_Version;
     Encoding : League.Strings.Universal_String);
   --  Switch scanner to continue scanning according to the specified
   --  version of XML specification. On error reports fatal error.

   procedure Initialize (Self : in out SAX_Simple_Reader'Class);
   --  Initializes start condition stack.

   procedure Finalize (Self : in out SAX_Simple_Reader'Class);
   --  Release scanner stack.

   function Push_Entity
    (Self             : in out SAX_Simple_Reader'Class;
     Entity           : Matreshka.Internals.XML.Entity_Identifier;
     In_Document_Type : Boolean;
     In_Literal       : Boolean) return Boolean;
   --  Pushs replacement text of the entity into the scanner stack and push
   --  base URI scope. Resolve entity when necessary.

private

   function YY_Text
    (Self            : SAX_Simple_Reader'Class;
     Trim_Left       : Natural := 0;
     Trim_Right      : Natural := 0;
     Trim_Whitespace : Boolean := False)
       return Matreshka.Internals.Strings.Shared_String_Access;
   --  Converts matched data into shared string and returns it. For performance
   --  reason, this subprogram is not UTF-16 aware and assume that all leading
   --  and traling characters belong BMP.

   procedure YY_Move_Backward (Self : in out SAX_Simple_Reader'Class);
   pragma Inline (YY_Move_Backward);
   --  Moves current position one step backward. It is intended to be used when
   --  pattern has trailing context. For performance reason, this subprogram
   --  is not UTF-16 and end-of-line tracking aware, it assumes that all
   --  characters in trailing context belongs BMP and not affect end-of-line
   --  tracking.

   procedure Enter_Start_Condition
    (Self  : in out SAX_Simple_Reader'Class;
     State : Interfaces.Unsigned_32);
   pragma Inline (Enter_Start_Condition);
   --  Enter a start condition.

   procedure Push_Current_And_Enter_Start_Condition
    (Self  : in out SAX_Simple_Reader'Class;
     Enter : Interfaces.Unsigned_32);
   --  Pushs current start condition into the stack and set new start
   --  condition.

   procedure Push_And_Enter_Start_Condition
    (Self  : in out SAX_Simple_Reader'Class;
     Push  : Interfaces.Unsigned_32;
     Enter : Interfaces.Unsigned_32);
   --  Pushs first specified condition into the stack of start conditions and
   --  enters second specified condition as current start condition.

   procedure Pop_Start_Condition (Self : in out SAX_Simple_Reader'Class);
   --  Set scanner's start condition from the stack of start conditions.

   function Start_Condition
    (Self : SAX_Simple_Reader'Class) return Interfaces.Unsigned_32;
   --  Returns current start condition.

   procedure Reset_Whitespace_Matched (Self : in out SAX_Simple_Reader'Class);
   --  Resets "whitespace matched" flag.

end XML.SAX.Simple_Readers.Scanner;
