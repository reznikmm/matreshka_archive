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
--  The NodeList interface provides the abstraction of an ordered collection of
--  nodes, without defining or constraining how this collection is implemented.
--  NodeList objects in the DOM are live.
--
--  The items in the NodeList are accessible via an integral index, starting
--  from 1.
------------------------------------------------------------------------------
private with Ada.Finalization;

private with Matreshka.XML.DOM_Nodes;
limited with XML.DOM.Nodes;

package XML.DOM.Node_Lists is

   pragma Preelaborate;

   type DOM_Node_List is tagged private;

   function Item
    (Self  : DOM_Node_List'Class;
     Index : Positive) return XML.DOM.Nodes.DOM_Node;
   --  Returns the indexth item in the collection. If index is greater than
   --  the number of nodes in the list, this returns null.

   function Length (Self : DOM_Node_List'Class) return Natural;
   --  The number of nodes in the list. The range of valid child node indices
   --  is 1 to Length inclusive.

private

   type DOM_Node_List is new Ada.Finalization.Controlled with record
      Parent : Matreshka.XML.DOM_Nodes.Node_Access := null;
      --  Node_List represents ordered set of children of the specified parent
      --  node.
   end record;

   overriding procedure Adjust (Self : in out DOM_Node_List);

   overriding procedure Finalize (Self : in out DOM_Node_List);

end XML.DOM.Node_Lists;
