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

   not overriding procedure Comment
    (Self    : in out SAX_Lexical_Handler;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean) is null;

   not overriding procedure End_CDATA
    (Self    : in out SAX_Lexical_Handler;
     Success : in out Boolean) is null;

   not overriding procedure End_DTD
    (Self    : in out SAX_Lexical_Handler;
     Success : in out Boolean) is null;

   not overriding procedure End_Entity
    (Self    : in out SAX_Lexical_Handler;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is null;

   not overriding function Error_String
    (Self : SAX_Lexical_Handler)
       return League.Strings.Universal_String is abstract;

   not overriding procedure Start_CDATA
    (Self    : in out SAX_Lexical_Handler;
     Success : in out Boolean) is null;

   not overriding procedure Start_DTD
    (Self      : in out SAX_Lexical_Handler;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean) is null;

   not overriding procedure Start_Entity
    (Self    : in out SAX_Lexical_Handler;
     Name    : League.Strings.Universal_String;
     Success : in out Boolean) is null;

end XML.SAX.Lexical_Handlers;
