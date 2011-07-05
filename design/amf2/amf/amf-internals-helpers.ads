------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
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
--  Metamodel's helper is used by AMF to interact with arbitrary metamodel
--  to convert identifiers to elements, establish links, etc.
------------------------------------------------------------------------------
with AMF.Elements;

package AMF.Internals.Helpers is

   pragma Preelaborate;

   function To_Element
    (Element : AMF_Element) return AMF.Elements.Element_Access;
   --  Converts element's identifier into element's object.

   procedure Connect_Link_End
    (Element  : AMF_Element;
     Property : CMOF_Element;
     Link     : AMF_Link;
     Other    : AMF_Element);
   --  Connects link end.

private

   type Abstract_Metamodel_Helper is abstract tagged null record;

   not overriding function To_Element
    (Self    : not null access constant Abstract_Metamodel_Helper;
     Element : AMF_Element) return AMF.Elements.Element_Access is abstract;
   --  Converts internal element's identifier into element object.

   not overriding procedure Connect_Link_End
    (Self     : not null access constant Abstract_Metamodel_Helper;
     Element  : AMF_Element;
     Property : CMOF_Element;
     Link     : AMF_Link;
     Other    : AMF_Element) is abstract;
   --  Connects link end with specified element:property.

   type Metamodel_Helper_Access is access all Abstract_Metamodel_Helper'Class;

   Metamodel_Helper : array (AMF_Metamodel) of Metamodel_Helper_Access;

end AMF.Internals.Helpers;
