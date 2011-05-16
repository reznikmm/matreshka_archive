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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
--  A join node is a control node that synchronizes multiple flows.
--  Join nodes have a Boolean value specification using the names of the 
--  incoming edges to specify the conditions under which the join will emit a 
--  token.
------------------------------------------------------------------------------
with AMF.UML.Control_Nodes;
limited with AMF.UML.Value_Specifications;

package AMF.UML.Join_Nodes is

   pragma Preelaborate;

   type UML_Join_Node_Interface is limited interface
     and AMF.UML.Control_Nodes.UML_Control_Node_Interface;

   type UML_Join_Node is
     access all UML_Join_Node_Interface'Class;

   type Set_Of_UML_Join_Node is null record;
   type Ordered_Set_Of_UML_Join_Node is null record;

   not overriding function Get_Is_Combine_Duplicate
    (Self : not null access constant UML_Join_Node_Interface)
       return Boolean is abstract;
   --  Tells whether tokens having objects with the same identity are combined 
   --  into one by the join.

   not overriding procedure Set_Is_Combine_Duplicate
    (Self : not null access UML_Join_Node_Interface;
     To   : Boolean) is abstract;

   not overriding function Get_Join_Spec
    (Self : not null access constant UML_Join_Node_Interface)
       return AMF.UML.Value_Specifications.UML_Value_Specification is abstract;
   --  A specification giving the conditions under which the join with emit a 
   --  token. Default is "and".

   not overriding procedure Set_Join_Spec
    (Self : not null access UML_Join_Node_Interface;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification) is abstract;

end AMF.UML.Join_Nodes;
