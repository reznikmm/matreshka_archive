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

package Matreshka.Internals.XML is

   pragma Pure;

   type Attribute_Identifier is private;
   No_Attribute : constant Attribute_Identifier;
   --  Internal identifier of attribute type declaration.

   type Element_Identifier is private;
   No_Element : constant Element_Identifier;
   --  Internal identifier of element declaration.

   type Entity_Identifier is private;
   No_Entity   : constant Entity_Identifier;
   Entity_lt   : constant Entity_Identifier;
   Entity_gt   : constant Entity_Identifier;
   Entity_amp  : constant Entity_Identifier;
   Entity_apos : constant Entity_Identifier;
   Entity_quot : constant Entity_Identifier;
   --  Internal identifier of entity.

   type Notation_Identifier is private;
   No_Notation : constant Notation_Identifier;
   --  Internal identifier of notation.

   type Symbol_Identifier is private;
   No_Symbol       : constant Symbol_Identifier;
   Symbol_lt       : constant Symbol_Identifier;
   Symbol_gt       : constant Symbol_Identifier;
   Symbol_amp      : constant Symbol_Identifier;
   Symbol_apos     : constant Symbol_Identifier;
   Symbol_quot     : constant Symbol_Identifier;
   Symbol_CDATA    : constant Symbol_Identifier;
   Symbol_ID       : constant Symbol_Identifier;
   Symbol_IDREF    : constant Symbol_Identifier;
   Symbol_IDREFS   : constant Symbol_Identifier;
   Symbol_NMTOKEN  : constant Symbol_Identifier;
   Symbol_NMTOKENS : constant Symbol_Identifier;
   Symbol_ENTITY   : constant Symbol_Identifier;
   Symbol_ENTITIES : constant Symbol_Identifier;
   Symbol_NOTATION : constant Symbol_Identifier;
   Symbol_xml      : constant Symbol_Identifier;
   Symbol_xmlns    : constant Symbol_Identifier;
   Symbol_xml_NS   : constant Symbol_Identifier;
   Symbol_xmlns_NS : constant Symbol_Identifier;
   Symbol_xml_base : constant Symbol_Identifier;
   --  Internal identifier of symbol. Symbols are used to associate different
   --  kinds of items with name, and to minimize amount of used memory to store
   --  names.

private

   type Attribute_Identifier is mod 2 ** 32;
   No_Attribute : constant Attribute_Identifier := 0;

   type Element_Identifier is mod 2 ** 32;
   No_Element : constant Element_Identifier := 0;

   type Entity_Identifier is mod 2 ** 32;
   No_Entity   : constant Entity_Identifier := 0;
   Entity_lt   : constant Entity_Identifier := 1;
   Entity_gt   : constant Entity_Identifier := 2;
   Entity_amp  : constant Entity_Identifier := 3;
   Entity_apos : constant Entity_Identifier := 4;
   Entity_quot : constant Entity_Identifier := 5;

   type Notation_Identifier is mod 2 ** 32;
   No_Notation : constant Notation_Identifier := 0;

   type Symbol_Identifier is mod 2 ** 32;
   No_Symbol       : constant Symbol_Identifier := 0;
   Symbol_lt       : constant Symbol_Identifier := 1;
   Symbol_gt       : constant Symbol_Identifier := 2;
   Symbol_amp      : constant Symbol_Identifier := 3;
   Symbol_apos     : constant Symbol_Identifier := 4;
   Symbol_quot     : constant Symbol_Identifier := 5;
   Symbol_CDATA    : constant Symbol_Identifier := 6;
   Symbol_ID       : constant Symbol_Identifier := 7;
   Symbol_IDREF    : constant Symbol_Identifier := 8;
   Symbol_IDREFS   : constant Symbol_Identifier := 9;
   Symbol_NMTOKEN  : constant Symbol_Identifier := 10;
   Symbol_NMTOKENS : constant Symbol_Identifier := 11;
   Symbol_ENTITY   : constant Symbol_Identifier := 12;
   Symbol_ENTITIES : constant Symbol_Identifier := 13;
   Symbol_NOTATION : constant Symbol_Identifier := 14;
   Symbol_xml      : constant Symbol_Identifier := 15;
   Symbol_xmlns    : constant Symbol_Identifier := 16;
   Symbol_xml_NS   : constant Symbol_Identifier := 17;
   Symbol_xmlns_NS : constant Symbol_Identifier := 18;
   Symbol_xml_base : constant Symbol_Identifier := 19;

end Matreshka.Internals.XML;
