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

package Matreshka.Internals.XML is

   pragma Pure;

   type Symbol_Identifier is private;
   No_Symbol    : constant Symbol_Identifier;
   Symbol_lt    : constant Symbol_Identifier;
   Symbol_gt    : constant Symbol_Identifier;
   Symbol_amp   : constant Symbol_Identifier;
   Symbol_apos  : constant Symbol_Identifier;
   Symbol_quot  : constant Symbol_Identifier;
   Symbol_xml   : constant Symbol_Identifier;
   Symbol_xmlns : constant Symbol_Identifier;

   type Entity_Identifier is private;
   No_Entity   : constant Entity_Identifier;
   Entity_lt   : constant Entity_Identifier;
   Entity_gt   : constant Entity_Identifier;
   Entity_amp  : constant Entity_Identifier;
   Entity_apos : constant Entity_Identifier;
   Entity_quot : constant Entity_Identifier;

private

   type Symbol_Identifier is mod 2 ** 32;
   No_Symbol    : constant Symbol_Identifier := 0;
   Symbol_lt    : constant Symbol_Identifier := 1;
   Symbol_gt    : constant Symbol_Identifier := 2;
   Symbol_amp   : constant Symbol_Identifier := 3;
   Symbol_apos  : constant Symbol_Identifier := 4;
   Symbol_quot  : constant Symbol_Identifier := 5;
   Symbol_xml   : constant Symbol_Identifier := 6;
   Symbol_xmlns : constant Symbol_Identifier := 7;

   type Entity_Identifier is mod 2 ** 32;
   No_Entity   : constant Entity_Identifier := 0;
   Entity_lt   : constant Entity_Identifier := 1;
   Entity_gt   : constant Entity_Identifier := 2;
   Entity_amp  : constant Entity_Identifier := 3;
   Entity_apos : constant Entity_Identifier := 4;
   Entity_quot : constant Entity_Identifier := 5;

end Matreshka.Internals.XML;
