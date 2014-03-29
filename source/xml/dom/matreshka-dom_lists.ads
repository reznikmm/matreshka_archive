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
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package provides subprogram to insert/remove nodes from lists:
--   - list of children nodes of some node
--   - list of detached nodes of document node
--   - list of attribute nodes of element node
------------------------------------------------------------------------------
with Matreshka.DOM_Nodes;

package Matreshka.DOM_Lists is

   pragma Preelaborate;

   procedure Insert_Into_Children
    (Parent : not null Matreshka.DOM_Nodes.Node_Access;
     Node   : not null Matreshka.DOM_Nodes.Node_Access);
   --  Inserts node into the list of children nodes of given parent node.

   procedure Remove_From_Children
    (Node : not null Matreshka.DOM_Nodes.Node_Access);
   --  Removes node from the list of children nodes of its parent node. Do
   --  nothing if there is no parent node.

   procedure Insert_Into_Attributes
    (Element   : not null Matreshka.DOM_Nodes.Element_Access;
     Attribute : not null Matreshka.DOM_Nodes.Node_Access);
   --  Inserts node into the list of attribute nodes of given element node.

   procedure Remove_From_Attributes
    (Attribute : not null Matreshka.DOM_Nodes.Node_Access);
   --  Removes attribute node from the list of attribute nodes of owner element
   --  node.

   procedure Insert_Into_Detached
    (Node : not null Matreshka.DOM_Nodes.Node_Access);
   --  Inserts node into the list of detached nodes of its document.

   procedure Remove_From_Detached
    (Node : not null Matreshka.DOM_Nodes.Node_Access);
   --  Removes node from the list of detached nodes of its document.

end Matreshka.DOM_Lists;
